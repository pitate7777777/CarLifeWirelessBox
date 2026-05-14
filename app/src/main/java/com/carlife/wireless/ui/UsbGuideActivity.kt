package com.carlife.wireless.ui

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import com.carlife.wireless.R
import com.carlife.wireless.service.ConnectionService
import com.carlife.wireless.usb.UsbTetheringManager
import com.carlife.wireless.util.LogUtils

/**
 * USB 连接引导 Activity
 *
 * 分步引导用户完成 USB 连接设置：
 * Step 1: USB 数据线连接旧手机和车机
 * Step 2: 开启 USB 网络共享
 * Step 3: 等待车机获取 IP 地址
 * Step 4: 连接成功，开始使用
 */
class UsbGuideActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "UsbGuideActivity"

        fun start(context: Context) {
            context.startActivity(Intent(context, UsbGuideActivity::class.java))
        }
    }

    private val handler = Handler(Looper.getMainLooper())
    private var usbManager: UsbTetheringManager? = null
    private var currentStep = 0
    private var stateReceiver: BroadcastReceiver? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_usb_guide)

        // 设置工具栏
        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        toolbar.setNavigationOnClickListener { finish() }

        setupUsbManager()
        setupListeners()
        registerStateReceiver()
        updateUI()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    override fun onDestroy() {
        super.onDestroy()
        usbManager?.stopMonitoring()
        stateReceiver?.let { try { unregisterReceiver(it) } catch (_: Exception) {} }
    }

    private fun setupUsbManager() {
        usbManager = UsbTetheringManager(this).apply {
            setListener(object : UsbTetheringManager.UsbStateListener {
                override fun onUsbStateChanged(state: UsbTetheringManager.UsbState, carIp: String?) {
                    handler.post {
                        onUsbStateChanged(state, carIp)
                    }
                }
                override fun onCarDeviceFound(carIp: String) {
                    handler.post {
                        onCarFound(carIp)
                    }
                }
            })
            startMonitoring()
        }
    }

    private fun setupListeners() {
        findViewById<View>(R.id.btn_retry)?.setOnClickListener {
            checkCurrentState()
        }

        findViewById<View>(R.id.btn_open_settings)?.setOnClickListener {
            openTetheringSettings()
        }

        findViewById<View>(R.id.btn_done)?.setOnClickListener {
            finish()
        }
    }

    private fun registerStateReceiver() {
        stateReceiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                if (intent?.action == ConnectionService.ACTION_STATE_CHANGED) {
                    handler.post { updateConnectionInfo() }
                }
            }
        }
        val filter = IntentFilter(ConnectionService.ACTION_STATE_CHANGED)
        ContextCompat.registerReceiver(this, stateReceiver, filter, ContextCompat.RECEIVER_NOT_EXPORTED)
    }

    /**
     * USB 状态变化回调
     */
    private fun onUsbStateChanged(state: UsbTetheringManager.UsbState, @Suppress("UNUSED_PARAMETER") carIp: String?) {
        when (state) {
            UsbTetheringManager.UsbState.DISCONNECTED -> {
                currentStep = 0
            }
            UsbTetheringManager.UsbState.CONNECTED -> {
                currentStep = 1
            }
            UsbTetheringManager.UsbState.TETHERING -> {
                currentStep = 2
                // 自动扫描车机
                usbManager?.scanForCarDevice { ip ->
                    if (ip != null) {
                        currentStep = 3
                        handler.post { updateUI() }
                    }
                }
            }
            UsbTetheringManager.UsbState.CAR_CONNECTED -> {
                currentStep = 3
            }
        }
        updateUI()
    }

    private fun onCarFound(@Suppress("UNUSED_PARAMETER") carIp: String) {
        currentStep = 3
        updateUI()
    }

    /**
     * 检查当前状态
     */
    private fun checkCurrentState() {
        val state = usbManager?.checkUsbState() ?: UsbTetheringManager.UsbState.DISCONNECTED
        onUsbStateChanged(state, usbManager?.getCarIp())
    }

    /**
     * 打开系统网络共享设置
     */
    private fun openTetheringSettings() {
        try {
            // Android 系统的网络共享设置页
            val intent = Intent(android.provider.Settings.ACTION_WIRELESS_SETTINGS)
            startActivity(intent)
        } catch (e: Exception) {
            LogUtils.w(TAG, "无法打开网络共享设置: ${e.message}")
            try {
                val intent = Intent(android.provider.Settings.ACTION_SETTINGS)
                startActivity(intent)
            } catch (_: Exception) {}
        }
    }

    /**
     * 更新 UI 显示
     */
    private fun updateUI() {
        // 更新步骤指示器
        updateStepIndicator(currentStep)

        // 更新步骤内容
        val stepTitle = findViewById<android.widget.TextView>(R.id.tv_step_title)
        val stepDesc = findViewById<android.widget.TextView>(R.id.tv_step_description)
        val btnSettings = findViewById<View>(R.id.btn_open_settings)
        val btnRetry = findViewById<View>(R.id.btn_retry)
        val btnDone = findViewById<View>(R.id.btn_done)

        when (currentStep) {
            0 -> {
                stepTitle?.text = "第 1 步：连接 USB 数据线"
                stepDesc?.text = "请使用 USB 数据线将旧手机连接到车机的 USB 接口。\n\n" +
                        "💡 确保使用数据线（非充电线），数据线有 4 根线芯。"
                btnSettings?.visibility = View.GONE
                btnRetry?.visibility = View.VISIBLE
                btnDone?.visibility = View.GONE
            }
            1 -> {
                stepTitle?.text = "第 2 步：开启 USB 网络共享"
                stepDesc?.text = "USB 已连接！请开启网络共享：\n\n" +
                        "1. 打开手机「设置」\n" +
                        "2. 进入「网络和互联网」→「热点和网络共享」\n" +
                        "3. 开启「USB 网络共享」\n\n" +
                        "⚠️ 部分手机需要先关闭 Wi-Fi 才能开启 USB 共享"
                btnSettings?.visibility = View.VISIBLE
                btnRetry?.visibility = View.VISIBLE
                btnDone?.visibility = View.GONE
            }
            2 -> {
                stepTitle?.text = "第 3 步：等待车机连接"
                stepDesc?.text = "USB 网络共享已开启！\n\n" +
                        "正在等待车机通过 USB 获取 IP 地址并发起 CarLife 连接...\n\n" +
                        "💡 如果长时间未连接，请检查：\n" +
                        "• 车机 CarLife 是否已启动\n" +
                        "• 车机是否识别到 USB 网卡\n" +
                        "• 尝试重新插拔 USB 线"
                btnSettings?.visibility = View.GONE
                btnRetry?.visibility = View.VISIBLE
                btnDone?.visibility = View.GONE
            }
            3 -> {
                stepTitle?.text = "✅ 连接成功！"
                stepDesc?.text = "车机已通过 USB 网络连接到转接盒。\n\n" +
                        "CarLife 投屏已就绪，您可以在车机上操控手机。"
                btnSettings?.visibility = View.GONE
                btnRetry?.visibility = View.GONE
                btnDone?.visibility = View.VISIBLE
            }
        }

        updateConnectionInfo()
    }

    /**
     * 更新步骤指示器（4 个圆点）
     */
    private fun updateStepIndicator(step: Int) {
        val dots = listOf(
            findViewById<View>(R.id.dot_step_0),
            findViewById<View>(R.id.dot_step_1),
            findViewById<View>(R.id.dot_step_2),
            findViewById<View>(R.id.dot_step_3)
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

    /**
     * 更新连接信息
     */
    private fun updateConnectionInfo() {
        val tvInfo = findViewById<android.widget.TextView>(R.id.tv_connection_info) ?: return

        val sb = StringBuilder()
        val usbState = usbManager?.getState()
        sb.appendLine("USB 状态: ${getUsbStateLabel(usbState)}")

        val usbIp = usbManager?.getUsbInterfaceIp()
        if (usbIp != null) sb.appendLine("本机 USB IP: $usbIp")

        val carIp = usbManager?.getCarIp()
        if (carIp != null) sb.appendLine("车机 IP: $carIp")

        // WiFi 状态
        val service = ConnectionService.instance
        if (service != null) {
            sb.appendLine()
            sb.appendLine("连接状态: ${service.getConnectionStateText()}")
            sb.appendLine("通道: ${service.getConnectedChannelCount()}/6")

            // 动态码率
            val dynamicBitrate = service.getDynamicBitrate()
            if (dynamicBitrate != null) {
                sb.appendLine("信号: ${dynamicBitrate.getCurrentLevel().label}")
                sb.appendLine("码率: ${dynamicBitrate.getCurrentBitrateKbps()}kbps")
            }
        }

        tvInfo.text = sb.toString()
    }

    private fun getUsbStateLabel(state: UsbTetheringManager.UsbState?): String {
        return when (state) {
            UsbTetheringManager.UsbState.DISCONNECTED -> "❌ 未连接"
            UsbTetheringManager.UsbState.CONNECTED -> "🔌 已连接（未开启共享）"
            UsbTetheringManager.UsbState.TETHERING -> "📡 网络共享已开启"
            UsbTetheringManager.UsbState.CAR_CONNECTED -> "✅ 车机已连接"
            null -> "检测中..."
        }
    }
}
