package com.carlife.wireless.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.net.nsd.NsdManager
import android.net.nsd.NsdServiceInfo
import android.os.IBinder
import androidx.core.app.NotificationCompat
import com.carlife.wireless.R
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.network.DynamicBitrate
import com.carlife.wireless.network.UdpDiscoveryService
import com.carlife.wireless.role.HuRole
import com.carlife.wireless.role.HuRoleListener
import com.carlife.wireless.role.HuState
import com.carlife.wireless.role.MdRole
import com.carlife.wireless.usb.UsbTetheringManager
import com.carlife.wireless.util.LogFileManager
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import java.io.IOException
import java.lang.ref.WeakReference
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong

/**
 * 连接服务：负责 WiFi AP/热点启动、mDNS 广播、TCP 连接
 *
 * 作为桥接盒角色：
 * - MdRole 作为客户端连接手机 B 的 CarWith（HU 端口）
 * - HuRole 作为服务端监听车机连接（MD 端口）
 * 协调 VideoService、AudioService、TouchService 的生命周期
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
        const val EXTRA_USB_STATE = "usb_state"
        const val EXTRA_CAR_IP = "car_ip"
        const val EXTRA_SIGNAL_LEVEL = "signal_level"
        const val EXTRA_DYNAMIC_BITRATE = "dynamic_bitrate"

        /** 请求 MediaProjection 授权的 action */
        const val ACTION_REQUEST_PROJECTION = "com.carlife.wireless.REQUEST_PROJECTION"

        /** 视频帧广播（用于本地预览） */
        const val ACTION_VIDEO_FRAME = "com.carlife.wireless.VIDEO_FRAME"
        const val EXTRA_FRAME_DATA = "frame_data"
        const val EXTRA_FRAME_IS_KEY = "frame_is_key"

        /** 当前运行的 ConnectionService 实例（供 MainActivity 传递 MediaProjection） */
        private var instanceRef: WeakReference<ConnectionService>? = null

        /** 服务是否正在运行（静态标志，比 getRunningServices 可靠） */
        @Volatile
        @JvmStatic
        var isServiceActive: Boolean = false
            private set

        @JvmStatic
        val instance: ConnectionService?
            get() = instanceRef?.get()
    }

    private var mdRole: MdRole? = null
    private var huRole: HuRole? = null
    /** HuRole 最近一次错误（huRole 被置 null 后仍保留，供 UI 显示） */
    private var lastHuRoleError: String = ""
    private var isRunning = false
    private val serviceScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var nsdManager: NsdManager? = null
    private var registrationListener: NsdManager.RegistrationListener? = null

    // MediaProjection
    private var mediaProjection: MediaProjection? = null

    // USB 网络共享
    private var usbTetheringManager: UsbTetheringManager? = null

    // 动态码率
    private var dynamicBitrate: DynamicBitrate? = null

    // UDP 广播发现服务（mDNS 备用方案）
    private var udpDiscoveryService: UdpDiscoveryService? = null

    // 子服务引用
    private var videoService: VideoService? = null
    private var audioService: AudioService? = null
    private var touchService: TouchService? = null
    private var protocolService: ProtocolService? = null

    // 预览帧计数器（每 N 帧广播 1 帧给 MainActivity）
    private val previewFrameCounter = AtomicLong(0)

    // 自动重连
    private val huReconnectCount = AtomicInteger(0)
    private val maxHuReconnect = 5
    private var huReconnectRunnable: Runnable? = null
    private val reconnectHandler = android.os.Handler(android.os.Looper.getMainLooper())

    override fun onCreate() {
        super.onCreate()
        instanceRef = WeakReference(this)
        LogUtils.i(TAG, "ConnectionService created")
        createNotificationChannel()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtils.i(TAG, "ConnectionService started")
        isServiceActive = true
        startForegroundService()
        // 只启动 HuRole 连接手机 B 的 CarWith（HU 端口）
        // MdRole 不在此启动——它用于车机侧连接（USB 网络共享），
        // 而非手机 B 侧。之前 MdRole 和 HuRole 同时连接 Phone B 的
        // 同一组 HU 端口（7240/8240/9240...），导致 CarWith 收到
        // 双重 HU 连接，协议状态机混乱，握手卡住。
        serviceScope.launch {
            startHuRole()
        }
        startTouchService()
        startProtocolService()
        startUsbMonitoring()
        startUdpDiscovery()
        // mDNS 仍然启动，供手机 B 发现本设备
        startMdnsService()
        isRunning = true
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        instanceRef = null
        isServiceActive = false
        LogUtils.i(TAG, "ConnectionService destroyed")
        serviceScope.cancel()
        stopAllServices()
        stopMdRole()
        stopUsbMonitoring()
        stopUdpDiscovery()
        isRunning = false
        stopForeground(STOP_FOREGROUND_REMOVE)
        LogFileManager.flush()
    }

    /**
     * 设置 MediaProjection（由 MainActivity 传递）
     * 设置后会检查双端是否就绪，就绪则自动启动音视频服务
     */
    fun setMediaProjection(projection: MediaProjection) {
        mediaProjection = projection
        LogUtils.i(TAG, "MediaProjection received")
        tryStartVideoAndAudioServices()
    }

    // ==================== 通知 ====================

    private fun createNotificationChannel() {
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
    }

    private fun startForegroundService() {
        val notification = buildNotification("服务正在运行")
        startForeground(NOTIFICATION_ID, notification)
        LogUtils.i(TAG, "前台服务已启动")
    }

    private fun updateNotification(text: String) {
        val notificationManager = getSystemService(NotificationManager::class.java)
        notificationManager.notify(NOTIFICATION_ID, buildNotification(text))
    }

    private fun buildNotification(text: String): Notification {
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle(getString(R.string.app_name))
            .setContentText(text)
            .setSmallIcon(R.drawable.ic_notification)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setOngoing(true)
            .build()
    }

    // ==================== UDP 广播发现 ====================

    private fun startUdpDiscovery() {
        if (udpDiscoveryService != null) return
        try {
            udpDiscoveryService = UdpDiscoveryService().apply { start() }
            LogUtils.i(TAG, "UDP discovery service started")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "启动 UDP 发现服务失败")
        }
    }

    private fun stopUdpDiscovery() {
        udpDiscoveryService?.stop()
        udpDiscoveryService = null
    }

    // ==================== MD 角色 ====================

    private fun startMdRole() {
        LogUtils.i(TAG, "启动 MD 角色（连接手机 B CarWith）")
        startMdnsService()

        if (mdRole == null) {
            try {
                mdRole = MdRole(this)
                mdRole?.setStateListener { newState ->
                    broadcastState()
                    onMdRoleStateChanged(newState)
                }
                mdRole?.start()
                LogUtils.i(TAG, "MdRole 已启动，正在连接手机 B CarWith")
                updateNotification("正在连接手机 B...")
                broadcastState()
            } catch (e: Exception) {
                LogUtils.e(TAG, e, "启动 MdRole 失败")
                updateNotification("连接手机B失败: ${e.message}")
            }
        }
    }

    private fun stopMdRole() {
        LogUtils.i(TAG, "停止所有连接")
        try {
            mdRole?.stop()
            mdRole = null
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "停止 MdRole 失败")
        }
        stopMdnsService()
        broadcastState()
    }

    // ==================== mDNS ====================

    // ==================== USB 网络共享 ====================

    private fun startUsbMonitoring() {
        if (usbTetheringManager != null) return

        usbTetheringManager = UsbTetheringManager(this).apply {
            setListener(object : UsbTetheringManager.UsbStateListener {
                override fun onUsbStateChanged(state: UsbTetheringManager.UsbState, carIp: String?) {
                    LogUtils.i(TAG, "USB 状态: $state, 车机 IP: ${carIp ?: "无"}")
                    when (state) {
                        UsbTetheringManager.UsbState.TETHERING -> {
                            updateNotification("USB 网络共享已开启，等待车机连接...")
                            // 自动扫描车机设备
                            scanForCarDevice { ip ->
                                if (ip != null) {
                                    LogUtils.i(TAG, "发现车机: $ip")
                                    updateNotification("车机已连接: $ip")
                                }
                            }
                        }
                        UsbTetheringManager.UsbState.CAR_CONNECTED -> {
                            updateNotification("车机已通过 USB 连接: $carIp")
                        }
                        UsbTetheringManager.UsbState.DISCONNECTED -> {
                            updateNotification("USB 未连接")
                        }
                        UsbTetheringManager.UsbState.CONNECTED -> {
                            updateNotification("USB 已连接，请开启网络共享")
                        }
                    }
                    broadcastState()
                }

                override fun onCarDeviceFound(carIp: String) {
                    LogUtils.i(TAG, "车机设备发现: $carIp")
                }
            })
            startMonitoring()
        }

        // 初始检测
        val state = usbTetheringManager?.checkUsbState() ?: UsbTetheringManager.UsbState.DISCONNECTED
        LogUtils.i(TAG, "USB 初始状态: $state")
    }

    private fun stopUsbMonitoring() {
        usbTetheringManager?.stopMonitoring()
        usbTetheringManager = null
    }

    fun getUsbTetheringManager(): UsbTetheringManager? = usbTetheringManager

    // ==================== 动态码率 ====================

    private fun startDynamicBitrate() {
        if (dynamicBitrate != null) return

        val baseBitrate = SettingsManager.getBitrate(this)
        dynamicBitrate = DynamicBitrate(this).apply {
            setBaseBitrate(baseBitrate)
            setListener(object : DynamicBitrate.BitrateChangeListener {
                override fun onBitrateChanged(newBitrateKbps: Int, signalLevel: DynamicBitrate.SignalLevel, rssi: Int) {
                    LogUtils.i(TAG, "动态码率调整: ${newBitrateKbps}kbps (${signalLevel.label}, RSSI=$rssi)")
                    // 通知 VideoService 调整码率
                    videoService?.setVideoParameters(
                        SettingsManager.getResolution(this@ConnectionService).first,
                        SettingsManager.getResolution(this@ConnectionService).second,
                        newBitrateKbps * 1000,
                        SettingsManager.getFramerate(this@ConnectionService)
                    )
                    updateNotification("码率: ${newBitrateKbps}kbps (${signalLevel.label})")
                }
            })
            start()
        }
        LogUtils.i(TAG, "动态码率调节启动, 基础码率: ${baseBitrate / 1000}kbps")
    }

    private fun stopDynamicBitrate() {
        dynamicBitrate?.stop()
        dynamicBitrate = null
    }

    fun getDynamicBitrate(): DynamicBitrate? = dynamicBitrate

    private fun startMdnsService() {
        try {
            nsdManager = getSystemService(NSD_SERVICE) as NsdManager

            // 获取本机 IP 地址，设置到 mDNS 服务中
            // host=null 会导致某些设备无法通过 mDNS 解析到 IP
            val localIp = com.carlife.wireless.util.NetworkUtils.getLocalIpAddress()
            val serviceInfo = NsdServiceInfo().apply {
                serviceName = "CarLife Wireless Box"
                serviceType = "_carlife._tcp."
                port = 7200
                // 设置主机地址，确保 mDNS 能正确解析到本机 IP
                if (localIp != null) {
                    try {
                        host = java.net.InetAddress.getByName(localIp)
                        LogUtils.i(TAG, "mDNS host set to: $localIp")
                    } catch (e: Exception) {
                        LogUtils.w(TAG, "Failed to set mDNS host: ${e.message}")
                    }
                } else {
                    LogUtils.w(TAG, "Local IP is null, mDNS host not set")
                }
            }

            registrationListener = object : NsdManager.RegistrationListener {
                override fun onRegistrationFailed(info: NsdServiceInfo, errorCode: Int) {
                    LogUtils.e(TAG, "mDNS 注册失败: $errorCode")
                }
                override fun onUnregistrationFailed(info: NsdServiceInfo, errorCode: Int) {
                    LogUtils.e(TAG, "mDNS 注销失败: $errorCode")
                }
                override fun onServiceRegistered(info: NsdServiceInfo) {
                    LogUtils.i(TAG, "mDNS 服务已注册: ${info.serviceName}, host=$localIp, port=7200")
                }
                override fun onServiceUnregistered(info: NsdServiceInfo) {
                    LogUtils.i(TAG, "mDNS 服务已注销")
                }
            }
            nsdManager?.registerService(serviceInfo, NsdManager.PROTOCOL_DNS_SD, registrationListener)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "启动 mDNS 广播失败")
        }
    }

    private fun stopMdnsService() {
        try {
            registrationListener?.let {
                nsdManager?.unregisterService(it)
                registrationListener = null
                nsdManager = null
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "停止 mDNS 广播失败")
        }
    }

    // ==================== HU 角色 ====================

    private fun startHuRole() {
        // 如果已有 HuRole 且仍在连接中，跳过
        if (huRole != null && huRole?.getState() != HuState.DISCONNECTED && huRole?.getState() != HuState.IDLE) {
            LogUtils.w(TAG, "HuRole 已启动且状态为 ${huRole?.getState()}，跳过")
            return
        }

        // 清理旧的已断开的 HuRole 实例（释放端口）
        if (huRole != null) {
            LogUtils.i(TAG, "清理旧 HuRole 实例...")
            try {
                huRole?.release()
            } catch (_: Exception) {}
            huRole = null
        }

        try {
            val phoneBIp = com.carlife.wireless.util.SettingsManager.getPhoneBIp(this)
            LogUtils.i(TAG, "Phone B IP: $phoneBIp")
            huRole = HuRole(this, phoneBIp)

            // 应用保存的通道开关配置
            val savedConfig = com.carlife.wireless.util.SettingsManager.getChannelConfig(this)
            huRole?.channelConfig = HuRole.ChannelConfig(
                cmdEnabled = savedConfig.cmdEnabled,
                videoEnabled = savedConfig.videoEnabled,
                ctrlEnabled = savedConfig.ctrlEnabled,
                mediaEnabled = savedConfig.mediaEnabled,
                ttsEnabled = savedConfig.ttsEnabled,
                vrEnabled = savedConfig.vrEnabled
            )
            LogUtils.i(TAG, "Channel config applied: media=${savedConfig.mediaEnabled}, tts=${savedConfig.ttsEnabled}, vr=${savedConfig.vrEnabled}")

            // 将 HuRole 注入 MdRole，实现车机→手机B的数据转发
            val hr = huRole
            if (hr != null) mdRole?.setHuRole(hr)
            huRole?.listener = object : HuRoleListener {
                override fun onStateChanged(state: HuState, reason: String?) {
                    LogUtils.i(TAG, "HuRole state: $state ($reason)")
                    onHuRoleStateChanged(state)
                }

                override fun onVideoFrameReceived(header: ChannelHeader.Media, frame: ByteArray) {
                    // 手机B的视频帧 → 转发到车机（使用 CarLife 媒体格式）
                    protocolService?.reportMessageReceived(ProtocolService.Channel.VIDEO, header.payloadType, frame.size)
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_VIDEO,
                        header.payloadType,
                        frame
                    )
                    protocolService?.reportMessageSent(ProtocolService.Channel.VIDEO, header.payloadType, frame.size)
                    // 广播给 MainActivity 用于本地预览（每 3 帧取 1 帧，减少开销）
                    if (previewFrameCounter.incrementAndGet() % 3 == 0L) {
                        broadcastVideoFrame(frame, false)
                    }
                }

                override fun onAudioFrameReceived(header: ChannelHeader.Media, frame: ByteArray) {
                    protocolService?.reportMessageReceived(ProtocolService.Channel.MEDIA, header.payloadType, frame.size)
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_MEDIA,
                        header.payloadType,
                        frame
                    )
                    protocolService?.reportMessageSent(ProtocolService.Channel.MEDIA, header.payloadType, frame.size)
                }

                override fun onTtsFrameReceived(header: ChannelHeader.Media, data: ByteArray) {
                    protocolService?.reportMessageReceived(ProtocolService.Channel.TTS, header.payloadType, data.size)
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_TTS,
                        header.payloadType,
                        data
                    )
                    protocolService?.reportMessageSent(ProtocolService.Channel.TTS, header.payloadType, data.size)
                }

                override fun onVrFrameReceived(header: ChannelHeader.Media, data: ByteArray) {
                    protocolService?.reportMessageReceived(ProtocolService.Channel.VR, header.payloadType, data.size)
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_VR,
                        header.payloadType,
                        data
                    )
                    protocolService?.reportMessageSent(ProtocolService.Channel.VR, header.payloadType, data.size)
                }

                override fun onControlReceived(header: ChannelHeader.Cmd, payload: ByteArray) {
                    // 手机B的控制响应 → 转发到车机（CarLife CMD 格式）
                    protocolService?.reportMessageReceived(ProtocolService.Channel.CTRL, header.payloadType, payload.size)
                    mdRole?.sendControlData(header.payloadType, payload)
                    protocolService?.reportMessageSent(ProtocolService.Channel.CTRL, header.payloadType, payload.size)
                }

                override fun onError(error: String) {
                    LogUtils.e(TAG, "HuRole error: $error")
                    updateNotification("连接失败: $error")
                    broadcastState()
                }

                override fun onPortCheckResult(openPorts: Int, totalPorts: Int, closedPorts: List<String>) {
                    if (openPorts < totalPorts) {
                        val msg = "CarWith 端口检测: $openPorts/$totalPorts 已监听"
                        LogUtils.w(TAG, msg)
                        if (closedPorts.isNotEmpty()) {
                            updateNotification("等待 CarWith 开启 (${openPorts}/${totalPorts})")
                        }
                    } else {
                        LogUtils.i(TAG, "All CarWith ports ready")
                    }
                }
            }
            huRole?.connect()
            protocolService?.startHandshake()
            LogUtils.i(TAG, "HuRole 已启动，正在连接手机...")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "启动 HuRole 失败")
        }
    }

    private fun stopHuRole() {
        try {
            huRole?.disconnect("ConnectionService stopped")
            huRole = null
            LogUtils.i(TAG, "HuRole 已停止")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "停止 HuRole 失败")
        }
    }

    // ==================== 子服务管理 ====================

    /** VideoService 绑定 */
    private val videoServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            videoService = (binder as? VideoService.VideoBinder)?.getService()
            LogUtils.i(TAG, "VideoService 已绑定")
            // 设置 MediaProjection 并启动
            mediaProjection?.let { proj ->
                videoService?.setMediaProjection(proj)
                videoService?.setFrameCallback(object : VideoService.FrameCallback {
                    override fun onFrame(frame: ByteArray, isKeyFrame: Boolean) {
                        // 本地采集的视频帧 → 转发到车机
                        mdRole?.sendData(
                            com.carlife.wireless.util.Constants.PortMD.MD_VIDEO,
                            0x00020001, // MSG_VIDEO_DATA
                            frame
                        )
                    }
                    override fun onError(error: String) {
                        LogUtils.e(TAG, "VideoService error: $error")
                    }
                })
                videoService?.startVideo()
            }
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            videoService = null
        }
    }

    /** AudioService 绑定 */
    private val audioServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            audioService = (binder as? AudioService.AudioBinder)?.getService()
            LogUtils.i(TAG, "AudioService 已绑定")
            mediaProjection?.let { proj ->
                audioService?.setMediaProjection(proj)
                audioService?.setAudioCallback(object : AudioService.AudioCallback {
                    override fun onAudioData(data: ByteArray) {
                        mdRole?.sendData(
                            com.carlife.wireless.util.Constants.PortMD.MD_MEDIA,
                            0x00030006, // MSG_MEDIA_DATA
                            data
                        )
                    }
                    override fun onError(error: String) {
                        LogUtils.e(TAG, "AudioService error: $error")
                    }
                })
                audioService?.startAudio()
            }
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            audioService = null
        }
    }

    /** ProtocolService 绑定 */
    private val protocolServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            protocolService = (binder as? ProtocolService.ProtocolBinder)?.getService()
            LogUtils.i(TAG, "ProtocolService 已绑定")
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            protocolService = null
        }
    }

    private fun startProtocolService() {
        val intent = Intent(this, ProtocolService::class.java)
        startService(intent)
        bindService(intent, protocolServiceConnection, BIND_AUTO_CREATE)
    }

    /** TouchService 绑定 */
    private val touchServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            touchService = (binder as? TouchService.TouchBinder)?.getService()
            LogUtils.i(TAG, "TouchService 已绑定")
            // 设置 AccessibilityService 注入器（支持触摸 + 按键注入）
            CarAccessibilityService.instance?.let { accessibility ->
                touchService?.setTouchInjector(TouchService.CarAccessibilityServiceInjector(accessibility))
            }
            touchService?.startTouchListener()
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            touchService = null
        }
    }

    private fun startTouchService() {
        val intent = Intent(this, TouchService::class.java)
        startService(intent)
        bindService(intent, touchServiceConnection, BIND_AUTO_CREATE)
    }

    private fun startVideoAndAudioServices() {
        if (mediaProjection == null) {
            LogUtils.w(TAG, "MediaProjection not available, requesting...")
            requestMediaProjection()
            return
        }

        // 启动动态码率调节
        startDynamicBitrate()

        // 启动并绑定 VideoService
        val videoIntent = Intent(this, VideoService::class.java)
        startService(videoIntent)
        bindService(videoIntent, videoServiceConnection, BIND_AUTO_CREATE)

        // 启动并绑定 AudioService
        val audioIntent = Intent(this, AudioService::class.java)
        startService(audioIntent)
        bindService(audioIntent, audioServiceConnection, BIND_AUTO_CREATE)

        updateNotification("已就绪，正在传输音视频")
    }

    private fun stopVideoAndAudioServices() {
        stopDynamicBitrate()
        videoService?.stopVideo()
        audioService?.stopAudio()

        try { unbindService(videoServiceConnection) } catch (_: Exception) {}
        try { unbindService(audioServiceConnection) } catch (_: Exception) {}

        stopService(Intent(this, VideoService::class.java))
        stopService(Intent(this, AudioService::class.java))

        videoService = null
        audioService = null

        updateNotification("已停止音视频传输")
    }

    private fun stopAllServices() {
        cancelHuReconnect()
        stopVideoAndAudioServices()

        touchService?.stopTouchListener()
        try { unbindService(touchServiceConnection) } catch (_: Exception) {}
        stopService(Intent(this, TouchService::class.java))
        touchService = null

        try { unbindService(protocolServiceConnection) } catch (_: Exception) {}
        stopService(Intent(this, ProtocolService::class.java))
        protocolService = null

        stopHuRole()
    }

    /**
     * 请求 MediaProjection 授权
     * 通过发送广播让 MainActivity 启动 MediaProjection 请求
     */
    private fun requestMediaProjection() {
        val intent = Intent(ACTION_REQUEST_PROJECTION).apply {
            `package` = packageName
        }
        sendBroadcast(intent)
        LogUtils.i(TAG, "MediaProjection requested via broadcast")
    }

    // ==================== 状态管理 ====================

    private fun onMdRoleStateChanged(newState: MdRole.MdState) {
        when (newState) {
            MdRole.MdState.READY -> {
                LogUtils.i(TAG, "MdRole READY（车机已连接）")
                updateNotification("车机已连接")
                protocolService?.reportConnectionEvent(ProtocolService.Channel.CMD, true, "车机握手完成")
                // 车机就绪后，检查是否可以启动音视频服务
                tryStartVideoAndAudioServices()
            }
            MdRole.MdState.ERROR,
            MdRole.MdState.IDLE -> {
                LogUtils.i(TAG, "MdRole 离开 READY")
                protocolService?.reportConnectionEvent(ProtocolService.Channel.CMD, false, "车机断开")
                stopVideoAndAudioServices()
            }
            else -> {}
        }
        broadcastState()
    }

    private fun onHuRoleStateChanged(newState: HuState) {
        when (newState) {
            HuState.CONNECTED -> {
                LogUtils.i(TAG, "HuRole CONNECTED（手机B已连接）")
                huReconnectCount.set(0)
                cancelHuReconnect()
                lastHuRoleError = ""
                updateNotification("手机B已连接")
                protocolService?.reportConnectionEvent(ProtocolService.Channel.CMD, true, "手机B握手完成")
                protocolService?.completeHandshake(true)
                // 手机B就绪后，检查是否可以启动音视频服务
                tryStartVideoAndAudioServices()
            }
            HuState.DISCONNECTED -> {
                LogUtils.i(TAG, "HuRole DISCONNECTED")
                val huError = huRole?.getLastError() ?: ""
                if (huError.isNotEmpty()) {
                    lastHuRoleError = huError
                    LogUtils.w(TAG, "HuRole error: $huError")
                    updateNotification("手机B: $huError")
                    protocolService?.reportConnectionEvent(ProtocolService.Channel.CMD, false, huError)
                    protocolService?.completeHandshake(false, huError)
                }
                stopVideoAndAudioServices()
                // 不要在这里调 disconnect() 或置 null！
                // 此回调可能来自 connect() 内部的清理阶段（"preparing new connection"），
                // 此时协程还没启动，disconnect+null 会导致刚启动的 TcpServer 成为孤儿，
                // 端口永远不会释放 → EADDRINUSE。
                // 让 scheduleHuReconnect/startHuRole 负责清理旧实例。
                scheduleHuReconnect()
            }
            else -> {}
        }
        broadcastState()
    }

    /**
     * 检查手机B是否已连接，就绪则启动音视频服务
     *
     * 只检查 HuRole（手机B连接）状态。MdRole 用于车机侧（USB），
     * 与手机B的无线连接无关，不应阻塞音视频服务启动。
     */
    private fun tryStartVideoAndAudioServices() {
        val huConnected = huRole?.isConnected() == true

        if (huConnected) {
            LogUtils.i(TAG, "手机B已连接，启动音视频服务")
            updateNotification("投屏中：车机 ↔ 手机B")
            startVideoAndAudioServices()
        } else {
            LogUtils.d(TAG, "等待手机B连接...")
        }
    }

    /**
     * 调度 HuRole 自动重连
     * 指数退避：5s, 10s, 20s, 40s, 80s
     */
    private fun scheduleHuReconnect() {
        if (!isRunning) return

        val attempt = huReconnectCount.incrementAndGet()
        if (attempt > maxHuReconnect) {
            LogUtils.w(TAG, "HuRole 重连失败，已达最大重试次数 ($maxHuReconnect)")
            updateNotification("连接手机 B 失败，请检查热点")
            broadcastState()
            return
        }

        val delayMs = com.carlife.wireless.util.Constants.Reconnect.DELAY_MS * (1L shl (attempt - 1))
        LogUtils.i(TAG, "HuRole 将在 ${delayMs}ms 后重连 (第 $attempt 次)")
        updateNotification("连接中断，${delayMs / 1000}秒后重连 (第 $attempt 次)")

        cancelHuReconnect()
        val runnable = Runnable {
            if (isRunning && huRole == null) {
                LogUtils.i(TAG, "HuRole 自动重连: 第 $attempt 次")
                startHuRole()
            }
        }
        huReconnectRunnable = runnable
        reconnectHandler.postDelayed(runnable, delayMs)
    }

    private fun cancelHuReconnect() {
        huReconnectRunnable?.let { reconnectHandler.removeCallbacks(it) }
        huReconnectRunnable = null
    }

    // ==================== 广播状态 ====================

    private fun broadcastState() {
        val intent = Intent(ACTION_STATE_CHANGED).apply {
            `package` = packageName
            putExtra(EXTRA_STATE, getConnectionStateText())
            putExtra(EXTRA_CONNECTED_CHANNELS, getConnectedChannelCount())
            putExtra(EXTRA_LOCAL_IP, getLocalIpAddress())
            putExtra(EXTRA_CONNECTION_DURATION, getConnectionDuration())
            putExtra(EXTRA_ERROR_MESSAGE, getLastErrorMessage())
            putExtra(EXTRA_USB_STATE, usbTetheringManager?.getState()?.name ?: "UNKNOWN")
            putExtra(EXTRA_CAR_IP, usbTetheringManager?.getCarIp() ?: "")
            putExtra(EXTRA_SIGNAL_LEVEL, dynamicBitrate?.getCurrentLevel()?.name ?: "DISCONNECTED")
            putExtra(EXTRA_DYNAMIC_BITRATE, dynamicBitrate?.getCurrentBitrateKbps() ?: 0)
        }
        sendBroadcast(intent)
    }

    // ==================== 公开查询方法 ====================

    fun isServiceRunning(): Boolean = isRunning

    /**
     * 获取当前错误信息（供 WifiGuideActivity 等 UI 直接读取）
     */
    fun getBroadcastErrorMessage(): String = getLastErrorMessage()

    fun getConnectionStateText(): String {
        val mdState = when (mdRole?.getState()) {
            MdRole.MdState.IDLE -> "空闲"
            MdRole.MdState.STARTING -> "启动中"
            MdRole.MdState.WAITING_CONNECTION -> "等待车机"
            MdRole.MdState.CONNECTED -> "车机已连接（部分）"
            MdRole.MdState.ALL_CONNECTED -> "车机全部通道已连接"
            MdRole.MdState.HANDSHAKING -> "车机握手中"
            MdRole.MdState.READY -> "车机就绪"
            MdRole.MdState.ERROR -> "车机错误"
            null -> "车机未启动"
        }
        val huState = when (huRole?.getState()) {
            HuState.IDLE -> "空闲"
            HuState.CONNECTING -> "连接手机B中"
            HuState.AUTHENTICATING -> "手机B认证中"
            HuState.REGISTERING -> "手机B注册中"
            HuState.NEGOTIATING -> "手机B协商中"
            HuState.CONNECTED -> "手机B已连接"
            HuState.DISCONNECTED -> "手机B未连接"
            null -> {
                // huRole 为 null：可能是启动失败或尚未启动
                val huError = lastHuRoleError
                if (huError.isNotEmpty()) "手机B连接失败: $huError" else "手机B未启动"
            }
        }
        return "$mdState | $huState"
    }

    fun getConnectedChannelCount(): Int {
        // HuRole 连接状态：CONNECTED 表示所有通道已建立
        return if (huRole?.isConnected() == true) 6 else 0
    }

    private fun getLocalIpAddress(): String {
        return try {
            val interfaces = java.net.NetworkInterface.getNetworkInterfaces()
            for (intf in interfaces) {
                val addrs = intf.inetAddresses
                for (addr in addrs) {
                    if (!addr.isLoopbackAddress && !addr.isLinkLocalAddress) {
                        val ip = addr.hostAddress ?: continue
                        if (ip.contains(".")) return ip
                    }
                }
            }
            "--"
        } catch (e: Exception) {
            "--"
        }
    }

    private fun getConnectionDuration(): Long = mdRole?.getConnectionDuration() ?: 0L
    private fun getLastErrorMessage(): String {
        val mdError = mdRole?.getLastErrorMessage() ?: ""
        val huError = huRole?.getLastError() ?: ""
        val huPhase = huRole?.getHandshakePhase() ?: ""
        return when {
            mdError.isNotEmpty() && huError.isNotEmpty() -> "车机: $mdError | 手机B: $huError"
            mdError.isNotEmpty() -> mdError
            huError.isNotEmpty() -> huError
            huPhase.isNotEmpty() && huPhase != "未开始" -> "手机B握手: $huPhase"
            else -> ""
        }
    }

    /**
     * 广播视频帧给 MainActivity（用于本地预览）
     */
    private fun broadcastVideoFrame(frame: ByteArray, isKeyFrame: Boolean) {
        val intent = Intent(ACTION_VIDEO_FRAME).apply {
            `package` = packageName
            putExtra(EXTRA_FRAME_DATA, frame)
            putExtra(EXTRA_FRAME_IS_KEY, isKeyFrame)
        }
        sendBroadcast(intent)
    }
}
