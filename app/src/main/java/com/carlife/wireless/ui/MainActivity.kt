package com.carlife.wireless.ui

import android.app.Activity
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.media.projection.MediaProjectionManager
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.Menu
import android.view.MenuItem
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import com.carlife.wireless.R
import com.carlife.wireless.databinding.ActivityMainBinding
import com.carlife.wireless.service.ConnectionService
import com.carlife.wireless.util.LogUtils
import java.net.NetworkInterface
import java.util.*

/**
 * 主 Activity
 *
 * 功能：
 * 1. 启动/停止 ConnectionService
 * 2. 请求 MediaProjection 授权（屏幕采集需要）
 * 3. 显示连接状态、视频预览和日志
 * 4. 引导用户开启无障碍服务（触摸注入需要）
 */
class MainActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "MainActivity"
        private const val MAX_LOG_LINES = 50
        private const val PERMISSION_REQUEST_CODE = 1001

        private val REQUIRED_PERMISSIONS = arrayOf(
            android.Manifest.permission.ACCESS_WIFI_STATE,
            android.Manifest.permission.CHANGE_WIFI_STATE,
            android.Manifest.permission.INTERNET,
            android.Manifest.permission.ACCESS_NETWORK_STATE,
            android.Manifest.permission.RECORD_AUDIO
        )
    }

    private lateinit var binding: ActivityMainBinding
    private val uiHandler = Handler(Looper.getMainLooper())
    private val periodicRefreshRunnable = object : Runnable {
        override fun run() {
            updateIPAddress()
            uiHandler.postDelayed(this, 5000)
        }
    }

    private val logBuffer = mutableListOf<String>()

    // 视频预览
    private val previewHelper = VideoPreviewHelper()

    /** 标记是否已完成首次自动连接尝试，避免 onResume 重复触发 */
    private var autoConnectAttempted = false

    /** MediaProjection 请求 launcher */
    private val mediaProjectionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK && result.data != null) {
            LogUtils.i(TAG, "MediaProjection 授权成功")
            val projectionManager = getSystemService(MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
            val projection = projectionManager.getMediaProjection(result.resultCode, result.data!!)
            ConnectionService.instance?.setMediaProjection(projection)
            addLog("屏幕录制授权成功")
        } else {
            LogUtils.w(TAG, "MediaProjection 授权被拒绝")
            addLog("屏幕录制授权被拒绝，视频服务将不可用")
        }
    }

    // 接收广播
    private val stateReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            when (intent?.action) {
                ConnectionService.ACTION_STATE_CHANGED -> {
                    val state = intent.getStringExtra(ConnectionService.EXTRA_STATE) ?: "未知"
                    val channels = intent.getIntExtra(ConnectionService.EXTRA_CONNECTED_CHANNELS, 0)
                    val ip = intent.getStringExtra(ConnectionService.EXTRA_LOCAL_IP) ?: "--"
                    val duration = intent.getLongExtra(ConnectionService.EXTRA_CONNECTION_DURATION, 0L)
                    val error = intent.getStringExtra(ConnectionService.EXTRA_ERROR_MESSAGE) ?: ""
                    val usbState = intent.getStringExtra(ConnectionService.EXTRA_USB_STATE) ?: "UNKNOWN"
                    val carIp = intent.getStringExtra(ConnectionService.EXTRA_CAR_IP) ?: ""

                    binding.tvConnectionState.text = state
                    binding.tvChannels.text = "通道: $channels/6"
                    binding.tvIpAddress.text = "IP: $ip"

                    // USB 状态显示
                    updateUsbStatus(usbState, carIp)

                    // 信号和码率显示
                    val signalLevel = intent.getStringExtra(ConnectionService.EXTRA_SIGNAL_LEVEL) ?: "DISCONNECTED"
                    val dynamicBitrate = intent.getIntExtra(ConnectionService.EXTRA_DYNAMIC_BITRATE, 0)
                    updateSignalInfo(signalLevel, dynamicBitrate)

                    if (error.isNotEmpty()) addLog("错误: $error")
                    val durText = if (duration > 0) " ${duration / 1000}秒" else ""
                    addLog("状态: $state, 通道: $channels/6$durText")

                    // 根据连接状态控制预览
                    if (channels >= 6) {
                        previewHelper.startPreview()
                    } else {
                        previewHelper.stopPreview()
                    }
                }
                ConnectionService.ACTION_REQUEST_PROJECTION -> {
                    requestMediaProjection()
                }
                ConnectionService.ACTION_VIDEO_FRAME -> {
                    val data = intent.getByteArrayExtra(ConnectionService.EXTRA_FRAME_DATA)
                    if (data != null) {
                        previewHelper.feedFrame(data)
                    }
                }
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // 设置工具栏
        setSupportActionBar(binding.toolbar)
        supportActionBar?.title = getString(R.string.app_name)

        LogUtils.i(TAG, "MainActivity onCreate")

        // 注册广播接收器
        val filter = IntentFilter().apply {
            addAction(ConnectionService.ACTION_STATE_CHANGED)
            addAction(ConnectionService.ACTION_REQUEST_PROJECTION)
            addAction(ConnectionService.ACTION_VIDEO_FRAME)
        }
        ContextCompat.registerReceiver(this, stateReceiver, filter, ContextCompat.RECEIVER_NOT_EXPORTED)

        // 初始化视频预览
        previewHelper.bind(
            binding.surfacePreview,
            binding.tvPreviewPlaceholder,
            binding.tvPreviewFps
        )

        setupListeners()
        updateUI()
        updateIPAddress()

        // 自动连接流程：权限 → MediaProjection → 启动服务
        if (hasAllPermissions()) {
            // 权限已授予 → 直接尝试自动连接
            tryAutoConnect()
        } else {
            // 首次启动 → 请求权限，授权后自动连接
            checkAndRequestPermissions()
        }
    }

    override fun onResume() {
        super.onResume()
        updateUI()
        uiHandler.postDelayed(periodicRefreshRunnable, 5000)
        checkAccessibilityService()

        // 服务正在运行 → 重置标记，下次停止后重新打开可再次自动连接
        if (isServiceRunning()) {
            autoConnectAttempted = false
        }

        // 从设置页返回时，如果服务未运行且开启了自动连接，重新触发
        if (!isServiceRunning() && !autoConnectAttempted) {
            tryAutoConnect()
        }
    }

    override fun onPause() {
        super.onPause()
        uiHandler.removeCallbacks(periodicRefreshRunnable)
    }

    override fun onDestroy() {
        super.onDestroy()
        uiHandler.removeCallbacks(periodicRefreshRunnable)
        unregisterReceiver(stateReceiver)
        previewHelper.release()
    }

    // ==================== 自动连接 ====================

    /**
     * 尝试自动连接
     *
     * 条件：
     * 1. 设置中开启了"自动连接"
     * 2. 服务未在运行
     * 3. 所有权限已授予
     *
     * 流程：启动 ConnectionService → 请求 MediaProjection 授权
     * 用户只需在系统弹窗中点一次"允许"，后续每次打开 APP 都会自动连接。
     */
    private fun tryAutoConnect() {
        autoConnectAttempted = true

        val autoConnect = com.carlife.wireless.util.SettingsManager.isAutoConnectEnabled(this)
        if (!autoConnect) {
            LogUtils.d(TAG, "Auto-connect disabled in settings")
            return
        }
        if (isServiceRunning()) {
            LogUtils.d(TAG, "Service already running, skip auto-connect")
            return
        }
        if (!hasAllPermissions()) {
            LogUtils.d(TAG, "Permissions not granted yet, skip auto-connect")
            return
        }

        LogUtils.i(TAG, "Auto-connect: starting service...")
        addLog("自动连接中...")

        // 启动前台服务（HuRole 开始连接手机 B）
        val intent = Intent(this, ConnectionService::class.java)
        startForegroundService(intent)
        binding.tvStatus.text = getString(R.string.status_connecting)

        // 请求 MediaProjection（屏幕采集授权）
        // 系统会弹出确认弹窗，用户点"允许"后自动注入到已运行的 Service
        requestMediaProjection()
    }

    // ==================== UI 交互 ====================

    private fun setupListeners() {
        binding.btnStart.setOnClickListener {
            if (!hasAllPermissions()) {
                Toast.makeText(this, "请先授予必要权限", Toast.LENGTH_SHORT).show()
                checkAndRequestPermissions()
                return@setOnClickListener
            }
            startCarLifeService()
        }

        binding.btnStop.setOnClickListener {
            stopCarLifeService()
        }

        // "查看全部" 日志链接
        binding.tvLogMore.setOnClickListener {
            startActivity(Intent(this, LogViewerActivity::class.java))
        }

        binding.btnUsbGuide.setOnClickListener {
            startActivity(Intent(this, UsbGuideActivity::class.java))
        }

        binding.btnWifiGuide.setOnClickListener {
            startActivity(Intent(this, WifiGuideActivity::class.java))
        }
    }

    private fun startCarLifeService() {
        if (isServiceRunning()) {
            Toast.makeText(this, R.string.toast_service_started, Toast.LENGTH_SHORT).show()
            return
        }

        autoConnectAttempted = true
        requestMediaProjection()

        val intent = Intent(this, ConnectionService::class.java)
        startForegroundService(intent)
        Toast.makeText(this, R.string.toast_service_started, Toast.LENGTH_SHORT).show()
        binding.tvStatus.text = getString(R.string.status_connecting)
        addLog("服务启动中...")
    }

    private fun stopCarLifeService() {
        stopService(Intent(this, ConnectionService::class.java))
        Toast.makeText(this, R.string.toast_service_stopped, Toast.LENGTH_SHORT).show()
        binding.tvStatus.text = getString(R.string.status_disconnected)
        previewHelper.stopPreview()
        addLog("服务已停止")
        // 延迟刷新按钮状态（等 onDestroy 完成后再检查 isServiceActive）
        binding.btnStart.postDelayed({ updateUI() }, 300)
    }

    // ==================== MediaProjection ====================

    private fun requestMediaProjection() {
        try {
            val projectionManager = getSystemService(MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
            mediaProjectionLauncher.launch(projectionManager.createScreenCaptureIntent())
            addLog("正在请求屏幕录制授权...")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "请求 MediaProjection 失败")
            addLog("请求屏幕录制失败: ${e.message}")
        }
    }

    // ==================== 无障碍服务 ====================

    private fun checkAccessibilityService() {
        if (!isAccessibilityServiceEnabled()) {
            addLog("提示: 开启无障碍服务可支持车机触摸操控")
        }
    }

    private fun isAccessibilityServiceEnabled(): Boolean {
        val serviceName = "${packageName}/com.carlife.wireless.service.CarAccessibilityService"
        val enabledServices = android.provider.Settings.Secure.getString(
            contentResolver,
            android.provider.Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES
        ) ?: return false
        return enabledServices.contains(serviceName)
    }

    // ==================== 服务状态 ====================

    private fun isServiceRunning(): Boolean {
        // 优先使用静态标志（比 getRunningServices 可靠）
        return ConnectionService.isServiceActive || ConnectionService.instance != null
    }

    private fun updateUI() {
        val running = isServiceRunning()
        binding.btnStart.isEnabled = !running
        binding.btnStop.isEnabled = running
        binding.tvStatus.text = if (running) getString(R.string.status_connected) else getString(R.string.status_disconnected)
        if (!running) {
            binding.tvConnectionState.text = "未连接"
            binding.tvChannels.text = "通道: 0/6"
        }
    }

    // ==================== IP 地址 ====================

    private fun updateIPAddress() {
        binding.tvIpAddress.text = "IP: ${getLocalIPAddress()}"
    }

    private fun getLocalIPAddress(): String {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            for (intf in interfaces) {
                for (addr in intf.inetAddresses) {
                    if (!addr.isLoopbackAddress && !addr.isLinkLocalAddress) {
                        val ip = addr.hostAddress ?: continue
                        if (ip.contains(".")) return ip
                    }
                }
            }
        } catch (_: Exception) {}
        return "--"
    }

    // ==================== USB 状态 ====================

    private fun updateUsbStatus(usbState: String, carIp: String) {
        val (text, colorRes) = when (usbState) {
            "DISCONNECTED" -> "USB: 未连接" to android.R.color.darker_gray
            "CONNECTED" -> "USB: 已连接（请开启网络共享）" to android.R.color.holo_orange_dark
            "TETHERING" -> "USB: 网络共享已开启" to android.R.color.holo_green_dark
            "CAR_CONNECTED" -> "USB: 车机已连接" to android.R.color.holo_green_dark
            else -> "USB: 未知" to android.R.color.darker_gray
        }
        binding.tvUsbState.text = text
        binding.usbStatusDot.backgroundTintList =
            android.content.res.ColorStateList.valueOf(getColor(colorRes))

        if (carIp.isNotEmpty()) {
            binding.tvCarIp.text = "车机 IP: $carIp"
            binding.tvCarIp.visibility = android.view.View.VISIBLE
        } else {
            binding.tvCarIp.visibility = android.view.View.GONE
        }
    }

    private fun updateSignalInfo(signalLevel: String, dynamicBitrateKbps: Int) {
        val label = when (signalLevel) {
            "EXCELLENT" -> "极好"
            "GOOD" -> "良好"
            "FAIR" -> "一般"
            "WEAK" -> "较差"
            "TERRIBLE" -> "极差"
            else -> "未连接"
        }
        binding.tvSignal.text = "信号: $label"

        if (dynamicBitrateKbps > 0) {
            binding.tvDynamicBitrate.text = "码率: ${dynamicBitrateKbps}kbps"
            binding.tvDynamicBitrate.visibility = android.view.View.VISIBLE
        } else {
            binding.tvDynamicBitrate.visibility = android.view.View.GONE
        }
    }

    // ==================== 日志 ====================

    private fun addLog(message: String) {
        val timestamp = java.text.SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
        logBuffer.add("[$timestamp] $message")
        if (logBuffer.size > MAX_LOG_LINES) logBuffer.removeAt(0)
        binding.tvLog.text = logBuffer.joinToString("\n")
        // 自动滚动到底部，显示最新日志
        binding.tvLog.post {
            val scrollParent = binding.tvLog.parent
            if (scrollParent is android.widget.ScrollView) {
                scrollParent.fullScroll(android.widget.ScrollView.FOCUS_DOWN)
            }
        }
    }

    // ==================== 权限 ====================

    private fun checkAndRequestPermissions() {
        val missing = REQUIRED_PERMISSIONS.filter {
            ContextCompat.checkSelfPermission(this, it) != android.content.pm.PackageManager.PERMISSION_GRANTED
        }
        if (missing.isNotEmpty()) {
            ActivityCompat.requestPermissions(this, missing.toTypedArray(), PERMISSION_REQUEST_CODE)
        }
    }

    private fun hasAllPermissions(): Boolean = REQUIRED_PERMISSIONS.all {
        ContextCompat.checkSelfPermission(this, it) == android.content.pm.PackageManager.PERMISSION_GRANTED
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == PERMISSION_REQUEST_CODE) {
            val denied = permissions.filterIndexed { i, _ ->
                grantResults[i] != android.content.pm.PackageManager.PERMISSION_GRANTED
            }
            if (denied.isEmpty()) {
                Toast.makeText(this, "权限已授予", Toast.LENGTH_SHORT).show()
                // 权限全部授予后，自动启动连接
                tryAutoConnect()
            } else {
                val permanent = denied.filter { !shouldShowRequestPermissionRationale(it) }
                if (permanent.isNotEmpty()) showPermissionDeniedDialog(permanent)
                else Toast.makeText(this, "缺少权限: $denied", Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun showPermissionDeniedDialog(permanentlyDenied: List<String>) {
        val names = permanentlyDenied.joinToString("\n") {
            when (it) {
                android.Manifest.permission.ACCESS_WIFI_STATE -> "• WiFi 状态访问"
                android.Manifest.permission.CHANGE_WIFI_STATE -> "• WiFi 状态修改"
                android.Manifest.permission.INTERNET -> "• 网络访问"
                android.Manifest.permission.ACCESS_NETWORK_STATE -> "• 网络状态"
                android.Manifest.permission.RECORD_AUDIO -> "• 录音（音频投屏）"
                else -> "• $it"
            }
        }
        AlertDialog.Builder(this)
            .setTitle("需要权限")
            .setMessage("以下权限被永久拒绝：\n\n$names\n\n请在设置中手动授予。")
            .setPositiveButton("去设置") { _, _ -> openAppSettings() }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun openAppSettings() {
        try {
            startActivity(Intent(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS).apply {
                data = android.net.Uri.fromParts("package", packageName, null)
            })
        } catch (e: Exception) {
            Toast.makeText(this, "无法打开设置", Toast.LENGTH_SHORT).show()
        }
    }

    // ==================== 菜单 ====================

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.main_menu, menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            R.id.action_network_diag -> {
                startActivity(Intent(this, NetworkDiagActivity::class.java)); true
            }
            R.id.action_settings -> {
                startActivity(Intent(this, SettingsActivity::class.java)); true
            }
            R.id.action_view_logs -> {
                startActivity(Intent(this, LogViewerActivity::class.java)); true
            }
            R.id.action_clear_logs -> {
                com.carlife.wireless.util.LogFileManager.clearAllLogs(this)
                logBuffer.clear(); binding.tvLog.text = "日志已清空"
                Toast.makeText(this, "日志已清空", Toast.LENGTH_SHORT).show(); true
            }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
