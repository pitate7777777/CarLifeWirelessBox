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

        // 设置工具栏
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        toolbar.setNavigationOnClickListener { finish() }

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
        // 注意：WiFi 状态变化是系统广播（uid=-1），必须使用 RECEIVER_EXPORTED 才能接收。
        // 使用 RECEIVER_NOT_EXPORTED 会导致系统广播被拒绝，WifiGuideActivity 无法检测到
        // 热点连接状态变化，卡在第 2 步无法推进。
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
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.TIRAMISU) {
            ContextCompat.registerReceiver(this, wifiReceiver, wifiFilter, ContextCompat.RECEIVER_EXPORTED)
        } else {
            registerReceiver(wifiReceiver, wifiFilter)
        }
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
        val serviceRunning = ConnectionService.isServiceActive

        // 检测是否连接到手机 B 的热点
        // isLikelyHotspot 不仅检查 SSID，还通过网关和子网匹配判断，
        // 所以即使 WiFi 广播被拒绝，只要 WiFi 已连接就能正确检测。
        val isHotspotConnected = wifiConnected && isLikelyHotspot(ssid)

        // 获取连接信息用于判断
        val channels = getConnectionChannels()

        // 自动更新手机 B IP（如果检测到新的网关地址）
        if (isHotspotConnected) {
            val detectedGateway = NetworkUtils.getActiveGatewayIp(this)
            if (!detectedGateway.isNullOrEmpty() && detectedGateway != phoneBIp) {
                LogUtils.i(TAG, "Auto-detected gateway IP: $detectedGateway (was: $phoneBIp)")
                SettingsManager.setPhoneBIp(this, detectedGateway)
            }
            // 如果网关检测失败，尝试从 ARP 表中发现手机 B 的 IP
            if (detectedGateway.isNullOrEmpty()) {
                val arpDevices = NetworkUtils.scanArpDevices(this)
                if (arpDevices.isNotEmpty()) {
                    val detectedIp = arpDevices.first()
                    if (detectedIp != phoneBIp) {
                        LogUtils.i(TAG, "ARP-detected phone B IP: $detectedIp (was: $phoneBIp)")
                        SettingsManager.setPhoneBIp(this, detectedIp)
                    }
                }
            }
        }

        currentStep = when {
            // 已连接成功（6 个通道全部建立）
            channels >= 6 -> 4
            // 服务已启动，正在等待连接
            serviceRunning -> 3
            // 已连接到热点（WiFi 连接 + 网关可达），等待启动服务
            isHotspotConnected -> 2
            // WiFi 已连接但未检测到热点（可能是普通路由器）
            wifiConnected -> {
                // 额外检查：如果 IP 在同一子网，也算连接到热点
                val localIp = NetworkUtils.getLocalIpAddress()
                if (localIp != null) {
                    val localPrefix = localIp.substringBeforeLast(".")
                    val phonePrefix = phoneBIp.substringBeforeLast(".")
                    if (localPrefix == phonePrefix) 2 else 1
                } else 1
            }
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
     * 判断是否连接到手机热点
     *
     * 核心逻辑：
     * 1. 通过系统 DHCP 网关判断（最可靠）
     * 2. 通过本机 IP 与手机 B IP 的子网匹配判断
     * 注意：不能仅凭 WiFi 已连接就返回 true（可能连的是普通路由器）
     */
    private fun isLikelyHotspot(ssid: String?): Boolean {
        val phoneBIp = SettingsManager.getPhoneBIp(this)

        // 方法 1: 通过系统 API 获取当前 WiFi 的网关地址
        val gatewayIp = NetworkUtils.getActiveGatewayIp(this)
        if (gatewayIp != null) {
            val localIp = NetworkUtils.getLocalIpAddress()
            // 网关和本机在同一子网，且不是自己 → 已连接到热点/路由器
            if (localIp != null) {
                val gwPrefix = gatewayIp.substringBeforeLast(".")
                val localPrefix = localIp.substringBeforeLast(".")
                if (gwPrefix == localPrefix && gatewayIp != localIp) {
                    LogUtils.d(TAG, "Hotspot detected via gateway: $gatewayIp (local=$localIp)")
                    return true
                }
            }
            // 网关 IP 与手机 B IP 一致 → 已连接到手机 B 的热点
            if (gatewayIp == phoneBIp) {
                LogUtils.d(TAG, "Hotspot detected: gateway matches phoneB IP: $gatewayIp")
                return true
            }
        }

        // 方法 2: 子网匹配（回退方案）— 本机 IP 与手机 B IP 在同一子网
        val localIp = NetworkUtils.getLocalIpAddress()
        if (localIp != null) {
            val localPrefix = localIp.substringBeforeLast(".")
            val phonePrefix = phoneBIp.substringBeforeLast(".")
            if (localPrefix == phonePrefix) {
                LogUtils.d(TAG, "Hotspot detected via subnet match: local=$localIp, phoneB=$phoneBIp")
                return true
            }
        }

        return false
    }

    /**
     * 尝试连接手机 B 的 IP，检查 CarWith 端口是否开放
     */
    private fun checkPhoneBPorts(callback: (openPorts: Int, totalPorts: Int) -> Unit) {
        Thread {
            // 检查本机 HU 端口是否已监听（HuRole TcpServer）
            val localIp = NetworkUtils.getLocalIpAddress() ?: "127.0.0.1"
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
                    socket.connect(InetSocketAddress(localIp, port), 1500)
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
                stepTitle?.text = "第 1 步：本机开启 WiFi 热点"
                stepDesc?.text = "请在本机（转接盒）上操作：\n\n" +
                        "1. 打开「设置」\n" +
                        "2. 进入「热点和网络共享」或「个人热点」\n" +
                        "3. 开启 WiFi 热点\n\n" +
                        "💡 记住热点名称和密码，手机 B 和车机都需要连接。"
                btnWifi?.visibility = View.GONE
                btnHotspot?.visibility = View.VISIBLE
                btnRetry?.visibility = View.VISIBLE
                btnStart?.visibility = View.GONE
                btnDone?.visibility = View.GONE
            }
            1 -> {
                stepTitle?.text = "第 2 步：手机 B 连接本机热点"
                stepDesc?.text = "本机热点已开启。\n\n" +
                        "请在手机 B（运行 CarWith 的手机）上操作：\n" +
                        "1. 打开 WiFi 设置\n" +
                        "2. 找到本机的热点名称\n" +
                        "3. 输入密码连接\n\n" +
                        "💡 连接成功后手机 B 将获得本机网络内的 IP 地址。"
                btnWifi?.visibility = View.GONE
                btnHotspot?.visibility = View.GONE
                btnRetry?.visibility = View.VISIBLE
                btnStart?.visibility = View.GONE
                btnDone?.visibility = View.GONE
            }
            2 -> {
                stepTitle?.text = "第 3 步：手机 B 启动 CarWith"
                stepDesc?.text = "请在手机 B 上操作：\n\n" +
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
                        stepDesc?.text = "CarWith 端口检测：$open/$total 已开放\n\n" +
                                "请在手机 B 上确认 CarWith 已启动无线投屏，然后点击下方按钮启动服务。"
                    }
                }
            }
            3 -> {
                val currentPhoneBIp = SettingsManager.getPhoneBIp(this)
                stepTitle?.text = "第 4 步：等待连接建立"
                stepDesc?.text = "CarLife 服务已启动，等待手机 B 连接到本机...\n\n" +
                        "手机 B 的 CarWith 将连接到: $currentPhoneBIp\n\n" +
                        "💡 如果长时间未连接，请检查：\n" +
                        "• 手机 B 是否已连接到本机热点\n" +
                        "• 手机 B 的 CarWith 是否已启动并选择「无线连接」\n" +
                        "• 尝试在手机 B 的 CarWith 中手动输入 IP: ${NetworkUtils.getLocalIpAddress() ?: "..."}\n" +
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
                        "💡 投屏过程中请保持手机 B 与本机热点的 WiFi 连接稳定。"
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

        // 本机 IP（手机 B 需要连接到此 IP）
        val localIp = NetworkUtils.getLocalIpAddress()
        if (localIp != null) {
            sb.appendLine("本机 IP: $localIp")
            sb.appendLine("📱 手机 B CarWith 请连接: $localIp")
        }

        // ConnectionService 状态
        val service = ConnectionService.instance
        if (service != null) {
            sb.appendLine()
            sb.appendLine("CarLife 服务: ✅ 运行中")
            sb.appendLine("连接状态: ${service.getConnectionStateText()}")
            sb.appendLine("通道: ${service.getConnectedChannelCount()}/6")

            // 显示错误信息（如果有）
            val errorMsg = service.getBroadcastErrorMessage()
            if (errorMsg.isNotEmpty()) {
                sb.appendLine("⚠️ $errorMsg")
            }

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
