package com.carlife.wireless.role

import android.content.Context
import android.os.Build
import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.channel.DeviceRole
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.proto.CarlifeAuthenRequestProto
import com.carlife.wireless.proto.CarlifeAuthenResponseProto
import com.carlife.wireless.proto.CarlifeAuthenResultProto
import com.carlife.wireless.proto.CarlifeAuthMethodProto.AuthMethod
import com.carlife.wireless.proto.CarlifeDeviceInfoProto
import com.carlife.wireless.proto.CarlifeFeatureConfigProto
import com.carlife.wireless.proto.CarlifeProtocolVersionProto
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.ErrorTracker
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.delay
import kotlinx.coroutines.cancel
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.atomic.AtomicReference

/**
 * MD 角色实现（转接盒侧）
 *
 * MD (Mobile Device) 角色作为客户端，主动连接手机 B 的 CarWith 服务端。
 * 手机 B 的 CarWith 监听 HU 端口 (7240/8240/9240/9241/9242/9340)，
 * MdRole 连接到这些端口，完成 CarLife 协议握手并接收音视频流。
 *
 * 连接流程：
 * 1. MdRole 作为客户端连接到手机 B CarWith 的 6 个 HU 端口
 * 2. 手机 B CarWith 发起 CarLife 握手（HU_PROTOCOL_VERSION）
 * 3. MdRole 响应握手（VERSION_MATCH_STATUS, MD_INFO 等）
 * 4. 握手完成后，手机 B 发送音视频流，MdRole 接收并转发到车机
 */
class MdRole(private val context: Context) {

    companion object {
        private const val TAG = "MdRole"

        val MD_PORTS: List<Int> = ChannelType.entries.map { it.mdPort }
        val PORT_NAMES: Map<Int, String> = ChannelType.entries.associate { it.mdPort to it.name }

        /** 获取设备 ID（Build.SERIAL 在 API 29+ 已废弃，使用 fingerprint 兜底） */
        private fun getDeviceId(): String {
            @Suppress("DEPRECATION")
            return Build.SERIAL?.takeIf { it.isNotBlank() && it != "unknown" }
                ?: "box-${Build.FINGERPRINT.hashCode().toUInt()}"
        }

        // CarLife CMD 消息 ID（与 HuRole.CarLifeMsg 相同）
        private const val HU_PROTOCOL_VERSION        = 0x00018001
        private const val VERSION_MATCH_STATUS       = 0x00010002
        private const val HU_INFO                    = 0x00018003
        private const val MD_INFO                    = 0x00010004
        private const val VIDEO_ENCODER_INIT         = 0x00018007
        private const val VIDEO_ENCODER_INIT_DONE    = 0x00010008
        private const val VIDEO_ENCODER_START        = 0x00018009
        private const val HU_AUTHEN_REQUEST          = 0x00018048
        private const val MD_AUTHEN_RESPONSE         = 0x00010049
        private const val HU_AUTHEN_RESULT           = 0x0001804A
        private const val MD_AUTHEN_RESULT           = 0x0001004B
        private const val MD_FEATURE_CONFIG_REQUEST  = 0x00010051
        private const val HU_FEATURE_CONFIG_RESPONSE = 0x00018052
        private const val MD_REGISTER_TYPE           = 0x00010001
        private const val HU_REGISTER_RESPONSE       = 0x00018002

        // v2.3.0 新增 — CMD 通道 HU 消息
        private const val HU_STATISTIC_INFO              = 0x00018027
        private const val HU_MODULE_CONTROL              = 0x00018028
        private const val HU_CAR_DATA_GEAR               = 0x00018029
        private const val HU_CAR_DATA_SUBSCRIBE_DONE     = 0x00018032
        private const val HU_BT_HFP_INDICATION           = 0x00018041
        private const val HU_BT_HFP_CONNECTION           = 0x00018042
        private const val HU_CARLIFE_DATA_SUBSCRIBE      = 0x00018043
        private const val HU_CARLIFE_DATA_SUBSCRIBE_START = 0x00018045
        private const val HU_CARLIFE_DATA_SUBSCRIBE_STOP = 0x00018046
        private const val HU_BT_HFP_RESPONSE             = 0x0001804E
        private const val HU_BT_HFP_STATUS_RESPONSE      = 0x00018050
        private const val HU_BT_START_IDENTIFY_REQ       = 0x00018053
        private const val HU_ERROR_CODE                  = 0x00018055
        private const val HU_VIDEO_ENCODER_JPEG          = 0x00018056
        private const val HU_VEHICLE_CONTROL_INFO        = 0x00018061
        private const val HU_CONNECT_STATISTIC           = 0x00018070

        /** 默认通道配置 */
        val DEFAULT_CHANNEL_CONFIG = HuRole.ChannelConfig()
    }

    enum class MdState {
        IDLE,
        STARTING,
        WAITING_CONNECTION,
        CONNECTED,
        ALL_CONNECTED,
        HANDSHAKING,
        READY,
        ERROR
    }

    private val state = AtomicReference(MdState.IDLE)
    @Volatile private var stateListener: ((MdState) -> Unit)? = null
    private val channels: MutableMap<Int, Channel> = ConcurrentHashMap()
    private val connectedCount = AtomicInteger(0)
    @Volatile private var huRole: HuRole? = null
    private val handshakeCompleted = AtomicBoolean(false)
    private val connectionStartTime = AtomicLong(0L)
    private val lastErrorMessage = AtomicReference("")
    /** 车机编码器配置缓存（同步给 HuRole 以匹配手机B编码参数） */
    @Volatile private var cachedCarEncoderConfig: HuRole.CarEncoderConfig? = null
    /** 通道配置（控制哪些通道启用） */
    var channelConfig: HuRole.ChannelConfig = DEFAULT_CHANNEL_CONFIG
    // 协程作用域（IO 线程池 + SupervisorJob 保证子协程独立失败）
    private var scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    @Volatile private var cmdReadJob: Job? = null
    private val mediaReadJobs: MutableMap<Int, Job> = ConcurrentHashMap()

    fun setStateListener(listener: (MdState) -> Unit) { this.stateListener = listener }
    fun setHuRole(huRole: HuRole) {
        this.huRole = huRole
        // 同步缓存的车机编码器配置
        cachedCarEncoderConfig?.let {
            huRole.carEncoderConfig = it
            LogUtils.i(TAG, "Synced car encoder config to HuRole on setHuRole")
        }
    }
    fun getState(): MdState = state.get()

    private fun updateState(newState: MdState) {
        val oldState = state.getAndSet(newState)
        if (oldState != newState) {
            stateListener?.invoke(newState)
            LogUtils.i(TAG, "State changed to: $newState")
        }
    }

    fun start() {
        if (state.get() != MdState.IDLE && state.get() != MdState.ERROR) {
            LogUtils.w(TAG, "Cannot start, current state: ${state.get()}")
            return
        }

        updateState(MdState.STARTING)

        try {
            val phoneBIp = SettingsManager.getPhoneBIp(context)
            val config = channelConfig

            // 直接使用 Log.e 确保在 logcat 中可见（不依赖 LogUtils 的 consoleLog 开关）

            LogUtils.i(TAG, "Connecting to phone B CarWith at $phoneBIp (${config.totalEnabled} channels)...")

            // 主动连接手机 B 的 CarWith HU 端口（而非监听 MD 端口）
            // 手机 B 的 CarWith 作为服务端监听 HU 端口，转接盒作为客户端连接
            for (type in config.allChannels) {
                val autoRead = type != ChannelType.HU_CMD
                val newChannel = Channel.create(type, DeviceRole.MOBILE, autoRead)
                channels[type.mdPort] = newChannel

                val port = type.huPort
                LogUtils.i(TAG, "Connecting ${type.name} to $phoneBIp:$port (autoRead=$autoRead)")

                newChannel.callback = object : ChannelCallback {
                    override fun onConnected(channel: Channel) {
                        handleClientConnected(channel.type.mdPort, channel)
                    }
                    override fun onDisconnected(channel: Channel, reason: String?) {
                        handleClientDisconnected(channel.type.mdPort, reason)
                    }
                    override fun onDataReceived(channel: Channel, header: ChannelHeader, payload: ByteArray) {
                        // 不使用此回调，由专用读取循环处理
                    }
                    override fun onError(channel: Channel, error: Throwable) {
                        LogUtils.e(TAG, "${channel.name} error: ${error.message}")
                        lastErrorMessage.set("${channel.name}: ${error.message}")
                    }
                }

                newChannel.connect(phoneBIp, port)
            }

            updateState(MdState.WAITING_CONNECTION)
            LogUtils.i(TAG, "All ${config.totalEnabled} channels connecting to phone B...")

            // 连接超时检测
            scope.launch {
                delay(15_000)
                if (state.get() == MdState.WAITING_CONNECTION || state.get() == MdState.CONNECTED) {
                    val connected = connectedCount.get()
                    if (connected == 0) {
                        val errMsg = "连接手机B超时（已连 $connected/${config.totalEnabled} 个通道），" +
                                "请确认手机B CarWith 已启动无线连接模式"
                        LogUtils.e(TAG, errMsg)
                        lastErrorMessage.set(errMsg)
                        updateState(MdState.ERROR)
                    }
                }
            }

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to connect to phone B")
            updateState(MdState.ERROR)
        }
    }

    fun stop() {
        LogUtils.i(TAG, "Stopping MdRole...")

        // 关闭所有通道
        channels.values.forEach { it.disconnect("MdRole stopped") }
        channels.clear()

        // 取消所有协程（包括读取循环）
        scope.cancel()
        cmdReadJob = null
        mediaReadJobs.clear()

        // 重建 scope 以支持后续 start()
        scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

        connectedCount.set(0)
        handshakeCompleted.set(false)
        connectionStartTime.set(0L)
        lastErrorMessage.set("")

        updateState(MdState.IDLE)
        LogUtils.i(TAG, "MdRole stopped")
    }

    private fun handleClientConnected(port: Int, channel: Channel) {
        LogUtils.i(TAG, "Client connected on port $port (${PORT_NAMES[port]})")

        channels[port] = channel
        val count = connectedCount.incrementAndGet()
        LogUtils.i(TAG, "Connected channels: $count/6")

        if (count > 0 && state.get() == MdState.WAITING_CONNECTION) {
            updateState(MdState.CONNECTED)
        }

        // 启动 CarLife 格式读取循环
        when (port) {
            Constants.PortMD.MD_CMD -> {
                // CMD 通道：8 字节 CarLife CMD 格式
                startCmdReadLoop(channel)

                // CMD 连接后立即发起握手！
                // 手机 B 的 CarWith 期望转接盒先发送 HU_PROTOCOL_VERSION
                connectionStartTime.set(System.currentTimeMillis())
                if (state.compareAndSet(MdState.CONNECTED, MdState.ALL_CONNECTED) ||
                    state.compareAndSet(MdState.WAITING_CONNECTION, MdState.ALL_CONNECTED)) {
                    updateState(MdState.HANDSHAKING)
                }
                // 延迟 100ms 等待其他通道就绪，然后发送协议版本
                scope.launch {
                    delay(100)
                    sendProtocolVersion()
                }
            }
            Constants.PortMD.MD_CTRL -> {
                startCmdReadLoop(channel)
            }
            else -> {
                startMediaReadLoop(port, channel)
            }
        }
    }

    /**
     * CMD 通道 CarLife 格式读取循环
     * 使用 readCarLifeMsg() 读取 CarLife 协议格式消息
     * 格式：[data_len(2B)][reserved(2B)][service_type(4B)] + [protobuf_data]
     */
    private fun startCmdReadLoop(channel: Channel) {
        cmdReadJob?.cancel()
        cmdReadJob = scope.launch {
            LogUtils.i(TAG, "CMD CarLife read loop started")
            while (channel.isConnected) {
                val msg = channel.readCarLifeMsg() ?: break
                val (serviceType, data) = msg
                handleCarLifeCmdMessage(serviceType, data)
            }
            LogUtils.i(TAG, "CMD CarLife read loop ended")
        }
    }

    /**
     * 媒体通道 CarLife 格式读取循环
     * 使用 readCarLifeMediaMsg() 读取 CarLife 媒体格式消息
     * 格式：[data_len(4B)][timestamp(4B)][service_type(4B)] + [raw_data]
     */
    private fun startMediaReadLoop(port: Int, channel: Channel) {
        mediaReadJobs[port]?.cancel()

        val job = scope.launch {
            LogUtils.i(TAG, "Media CarLife read loop started on port $port (${PORT_NAMES[port]})")
            while (channel.isConnected) {
                val msg = channel.readCarLifeMediaMsg() ?: break
                val (serviceType, timestamp, data) = msg
                handleMediaMessage(port, serviceType, timestamp, data)
            }
            LogUtils.i(TAG, "Media CarLife read loop ended on port $port")
        }
        mediaReadJobs[port] = job
    }

    /**
     * 处理媒体通道消息
     * 握手完成后直接转发到 HuRole
     */
    private fun handleMediaMessage(port: Int, serviceType: Int, timestamp: Int, data: ByteArray) {
        if (!handshakeCompleted.get()) {
            LogUtils.d(TAG, "Handshake not completed, ignoring media from port $port")
            return
        }

        val hu = huRole
        if (hu == null) {
            LogUtils.w(TAG, "HU role not set, cannot forward media")
            return
        }

        // 构造 ChannelHeader.Media 用于 HuRole 发送
        val header = ChannelHeader.Media(serviceType, timestamp, data.size)

        when (port) {
            Constants.PortMD.MD_VIDEO -> hu.sendVideoData(header, data)
            Constants.PortMD.MD_MEDIA -> hu.sendMediaData(header, data)
            Constants.PortMD.MD_TTS -> hu.sendTtsData(header, data)
            Constants.PortMD.MD_VR -> hu.sendVrData(header, data)
            Constants.PortMD.MD_CTRL -> {
                // CTRL 通道使用 CarLife CMD 格式（8字节头）转发到手机B
                hu.sendControlMsg(serviceType, data)
            }
            else -> LogUtils.w(TAG, "Unknown port $port for media forwarding")
        }
    }

    private fun handleClientDisconnected(port: Int, reason: String?) {
        LogUtils.w(TAG, "Client disconnected from port $port (${PORT_NAMES[port]}): $reason")

        channels.remove(port)

        // 防止计数器变为负数
        val count = connectedCount.updateAndGet { maxOf(0, it - 1) }

        if (handshakeCompleted.get()) {
            handshakeCompleted.set(false)
            updateState(MdState.CONNECTED)
        }

        if (count == 0) {
            connectionStartTime.set(0L)
            updateState(MdState.WAITING_CONNECTION)
        } else if (state.get() == MdState.ALL_CONNECTED || state.get() == MdState.READY) {
            updateState(MdState.CONNECTED)
        }
    }

    // ==================== CarLife CMD 消息处理 ====================

    /**
     * 处理 CarLife CMD 通道消息（握手协议）
     *
     * 握手流程（转接盒作为 HU 角色主动发起）：
     * 1. Box(HU) → PhoneB(MD): HU_PROTOCOL_VERSION
     * 2. PhoneB(MD) → Box(HU): VERSION_MATCH_STATUS  ← 处理这里
     * 3. Box(HU) → PhoneB(MD): HU_INFO
     * 4. PhoneB(MD) → Box(HU): MD_INFO               ← 处理这里
     * 5. Box(HU) → PhoneB(MD): HU_AUTHEN_REQUEST
     * 6. PhoneB(MD) → Box(HU): MD_AUTHEN_RESPONSE     ← 处理这里
     * 7. Box(HU) → PhoneB(MD): HU_AUTHEN_RESULT
     * 8. PhoneB(MD) → Box(HU): MD_AUTHEN_RESULT       ← 处理这里
     * 9. PhoneB(MD) → Box(HU): MD_FEATURE_CONFIG_REQUEST ← 处理这里
     * 10. Box(HU) → PhoneB(MD): HU_FEATURE_CONFIG_RESPONSE
     * 11. Box(HU) → PhoneB(MD): VIDEO_ENCODER_INIT
     * 12. PhoneB(MD) → Box(HU): VIDEO_ENCODER_INIT_DONE ← 处理这里
     * 13. Box(HU) → PhoneB(MD): VIDEO_ENCODER_START
     */
    private fun handleCarLifeCmdMessage(serviceType: Int, data: ByteArray) {
        when (serviceType) {
            // === 手机B发来的 MD 响应消息 ===
            VERSION_MATCH_STATUS -> {
                // Phase 2: 收到版本匹配 → 发送 HU_INFO
                LogUtils.i(TAG, "[Phase 2] VERSION_MATCH_STATUS received")
                sendHuInfo()
            }
            MD_INFO -> {
                // Phase 4: 收到手机B设备信息 → 发送 HU_AUTHEN_REQUEST
                try {
                    val info = CarlifeDeviceInfoProto.CarlifeDeviceInfo.parseFrom(data)
                    LogUtils.i(TAG, "[Phase 4] Phone B MD_INFO: ${info.manufacturer} ${info.model}")
                } catch (e: Exception) {
                    LogUtils.w(TAG, "[Phase 4] Failed to parse MD_INFO: ${e.message}")
                }
                sendHuAuthenRequest()
            }
            MD_AUTHEN_RESPONSE -> {
                // Phase 6: 收到认证响应 → 发送 HU_AUTHEN_RESULT
                LogUtils.i(TAG, "[Phase 6] MD_AUTHEN_RESPONSE received")
                try {
                    val response = CarlifeAuthenResponseProto.CarlifeAuthenResponse.parseFrom(data)
                    LogUtils.i(TAG, "[Phase 6] MD_AUTHEN_RESPONSE: success=${response.success}")
                } catch (e: Exception) {
                    LogUtils.w(TAG, "[Phase 6] Failed to parse MD_AUTHEN_RESPONSE: ${e.message}")
                }
                sendHuAuthenResult(true)
            }
            MD_AUTHEN_RESULT -> {
                // Phase 8: 收到手机B认证结果 → 等待特性配置请求
                LogUtils.i(TAG, "[Phase 8] MD_AUTHEN_RESULT received")
            }
            MD_FEATURE_CONFIG_REQUEST -> {
                // Phase 9: 收到特性配置请求 → 发送 HU_FEATURE_CONFIG_RESPONSE
                LogUtils.i(TAG, "[Phase 9] MD_FEATURE_CONFIG_REQUEST received")
                sendHuFeatureConfigResponse()
            }
            VIDEO_ENCODER_INIT_DONE -> {
                // Phase 12: 收到编码器初始化完成 → 发送 VIDEO_ENCODER_START
                LogUtils.i(TAG, "[Phase 12] VIDEO_ENCODER_INIT_DONE received")
                sendVideoEncoderStart()
            }

            // === 保留原有处理（车机发来的 HU 消息） ===
            HU_PROTOCOL_VERSION -> {
                handleHuProtocolVersion(data)
            }
            HU_INFO -> {
                handleHuInfo(data)
            }
            HU_AUTHEN_REQUEST -> {
                handleHuAuthenRequest(data)
            }
            HU_AUTHEN_RESULT -> {
                handleHuAuthenResult(data)
            }
            HU_FEATURE_CONFIG_RESPONSE -> {
                handleHuFeatureConfigResponse(data)
            }
            VIDEO_ENCODER_INIT -> {
                handleVideoEncoderInit(data)
            }
            VIDEO_ENCODER_START -> {
                handleVideoEncoderStart()
            }
            else -> {
                // v2.3.0 新增消息 — 车机发来的 HU 消息
                when (serviceType) {
                    HU_REGISTER_RESPONSE -> {
                        // 本地处理：注册响应，握手阶段已处理，无需转发
                        LogUtils.i(TAG, "HU_REGISTER_RESPONSE received, len=${data.size}")
                    }
                    HU_MODULE_CONTROL -> {
                        LogUtils.i(TAG, "HU_MODULE_CONTROL received, len=${data.size}")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_CAR_DATA_GEAR -> {
                        LogUtils.i(TAG, "HU_CAR_DATA_GEAR received (reverse signal), len=${data.size}")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_CAR_DATA_SUBSCRIBE_DONE -> {
                        // 本地处理：数据订阅确认，转接盒内部管理，无需转发手机B
                        LogUtils.i(TAG, "HU_CAR_DATA_SUBSCRIBE_DONE received")
                    }
                    HU_CARLIFE_DATA_SUBSCRIBE -> {
                        // 本地处理：车机请求订阅 CarLife 数据，由转接盒响应
                        LogUtils.i(TAG, "HU_CARLIFE_DATA_SUBSCRIBE received, len=${data.size}")
                    }
                    HU_CARLIFE_DATA_SUBSCRIBE_START -> {
                        // 本地处理：CarLife 数据订阅开始
                        LogUtils.i(TAG, "HU_CARLIFE_DATA_SUBSCRIBE_START received")
                    }
                    HU_CARLIFE_DATA_SUBSCRIBE_STOP -> {
                        // 本地处理：CarLife 数据订阅停止
                        LogUtils.i(TAG, "HU_CARLIFE_DATA_SUBSCRIBE_STOP received")
                    }
                    HU_BT_HFP_INDICATION -> {
                        LogUtils.i(TAG, "HU_BT_HFP_INDICATION received, len=${data.size}")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_BT_HFP_CONNECTION -> {
                        LogUtils.i(TAG, "HU_BT_HFP_CONNECTION received, len=${data.size}")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_BT_HFP_RESPONSE -> {
                        LogUtils.i(TAG, "HU_BT_HFP_RESPONSE received, len=${data.size}")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_BT_HFP_STATUS_RESPONSE -> {
                        LogUtils.i(TAG, "HU_BT_HFP_STATUS_RESPONSE received, len=${data.size}")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_BT_START_IDENTIFY_REQ -> {
                        LogUtils.i(TAG, "HU_BT_START_IDENTIFY_REQ received")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_ERROR_CODE -> {
                        // 本地处理：记录车机上报的错误码，无需转发
                        LogUtils.w(TAG, "HU_ERROR_CODE received, len=${data.size}")
                    }
                    HU_VIDEO_ENCODER_JPEG -> {
                        // 本地处理：JPEG 编码器请求，当前不支持，仅记录
                        LogUtils.i(TAG, "HU_VIDEO_ENCODER_JPEG received, len=${data.size}")
                    }
                    HU_VEHICLE_CONTROL_INFO -> {
                        LogUtils.i(TAG, "HU_VEHICLE_CONTROL_INFO received, len=${data.size}")
                        if (handshakeCompleted.get()) {
                            huRole?.sendControlMsg(serviceType, data)
                        }
                    }
                    HU_STATISTIC_INFO -> {
                        // 本地处理：连接统计信息，用于调试，无需转发
                        LogUtils.d(TAG, "HU_STATISTIC_INFO received, len=${data.size}")
                    }
                    HU_CONNECT_STATISTIC -> {
                        // 本地处理：连接统计数据，用于诊断，无需转发
                        LogUtils.d(TAG, "HU_CONNECT_STATISTIC received, len=${data.size}")
                    }
                    else -> {
                        // 其他 CMD 消息（触摸控制等）→ 转发
                        if (handshakeCompleted.get()) {
                            val hu = huRole
                            if (hu != null) {
                                LogUtils.d(TAG, "Forwarding CMD 0x${Integer.toHexString(serviceType)} to Phone B (${data.size} bytes)")
                                hu.sendControlMsg(serviceType, data)
                            } else {
                                LogUtils.w(TAG, "HU role not set, cannot forward CMD 0x${Integer.toHexString(serviceType)}")
                            }
                        } else {
                            LogUtils.d(TAG, "Unhandled CMD: 0x${Integer.toHexString(serviceType)}, len=${data.size}")
                        }
                    }
                }
            }
        }
    }

    /**
     * 发送协议版本到手机 B（主动发起握手）
     * 手机 B 的 CarWith 期望转接盒先发送 HU_PROTOCOL_VERSION
     */
    private fun sendProtocolVersion() {
        try {
            val version = CarlifeProtocolVersionProto.CarlifeProtocolVersion.newBuilder()
                .setMajorVersion(Constants.PROTOCOL_MAJOR_VERSION)
                .setMinorVersion(Constants.PROTOCOL_MINOR_VERSION)
                .build()

            val protoBytes = version.toByteArray()

            sendCmdMessage(HU_PROTOCOL_VERSION, protoBytes)
            LogUtils.i(TAG, "[Phase 1] HU_PROTOCOL_VERSION sent (${Constants.PROTOCOL_MAJOR_VERSION}.${Constants.PROTOCOL_MINOR_VERSION})")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 1] Failed to send HU_PROTOCOL_VERSION")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase1-ProtocolVersion")
        }
    }

    /**
     * Phase 3: 发送车机设备信息到手机 B
     * HU_INFO (0x00018003)
     */
    private fun sendHuInfo() {
        try {
            val deviceInfo = CarlifeDeviceInfoProto.CarlifeDeviceInfo.newBuilder()
                .setDeviceType(CarlifeDeviceInfoProto.DeviceType.DEVICE_TYPE_HEAD_UNIT)
                .setOsType(CarlifeDeviceInfoProto.OsType.OS_ANDROID)
                .setOsVersion(Build.VERSION.RELEASE ?: "unknown")
                .setManufacturer(Build.MANUFACTURER ?: "Unknown")
                .setModel(Build.MODEL ?: "CarLife Box")
                .setDeviceId(getDeviceId())
                .setDeviceName("CarLife Wireless Box")
                .build()

            sendCmdMessage(HU_INFO, deviceInfo.toByteArray())
            LogUtils.i(TAG, "[Phase 3] HU_INFO sent")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 3] Failed to send HU_INFO")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase3-HuInfo")
        }
    }

    /**
     * Phase 5: 发送认证请求到手机 B
     * HU_AUTHEN_REQUEST (0x00018048)
     */
    private fun sendHuAuthenRequest() {
        try {
            val request = CarlifeAuthenRequestProto.CarlifeAuthenRequest.newBuilder()
                .setMethod(AuthMethod.AUTH_METHOD_NONE)
                .setDeviceId(getDeviceId())
                .setDeviceName("CarLife Wireless Box")
                .setDeviceModel(Build.MODEL ?: "CarLife Box")
                .build()

            sendCmdMessage(HU_AUTHEN_REQUEST, request.toByteArray())
            LogUtils.i(TAG, "[Phase 5] HU_AUTHEN_REQUEST sent")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 5] Failed to send HU_AUTHEN_REQUEST")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase5-AuthenRequest")
        }
    }

    /**
     * Phase 7: 发送认证结果到手机 B
     * HU_AUTHEN_RESULT (0x0001804A)
     */
    private fun sendHuAuthenResult(success: Boolean) {
        try {
            val result = CarlifeAuthenResultProto.CarlifeAuthenResult.newBuilder()
                .setResult(
                    if (success) CarlifeAuthenResultProto.AuthenResultCode.AUTHEN_RESULT_SUCCESS
                    else CarlifeAuthenResultProto.AuthenResultCode.AUTHEN_RESULT_FAILED
                )
                .build()

            sendCmdMessage(HU_AUTHEN_RESULT, result.toByteArray())
            LogUtils.i(TAG, "[Phase 7] HU_AUTHEN_RESULT sent (result=$success)")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 7] Failed to send HU_AUTHEN_RESULT")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase7-AuthenResult")
        }
    }

    /**
     * Phase 10: 发送特性配置响应到手机 B
     * HU_FEATURE_CONFIG_RESPONSE (0x00018052)
     */
    private fun sendHuFeatureConfigResponse() {
        try {
            val config = CarlifeFeatureConfigProto.CarlifeFeatureConfig.newBuilder()
                .setVideoEnabled(true)
                .setAudioEnabled(true)
                .setTouchEnabled(true)
                .setMusicEnabled(true)
                .setNavigationEnabled(true)
                .setVoiceEnabled(true)
                .setMaxVideoBitrate(5000)
                .setMaxAudioBitrate(256)
                .setConnectionTimeout(30)
                .build()

            sendCmdMessage(HU_FEATURE_CONFIG_RESPONSE, config.toByteArray())
            LogUtils.i(TAG, "[Phase 10] HU_FEATURE_CONFIG_RESPONSE sent")

            // 发送视频编码器初始化
            sendVideoEncoderInitToPhoneB()
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 10] Failed to send HU_FEATURE_CONFIG_RESPONSE")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase10-FeatureConfigResponse")
        }
    }

    /**
     * Phase 11: 发送视频编码器初始化到手机 B
     * VIDEO_ENCODER_INIT (0x00018007)
     */
    private fun sendVideoEncoderInitToPhoneB() {
        try {
            val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.newBuilder()
                .setSupportedCodecs((1 shl 1))  // H.264
                .setPreferredCodec(CarlifeVideoEncoderInfoProto.VideoCodecType.VIDEO_CODEC_H264)
                .setCurrentResolution((1 shl 1))  // 480P
                .setCurrentResolutionEnum(CarlifeVideoEncoderInfoProto.VideoResolution.RES_480P)
                .addSupportedResolutions(CarlifeVideoEncoderInfoProto.VideoResolution.RES_480P)
                .setCurrentFps(30)
                .setBitrateKbps(2000)
                .setIFrameInterval(2)
                .setHardwareEncoder(true)
                .build()

            sendCmdMessage(VIDEO_ENCODER_INIT, info.toByteArray())
            LogUtils.i(TAG, "[Phase 11] VIDEO_ENCODER_INIT sent")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 11] Failed to send VIDEO_ENCODER_INIT")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase11-VideoEncoderInit")
        }
    }

    /**
     * Phase 13: 发送视频编码器启动到手机 B
     * VIDEO_ENCODER_START (0x00018009)
     */
    private fun sendVideoEncoderStart() {
        try {
            sendCmdMessage(VIDEO_ENCODER_START, ByteArray(0))
            LogUtils.i(TAG, "[Phase 13] VIDEO_ENCODER_START sent — handshake complete!")

            handshakeCompleted.set(true)
            updateState(MdState.READY)
            LogUtils.i(TAG, "===== Phone B connected and ready =====")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 13] Failed to send VIDEO_ENCODER_START")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase13-VideoEncoderStart")
        }
    }

    /**
     * Phase 1: 处理手机B的协议版本响应
     * 解析版本号，回复 HU_INFO
     */
    private fun handleHuProtocolVersion(data: ByteArray) {
        try {
            val version = CarlifeProtocolVersionProto.CarlifeProtocolVersion.parseFrom(data)
            LogUtils.i(TAG, "[Phase 1] Car HU_PROTOCOL_VERSION: ${version.majorVersion}.${version.minorVersion}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 1] Failed to parse protocol version: ${e.message}")
        }

        // 回复版本匹配状态（强制使用 1.0）
        try {
            val response = CarlifeProtocolVersionProto.CarlifeProtocolVersion.newBuilder()
                .setMajorVersion(Constants.PROTOCOL_MAJOR_VERSION)
                .setMinorVersion(Constants.PROTOCOL_MINOR_VERSION)
                .build()
            sendCmdMessage(VERSION_MATCH_STATUS, response.toByteArray())
            LogUtils.i(TAG, "[Phase 1] VERSION_MATCH_STATUS sent (${Constants.PROTOCOL_MAJOR_VERSION}.${Constants.PROTOCOL_MINOR_VERSION})")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 1] Failed to send VERSION_MATCH_STATUS")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase1-VersionMatch")
        }
    }

    /**
     * Phase 2: 处理车机设备信息
     * 解析车机信息，回复 MD_INFO（转接盒设备信息）
     */
    private fun handleHuInfo(data: ByteArray) {
        try {
            val info = CarlifeDeviceInfoProto.CarlifeDeviceInfo.parseFrom(data)
            LogUtils.i(TAG, "[Phase 2] Car HU_INFO: ${info.manufacturer} ${info.model}, OS=${info.osType}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 2] Failed to parse HU_INFO: ${e.message}")
        }

        // 回复转接盒设备信息
        try {
            val mdInfo = CarlifeDeviceInfoProto.CarlifeDeviceInfo.newBuilder()
                .setDeviceType(CarlifeDeviceInfoProto.DeviceType.DEVICE_TYPE_BOX)
                .setOsType(CarlifeDeviceInfoProto.OsType.OS_ANDROID)
                .setOsVersion(Build.VERSION.RELEASE ?: "unknown")
                .setManufacturer(Build.MANUFACTURER ?: "Unknown")
                .setModel(Build.MODEL ?: "CarLife Box")
                .setDeviceId(getDeviceId())
                .setDeviceName("CarLife Wireless Box")
                .build()
            sendCmdMessage(MD_INFO, mdInfo.toByteArray())
            LogUtils.i(TAG, "[Phase 2] MD_INFO sent")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 2] Failed to send MD_INFO")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase2-MdInfo")
        }
    }

    /**
     * Phase 3: 处理车机认证请求
     * 直接回复认证成功（绕过认证）
     */
    private fun handleHuAuthenRequest(data: ByteArray) {
        try {
            val request = CarlifeAuthenRequestProto.CarlifeAuthenRequest.parseFrom(data)
            LogUtils.i(TAG, "[Phase 3] Car HU_AUTHEN_REQUEST: method=${request.method}, deviceId=${request.deviceId}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 3] Failed to parse HU_AUTHEN_REQUEST: ${e.message}")
        }

        // 回复认证响应（直接成功）
        try {
            val response = CarlifeAuthenResponseProto.CarlifeAuthenResponse.newBuilder()
                .setSuccess(true)
                .build()
            sendCmdMessage(MD_AUTHEN_RESPONSE, response.toByteArray())
            LogUtils.i(TAG, "[Phase 3] MD_AUTHEN_RESPONSE sent (success=true)")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 3] Failed to send MD_AUTHEN_RESPONSE")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase3-AuthenResponse")
        }
    }

    /**
     * Phase 4: 处理车机认证结果
     * 回复 MD 认证结果（直接成功），然后发送特性配置请求
     */
    private fun handleHuAuthenResult(data: ByteArray) {
        try {
            val result = CarlifeAuthenResultProto.CarlifeAuthenResult.parseFrom(data)
            LogUtils.i(TAG, "[Phase 4] Car HU_AUTHEN_RESULT: ${result.result}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 4] Failed to parse HU_AUTHEN_RESULT: ${e.message}")
        }

        // 回复 MD 认证结果
        try {
            val mdResult = CarlifeAuthenResultProto.CarlifeAuthenResult.newBuilder()
                .setResult(CarlifeAuthenResultProto.AuthenResultCode.AUTHEN_RESULT_SUCCESS)
                .build()
            sendCmdMessage(MD_AUTHEN_RESULT, mdResult.toByteArray())
            LogUtils.i(TAG, "[Phase 4] MD_AUTHEN_RESULT sent (SUCCESS)")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 4] Failed to send MD_AUTHEN_RESULT")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase4-AuthenResult")
        }

        // Phase 5: 发送特性配置请求
        sendFeatureConfigRequest()
    }

    /**
     * Phase 5: 发送特性配置请求
     * 告知车机转接盒支持的功能
     */
    private fun sendFeatureConfigRequest() {
        try {
            val config = CarlifeFeatureConfigProto.CarlifeFeatureConfig.newBuilder()
                .setVideoEnabled(true)
                .setAudioEnabled(true)
                .setTouchEnabled(true)
                .setMusicEnabled(true)
                .setNavigationEnabled(true)
                .setVoiceEnabled(true)
                .setMaxVideoBitrate(5000)
                .setMaxAudioBitrate(256)
                .setConnectionTimeout(30)
                .build()
            sendCmdMessage(MD_FEATURE_CONFIG_REQUEST, config.toByteArray())
            LogUtils.i(TAG, "[Phase 5] MD_FEATURE_CONFIG_REQUEST sent")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 5] Failed to send MD_FEATURE_CONFIG_REQUEST")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase5-FeatureConfig")
        }
    }

    /**
     * Phase 6: 处理车机特性配置响应
     * 车机回复了它支持的特性，等待 VIDEO_ENCODER_INIT
     */
    private fun handleHuFeatureConfigResponse(data: ByteArray) {
        try {
            val config = CarlifeFeatureConfigProto.CarlifeFeatureConfig.parseFrom(data)
            LogUtils.i(TAG, "[Phase 6] Car HU_FEATURE_CONFIG_RESPONSE: video=${config.videoEnabled}, audio=${config.audioEnabled}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 6] Failed to parse FEATURE_CONFIG_RESPONSE: ${e.message}")
        }

        // 车机接下来会发送 VIDEO_ENCODER_INIT，等待接收
        LogUtils.i(TAG, "[Phase 6] Waiting for VIDEO_ENCODER_INIT from car...")
    }

    /**
     * Phase 7: 处理车机视频编码器初始化
     * 解析车机期望的视频参数，回复 VIDEO_ENCODER_INIT_DONE
     * 同时捕获车机编码能力，传递给 HuRole 以匹配手机B编码参数
     */
    private fun handleVideoEncoderInit(data: ByteArray) {
        try {
            val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.parseFrom(data)
            LogUtils.i(TAG, "[Phase 7] Car VIDEO_ENCODER_INIT: codec=${info.preferredCodec}, " +
                    "res=${info.currentResolutionEnum}, fps=${info.currentFps}, bitrate=${info.bitrateKbps}kbps")

            // 捕获车机编码能力，缓存并传递给 HuRole
            val carConfig = HuRole.CarEncoderConfig(
                supportedCodecs = info.supportedCodecs,
                preferredCodec = info.preferredCodec.number,
                resolution = info.currentResolution,
                resolutionEnum = info.currentResolutionEnum.number,
                fps = info.currentFps,
                bitrateKbps = info.bitrateKbps,
                iFrameInterval = info.iFrameInterval,
                hardwareEncoder = info.hardwareEncoder
            )
            cachedCarEncoderConfig = carConfig
            huRole?.carEncoderConfig = carConfig
            LogUtils.i(TAG, "[Phase 7] Car encoder config → HuRole: " +
                    "codecs=0x${Integer.toHexString(carConfig.supportedCodecs)}, " +
                    "res=0x${Integer.toHexString(carConfig.resolution)}, " +
                    "fps=${carConfig.fps}, bitrate=${carConfig.bitrateKbps}kbps")

            // 回复编码器初始化完成（使用车机请求的参数，而非硬编码）
            // 车机期望 MD 确认它将使用这些参数
            val done = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.newBuilder()
                .setSupportedCodecs(info.supportedCodecs)
                .setPreferredCodec(info.preferredCodec)
                .setCurrentResolution(info.currentResolution)
                .setCurrentResolutionEnum(info.currentResolutionEnum)
                .addSupportedResolutions(info.currentResolutionEnum)
                .setCurrentFps(info.currentFps)
                .setBitrateKbps(info.bitrateKbps)
                .setIFrameInterval(info.iFrameInterval)
                .setHardwareEncoder(info.hardwareEncoder)
                .build()
            sendCmdMessage(VIDEO_ENCODER_INIT_DONE, done.toByteArray())
            LogUtils.i(TAG, "[Phase 7] VIDEO_ENCODER_INIT_DONE sent (matched car params)")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 7] Failed to handle VIDEO_ENCODER_INIT")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase7-VideoEncoderInitDone")
        }
    }

    /**
     * Phase 8: 处理车机视频编码器启动
     * 握手全部完成，进入数据传输阶段
     */
    private fun handleVideoEncoderStart() {
        LogUtils.i(TAG, "[Phase 8] Car VIDEO_ENCODER_START received — handshake complete!")
        handshakeCompleted.set(true)
        updateState(MdState.READY)

        val (width, height) = SettingsManager.getResolution(context)
        val bitrate = SettingsManager.getBitrate(context)
        val framerate = SettingsManager.getFramerate(context)
        val sampleRate = SettingsManager.getSampleRate(context)
        LogUtils.i(TAG, "Video config — resolution=${width}x${height}, bitrate=$bitrate, framerate=$framerate")
        LogUtils.i(TAG, "Audio config — sampleRate=$sampleRate")
        LogUtils.i(TAG, "===== Ready to forward data =====")
    }

    // ==================== CMD 消息发送 ====================

    /**
     * 向车机发送 CarLife CMD 消息
     * 使用 CarLife CMD 通道格式：[data_len(2B)][reserved(2B)][service_type(4B)] + [data]
     */
    private fun sendCmdMessage(serviceType: Int, data: ByteArray): Boolean {
        val cmdChannel = channels[Constants.PortMD.MD_CMD]
        if (cmdChannel == null) {
            LogUtils.w(TAG, "CMD channel not available")
            return false
        }
        return cmdChannel.sendCarLifeMsg(serviceType, data)
    }

    /**
     * 向车机发送媒体数据
     *
     * 使用 CarLife 媒体通道格式（12字节）：
     * [data_len(4B)][timestamp(4B)][service_type(4B)] + [raw_data]
     *
     * 注意：不能使用 channel.send()，它写入的是 ChannelHeader.Media（11字节带magic），
     * 车机期望的是 CarLife 标准媒体格式（12字节无magic）。
     */
    fun sendData(port: Int, payloadType: Int, data: ByteArray): Boolean {
        val channel = channels[port] ?: run {
            LogUtils.w(TAG, "Channel not available for port $port")
            return false
        }
        return channel.sendCarLifeMediaMsg(payloadType, 0, data)
    }

    /**
     * 向车机发送控制数据（CMD 格式）
     *
     * 使用 CarLife CMD 通道格式（8字节）：
     * [data_len(2B)][reserved(2B)][service_type(4B)] + [data]
     */
    fun sendControlData(serviceType: Int, data: ByteArray): Boolean {
        val channel = channels[Constants.PortMD.MD_CTRL] ?: run {
            LogUtils.w(TAG, "CTRL channel not available")
            return false
        }
        return channel.sendCarLifeMsg(serviceType, data)
    }

    fun getChannelInfo(): Map<Int, String> {
        return channels.mapValues { (port, channel) ->
            "Connected: ${channel.isConnected}, Name: ${PORT_NAMES[port]}"
        }
    }

    fun getVideoConfig(): Triple<Int, Int, Int> {
        val (width, height) = SettingsManager.getResolution(context)
        val bitrate = SettingsManager.getBitrate(context)
        return Triple(width, height, bitrate)
    }

    fun getFramerate(): Int = SettingsManager.getFramerate(context)
    fun getAudioConfig(): Int = SettingsManager.getSampleRate(context)
    fun isReady(): Boolean = state.get() == MdState.READY && handshakeCompleted.get()

    fun getConnectionDuration(): Long {
        val start = connectionStartTime.get()
        if (start <= 0L) return 0L
        return System.currentTimeMillis() - start
    }

    fun getLastErrorMessage(): String = lastErrorMessage.get()
    fun setLastErrorMessage(msg: String) { lastErrorMessage.set(msg) }
}
