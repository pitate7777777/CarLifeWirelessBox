package com.carlife.wireless.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.ComponentName
import android.content.Intent
import android.content.ServiceConnection
import android.net.nsd.NsdManager
import android.net.nsd.NsdServiceInfo
import android.os.IBinder
import androidx.core.app.NotificationCompat
import com.carlife.wireless.R
import com.carlife.wireless.role.HuRole
import com.carlife.wireless.role.HuRoleListener
import com.carlife.wireless.role.HuState
import com.carlife.wireless.role.MdRole
import com.carlife.wireless.util.LogUtils
import java.io.IOException

/**
 * 连接服务：负责 WiFi AP/热点启动、mDNS 广播、TCP 监听
 *
 * 作为 MD（车机）角色时，启动 MdRole 监听 6 个端口
 *
 * 改进：
 * 1. 添加前台服务通知（Android 8.0+ 必需）
 * 2. 完善状态管理
 * 3. 改进异常处理
 * 4. 添加 mDNS 广播（服务发现）
 * 5. 通过 Broadcast 发送状态更新
 */
class ConnectionService : Service() {

    companion object {
        private const val TAG = "ConnectionService"
        private const val NOTIFICATION_ID = 1001
        private const val CHANNEL_ID = "carlife_service_channel"
        private const val CHANNEL_NAME = "CarLife 服务"
        
        // Broadcast Actions
        const val ACTION_STATE_CHANGED = "com.carlife.wireless.STATE_CHANGED"
        const val EXTRA_STATE = "state"
        const val EXTRA_CONNECTED_CHANNELS = "connected_channels"
        const val EXTRA_LOCAL_IP = "local_ip"
        const val EXTRA_CONNECTION_DURATION = "connection_duration"
        const val EXTRA_ERROR_MESSAGE = "error_message"
    }

    private var mdRole: MdRole? = null
    private var huRole: HuRole? = null
    // private var streamBridgeManager: StreamBridgeManager? = null  // TODO: 暂时禁用，待完善后启用
    private var isRunning = false
    private var nsdManager: NsdManager? = null
    private var registrationListener: NsdManager.RegistrationListener? = null

    override fun onCreate() {
        super.onCreate()
        LogUtils.i(TAG, "ConnectionService created")
        createNotificationChannel()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtils.i(TAG, "ConnectionService started")
        startForegroundService()
        startMdRole()
        isRunning = true
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "ConnectionService destroyed")
        stopVideoAndAudioServices()
        stopMdRole()
        isRunning = false
        // minSdkVersion=26，无需版本判断，直接调用
        stopForeground(STOP_FOREGROUND_REMOVE)
    }

    /**
     * 创建通知渠道（Android 8.0+ 必需）
     */
    private fun createNotificationChannel() {
        // minSdkVersion=26，无需版本判断
        val channel = NotificationChannel(
            CHANNEL_ID,
            CHANNEL_NAME,
            NotificationManager.IMPORTANCE_LOW
        ).apply {
            description = "CarLife 无线连接服务正在运行"
            setShowBadge(false)
        }
        val notificationManager = getSystemService(NotificationManager::class.java)
        notificationManager.createNotificationChannel(channel)
        LogUtils.d(TAG, "通知渠道已创建: $CHANNEL_ID")
    }

    /**
     * 启动前台服务（显示持续通知）
     */
    private fun startForegroundService() {
        val notification = NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle(getString(R.string.app_name))
            .setContentText("服务正在运行")
            .setSmallIcon(R.drawable.ic_notification) // 需要添加此图标
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setOngoing(true)
            .build()

        startForeground(NOTIFICATION_ID, notification)
        LogUtils.i(TAG, "前台服务已启动")
    }

    /**
     * 更新通知内容
     */
    private fun updateNotification(text: String) {
        val notification = NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle(getString(R.string.app_name))
            .setContentText(text)
            .setSmallIcon(R.drawable.ic_notification)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setOngoing(true)
            .build()

        val notificationManager = getSystemService(NotificationManager::class.java)
        notificationManager.notify(NOTIFICATION_ID, notification)
    }

    /** 启动 MD 角色（TCP 监听） */
    private fun startMdRole() {
        LogUtils.i(TAG, "启动 MD 角色（TCP 监听）")

        // TODO: 启动 WiFi AP/热点（需要系统权限或 root）
        LogUtils.d(TAG, "TODO: 启动 WiFi AP/热点（需要系统权限）")

        // 启动 mDNS 广播（服务发现）
        startMdnsService()

        // 启动 TCP 监听（MdRole 启动 6 个 TcpServer）
        if (mdRole == null) {
            try {
                mdRole = MdRole(this)
                // 设置状态监听器，当状态变化时广播给 UI，并在 READY 时启动音视频服务
                mdRole?.setStateListener { newState ->
                    broadcastState()
                    onMdRoleStateChanged(newState)
                }
                mdRole?.start()
                LogUtils.i(TAG, "MdRole 已启动，监听 6 个端口")
                updateNotification("已启动，监听 6 个端口")
                broadcastState()
            } catch (e: Exception) {
                LogUtils.e(TAG, e, "启动 MdRole 失败")
                updateNotification("启动失败: ${e.message}")
            }
        } else {
            LogUtils.w(TAG, "MdRole 已启动，跳过")
        }
    }

    /** 停止所有连接 */
    private fun stopMdRole() {
        LogUtils.i(TAG, "停止所有连接")
        try {
            mdRole?.stop()
            mdRole = null
            LogUtils.i(TAG, "MdRole 已停止")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "停止 MdRole 失败")
        }
        
        // 停止 mDNS 广播
        stopMdnsService()
        
        // 广播状态更新
        broadcastState()
    }

    /** 启动 mDNS 广播（服务发现） */
    private fun startMdnsService() {
        try {
            nsdManager = getSystemService(NSD_SERVICE) as NsdManager
            
            val serviceInfo = NsdServiceInfo().apply {
                serviceName = "CarLife Wireless Box"
                serviceType = "_carlife._tcp."
                port = 7200 // CMD 端口
            }
            
            registrationListener = object : NsdManager.RegistrationListener {
                override fun onRegistrationFailed(serviceInfo: NsdServiceInfo, errorCode: Int) {
                    LogUtils.e(TAG, "mDNS 注册失败: $errorCode")
                }
                
                override fun onUnregistrationFailed(serviceInfo: NsdServiceInfo, errorCode: Int) {
                    LogUtils.e(TAG, "mDNS 注销失败: $errorCode")
                }
                
                override fun onServiceRegistered(serviceInfo: NsdServiceInfo) {
                    LogUtils.i(TAG, "mDNS 服务已注册: ${serviceInfo.serviceName}")
                    updateNotification("mDNS 广播已启动")
                }
                
                override fun onServiceUnregistered(serviceInfo: NsdServiceInfo) {
                    LogUtils.i(TAG, "mDNS 服务已注销")
                }
            }
            
            nsdManager?.registerService(serviceInfo, NsdManager.PROTOCOL_DNS_SD, registrationListener)
            LogUtils.i(TAG, "正在注册 mDNS 服务...")
            
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "启动 mDNS 广播失败")
        }
    }

    /** 停止 mDNS 广播 */
    private fun stopMdnsService() {
        try {
            registrationListener?.let { listener ->
                nsdManager?.unregisterService(listener)
                registrationListener = null
                nsdManager = null
                LogUtils.i(TAG, "mDNS 服务已停止")
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "停止 mDNS 广播失败")
        }
    }

    /** 广播状态更新给 UI */
    private fun broadcastState() {
        val stateText = getConnectionStateText()
        val connectedChannels = getConnectedChannelCount()
        val localIp = getLocalIpAddress()
        val duration = getConnectionDuration()
        val errorMsg = getLastErrorMessage()
        
        val intent = Intent(ACTION_STATE_CHANGED).apply {
            `package` = packageName          // 限制接收者，防止外部应用拦截
            putExtra(EXTRA_STATE, stateText)
            putExtra(EXTRA_CONNECTED_CHANNELS, connectedChannels)
            putExtra(EXTRA_LOCAL_IP, localIp)
            putExtra(EXTRA_CONNECTION_DURATION, duration)
            putExtra(EXTRA_ERROR_MESSAGE, errorMsg)
        }
        sendBroadcast(intent)
        LogUtils.d(TAG, "状态已广播: $stateText, 通道数: $connectedChannels, IP: $localIp")
    }
    
    // VideoService 绑定
    private var videoService: VideoService? = null
    private val videoServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            videoService = (binder as? VideoService.VideoBinder)?.getService()
            LogUtils.i(TAG, "VideoService 已绑定")
            videoService?.startVideo()
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            videoService = null
            LogUtils.w(TAG, "VideoService 连接断开")
        }
    }
    
    // AudioService 绑定
    private var audioService: AudioService? = null
    private val audioServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            audioService = (binder as? AudioService.AudioBinder)?.getService()
            LogUtils.i(TAG, "AudioService 已绑定")
            audioService?.startAudio()
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            audioService = null
            LogUtils.w(TAG, "AudioService 连接断开")
        }
    }
    
    /**
     * 当 MdRole 状态变化时，启动/停止 HuRole 和音视频服务
     */
    private fun onMdRoleStateChanged(newState: MdRole.MdState) {
        when (newState) {
            MdRole.MdState.READY -> {
                LogUtils.i(TAG, "MdRole 进入 READY，启动 HuRole")
                startHuRole()
            }
            MdRole.MdState.ERROR,
            MdRole.MdState.IDLE -> {
                LogUtils.i(TAG, "MdRole 离开 READY，停止 HuRole 和音视频服务")
                stopHuRole()
                stopVideoAndAudioServices()
            }
            else -> { /* 其他状态不处理 */ }
        }
    }
    
    /**
     * 当 HuRole 状态变化时，启动/停止音视频服务
     */
    private fun onHuRoleStateChanged(newState: HuState) {
        when (newState) {
            HuState.CONNECTED -> {
                LogUtils.i(TAG, "HuRole 进入 CONNECTED，启动音视频服务")
                // TODO: 启动 StreamBridgeManager 进行数据流转发
                // startStreamBridges()
                startVideoAndAudioServices()
            }
            HuState.DISCONNECTED -> {
                LogUtils.i(TAG, "HuRole 离开 CONNECTED，停止音视频服务")
                // stopStreamBridges()
                stopVideoAndAudioServices()
            }
            else -> { /* 其他状态不处理 */ }
        }
    }
    
    /**
     * 启动并绑定 VideoService 和 AudioService
     */
    private fun startVideoAndAudioServices() {
        val videoIntent = Intent(this, VideoService::class.java)
        startService(videoIntent)
        bindService(videoIntent, videoServiceConnection, BIND_AUTO_CREATE)
        
        val audioIntent = Intent(this, AudioService::class.java)
        startService(audioIntent)
        bindService(audioIntent, audioServiceConnection, BIND_AUTO_CREATE)
        
        updateNotification("已就绪，正在传输音视频")
    }
    
    /**
     * 停止 VideoService 和 AudioService
     */
    private fun stopVideoAndAudioServices() {
        videoService?.stopVideo()
        audioService?.stopAudio()
        
        try {
            unbindService(videoServiceConnection)
        } catch (e: Exception) { /* 未绑定则忽略 */ }
        try {
            unbindService(audioServiceConnection)
        } catch (e: Exception) { /* 未绑定则忽略 */ }
        
        stopService(Intent(this, VideoService::class.java))
        stopService(Intent(this, AudioService::class.java))
        
        videoService = null
        audioService = null
        
        updateNotification("已停止音视频传输")
    }
    
    /**
     * 获取本地 IP 地址
     */
    private fun getLocalIpAddress(): String {
        return try {
            val interfaces = java.net.NetworkInterface.getNetworkInterfaces()
            for (intf in interfaces) {
                val addrs = intf.inetAddresses
                for (addr in addrs) {
                    if (!addr.isLoopbackAddress && !addr.isLinkLocalAddress) {
                        val ip = addr.hostAddress ?: continue
                        if (ip.contains(".")) {
                            return ip
                        }
                    }
                }
            }
            "--"
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "获取 IP 地址失败")
            "--"
        }
    }
    
    /**
     * 获取连接持续时间（毫秒）
     */
    private fun getConnectionDuration(): Long {
        return mdRole?.getConnectionDuration() ?: 0L
    }
    
    /**
     * 获取最后的错误消息
     */
    private fun getLastErrorMessage(): String {
        return mdRole?.getLastErrorMessage() ?: ""
    }

    /** 供 Activity 查询服务是否运行中 */
    fun isServiceRunning(): Boolean = isRunning

    /** 获取连接状态文本 */
    fun getConnectionStateText(): String {
        val state = mdRole?.getState()
        return when (state) {
            MdRole.MdState.IDLE -> "空闲"
            MdRole.MdState.STARTING -> "启动中"
            MdRole.MdState.WAITING_CONNECTION -> "等待连接"
            MdRole.MdState.CONNECTED -> "已连接（部分）"
            MdRole.MdState.ALL_CONNECTED -> "全部通道已连接"
            MdRole.MdState.HANDSHAKING -> "握手中"
            MdRole.MdState.READY -> "就绪"
            MdRole.MdState.ERROR -> "错误"
            null -> "未知"
        }
    }

    /** 获取已连接通道数 */
    fun getConnectedChannelCount(): Int {
        return mdRole?.let {
            if (it.getState() == MdRole.MdState.READY) 6 else 0
        } ?: 0
    }
    
    /**
     * 启动 HuRole（连接到手机）
     */
    private fun startHuRole() {
        LogUtils.i(TAG, "启动 HuRole（连接到手机）...")
        
        if (huRole != null) {
            LogUtils.w(TAG, "HuRole 已启动，跳过")
            return
        }
        
        try {
            huRole = HuRole(this)
            huRole?.listener = object : HuRoleListener {
                override fun onStateChanged(state: HuState, reason: String?) {
                    LogUtils.i(TAG, "HuRole state changed: $state, reason: $reason")
                    onHuRoleStateChanged(state)
                }
                
                override fun onVideoFrameReceived(frame: ByteArray) {
                    LogUtils.d(TAG, "HuRole video frame received: ${frame.size} bytes")
                }
                
                override fun onAudioFrameReceived(frame: ByteArray) {
                    LogUtils.d(TAG, "HuRole audio frame received: ${frame.size} bytes")
                }
                
                override fun onTtsFrameReceived(data: ByteArray) {
                    LogUtils.d(TAG, "HuRole TTS received: ${data.size} bytes")
                }
                
                override fun onVrFrameReceived(data: ByteArray) {
                    LogUtils.d(TAG, "HuRole VR received: ${data.size} bytes")
                }
                
                override fun onControlReceived(payloadType: Int, payload: ByteArray) {
                    LogUtils.d(TAG, "HuRole control received: type=$payloadType, len=${payload.size}")
                }
                
                override fun onError(error: String) {
                    LogUtils.e(TAG, "HuRole error: $error")
                }
            }
            huRole?.connect()
            LogUtils.i(TAG, "HuRole 已启动，正在连接手机...")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "启动 HuRole 失败")
        }
    }
    
    /**
     * 停止 HuRole
     */
    private fun stopHuRole() {
        LogUtils.i(TAG, "停止 HuRole...")
        try {
            huRole?.disconnect("ConnectionService stopped")
            huRole = null
            LogUtils.i(TAG, "HuRole 已停止")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "停止 HuRole 失败")
        }
    }
    
    /**
     * TODO: 启动 StreamBridgeManager 进行数据流转发
     * 待 HuRole 和 MdRole 完善后启用
     */
    private fun startStreamBridges() {
        LogUtils.d(TAG, "TODO: startStreamBridges() - 待完善")
        // TODO: 实现 StreamBridge 集成
    }
    
    /**
     * TODO: 停止所有 StreamBridge
     */
    private fun stopStreamBridges() {
        LogUtils.d(TAG, "TODO: stopStreamBridges() - 待完善")
        // TODO: 停止所有 StreamBridge
    }
}
