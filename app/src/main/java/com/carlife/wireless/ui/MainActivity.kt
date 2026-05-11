package com.carlife.wireless.ui

import android.app.ActivityManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.wifi.WifiManager
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.Menu
import android.view.MenuItem
import android.widget.Toast
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
 * 主 Activity - 优化版
 *
 * 改进：
 * 1. 显示详细连接状态（IP、通道数等）
 * 2. 添加连接日志显示
 * 3. 使用 Material Design 3 组件
 * 4. 接收 ConnectionService 的状态广播
 * 5. 添加权限检查
 * 6. 添加菜单（查看日志、清空日志、设置）
 */
class MainActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "MainActivity"
        private const val MAX_LOG_LINES = 50
        private const val PERMISSION_REQUEST_CODE = 1001
        
        // 需要的权限列表
        private val REQUIRED_PERMISSIONS = arrayOf(
            android.Manifest.permission.ACCESS_WIFI_STATE,
            android.Manifest.permission.CHANGE_WIFI_STATE,
            android.Manifest.permission.INTERNET,
            android.Manifest.permission.ACCESS_NETWORK_STATE,
            // 录音权限（CarLife 需要音频投屏）
            android.Manifest.permission.RECORD_AUDIO
        )
    }

    private lateinit var binding: ActivityMainBinding
    private val uiHandler = Handler(Looper.getMainLooper())
    private val periodicRefreshRunnable = object : Runnable {
        override fun run() {
            updateIPAddress()
            uiHandler.postDelayed(this, 5000) // 5秒更新一次 IP
        }
    }

    // 连接日志缓冲区
    private val logBuffer = mutableListOf<String>()

    // BroadcastReceiver 接收 ConnectionService 的状态更新
    private val stateReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action == ConnectionService.ACTION_STATE_CHANGED) {
                val state = intent.getStringExtra(ConnectionService.EXTRA_STATE) ?: "未知"
                val connectedChannels = intent.getIntExtra(ConnectionService.EXTRA_CONNECTED_CHANNELS, 0)
                val localIp = intent.getStringExtra(ConnectionService.EXTRA_LOCAL_IP) ?: "--"
                val duration = intent.getLongExtra(ConnectionService.EXTRA_CONNECTION_DURATION, 0L)
                val errorMsg = intent.getStringExtra(ConnectionService.EXTRA_ERROR_MESSAGE) ?: ""

                LogUtils.d(TAG, "收到状态更新: $state, 通道数: $connectedChannels, IP: $localIp")

                // 更新 UI
                binding.tvConnectionState.text = state
                binding.tvChannels.text = "通道: $connectedChannels/6"
                binding.tvIpAddress.text = "IP: $localIp"

                // 如果有错误信息，显示错误信息
                if (errorMsg.isNotEmpty()) {
                    addLog("错误: $errorMsg")
                }

                // 添加到日志
                val durationText = if (duration > 0) "${duration / 1000}秒" else ""
                addLog("状态更新: $state, 通道: $connectedChannels/6 $durationText")
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        LogUtils.i(TAG, "MainActivity onCreate")

        // 注册 BroadcastReceiver（兼容 Android 14+，必须声明是否导出）
        ContextCompat.registerReceiver(
            this,
            stateReceiver,
            IntentFilter(ConnectionService.ACTION_STATE_CHANGED),
            ContextCompat.RECEIVER_NOT_EXPORTED
        )
        LogUtils.d(TAG, "BroadcastReceiver 已注册")

        // 检查权限
        checkAndRequestPermissions()

        setupListeners()
        updateUI()
        updateIPAddress()
    }

    override fun onResume() {
        super.onResume()
        LogUtils.d(TAG, "MainActivity onResume")
        updateUI()
        uiHandler.postDelayed(periodicRefreshRunnable, 5000)
    }

    override fun onPause() {
        super.onPause()
        uiHandler.removeCallbacks(periodicRefreshRunnable)
    }

    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "MainActivity onDestroy")
        uiHandler.removeCallbacks(periodicRefreshRunnable)
        
        // 注销 BroadcastReceiver
        unregisterReceiver(stateReceiver)
        LogUtils.d(TAG, "BroadcastReceiver 已注销")
    }

    private fun setupListeners() {
        // 启动按钮
        binding.btnStart.setOnClickListener {
            LogUtils.i(TAG, "Start button clicked")
            // 检查权限
            if (!hasAllPermissions()) {
                Toast.makeText(this, "请先授予必要权限", Toast.LENGTH_SHORT).show()
                checkAndRequestPermissions()
                return@setOnClickListener
            }
            startCarLifeService()
        }

        // 停止按钮
        binding.btnStop.setOnClickListener {
            LogUtils.i(TAG, "Stop button clicked")
            stopCarLifeService()
        }

        // 设置按钮
        binding.btnSettings.setOnClickListener {
            LogUtils.i(TAG, "Settings button clicked")
            startActivity(Intent(this, SettingsActivity::class.java))
        }
    }

    private fun startCarLifeService() {
        LogUtils.i(TAG, "Starting CarLife service...")

        if (isServiceRunning()) {
            Toast.makeText(this, R.string.toast_service_started, Toast.LENGTH_SHORT).show()
            return
        }

        val intent = Intent(this, ConnectionService::class.java)
        startService(intent)
        Toast.makeText(this, R.string.toast_service_started, Toast.LENGTH_SHORT).show()
        binding.tvStatus.text = getString(R.string.status_connecting)
        addLog("服务启动中...")
        LogUtils.i(TAG, "ConnectionService started")
    }

    private fun stopCarLifeService() {
        LogUtils.i(TAG, "Stopping CarLife service...")

        val intent = Intent(this, ConnectionService::class.java)
        stopService(intent)
        Toast.makeText(this, R.string.toast_service_stopped, Toast.LENGTH_SHORT).show()
        binding.tvStatus.text = getString(R.string.status_disconnected)
        addLog("服务已停止")
        LogUtils.i(TAG, "ConnectionService stopped")
    }

    /**
     * 使用 ActivityManager 检测 ConnectionService 是否正在运行
     *
     * 注意：getRunningServices() 在 Android O 后被弃用，仅返回调用者自己的服务。
     * 这里用于检测自己的服务，所以是安全的。
     */
    private fun isServiceRunning(): Boolean {
        val manager = getSystemService(ACTIVITY_SERVICE) as ActivityManager
        @Suppress("DEPRECATION")
        for (service in manager.getRunningServices(Int.MAX_VALUE)) {
            if (ConnectionService::class.java.name == service.service.className) {
                return true
            }
        }
        return false
    }

    /**
     * 更新 IP 地址显示
     */
    private fun updateIPAddress() {
        val ip = getLocalIPAddress()
        binding.tvIpAddress.text = "IP: $ip"
    }

    /**
     * 获取本地 IP 地址（WiFi 或热点）
     */
    private fun getLocalIPAddress(): String {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            for (intf in interfaces) {
                val addrs = intf.inetAddresses
                for (addr in addrs) {
                    if (!addr.isLoopbackAddress && !addr.isLinkLocalAddress) {
                        val ip = addr.hostAddress ?: continue
                        // 优先返回 IPv4
                        if (ip.contains(".")) {
                            return ip
                        }
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "获取 IP 地址失败")
        }
        return "--"
    }

    private fun updateUI() {
        val running = isServiceRunning()
        binding.btnStart.isEnabled = !running
        binding.btnStop.isEnabled = running

        val stateText = if (running) {
            getString(R.string.status_connected)
        } else {
            getString(R.string.status_disconnected)
        }
        binding.tvStatus.text = stateText

        // 如果服务未运行，重置状态显示
        if (!running) {
            binding.tvConnectionState.text = "未连接"
            binding.tvChannels.text = "通道: 0/6"
        }

        LogUtils.d(TAG, "UI updated: running=$running")
    }

    /**
     * 添加日志到界面
     */
    private fun addLog(message: String) {
        val timestamp = java.text.SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
        val logLine = "[$timestamp] $message"

        logBuffer.add(logLine)
        if (logBuffer.size > MAX_LOG_LINES) {
            logBuffer.removeAt(0)
        }

        binding.tvLog.text = logBuffer.joinToString("\n")
    }

    /**
     * 检查并请求权限
     */
    private fun checkAndRequestPermissions() {
        val missingPermissions = REQUIRED_PERMISSIONS.filter { permission ->
            ContextCompat.checkSelfPermission(this, permission) != android.content.pm.PackageManager.PERMISSION_GRANTED
        }

        if (missingPermissions.isNotEmpty()) {
            LogUtils.w(TAG, "缺少权限: $missingPermissions")
            ActivityCompat.requestPermissions(this, missingPermissions.toTypedArray(), PERMISSION_REQUEST_CODE)
        } else {
            LogUtils.i(TAG, "所有权限已授予")
        }
    }

    /**
     * 检查是否所有权限都已授予
     */
    private fun hasAllPermissions(): Boolean {
        return REQUIRED_PERMISSIONS.all { permission ->
            ContextCompat.checkSelfPermission(this, permission) == android.content.pm.PackageManager.PERMISSION_GRANTED
        }
    }

    /**
     * 处理权限请求结果
     */
    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        
        if (requestCode == PERMISSION_REQUEST_CODE) {
            val deniedPermissions = permissions.filterIndexed { index, _ ->
                grantResults[index] != android.content.pm.PackageManager.PERMISSION_GRANTED
            }
            
            if (deniedPermissions.isEmpty()) {
                Toast.makeText(this, "权限已授予", Toast.LENGTH_SHORT).show()
                LogUtils.i(TAG, "所有权限已授予")
            } else {
                // 区分普通拒绝和永久拒绝
                val permanentlyDenied = deniedPermissions.filter { permission ->
                    !shouldShowRequestPermissionRationale(permission)
                }
                
                if (permanentlyDenied.isNotEmpty()) {
                    // 有永久拒绝的权限，显示引导 dialog
                    showPermissionDeniedDialog(permanentlyDenied)
                } else {
                    // 普通拒绝，显示 Toast
                    Toast.makeText(this, "缺少必要权限: $deniedPermissions", Toast.LENGTH_LONG).show()
                    LogUtils.w(TAG, "权限被拒绝: $deniedPermissions")
                }
            }
        }
    }

    /**
     * 显示权限永久拒绝的引导 dialog
     */
    private fun showPermissionDeniedDialog(permanentlyDenied: List<String>) {
        val permissionNames = permanentlyDenied.joinToString("\n") { permission ->
            when (permission) {
                android.Manifest.permission.ACCESS_WIFI_STATE -> "• WiFi 状态访问"
                android.Manifest.permission.CHANGE_WIFI_STATE -> "• WiFi 状态修改"
                android.Manifest.permission.INTERNET -> "• 网络访问"
                android.Manifest.permission.ACCESS_NETWORK_STATE -> "• 网络状态访问"
                android.Manifest.permission.RECORD_AUDIO -> "• 录音（CarLife 需要音频投屏）"
                else -> "• $permission"
            }
        }
        
        AlertDialog.Builder(this)
            .setTitle("需要权限")
            .setMessage("以下权限已被永久拒绝，但应用需要这些权限才能正常工作：\n\n$permissionNames\n\n请在设置中手动授予权限。")
            .setPositiveButton("去设置") { _, _ ->
                openAppSettings()
            }
            .setNegativeButton("取消", null)
            .setCancelable(false)
            .show()
        
        LogUtils.w(TAG, "权限被永久拒绝: $permanentlyDenied")
    }

    /**
     * 打开应用系统设置页面
     */
    private fun openAppSettings() {
        try {
            Intent(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS).apply {
                data = android.net.Uri.fromParts("package", packageName, null)
                startActivity(this)
            }
            LogUtils.i(TAG, "打开应用设置页面")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "打开设置页面失败")
            Toast.makeText(this, "无法打开设置页面", Toast.LENGTH_SHORT).show()
        }
    }

    /**
     * 创建菜单
     */
    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.main_menu, menu)
        return true
    }

    /**
     * 处理菜单项点击
     */
    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            R.id.action_view_logs -> {
                startActivity(Intent(this, LogViewerActivity::class.java))
                true
            }
            R.id.action_clear_logs -> {
                // 清空日志
                com.carlife.wireless.util.LogFileManager.clearAllLogs(this)
                logBuffer.clear()
                binding.tvLog.text = "日志已清空"
                Toast.makeText(this, "日志已清空", Toast.LENGTH_SHORT).show()
                LogUtils.i(TAG, "日志已清空")
                true
            }
            R.id.action_settings -> {
                startActivity(Intent(this, SettingsActivity::class.java))
                true
            }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
