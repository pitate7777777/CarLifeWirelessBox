package com.carlife.wireless.ui

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.wifi.WifiManager
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import com.carlife.wireless.R
import com.carlife.wireless.service.ConnectionService
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.NetworkUtils
import com.carlife.wireless.util.SettingsManager
import java.net.InetSocketAddress
import java.net.Socket

/**
 * WiFi 无线连接引导 Activity
 *
 * 分步引导用户完成手机 B (CarWith) 的无线 CarLife 连接：
 * Step 0: 手机 B 开启 WiFi 热点
 * Step 1: 本机连接到手机 B 的热点
 * Step 2: 手机 B 打开 CarWith 并启动无线投屏
 * Step 3: 启动 CarLife 服务，等待连接
 * Step 4: 连接成功
 */
class WifiGuideActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "WifiGuideActivity"

        fun start(context: Context) {
            context.startActivity(Intent(context, WifiGuideActivity::class.java))
        }
    }

    private val handler = Handler(Looper.getMainLooper())
    private var currentStep = 0
    private var stateReceiver: BroadcastReceiver? = null
    private var wifiReceiver: BroadcastReceiver? = null
    private var checkRunnable: Runnable? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_wifi_guide)

        supportActionBar?.title = "无线连接引导"
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        setupListeners()
        registerReceivers()
        updateUI()
        startPeriodicCheck()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    override fun onResume() {
        super.onResume()
        checkCurrentState()
    }

    override fun onDestroy() {
        super.onDestroy()
        stateReceiver?.let { try { unregisterReceiver(it) } catch (_: Exception) {} }
        wifiReceiver?.let { try { unregisterReceiver(it) } catch (_: Exception) {} }
        checkRunnable?.let { handler.removeCallbacks(it) }
    }

    // ==================== 初始化 ====================

    private fun setupListeners() {
        findViewById<View>(R.id.btn_retry)?.setOnClickListener {
            checkCurrentState()
        }

        findViewById<View>(R.id.btn_open_wifi_settings)?.setOnClickListener {
            openWifiSettings()
        }

        findViewById<View>(R.id.btn_open_hotspot_settings)?.setOnClickListener {
            openHotspotSettings()
        }

        findViewById<View>(R.id.btn_start_service)?.setOnClickListener {
            startCarLifeService()
        }

        findViewById<View>(R.id.btn_done)?.setOnClickListener {
            finish()
        }
    }

    private fun registerReceivers() {
        // ConnectionService 状态广播
        stateReceiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                if (intent?.action == ConnectionService.ACTION_STATE_CHANGED) {
                    handler.post {
                        updateConnectionInfo()
                        checkCurrentState()
                    }
                }
            }
        }
        val stateFilter = IntentFilter(ConnectionService.ACTION_STATE_CHANGED)
        ContextCompat.registerReceiver(this, stateReceiver, stateFilter, ContextCompat.RECEIVER_NOT_EXPORTED)

        // WiFi 状态广播
        wifiReceiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                handler.post {
                    LogUtils.d(TAG, "WiFi state changed, rechecking...")
                    checkCurrentState()
                }
            }
        }
        val wifiFilter = IntentFilter().apply {
            addAction(WifiManager.WIFI_STATE_CHANGED_ACTION)
            addAction(WifiManager.NETWORK_STATE_CHANGED_ACTION)
            addAction("android.net.wifi.STATE_CHANGE")
        }
        ContextCompat.registerReceiver(this, wifiReceiver, wifiFilter, ContextCompat.RECEIVER_NOT_EXPORTED)
    }

    /**
     * 定期检查状态（每 3 秒）
     */
    private fun startPeriodicCheck() {
        checkRunnable = object : Runnable {
            override fun run() {
                checkCurrentState()
                handler.postDelayed(this, 3000)
            }
        }
        handler.postDelayed(checkRunnable!!, 3000)
    }

    // ==================== 状态检测 ====================

    private fun checkCurrentState() {
        val wifiConnected = isWifiConnected()
        val ssid = getCurrentSsid()
        val phoneBIp = SettingsManager.getPhoneBIp(this)
        val serviceRunning = ConnectionService.instance != null

        // 检测是否连接到手机 B 的热点
        val isHotspotConnected = wifiConnected && isLikelyHotspot(ssid)

        // 获取连接信息用于判断
        val channels = getConnectionChannels()

        currentStep = when {
            // 已连接成功（6 个通道全部建立）
            channels >= 6 -> 4
            // 服务已启动，正在等待连接
            serviceRunning -> 3
            // 已连接到热点，等待启动服务
            isHotspotConnected -> 2
            // WiFi 已连接但不是热点
            wifiConnected -> 1
            // WiFi 未连接
            else -> 0
        }

        updateUI()
        updateConnectionInfo()
    }

    /**
     * WiFi 是否已连接
     */
    private fun isWifiConnected(): Boolean {
        val cm = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val network = cm.activeNetwork ?: return false
        val capabilities = cm.getNetworkCapabilities(network) ?: return false
        return capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)
    }

    /**
     * 获取当前连接的 SSID
     */
    private fun getCurrentSsid(): String? {
        try {
            val wifiManager = applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
            val info = wifiManager.connectionInfo
            val ssid = info?.ssid?.replace("\"", "")
            if (ssid == "<unknown ssid>" || ssid.isNullOrEmpty()) return null
            return ssid
        } catch (e: Exception) {
            LogUtils.w(TAG, "获取 SSID 失败: ${e.message}")
            return null
        }
    }

    /**
     * 判断是否可能是手机热点
     * Android 热点默认 SSID 通常包含设备名，且子网为 192.168.43.x
     */
    private fun isLikelyHotspot(ssid: String?): Boolean {
        if (ssid == null) return false
        // 常见热点 SSID 特征
        val hotspotKeywords = listOf("carlife", "carwith", "hotspot", "ap", "android", "huawei", "xiaomi", "oppo", "vivo", "samsung")
        val lowerSsid = ssid.lowercase()
        if (hotspotKeywords.any { lowerSsid.contains(it) }) return true
        // 如果 IP 在热点子网范围内，也认为是热点
        val localIp = NetworkUtils.getLocalIpAddress()
        if (localIp != null && localIp.startsWith("192.168.43.")) return true
        return false
    }

    /**
     * 尝试连接手机 B 的 IP，检查 CarWith 端口是否开放
     */
    private fun checkPhoneBPorts(callback: (openPorts: Int, totalPorts: Int) -> Unit) {
        Thread {
            val phoneBIp = SettingsManager.getPhoneBIp(this)
            val ports = listOf(
                Constants.Port.HU_CMD,
                Constants.Port.HU_VIDEO,
                Constants.Port.HU_MEDIA,
                Constants.Port.HU_TTS,
                Constants.Port.HU_VR,
                Constants.Port.HU_CTRL
            )
            var openCount = 0
            for (port in ports) {
                try {
                    val socket = Socket()
                    socket.connect(InetSocketAddress(phoneBIp, port), 1500)
                    socket.close()
                    openCount++
                } catch (_: Exception) {
                }
            }
            handler.post {
                callback(openCount, ports.size)
            }
        }.start()
    }

    /**
     * 获取当前连接的通道数
     */
    private fun getConnectionChannels(): Int {
        return ConnectionService.instance?.getConnectedChannelCount() ?: 0
    }

    // ==================== UI 更新 ====================

    private fun updateUI() {
        updateStepIndicator(currentStep)

        val stepTitle = findViewById<android.widget.TextView>(R.id.tv_step_title)
        val stepDesc = findViewById<android.widget.TextView>(R.id.tv_step_description)
        val btnWifi = findViewById<View>(R.id.btn_open_wifi_settings)
        val btnHotspot = findViewById<View>(R.id.btn_open_hotspot_settings)
        val btnRetry = findViewById<View>(R.id.btn_retry)
        val btnStart = findViewById<View>(R.id.btn_start_service)
        val btnDone = findViewById<View>(R.id.btn_done)

        when (currentStep) {
            0 -> {
                stepTitle?.text = "第 1 步：手机 B 开启 WiFi 热点"
                stepDesc?.text = "请在手机 B（运行 CarWith 的手机）上操作：\n\n" +
                        "1. 打开手机「设置」\n" +
                        "2. 进入「热点和网络共享」或「个人热点」\n" +
                        "3. 开启 WiFi 热点\n\n" +
                        "💡 记住热点名称和密码，下一步需要用本机连接。"
                btnWifi?.visibility = View.GONE
                btnHotspot?.visibility = View.GONE
                btnRetry?.visibility = View.VISIBLE
                btnStart?.visibility = View.GONE
                btnDone?.visibility = View.GONE
            }
            1 -> {
                stepTitle?.text = "第 2 步：本机连接热点"
                stepDesc?.text = "WiFi 已开启，但尚未连接到手机 B 的热点。\n\n" +
                        "请在本机上操作：\n" +
                        "1. 打开 WiFi 设置\n" +
                        "2. 找到手机 B 的热点名称\n" +
                        "3. 输入密码连接\n\n" +
                        "💡 连接成功后会自动进入下一步。"
                btnWifi?.visibility = View.VISIBLE
                btnHotspot?.visibility = View.GONE
                btnRetry?.visibility = View.VISIBLE
                btnStart?.visibility = View.GONE
                btnDone?.visibility = View.GONE
            }
            2 -> {
                stepTitle?.text = "第 3 步：手机 B 启动 CarWith"
                stepDesc?.text = "已连接到热点！请在手机 B 上操作：\n\n" +
                        "1. 打开 CarWith（或 CarLife）APP\n" +
                        "2. 点击「CarLife 连接」\n" +
                        "3. 选择「无线连接」模式\n" +
                        "4. 等待 APP 搜索到本机设备\n\n" +
                        "💡 确保手机 B 的 CarWith 已开启无线 CarLife 服务。"
                btnWifi?.visibility = View.GONE
                btnHotspot?.visibility = View.GONE
                btnRetry?.visibility = View.VISIBLE
                btnStart?.visibility = View.VISIBLE
                btnDone?.visibility = View.GONE

                // 异步检查 CarWith 端口
                checkPhoneBPorts { open, total ->
                    if (open > 0) {
                        stepDesc?.text = "已连接到热点！CarWith 端口检测：$open/$total 已开放\n\n" +
                                "请在手机 B 上确认 CarWith 已启动无线投屏，然后点击下方按钮启动服务。"
                    }
                }
            }
            3 -> {
                stepTitle?.text = "第 4 步：等待连接建立"
                stepDesc?.text = "CarLife 服务已启动，正在与手机 B 建立连接...\n\n" +
                        "请在手机 B 的 CarWith 上确认连接请求。\n\n" +
                        "💡 如果长时间未连接，请检查：\n" +
                        "• 手机 B 的 CarWith 是否显示「等待连接」\n" +
                        "• 两台手机是否在同一热点网络\n" +
                        "• 尝试重启 CarWith 的无线连接"
                btnWifi?.visibility = View.GONE
                btnHotspot?.visibility = View.GONE
                btnRetry?.visibility = View.VISIBLE
                btnStart?.visibility = View.GONE
                btnDone?.visibility = View.GONE
            }
            4 -> {
                stepTitle?.text = "✅ 连接成功！"
                stepDesc?.text = "手机 B 已通过 WiFi 无线连接到转接盒。\n\n" +
                        "CarLife 投屏已就绪，车机将显示手机 B 的画面。\n\n" +
                        "💡 投屏过程中请保持两台手机的 WiFi 连接稳定。"
                btnWifi?.visibility = View.GONE
                btnHotspot?.visibility = View.GONE
                btnRetry?.visibility = View.GONE
                btnStart?.visibility = View.GONE
                btnDone?.visibility = View.VISIBLE
            }
        }

        updateConnectionInfo()
    }

    private fun updateStepIndicator(step: Int) {
        val dots = listOf(
            findViewById<View>(R.id.dot_step_0),
            findViewById<View>(R.id.dot_step_1),
            findViewById<View>(R.id.dot_step_2),
            findViewById<View>(R.id.dot_step_3),
            findViewById<View>(R.id.dot_step_4)
        )

        dots.forEachIndexed { index, dot ->
            if (dot == null) return@forEachIndexed
            val color = when {
                index < step -> 0xFF4CAF50.toInt()  // 已完成 - 绿色
                index == step -> 0xFF2196F3.toInt()  // 当前 - 蓝色
                else -> 0xFFBDBDBD.toInt()           // 未到达 - 灰色
            }
            dot.background?.setTint(color)
        }
    }

    private fun updateConnectionInfo() {
        val tvInfo = findViewById<android.widget.TextView>(R.id.tv_connection_info) ?: return

        val sb = StringBuilder()

        // WiFi 状态
        val wifiConnected = isWifiConnected()
        val ssid = getCurrentSsid()
        sb.appendLine("WiFi: ${if (wifiConnected) "✅ 已连接" else "❌ 未连接"}")
        if (ssid != null) sb.appendLine("热点: $ssid")

        // 本机 IP
        val localIp = NetworkUtils.getLocalIpAddress()
        if (localIp != null) sb.appendLine("本机 IP: $localIp")

        // 手机 B IP
        val phoneBIp = SettingsManager.getPhoneBIp(this)
        sb.appendLine("手机 B IP: $phoneBIp")

        // Ping 手机 B
        if (wifiConnected) {
            val reachable = NetworkUtils.ping(phoneBIp, 2000)
            sb.appendLine("手机 B: ${if (reachable) "✅ 可达" else "⚠️ 不可达"}")
        }

        // ConnectionService 状态
        val service = ConnectionService.instance
        if (service != null) {
            sb.appendLine()
            sb.appendLine("CarLife 服务: ✅ 运行中")
            sb.appendLine("连接状态: ${service.getConnectionStateText()}")
            sb.appendLine("通道: ${service.getConnectedChannelCount()}/6")

            val dynamicBitrate = service.getDynamicBitrate()
            if (dynamicBitrate != null) {
                sb.appendLine("信号: ${dynamicBitrate.getCurrentLevel().label}")
                sb.appendLine("码率: ${dynamicBitrate.getCurrentBitrateKbps()}kbps")
            }
        } else {
            sb.appendLine()
            sb.appendLine("CarLife 服务: ⏹ 未启动")
        }

        tvInfo.text = sb.toString()
    }

    // ==================== 操作 ====================

    private fun openWifiSettings() {
        try {
            startActivity(Intent(android.provider.Settings.ACTION_WIFI_SETTINGS))
        } catch (e: Exception) {
            LogUtils.w(TAG, "无法打开 WiFi 设置: ${e.message}")
            try {
                startActivity(Intent(android.provider.Settings.ACTION_SETTINGS))
            } catch (_: Exception) {}
        }
    }

    private fun openHotspotSettings() {
        try {
            // 尝试打开热点设置（不同厂商路径不同）
            val intent = Intent(android.provider.Settings.ACTION_WIRELESS_SETTINGS)
            startActivity(intent)
        } catch (e: Exception) {
            LogUtils.w(TAG, "无法打开热点设置: ${e.message}")
            try {
                startActivity(Intent(android.provider.Settings.ACTION_SETTINGS))
            } catch (_: Exception) {}
        }
    }

    private fun startCarLifeService() {
        val serviceIntent = Intent(this, ConnectionService::class.java)
        startForegroundService(serviceIntent)
        LogUtils.i(TAG, "CarLife 服务已启动")
        handler.postDelayed({ checkCurrentState() }, 1000)
    }
}
