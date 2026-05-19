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
import com.carlife.wireless.proto.CarlifeDeviceInfoProto.DeviceType
import com.carlife.wireless.proto.CarlifeDeviceInfoProto.OsType
import com.carlife.wireless.proto.CarlifeFeatureConfigProto
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto.VideoCodecType
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto.VideoResolution
import com.carlife.wireless.proto.CarlifeProtocolVersionProto
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.ErrorTracker
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.service.ProtocolService
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.delay
import kotlinx.coroutines.cancel
import kotlinx.coroutines.isActive
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicReference

/**
 * HU 角色状态枚举
 */
enum class HuState {
    IDLE,
    CONNECTING,
    AUTHENTICATING,
    REGISTERING,
    NEGOTIATING,
    CONNECTED,
    DISCONNECTED
}

/**
 * HU 角色回调接口
 */
interface HuRoleListener {
    fun onStateChanged(state: HuState, reason: String?)
    fun onVideoFrameReceived(header: ChannelHeader.Media, frame: ByteArray)
    fun onAudioFrameReceived(header: ChannelHeader.Media, frame: ByteArray)
    fun onTtsFrameReceived(header: ChannelHeader.Media, data: ByteArray)
    fun onVrFrameReceived(header: ChannelHeader.Media, data: ByteArray)
    fun onControlReceived(header: ChannelHeader.Cmd, payload: ByteArray)
    fun onError(error: String)
    /** 端口预检结果回调 */
    fun onPortCheckResult(openPorts: Int, totalPorts: Int, closedPorts: List<String>) {}
}

/**
 * HU 角色（车机/盒子侧）
 *
 * 作为客户端主动连接手机 B，完成 CarLife 协议握手，并接收音视频流。
 *
 * 握手流程（标准 CarLife 协议）：
 * 1. HU → MD: HU_PROTOCOL_VERSION (0x00018001) — 协议版本
 * 2. MD → HU: VERSION_MATCH_STATUS (0x00010002) — 版本匹配
 * 3. HU → MD: HU_INFO (0x00018003) — 车机设备信息
 * 4. MD → HU: MD_INFO (0x00010004) — 手机设备信息
 * 5. HU → MD: HU_AUTHEN_REQUEST (0x00018048) — 认证请求
 * 6. MD → HU: MD_AUTHEN_RESPONSE (0x00010049) — 认证响应
 * 7. HU → MD: HU_AUTHEN_RESULT (0x0001804A) — 认证结果 (result=true)
 * 8. MD → HU: MD_AUTHEN_RESULT (0x0001004B) — MD 认证结果
 * 9. MD → HU: MD_FEATURE_CONFIG_REQUEST (0x00010051) — 特性配置请求
 * 10. HU → MD: HU_FEATURE_CONFIG_RESPONSE (0x00018052) — 特性配置响应
 * 11. HU → MD: VIDEO_ENCODER_INIT (0x00018007) — 视频编码器初始化
 * 12. MD → HU: VIDEO_ENCODER_INIT_DONE (0x00010008)
 * 13. HU → MD: VIDEO_ENCODER_START (0x00018009) — 开始投屏
 */
class HuRole(
    val context: Context,
    val phoneBIp: String = Constants.IpAddress.HOTSPOT_GATEWAY,
    var listener: HuRoleListener? = null
) {
    /**
     * 车机编码器配置（由 MdRole 从车机 VIDEO_ENCODER_INIT 中捕获）
     * 用于 HuRole 向手机B协商编码参数时，匹配车机实际能力
     *
     * 位掩码说明（proto 枚举值即位偏移）：
     * - VideoCodecType: H264=1, H265=2
     * - VideoResolution: 480P=1, 720P=2, 1080P=3
     */
    data class CarEncoderConfig(
        val supportedCodecs: Int = 0,
        val preferredCodec: Int = 0,        // VideoCodecType.number
        val resolution: Int = 0,            // 位掩码
        val resolutionEnum: Int = 0,        // VideoResolution.number
        val fps: Int = 30,
        val bitrateKbps: Int = 2000,
        val iFrameInterval: Int = 2,
        val hardwareEncoder: Boolean = true
    ) {
        /** 是否支持 H.264 (enum=1) */
        fun supportsH264(): Boolean = (supportedCodecs and (1 shl 1)) != 0
        /** 是否支持 H.265 (enum=2) */
        fun supportsH265(): Boolean = (supportedCodecs and (1 shl 2)) != 0
        /** 是否支持 480P (enum=1, bit 1) */
        fun supports480p(): Boolean = (resolution and (1 shl 1)) != 0
        /** 是否支持 720P (enum=2, bit 2) */
        fun supports720p(): Boolean = (resolution and (1 shl 2)) != 0
        /** 是否支持 1080P (enum=3, bit 3) */
        fun supports1080p(): Boolean = (resolution and (1 shl 3)) != 0
    }

    /** 车机编码器配置（默认值：仅 H.264 + 480P，兼容老车机） */
    @Volatile
    var carEncoderConfig: CarEncoderConfig = CarEncoderConfig(
        supportedCodecs = (1 shl 1),  // 仅 H.264
        preferredCodec = 1,            // H.264
        resolution = (1 shl 1),       // 仅 480P (bit 1)
        resolutionEnum = 1,            // RES_480P
        fps = 30,
        bitrateKbps = 2000
    )

    companion object {
        private const val TAG = "HuRole"
        private val DEVICE_ID: String by lazy {
            @Suppress("DEPRECATION")
            Build.SERIAL?.takeIf { it.isNotBlank() && it != "unknown" }
                ?: "box-${Build.FINGERPRINT.hashCode().toUInt()}"
        }
        private val DEVICE_NAME: String = Build.MODEL ?: "Android Box"
        private val MANUFACTURER: String = Build.MANUFACTURER ?: "Unknown"
        private val OS_VERSION: String = Build.VERSION.RELEASE ?: "unknown"

        /** 连接超时（毫秒）— 仅检查 CMD + VIDEO 两个核心通道
         *  无线连接流程需要：mDNS 发现 + CarWith 启动 + TCP 连接建立，15 秒不够。
         *  增大到 30 秒以覆盖慢速网络和首次连接场景。 */
        private const val CONNECT_TIMEOUT_MS = 30_000L

        /** 握手超时（毫秒）— 从发送 HU_PROTOCOL_VERSION 到收到 VIDEO_ENCODER_START */
        private const val HANDSHAKE_TIMEOUT_MS = 30_000L

        /** 握手阶段 socket 读超时（毫秒）— 首次握手手机 B 可能响应较慢，给更多时间 */
        private const val HANDSHAKE_READ_TIMEOUT_MS = 15_000

        /** 数据传输阶段 socket 读超时（毫秒）— 握手完成后切回正常超时 */
        private const val DATA_READ_TIMEOUT_MS = 5_000

        /** 等待手机 B 就绪超时（毫秒）— 用户点击"开始连接"的最长时间 */
        private const val PHONE_READY_TIMEOUT_MS = 120_000L

        /** 端口探测间隔（毫秒）— 作为 UDP 就绪信号的降级方案 */
        private const val PORT_PROBE_INTERVAL_MS = 3_000L

        /**
         * 默认通道配置
         * - 必选: CMD（协议握手）、VIDEO（投屏画面）、CTRL（触摸控制）
         * - 可选: MEDIA（音乐）、TTS（语音播报）、VR（语音识别）
         */
        val DEFAULT_CHANNEL_CONFIG = ChannelConfig()
    }

    /**
     * 通道配置 — 控制哪些通道启用
     *
     * 必选通道未连接时会触发超时断开；
     * 可选通道未连接不影响握手，静默跳过。
     */
    class ChannelConfig(
        /** CMD 通道（协议握手）— 必须启用 */
        val cmdEnabled: Boolean = true,
        /** VIDEO 通道（投屏画面）— 必须启用 */
        val videoEnabled: Boolean = true,
        /** CTRL 通道（触摸控制）— 必须启用 */
        val ctrlEnabled: Boolean = true,
        /** MEDIA 通道（音乐转发）— 可选 */
        val mediaEnabled: Boolean = true,
        /** TTS 通道（语音播报）— 可选 */
        val ttsEnabled: Boolean = false,
        /** VR 通道（语音识别）— 可选 */
        val vrEnabled: Boolean = false
    ) {
        /** 必选通道列表 */
        val requiredChannels: List<ChannelType> = buildList {
            if (cmdEnabled) add(ChannelType.HU_CMD)
            if (videoEnabled) add(ChannelType.HU_VIDEO)
            if (ctrlEnabled) add(ChannelType.HU_CTRL)
        }

        /** 可选通道列表 */
        val optionalChannels: List<ChannelType> = buildList {
            if (mediaEnabled) add(ChannelType.HU_MEDIA)
            if (ttsEnabled) add(ChannelType.HU_TTS)
            if (vrEnabled) add(ChannelType.HU_VR)
        }

        /** 所有启用的通道 */
        val allChannels: List<ChannelType> = requiredChannels + optionalChannels

        /** 启用的通道总数 */
        val totalEnabled: Int get() = allChannels.size

        /** 必选通道数 */
        val requiredCount: Int get() = requiredChannels.size

        fun isRequired(type: ChannelType): Boolean = type in requiredChannels
        fun isEnabled(type: ChannelType): Boolean = type in allChannels
    }

    private val state = AtomicReference(HuState.IDLE)
    private val connectedChannelCount = AtomicInteger(0)
    private val requiredConnectedCount = AtomicInteger(0)
    /** 防止握手重复启动的标志 */
    private val handshakeStarted = AtomicBoolean(false)
    /** 最近一次错误信息（供 ConnectionService 读取并广播给 UI） */
    private val lastError = AtomicReference("")
    /** 当前握手阶段（用于超时定位） */
    private val handshakePhase = AtomicReference("未开始")

    fun getLastError(): String = lastError.get()
    fun getHandshakePhase(): String = handshakePhase.get()

    // 通道配置
    var channelConfig: ChannelConfig = DEFAULT_CHANNEL_CONFIG

    /** ProtocolService 引用（握手追踪） */
    var protocolService: ProtocolService? = null

    // 通道映射（按类型索引）
    private val channels = ConcurrentHashMap<ChannelType, Channel>()

    // 协程作用域（IO 线程池 + SupervisorJob 保证子协程独立失败）
    private var scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    // CMD 通道读取协程
    @Volatile private var cmdReadJob: Job? = null

    /**
     * 主动连接手机 B 的 CarWith
     *
     * 优化流程：
     * 1. 先等待手机 B 就绪（UDP CARLIFE_PHONE_READY 信号或端口探测）
     * 2. 手机 B 就绪后，再建立 TCP 连接
     * 3. 完成 CarLife 协议握手
     *
     * 这样避免在手机 B 用户点击"开始连接"之前进行无效的 TCP 连接尝试。
     */
    fun connect() {
        // 允许从 IDLE 或 DISCONNECTED 状态发起连接
        val currentState = state.get()
        if (currentState != HuState.IDLE && currentState != HuState.DISCONNECTED) {
            LogUtils.w("$TAG: Cannot connect, current state: $currentState")
            return
        }

        // 清理可能残留的旧资源
        channels.values.forEach { ch ->
            try { ch.disconnect("preparing new connection") } catch (_: Exception) {}
        }
        channels.clear()
        if (!scope.isActive) {
            scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
        }
        cmdReadJob = null
        connectedChannelCount.set(0)
        requiredConnectedCount.set(0)
        handshakeStarted.set(false)
        handshakePhase.set("未开始")

        updateState(HuState.CONNECTING)
        LogUtils.i("$TAG: Waiting for phone B ports at $phoneBIp...")

        scope.launch {
            try {
                // === 阶段 1：等待手机 B 就绪（定时端口扫描） ===
                val ready = waitForPhoneReady()
                if (!ready) {
                    val errMsg = "等待手机B端口就绪超时（${PHONE_READY_TIMEOUT_MS / 1000}秒），" +
                            "请在手机B的 CarWith 中点击「开始连接」，确认热点已开启"
                    LogUtils.e("$TAG: Phone B ports not ready within timeout")
                    lastError.set(errMsg)
                    listener?.onError(errMsg)
                    disconnect("Phone B not ready timeout")
                    return@launch
                }

                // === 阶段 2：建立 TCP 连接 ===
                if (state.get() == HuState.DISCONNECTED) return@launch
                connectChannels()
            } catch (e: Exception) {
                val errMsg = "连接手机B失败: ${e.message}"
                LogUtils.e(e, "$TAG: Failed to connect to phone B")
                lastError.set(errMsg)
                listener?.onError(errMsg)
                ErrorTracker.recordConnectionLost("HuRole", errMsg)
                updateState(HuState.DISCONNECTED, "Initialization failed")
            }
        }
    }

    /**
     * 等待手机 B 就绪
     *
     * 定时扫描手机 B 的 CarWith 端口（CMD:7240, VIDEO:8240, CTRL:9340），
     * 所有必需端口均可连接时判定手机 B 已就绪。
     *
     * 同时保留 UDP 就绪信号作为加速通道（收到即刻连接，跳过等待）。
     *
     * @return true 手机 B 已就绪，false 超时
     */
    private suspend fun waitForPhoneReady(): Boolean {
        val startTime = System.currentTimeMillis()
        var lastProbeTime = 0L
        val requiredPorts = channelConfig.requiredChannels.map { it to it.huPort }

        LogUtils.i("$TAG: Scanning phone B ports: ${requiredPorts.joinToString { "${it.first.name}:${it.second}" }}")

        while (state.get() != HuState.DISCONNECTED) {
            val elapsed = System.currentTimeMillis() - startTime
            if (elapsed >= PHONE_READY_TIMEOUT_MS) {
                LogUtils.e("$TAG: Phone B port scan timeout after ${elapsed / 1000}s")
                return false
            }

            // UDP 加速通道：收到信号直接跳过等待
            if (phoneReadyFlag.get()) {
                LogUtils.i("$TAG: Phone B signaled ready via UDP (fast path)")
                return true
            }

            // 定时端口扫描
            val now = System.currentTimeMillis()
            if (now - lastProbeTime >= PORT_PROBE_INTERVAL_MS) {
                lastProbeTime = now
                val result = probePhonePorts(requiredPorts)
                if (result.allOpen) {
                    LogUtils.i("$TAG: All phone B ports ready: ${result.openPorts.joinToString()}")
                    return true
                }
                // 每次扫描都记录进度（仅 debug 级别）
                if (result.openPorts.isNotEmpty()) {
                    LogUtils.d("$TAG: Port scan: ${result.openPorts.size}/${requiredPorts.size} ready " +
                            "(open: ${result.openPorts.joinToString()}, " +
                            "closed: ${result.closedPorts.joinToString()})")
                }
            }

            delay(500)
        }
        return false
    }

    /** 手机 B 就绪标志（由 notifyPhoneReady() 设置，UDP 加速通道） */
    private val phoneReadyFlag = AtomicBoolean(false)

    /**
     * 通知 HuRole 手机 B 已就绪（由 ConnectionService 调用）
     *
     * 当 UdpDiscoveryService 收到手机 B 的 CARLIFE_PHONE_READY 信号时触发。
     * 作为加速通道：跳过端口扫描等待，立即开始 TCP 连接。
     */
    fun notifyPhoneReady() {
        if (phoneReadyFlag.compareAndSet(false, true)) {
            LogUtils.i("$TAG: Phone B ready notification received (UDP fast path)")
        }
    }

    /**
     * 端口扫描结果
     */
    private data class ProbeResult(
        val allOpen: Boolean,
        val openPorts: List<String>,
        val closedPorts: List<String>
    )

    /**
     * 探测手机 B 的 CarWith 必需端口是否已监听
     *
     * 对每个必需通道的端口尝试 TCP 连接（2 秒超时），
     * 全部可连接时返回 allOpen=true。
     * 探测用的 socket 立即关闭，不影响后续正式连接。
     */
    private fun probePhonePorts(requiredPorts: List<Pair<ChannelType, Int>>): ProbeResult {
        val open = mutableListOf<String>()
        val closed = mutableListOf<String>()

        for ((type, port) in requiredPorts) {
            try {
                val socket = java.net.Socket()
                socket.connect(java.net.InetSocketAddress(phoneBIp, port), 2000)
                socket.close()
                open.add("${type.name}:$port")
            } catch (e: Exception) {
                closed.add("${type.name}:$port")
            }
        }

        return ProbeResult(
            allOpen = closed.isEmpty(),
            openPorts = open,
            closedPorts = closed
        )
    }

    /**
     * 建立 TCP 连接通道并启动握手
     */
    private suspend fun connectChannels() {
        val config = channelConfig

        LogUtils.i("$TAG: Phone B ports ready, connecting to $phoneBIp (${config.totalEnabled} channels)...")

        for (type in config.allChannels) {
            val autoRead = type != ChannelType.HU_CMD
            val channel = createChannel(type, autoRead)
            channels[type] = channel

            val port = type.huPort
            LogUtils.i("$TAG: Connecting ${type.name} to $phoneBIp:$port (autoRead=$autoRead)")
            channel.connect(phoneBIp, port)
        }

        LogUtils.i("$TAG: All ${config.totalEnabled} channels connecting, waiting for connections...")

        // 连接超时检测
        launch timeout@{
            delay(CONNECT_TIMEOUT_MS)
            if (state.get() == HuState.DISCONNECTED) return@timeout

            val videoConnected = channels[ChannelType.HU_VIDEO]?.isConnected == true
            val requiredOk = config.requiredChannels.all { channels[it]?.isConnected == true }

            if (!videoConnected) {
                val connected = connectedChannelCount.get()
                val errMsg = "连接手机B超时（已连 $connected/${config.totalEnabled} 个通道），" +
                        "请确认手机B已打开 CarWith 并进入无线连接模式"
                LogUtils.e("$TAG: Connection timeout! VIDEO not connected. Connected: $connected/${config.totalEnabled}")
                lastError.set(errMsg)
                listener?.onError(errMsg)
                ErrorTracker.recordConnectionTimeout("HuRole", phoneBIp, CONNECT_TIMEOUT_MS)
                disconnect("Connection timeout: cannot reach phone B CarWith")
            } else if (!requiredOk) {
                val missing = config.requiredChannels.filter { channels[it]?.isConnected != true }
                LogUtils.w("$TAG: Some required channels not connected: ${missing.joinToString { it.name }}, but VIDEO is OK")
            } else {
                LogUtils.i("$TAG: All required channels connected within timeout window")
            }
        }
    }

    /**
     * 创建通道并设置回调
     */
    private fun createChannel(type: ChannelType, autoRead: Boolean = true): Channel {
        val newChannel = Channel.create(type, DeviceRole.HU, autoRead)
        newChannel.callback = object : ChannelCallback {
            override fun onConnected(channel: Channel) {
                LogUtils.i("$TAG: ${channel.name} connected")
                onChannelConnected(channel.type)
            }

            override fun onDisconnected(channel: Channel, reason: String?) {
                LogUtils.w("$TAG: ${channel.name} disconnected: $reason")
                // 单通道断开不立即断开全部，让超时检测决定
                // 只有 CMD 通道断开才立即断开（握手必须依赖 CMD）
                if (channel.type == ChannelType.HU_CMD && state.get() != HuState.DISCONNECTED) {
                    disconnect("CMD channel disconnected: $reason")
                }
            }

            override fun onDataReceived(channel: Channel, header: ChannelHeader, payload: ByteArray) {
                handleChannelData(channel, header, payload)
            }

            override fun onError(channel: Channel, error: Throwable) {
                LogUtils.e("$TAG: ${channel.name} error: ${error.message}")
                listener?.onError("${channel.name}: ${error.message}")
            }
        }
        return newChannel
    }

    fun disconnect(reason: String? = null) {
        if (state.get() == HuState.DISCONNECTED) return

        updateState(HuState.DISCONNECTED, reason)

        // 先关闭所有通道（关闭 socket 会中断阻塞的 read）
        channels.values.forEach { ch ->
            try { ch.disconnect("HuRole disconnect") } catch (e: Exception) {
                LogUtils.e(e, "$TAG: Error disconnecting ${ch.name}")
            }
        }
        channels.clear()

        // 取消所有协程（包括读取循环和连接协程）
        scope.cancel()
        cmdReadJob = null

        // 重建 scope 以支持后续 reconnect
        scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

        connectedChannelCount.set(0)
        requiredConnectedCount.set(0)
        handshakeStarted.set(false)
        handshakePhase.set("未开始")
        LogUtils.i("$TAG: Disconnected: ${reason ?: "unknown"}")
    }

    fun release() {
        disconnect("releasing")
    }

    fun getState(): HuState = state.get()
    fun isConnected(): Boolean = state.get() == HuState.CONNECTED

    // ==================== 数据转发方法（MdRole → HuRole → 手机B） ====================

    /**
     * 转发视频数据到手机 B
     * 使用 CarLife 媒体格式（12字节头）：[data_len(4B)][timestamp(4B)][service_type(4B)]
     */
    fun sendVideoData(header: ChannelHeader.Media, data: ByteArray): Boolean {
        return channels[ChannelType.HU_VIDEO]?.sendCarLifeMediaMsg(header.payloadType, header.timestamp, data) ?: false
    }

    /**
     * 转发音频数据到手机 B
     * 使用 CarLife 媒体格式
     */
    fun sendMediaData(header: ChannelHeader.Media, data: ByteArray): Boolean {
        return channels[ChannelType.HU_MEDIA]?.sendCarLifeMediaMsg(header.payloadType, header.timestamp, data) ?: false
    }

    /**
     * 转发 TTS 数据到手机 B
     * 使用 CarLife 媒体格式
     */
    fun sendTtsData(header: ChannelHeader.Media, data: ByteArray): Boolean {
        return channels[ChannelType.HU_TTS]?.sendCarLifeMediaMsg(header.payloadType, header.timestamp, data) ?: false
    }

    /**
     * 转发 VR 数据到手机 B（车机麦克风 → 手机 B 语音识别）
     * 使用 CarLife 媒体格式
     */
    fun sendVrData(header: ChannelHeader.Media, data: ByteArray): Boolean {
        return channels[ChannelType.HU_VR]?.sendCarLifeMediaMsg(header.payloadType, header.timestamp, data) ?: false
    }

    /**
     * 转发控制指令到手机 B（触摸事件等）
     * 使用 CarLife CMD 格式（8字节头）：[data_len(2B)][reserved(2B)][service_type(4B)]
     */
    fun sendControlData(header: ChannelHeader.Cmd, data: ByteArray): Boolean {
        return channels[ChannelType.HU_CTRL]?.sendCarLifeMsg(header.payloadType, data) ?: false
    }

    /**
     * 转发控制指令到手机 B（按 serviceType + raw data）
     * 使用 CarLife CMD 格式
     */
    fun sendControlMsg(serviceType: Int, data: ByteArray): Boolean {
        return channels[ChannelType.HU_CTRL]?.sendCarLifeMsg(serviceType, data) ?: false
    }

    // ==================== 通道连接管理 ====================

    private fun onChannelConnected(type: ChannelType) {
        val totalCount = connectedChannelCount.incrementAndGet()
        val isRequired = channelConfig.isRequired(type)

        if (isRequired) {
            requiredConnectedCount.incrementAndGet()
        }

        LogUtils.d("$TAG: ${type.name} connected (required=$isRequired), " +
                "total=$totalCount/${channelConfig.totalEnabled}, " +
                "required=${requiredConnectedCount.get()}/${channelConfig.requiredCount}")

        // 必选通道全部连接 → 启动握手（AtomicBoolean 防止重复触发）
        // 必须确保 CMD 通道已连接，否则握手无法进行
        val cmdConnected = channels[ChannelType.HU_CMD]?.isConnected == true
        if (requiredConnectedCount.get() >= channelConfig.requiredCount
            && cmdConnected
            && handshakeStarted.compareAndSet(false, true)) {
            // 握手阶段：将所有通道的 socket 读超时设为更长时间
            // 手机 B 首次响应可能较慢（尤其通过 WiFi 热点），5 秒太短
            channels.values.forEach { ch ->
                ch.setReadTimeout(HANDSHAKE_READ_TIMEOUT_MS)
            }
            LogUtils.i("$TAG: Socket read timeout set to ${HANDSHAKE_READ_TIMEOUT_MS}ms for handshake phase")

            val optionalPending = channelConfig.optionalChannels.count { channels[it]?.isConnected != true }
            if (optionalPending > 0) {
                LogUtils.i("$TAG: All required channels connected, $optionalPending optional channels pending. Starting handshake...")
            } else {
                LogUtils.i("$TAG: All channels connected, starting CarLife handshake...")
            }
            startCmdReadLoop()
            scope.launch {
                delay(100)
                sendProtocolVersion()
            }
            // 握手超时检测（独立于连接超时）
            scope.launch {
                delay(HANDSHAKE_TIMEOUT_MS)
                if (state.get() != HuState.CONNECTED && handshakeStarted.get()) {
                    val phase = handshakePhase.get()
                    val errMsg = "CarLife 握手超时（卡在: $phase），请确认手机 B 的 CarWith 已进入无线连接模式"
                    LogUtils.e("$TAG: Handshake timeout at phase: $phase")
                    lastError.set(errMsg)
                    listener?.onError(errMsg)
                    disconnect("Handshake timeout at $phase")
                }
            }
        }
    }

    // ==================== CMD 通道读取循环 ====================

    /**
     * CMD 通道使用 CarLife 消息格式独立读取
     * 格式：[data_len(2B)][reserved(2B)][service_type(4B)] + [protobuf_data]
     */
    private fun startCmdReadLoop() {
        val ch = channels[ChannelType.HU_CMD] ?: run {
            LogUtils.e("$TAG: CMD channel not available for read loop!")
            val errMsg = "CMD 通道未连接，无法开始握手"
            lastError.set(errMsg)
            listener?.onError(errMsg)
            disconnect("CMD channel not available")
            return
        }
        cmdReadJob = scope.launch {
            LogUtils.i("$TAG: CMD read loop started (CarLife protocol)")
            while (ch.isConnected && state.get() != HuState.DISCONNECTED) {
                val msg = ch.readCarLifeMsg()
                if (msg == null) {
                    // 连接断开或读取失败
                    if (state.get() != HuState.DISCONNECTED) {
                        val phase = handshakePhase.get()
                        val errMsg = "CMD 通道断开（在: $phase），手机 B 的 CarWith 可能未进入无线连接模式"
                        LogUtils.w("$TAG: CMD read returned null at $phase")
                        lastError.set(errMsg)
                        listener?.onError(errMsg)
                        disconnect("CMD channel closed at $phase")
                    }
                    break
                }
                val (serviceType, data) = msg
                LogUtils.d("$TAG: CMD received: 0x${Integer.toHexString(serviceType)}, len=${data.size}")
                handleCarLifeCmdMessage(serviceType, data)
            }
            LogUtils.i("$TAG: CMD read loop ended")
        }
    }

    // ==================== CarLife 消息处理 ====================

    /**
     * 处理 CarLife CMD 消息
     */
    private fun handleCarLifeCmdMessage(serviceType: Int, data: ByteArray) {
        when (serviceType) {
            CarLifeMsg.VERSION_MATCH_STATUS -> {
                // Phase 1 响应：版本匹配
                LogUtils.i("$TAG: [Phase 1] VERSION_MATCH_STATUS received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.VERSION_NEGOTIATION, "←", serviceType)
                handshakePhase.set("Phase 2: 等待设备信息")
                // 发送车机设备信息
                sendHuInfo()
            }
            CarLifeMsg.MD_INFO -> {
                // Phase 2 响应：手机设备信息
                LogUtils.i("$TAG: [Phase 2] MD_INFO received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.DEVICE_INFO, "←", serviceType)
                handshakePhase.set("Phase 3: 等待认证")
                // 发送认证请求
                sendAuthenRequest()
            }
            CarLifeMsg.MD_AUTHEN_RESPONSE -> {
                // Phase 3 响应：认证响应
                handshakePhase.set("Phase 3: 认证响应")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.AUTHENTICATION, "←", serviceType)
                handleAuthenResponse(data)
            }
            CarLifeMsg.MD_AUTHEN_RESULT -> {
                // Phase 4：MD 认证结果
                LogUtils.i("$TAG: [Phase 4] MD_AUTHEN_RESULT received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.AUTH_RESULT, "←", serviceType)
                handshakePhase.set("Phase 5: 等待特性配置")
                // 发送 HU 认证结果（直接成功）
                sendAuthenResult(true)
            }
            CarLifeMsg.MD_FEATURE_CONFIG_REQUEST -> {
                // Phase 5：特性配置请求
                LogUtils.i("$TAG: [Phase 5] FEATURE_CONFIG_REQUEST received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.FEATURE_CONFIG, "←", serviceType)
                handshakePhase.set("Phase 6: 等待编码器初始化")
                sendFeatureConfigResponse()
            }
            CarLifeMsg.VIDEO_ENCODER_INIT_DONE -> {
                // Phase 6 响应：编码器初始化完成
                // 解析手机B选择的编码参数，记录版本兼容性信息
                try {
                    val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.parseFrom(data)
                    val codecName = when (info.preferredCodec) {
                        CarlifeVideoEncoderInfoProto.VideoCodecType.VIDEO_CODEC_H264 -> "H.264"
                        CarlifeVideoEncoderInfoProto.VideoCodecType.VIDEO_CODEC_H265 -> "H.265"
                        else -> "Unknown(${info.preferredCodec.number})"
                    }
                    LogUtils.i("$TAG: [Phase 6] VIDEO_ENCODER_INIT_DONE — Phone B chose: " +
                            "codec=$codecName, res=${info.currentResolutionEnum.name}, " +
                            "fps=${info.currentFps}, bitrate=${info.bitrateKbps}kbps")

                    // 版本兼容性检查：如果手机B选择了 H.265 但车机不支持，发出警告
                    if (info.preferredCodec == CarlifeVideoEncoderInfoProto.VideoCodecType.VIDEO_CODEC_H265
                        && !carEncoderConfig.supportsH265()) {
                        LogUtils.w("$TAG: ⚠️ 版本兼容性警告：手机B选择了 H.265，但车机可能不支持。" +
                                "投屏可能出现卡logo或黑屏。建议在手机B的 CarWith 中切换为 H.264。")
                    }
                } catch (e: Exception) {
                    LogUtils.w("$TAG: [Phase 6] Failed to parse VIDEO_ENCODER_INIT_DONE: ${e.message}")
                }
                sendVideoEncoderStart()
            }
            // === v2.3.0 新增消息处理 ===
            CarLifeMsg.MD_MODULE_STATUS ->
                forwardCmdToListener(serviceType, data, "MD_MODULE_STATUS")
            CarLifeMsg.MD_CONNECT_EXCEPTION ->
                forwardCmdToListener(serviceType, data, "MD_CONNECT_EXCEPTION", "w")
            CarLifeMsg.MD_EXIT -> {
                LogUtils.i("$TAG: MD_EXIT received — phone requesting graceful exit")
                disconnect("Phone requested exit (MD_EXIT)")
            }
            CarLifeMsg.MD_CAR_DATA_SUBSCRIBE ->
                forwardCmdToListener(serviceType, data, "MD_CAR_DATA_SUBSCRIBE")
            CarLifeMsg.MD_CARLIFE_DATA_SUBSCRIBE_DONE ->
                forwardCmdToListener(serviceType, data, "MD_CARLIFE_DATA_SUBSCRIBE_DONE")
            CarLifeMsg.MD_UI_ACTION_SOUND ->
                forwardCmdToListener(serviceType, data, "MD_UI_ACTION_SOUND", "d")
            CarLifeMsg.MD_VEHICLE_CONTROL ->
                forwardCmdToListener(serviceType, data, "MD_VEHICLE_CONTROL")
            CarLifeMsg.MD_NAVI_NEXT_TURN_INFO ->
                forwardCmdToListener(serviceType, data, "MD_NAVI_NEXT_TURN_INFO", "d")
            CarLifeMsg.MD_MEDIA_INFO ->
                forwardCmdToListener(serviceType, data, "MD_MEDIA_INFO", "d")
            CarLifeMsg.MD_MEDIA_PROGRESS_BAR ->
                forwardCmdToListener(serviceType, data, "MD_MEDIA_PROGRESS_BAR", "d")
            CarLifeMsg.MD_REQUEST_GO_TO_FOREGROUND ->
                forwardCmdToListener(serviceType, data, "MD_REQUEST_GO_TO_FOREGROUND")
            CarLifeMsg.MD_NAVI_ASSITANTGUIDE_INFO ->
                forwardCmdToListener(serviceType, data, "MD_NAVI_ASSITANTGUIDE_INFO", "d")
            CarLifeMsg.MD_CAR_DATA_SUBSCRIBE_START ->
                forwardCmdToListener(serviceType, data, "MD_CAR_DATA_SUBSCRIBE_START")
            CarLifeMsg.MD_CAR_DATA_SUBSCRIBE_STOP ->
                forwardCmdToListener(serviceType, data, "MD_CAR_DATA_SUBSCRIBE_STOP")

            else -> {
                LogUtils.w("$TAG: Unhandled CMD during handshake: 0x${Integer.toHexString(serviceType)}, len=${data.size}")
                // 其他 CMD 消息通知上层
                val header = ChannelHeader.Cmd(serviceType, data.size, 0)
                listener?.onControlReceived(header, data)
            }
        }
    }

    // ==================== CarLife 握手消息发送 ====================

    /**
     * 将 CMD 消息转发给 listener（上层服务）
     * 用于 v2.3.0 新增消息的统一处理
     */
    private fun forwardCmdToListener(serviceType: Int, data: ByteArray, msgName: String, level: String = "i") {
        when (level) {
            "w" -> LogUtils.w("$TAG: $msgName received, len=${data.size}")
            "d" -> LogUtils.d("$TAG: $msgName received, len=${data.size}")
            else -> LogUtils.i("$TAG: $msgName received, len=${data.size}")
        }
        val header = ChannelHeader.Cmd(serviceType, data.size, 0)
        listener?.onControlReceived(header, data)
    }

    /**
     * Phase 1: 发送协议版本
     * HU_PROTOCOL_VERSION (0x00018001)
     */
    private fun sendProtocolVersion() {
        updateState(HuState.AUTHENTICATING)
        handshakePhase.set("Phase 1: 等待版本匹配")

        try {
            val version = CarlifeProtocolVersionProto.CarlifeProtocolVersion.newBuilder()
                .setMajorVersion(Constants.PROTOCOL_MAJOR_VERSION)
                .setMinorVersion(Constants.PROTOCOL_MINOR_VERSION)
                .build()

            channels[ChannelType.HU_CMD]?.sendCarLifeMsg(CarLifeMsg.HU_PROTOCOL_VERSION, version.toByteArray())
            LogUtils.i("$TAG: [Phase 1] HU_PROTOCOL_VERSION sent (${Constants.PROTOCOL_MAJOR_VERSION}.${Constants.PROTOCOL_MINOR_VERSION})")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 1] Failed to send protocol version")
            ErrorTracker.recordHandshakeFailure("HuRole", e.message ?: "unknown", "Phase1-ProtocolVersion")
            disconnect("Protocol version failed")
        }
    }

    /**
     * Phase 2: 发送车机设备信息
     * HU_INFO (0x00018003)
     */
    private fun sendHuInfo() {
        try {
            // 使用 Protobuf 构建设备信息
            val deviceInfo = CarlifeDeviceInfoProto.CarlifeDeviceInfo.newBuilder()
                .setDeviceType(DeviceType.DEVICE_TYPE_HEAD_UNIT)
                .setOsType(OsType.OS_ANDROID)
                .setOsVersion(OS_VERSION)
                .setManufacturer(MANUFACTURER)
                .setModel(DEVICE_NAME)
                .setDeviceId(DEVICE_ID)
                .setDeviceName(DEVICE_NAME)
                .build()

            channels[ChannelType.HU_CMD]?.sendCarLifeMsg(CarLifeMsg.HU_INFO, deviceInfo.toByteArray())
            LogUtils.i("$TAG: [Phase 2] HU_INFO sent")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 2] Failed to send HU_INFO")
            ErrorTracker.recordHandshakeFailure("HuRole", e.message ?: "unknown", "Phase2-HuInfo")
            disconnect("HU_INFO failed")
        }
    }

    /**
     * Phase 3: 发送认证请求
     * HU_AUTHEN_REQUEST (0x00018048)
     */
    private fun sendAuthenRequest() {
        updateState(HuState.AUTHENTICATING)

        try {
            val request = CarlifeAuthenRequestProto.CarlifeAuthenRequest.newBuilder()
                .setMethod(AuthMethod.AUTH_METHOD_NONE)
                .setDeviceId(DEVICE_ID)
                .setDeviceName(DEVICE_NAME)
                .setDeviceModel(DEVICE_NAME)
                .build()

            channels[ChannelType.HU_CMD]?.sendCarLifeMsg(CarLifeMsg.HU_AUTHEN_REQUEST, request.toByteArray())
            LogUtils.i("$TAG: [Phase 3] HU_AUTHEN_REQUEST sent")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 3] Failed to send authen request")
            ErrorTracker.recordHandshakeFailure("HuRole", e.message ?: "unknown", "Phase3-AuthenRequest")
            disconnect("Authen request failed")
        }
    }

    /**
     * Phase 3 响应处理：MD_AUTHEN_RESPONSE
     */
    private fun handleAuthenResponse(data: ByteArray) {
        try {
            val response = CarlifeAuthenResponseProto.CarlifeAuthenResponse.parseFrom(data)
            LogUtils.i("$TAG: [Phase 3] MD_AUTHEN_RESPONSE: success=${response.success}")
        } catch (e: Exception) {
            LogUtils.w("$TAG: [Phase 3] Failed to parse MD_AUTHEN_RESPONSE: ${e.message}")
        }
        // 无论认证结果如何，都发送 HU_AUTHEN_RESULT (result=true) 绕过认证
        sendAuthenResult(true)
    }

    /**
     * Phase 4: 发送认证结果
     * HU_AUTHEN_RESULT (0x0001804A)
     */
    private fun sendAuthenResult(success: Boolean) {
        updateState(HuState.REGISTERING)

        try {
            val result = CarlifeAuthenResultProto.CarlifeAuthenResult.newBuilder()
                .setResult(
                    if (success) CarlifeAuthenResultProto.AuthenResultCode.AUTHEN_RESULT_SUCCESS
                    else CarlifeAuthenResultProto.AuthenResultCode.AUTHEN_RESULT_FAILED
                )
                .build()

            channels[ChannelType.HU_CMD]?.sendCarLifeMsg(CarLifeMsg.HU_AUTHEN_RESULT, result.toByteArray())
            LogUtils.i("$TAG: [Phase 4] HU_AUTHEN_RESULT sent (result=$success)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 4] Failed to send authen result")
            ErrorTracker.recordHandshakeFailure("HuRole", e.message ?: "unknown", "Phase4-AuthenResult")
            disconnect("Authen result failed")
        }
    }

    /**
     * Phase 5: 发送特性配置响应
     * HU_FEATURE_CONFIG_RESPONSE (0x00018052)
     */
    private fun sendFeatureConfigResponse() {
        updateState(HuState.NEGOTIATING)

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

            channels[ChannelType.HU_CMD]?.sendCarLifeMsg(CarLifeMsg.HU_FEATURE_CONFIG_RESPONSE, config.toByteArray())
            LogUtils.i("$TAG: [Phase 5] FEATURE_CONFIG_RESPONSE sent")

            // 发送视频编码器初始化
            sendVideoEncoderInit()
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 5] Failed to send feature config")
            ErrorTracker.recordHandshakeFailure("HuRole", e.message ?: "unknown", "Phase5-FeatureConfig")
            disconnect("Feature config failed")
        }
    }

    /**
     * Phase 6: 发送视频编码器初始化
     * VIDEO_ENCODER_INIT (0x00018007)
     *
     * 根据车机实际编码能力（carEncoderConfig）配置参数，
     * 确保手机B输出的编码格式、分辨率与车机兼容。
     */
    private fun sendVideoEncoderInit() {
        try {
            val car = carEncoderConfig

            // 构建车机支持的编解码器位掩码
            // 只告诉手机B车机确实支持的编解码器，避免发送车机无法解码的格式
            var codecs = 0
            if (car.supportsH264()) codecs = codecs or (1 shl VideoCodecType.VIDEO_CODEC_H264.number)
            if (car.supportsH265()) codecs = codecs or (1 shl VideoCodecType.VIDEO_CODEC_H265.number)
            // 如果车机没有声明支持任何编解码器，默认 H.264
            if (codecs == 0) codecs = (1 shl VideoCodecType.VIDEO_CODEC_H264.number)

            // 选择首选编解码器：优先车机声明的，否则 H.264
            val preferredCodec = if (car.preferredCodec > 0 && (codecs and (1 shl car.preferredCodec)) != 0) {
                VideoCodecType.forNumber(car.preferredCodec) ?: VideoCodecType.VIDEO_CODEC_H264
            } else {
                VideoCodecType.VIDEO_CODEC_H264
            }

            // 构建车机支持的分辨率位掩码
            var resolutions = 0
            if (car.supports480p())  resolutions = resolutions or (1 shl VideoResolution.RES_480P.number)
            if (car.supports720p())  resolutions = resolutions or (1 shl VideoResolution.RES_720P.number)
            if (car.supports1080p()) resolutions = resolutions or (1 shl VideoResolution.RES_1080P.number)
            if (resolutions == 0) resolutions = (1 shl VideoResolution.RES_480P.number)

            // 选择默认分辨率：车机声明的，否则 480P
            val defaultRes = if (car.resolutionEnum >= 0) {
                VideoResolution.forNumber(car.resolutionEnum) ?: VideoResolution.RES_480P
            } else {
                VideoResolution.RES_480P
            }

            // 帧率和码率：使用车机声明的值
            val fps = if (car.fps > 0) car.fps else Constants.Video.DEFAULT_FPS
            val bitrateKbps = if (car.bitrateKbps > 0) car.bitrateKbps else 2000

            val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.newBuilder()
                .setSupportedCodecs(codecs)
                .setPreferredCodec(preferredCodec)
                .setCurrentResolution(resolutions)
                .setCurrentResolutionEnum(defaultRes)
                .apply {
                    // 添加所有车机支持的分辨率
                    if (car.supports480p())  addSupportedResolutions(VideoResolution.RES_480P)
                    if (car.supports720p())  addSupportedResolutions(VideoResolution.RES_720P)
                    if (car.supports1080p()) addSupportedResolutions(VideoResolution.RES_1080P)
                }
                .setCurrentFps(fps)
                .setBitrateKbps(bitrateKbps)
                .setIFrameInterval(car.iFrameInterval)
                .setHardwareEncoder(car.hardwareEncoder)
                .build()

            channels[ChannelType.HU_CMD]?.sendCarLifeMsg(CarLifeMsg.VIDEO_ENCODER_INIT, info.toByteArray())
            LogUtils.i("$TAG: [Phase 6] VIDEO_ENCODER_INIT sent — " +
                    "codec=${preferredCodec.name}, res=${defaultRes.name}, " +
                    "fps=${fps}, bitrate=${bitrateKbps}kbps " +
                    "(matched to car capabilities)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 6] Failed to send VIDEO_ENCODER_INIT")
            ErrorTracker.recordHandshakeFailure("HuRole", e.message ?: "unknown", "Phase6-VideoEncoderInit")
            disconnect("Video encoder init failed")
        }
    }

    /**
     * Phase 7: 发送视频编码器启动
     * VIDEO_ENCODER_START (0x00018009)
     */
    private fun sendVideoEncoderStart() {
        try {
            channels[ChannelType.HU_CMD]?.sendCarLifeMsg(CarLifeMsg.VIDEO_ENCODER_START, ByteArray(0))
            LogUtils.i("$TAG: [Phase 7] VIDEO_ENCODER_START sent")

            // 握手完成，恢复正常的 socket 读超时（数据传输阶段不需要长超时）
            channels.values.forEach { ch ->
                ch.setReadTimeout(DATA_READ_TIMEOUT_MS)
            }
            LogUtils.i("$TAG: Socket read timeout restored to ${DATA_READ_TIMEOUT_MS}ms for data phase")

            updateState(HuState.CONNECTED)
            protocolService?.completeHandshake(true)
            LogUtils.i("$TAG: ===== Screen projection started =====")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 7] Failed to send VIDEO_ENCODER_START")
            ErrorTracker.recordHandshakeFailure("HuRole", e.message ?: "unknown", "Phase7-VideoEncoderStart")
            disconnect("Video encoder start failed")
        }
    }

    // ==================== 通道数据分发 ====================

    private fun handleChannelData(channel: Channel, header: ChannelHeader, payload: ByteArray) {
        when (channel.type) {
            ChannelType.HU_CMD -> {
                // CMD 通道由 startCmdReadLoop 独立处理，这里忽略
            }
            ChannelType.HU_VIDEO -> {
                if (header is ChannelHeader.Media) {
                    listener?.onVideoFrameReceived(header, payload)
                }
            }
            ChannelType.HU_MEDIA -> {
                if (header is ChannelHeader.Media) {
                    listener?.onAudioFrameReceived(header, payload)
                }
            }
            ChannelType.HU_TTS -> {
                if (header is ChannelHeader.Media) {
                    listener?.onTtsFrameReceived(header, payload)
                }
            }
            ChannelType.HU_VR -> {
                if (header is ChannelHeader.Media) {
                    listener?.onVrFrameReceived(header, payload)
                }
            }
            ChannelType.HU_CTRL -> {
                if (header is ChannelHeader.Cmd) {
                    listener?.onControlReceived(header, payload)
                }
            }
        }
    }

    // ==================== 状态管理 ====================

    private fun updateState(newState: HuState, reason: String? = null) {
        val oldState = state.getAndSet(newState)
        if (oldState != newState) {
            LogUtils.i("$TAG: State: $oldState -> $newState${if (reason != null) " ($reason)" else ""}")
            listener?.onStateChanged(newState, reason)
        }
    }
}
