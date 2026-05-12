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
import com.carlife.wireless.role.HuRole
import com.carlife.wireless.role.HuRoleListener
import com.carlife.wireless.role.HuState
import com.carlife.wireless.role.MdRole
import com.carlife.wireless.usb.UsbTetheringManager
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import java.io.IOException
import java.lang.ref.WeakReference
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong

/**
 * 连接服务：负责 WiFi AP/热点启动、mDNS 广播、TCP 监听
 *
 * 作为 MD（车机）角色时，启动 MdRole 监听 6 个端口
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

        @JvmStatic
        val instance: ConnectionService?
            get() = instanceRef?.get()
    }

    private var mdRole: MdRole? = null
    private var huRole: HuRole? = null
    private var isRunning = false
    private var nsdManager: NsdManager? = null
    private var registrationListener: NsdManager.RegistrationListener? = null

    // MediaProjection
    private var mediaProjection: MediaProjection? = null

    // USB 网络共享
    private var usbTetheringManager: UsbTetheringManager? = null

    // 动态码率
    private var dynamicBitrate: DynamicBitrate? = null

    // 子服务引用
    private var videoService: VideoService? = null
    private var audioService: AudioService? = null
    private var touchService: TouchService? = null

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
        startForegroundService()
        // MdRole 和 HuRole 独立启动，互不依赖
        startMdRole()
        startHuRole()
        startTouchService()
        startUsbMonitoring()
        isRunning = true
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        instanceRef = null
        LogUtils.i(TAG, "ConnectionService destroyed")
        stopAllServices()
        stopMdRole()
        stopUsbMonitoring()
        isRunning = false
        stopForeground(STOP_FOREGROUND_REMOVE)
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

    // ==================== MD 角色 ====================

    private fun startMdRole() {
        LogUtils.i(TAG, "启动 MD 角色（TCP 监听）")
        startMdnsService()

        if (mdRole == null) {
            try {
                mdRole = MdRole(this)
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
            val serviceInfo = NsdServiceInfo().apply {
                serviceName = "CarLife Wireless Box"
                serviceType = "_carlife._tcp."
                port = 7200
            }
            registrationListener = object : NsdManager.RegistrationListener {
                override fun onRegistrationFailed(info: NsdServiceInfo, errorCode: Int) {
                    LogUtils.e(TAG, "mDNS 注册失败: $errorCode")
                }
                override fun onUnregistrationFailed(info: NsdServiceInfo, errorCode: Int) {
                    LogUtils.e(TAG, "mDNS 注销失败: $errorCode")
                }
                override fun onServiceRegistered(info: NsdServiceInfo) {
                    LogUtils.i(TAG, "mDNS 服务已注册: ${info.serviceName}")
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
        if (huRole != null) {
            LogUtils.w(TAG, "HuRole 已启动，跳过")
            return
        }

        try {
            val phoneBIp = com.carlife.wireless.util.SettingsManager.getPhoneBIp(this)
            LogUtils.i(TAG, "Phone B IP: $phoneBIp")
            huRole = HuRole(this, phoneBIp)
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
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_VIDEO,
                        header.payloadType,
                        frame
                    )
                    // 广播给 MainActivity 用于本地预览（每 3 帧取 1 帧，减少开销）
                    if (previewFrameCounter.incrementAndGet() % 3 == 0L) {
                        broadcastVideoFrame(frame, false)
                    }
                }

                override fun onAudioFrameReceived(header: ChannelHeader.Media, frame: ByteArray) {
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_MEDIA,
                        header.payloadType,
                        frame
                    )
                }

                override fun onTtsFrameReceived(header: ChannelHeader.Media, data: ByteArray) {
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_TTS,
                        header.payloadType,
                        data
                    )
                }

                override fun onVrFrameReceived(header: ChannelHeader.Media, data: ByteArray) {
                    mdRole?.sendData(
                        com.carlife.wireless.util.Constants.PortMD.MD_VR,
                        header.payloadType,
                        data
                    )
                }

                override fun onControlReceived(header: ChannelHeader.Cmd, payload: ByteArray) {
                    // 手机B的控制响应 → 转发到车机（CarLife CMD 格式）
                    mdRole?.sendControlData(header.payloadType, payload)
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

    /** TouchService 绑定 */
    private val touchServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            touchService = (binder as? TouchService.TouchBinder)?.getService()
            LogUtils.i(TAG, "TouchService 已绑定")
            // 设置 AccessibilityService 注入器
            CarAccessibilityService.instance?.let { accessibility ->
                touchService?.setTouchInjector(object : TouchService.TouchInjector {
                    override fun injectTouch(action: Int, x: Float, y: Float) {
                        accessibility.injectTouch(action, x, y)
                    }
                    override fun isConnected(): Boolean = true
                })
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
                // 车机就绪后，检查是否可以启动音视频服务
                tryStartVideoAndAudioServices()
            }
            MdRole.MdState.ERROR,
            MdRole.MdState.IDLE -> {
                LogUtils.i(TAG, "MdRole 离开 READY")
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
                updateNotification("手机B已连接")
                // 手机B就绪后，检查是否可以启动音视频服务
                tryStartVideoAndAudioServices()
            }
            HuState.DISCONNECTED -> {
                LogUtils.i(TAG, "HuRole DISCONNECTED")
                stopVideoAndAudioServices()
                try {
                    huRole?.disconnect("preparing for reconnect")
                } catch (_: Exception) {}
                huRole = null
                // 尝试自动重连（独立于 MdRole）
                scheduleHuReconnect()
            }
            else -> {}
        }
        broadcastState()
    }

    /**
     * 检查双端是否都就绪，如果是则启动音视频服务
     * 只有车机和手机B都连接成功后，才开始音视频采集和转发
     */
    private fun tryStartVideoAndAudioServices() {
        val mdReady = mdRole?.isReady() == true
        val huConnected = huRole?.isConnected() == true

        if (mdReady && huConnected) {
            LogUtils.i(TAG, "双端就绪，启动音视频服务")
            updateNotification("投屏中：车机 ↔ 手机B")
            startVideoAndAudioServices()
        } else {
            LogUtils.d(TAG, "等待双端就绪：车机=${if (mdReady) "✅" else "⏳"}，手机B=${if (huConnected) "✅" else "⏳"}")
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
            null -> "手机B未启动"
        }
        return "$mdState | $huState"
    }

    fun getConnectedChannelCount(): Int {
        val mdCount = mdRole?.let {
            if (it.getState() == MdRole.MdState.READY) 6 else 0
        } ?: 0
        // HuRole 通道数通过内部计数获取
        return mdCount
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
    private fun getLastErrorMessage(): String = mdRole?.getLastErrorMessage() ?: ""

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
