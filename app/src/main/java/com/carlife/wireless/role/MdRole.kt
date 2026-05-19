package com.carlife.wireless.role

import android.content.Context
import android.os.Build
import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.channel.DeviceRole
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.network.TcpServer
import com.carlife.wireless.network.TcpServerListener
import com.carlife.wireless.proto.CarlifeAuthenRequestProto
import com.carlife.wireless.proto.CarlifeAuthenResponseProto
import com.carlife.wireless.proto.CarlifeAuthenResultProto
import com.carlife.wireless.proto.CarlifeAuthMethodProto.AuthMethod
import com.carlife.wireless.proto.CarlifeDeviceInfoProto
import com.carlife.wireless.proto.CarlifeFeatureConfigProto
import com.carlife.wireless.proto.CarlifeProtocolVersionProto
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto
import com.carlife.wireless.service.ProtocolService
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
 * 作为 TcpServer 监听 MD 端口 (7200/8200/9200/9201/9202/9300)，
 * 等待车机主动连接。车机作为 HU 客户端发起 CarLife 握手，
 * MdRole 作为 MD 服务端响应握手并建立数据通道。
 *
 * 车机侧握手流程（车机发起，MdRole 响应）：
 * 1. 车机 → MdRole: HU_PROTOCOL_VERSION (0x00018001)
 * 2. MdRole → 车机: VERSION_MATCH_STATUS (0x00010002)
 * 3. 车机 → MdRole: HU_INFO (0x00018003)
 * 4. MdRole → 车机: MD_INFO (0x00010004)
 * 5. 车机 → MdRole: HU_AUTHEN_REQUEST (0x00018048)
 * 6. MdRole → 车机: MD_AUTHEN_RESPONSE (0x00010049)
 * 7. 车机 → MdRole: HU_AUTHEN_RESULT (0x0001804A)
 * 8. MdRole → 车机: MD_AUTHEN_RESULT (0x0001004B)
 * 9. MdRole → 车机: MD_FEATURE_CONFIG_REQUEST (0x00010051)
 * 10. 车机 → MdRole: HU_FEATURE_CONFIG_RESPONSE (0x00018052)
 * 11. 车机 → MdRole: VIDEO_ENCODER_INIT (0x00018007)
 * 12. MdRole → 车机: VIDEO_ENCODER_INIT_DONE (0x00010008)
 * 13. 车机 → MdRole: VIDEO_ENCODER_START (0x00018009)
 */
class MdRole(private val context: Context) {

    companion object {
        private const val TAG = "MdRole"

        /** 获取设备 ID（Build.SERIAL 在 API 29+ 已废弃，使用 fingerprint 兜底） */
        private fun getDeviceId(): String {
            @Suppress("DEPRECATION")
            return Build.SERIAL?.takeIf { it.isNotBlank() && it != "unknown" }
                ?: "box-${Build.FINGERPRINT.hashCode().toUInt()}"
        }
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

    /** 每个通道的 TcpServer */
    private val tcpServers = ConcurrentHashMap<Int, TcpServer>()

    /** 已连接的车机通道（port → Channel） */
    private val channels: MutableMap<Int, Channel> = ConcurrentHashMap()
    private val connectedCount = AtomicInteger(0)
    @Volatile private var huRole: HuRole? = null
    private val handshakeCompleted = AtomicBoolean(false)
    private val connectionStartTime = AtomicLong(0L)
    private val lastErrorMessage = AtomicReference("")
    @Volatile private var cachedCarEncoderConfig: HuRole.CarEncoderConfig? = null
    var channelConfig: HuRole.ChannelConfig = HuRole.ChannelConfig()
    private var scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    @Volatile private var cmdReadJob: Job? = null
    private val mediaReadJobs: MutableMap<Int, Job> = ConcurrentHashMap()

    fun setStateListener(listener: (MdState) -> Unit) { this.stateListener = listener }
    fun setHuRole(huRole: HuRole) {
        this.huRole = huRole
        cachedCarEncoderConfig?.let {
            huRole.carEncoderConfig = it
            LogUtils.i(TAG, "Synced car encoder config to HuRole")
        }
    }
    fun getState(): MdState = state.get()
    var protocolService: ProtocolService? = null

    private fun updateState(newState: MdState) {
        val oldState = state.getAndSet(newState)
        if (oldState != newState) {
            stateListener?.invoke(newState)
            LogUtils.i(TAG, "State: $oldState → $newState")
        }
    }

    /**
     * 启动 TcpServer 监听所有 MD 端口，等待车机连接
     */
    fun start() {
        if (state.get() != MdState.IDLE && state.get() != MdState.ERROR) {
            LogUtils.w(TAG, "Cannot start, current state: ${state.get()}")
            return
        }

        updateState(MdState.STARTING)
        val config = channelConfig

        try {
            for (type in config.allChannels) {
                val port = type.mdPort
                LogUtils.i(TAG, "Starting TcpServer on port $port (${type.name})")

                val server = TcpServer(type, DeviceRole.MOBILE, object : TcpServerListener {
                    override fun onStarted(port: Int) {
                        LogUtils.i(TAG, "TcpServer started on port $port")
                    }
                    override fun onStopped(port: Int) {
                        LogUtils.i(TAG, "TcpServer stopped on port $port")
                    }
                    override fun onClientConnected(port: Int, channel: Channel) {
                        handleCarConnected(port, channel)
                    }
                    override fun onClientDisconnected(port: Int, channel: Channel, reason: String?) {
                        handleCarDisconnected(port, reason)
                    }
                    override fun onDataReceived(port: Int, channel: Channel, header: ChannelHeader, payload: ByteArray) {
                        // 由专用读取循环处理
                    }
                    override fun onError(port: Int, error: String) {
                        LogUtils.e(TAG, "TcpServer error on port $port: $error")
                        lastErrorMessage.set("Port $port: $error")
                    }
                })
                tcpServers[port] = server
                server.start(port)
            }

            updateState(MdState.WAITING_CONNECTION)
            LogUtils.i(TAG, "All ${config.totalEnabled} TcpServers started, waiting for car...")

            // 连接超时检测
            scope.launch {
                delay(30_000)
                if (state.get() == MdState.WAITING_CONNECTION) {
                    val connected = connectedCount.get()
                    if (connected == 0) {
                        val errMsg = "等待车机连接超时，请确认车机已通过 USB 连接"
                        LogUtils.e(TAG, errMsg)
                        lastErrorMessage.set(errMsg)
                        updateState(MdState.ERROR)
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to start MdRole")
            updateState(MdState.ERROR)
        }
    }

    fun stop() {
        LogUtils.i(TAG, "Stopping MdRole...")

        tcpServers.values.forEach { it.stop() }
        tcpServers.clear()

        channels.values.forEach { it.disconnect("MdRole stopped") }
        channels.clear()

        scope.cancel()
        cmdReadJob = null
        mediaReadJobs.clear()
        scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

        connectedCount.set(0)
        handshakeCompleted.set(false)
        connectionStartTime.set(0L)
        lastErrorMessage.set("")

        updateState(MdState.IDLE)
        LogUtils.i(TAG, "MdRole stopped")
    }

    fun release() {
        stop()
        tcpServers.values.forEach { it.release() }
        tcpServers.clear()
    }

    // ==================== 车机连接处理 ====================

    private fun handleCarConnected(port: Int, channel: Channel) {
        LogUtils.i(TAG, "Car connected on port $port (${ChannelType.getByPort(port)?.name})")

        channels[port] = channel
        val count = connectedCount.incrementAndGet()
        LogUtils.i(TAG, "Connected channels: $count/${channelConfig.totalEnabled}")

        if (count > 0 && state.get() == MdState.WAITING_CONNECTION) {
            updateState(MdState.CONNECTED)
        }

        // 设置通道回调
        channel.callback = object : ChannelCallback {
            override fun onConnected(ch: Channel) {}
            override fun onDisconnected(ch: Channel, reason: String?) {
                handleCarDisconnected(ch.type.mdPort, reason)
            }
            override fun onDataReceived(ch: Channel, header: ChannelHeader, payload: ByteArray) {}
            override fun onError(ch: Channel, error: Throwable) {
                LogUtils.e(TAG, "${ch.name} error: ${error.message}")
            }
        }

        // 根据通道类型启动读取循环
        val type = ChannelType.getByPort(port)
        when (type) {
            ChannelType.HU_CMD -> {
                startCmdReadLoop(channel)
                connectionStartTime.set(System.currentTimeMillis())
                // CMD 连接后等待其他通道就绪再开始握手
                if (state.compareAndSet(MdState.CONNECTED, MdState.ALL_CONNECTED) ||
                    state.compareAndSet(MdState.WAITING_CONNECTION, MdState.ALL_CONNECTED)) {
                    updateState(MdState.HANDSHAKING)
                }
            }
            ChannelType.HU_CTRL -> {
                startCmdReadLoop(channel)
            }
            else -> {
                startMediaReadLoop(port, channel)
            }
        }
    }

    private fun handleCarDisconnected(port: Int, reason: String?) {
        LogUtils.w(TAG, "Car disconnected from port $port: $reason")
        channels.remove(port)
        val count = connectedCount.updateAndGet { maxOf(0, it - 1) }

        if (handshakeCompleted.get()) {
            handshakeCompleted.set(false)
            updateState(MdState.CONNECTED)
            protocolService?.completeHandshake(false, "车机断开")
        }

        if (count == 0) {
            connectionStartTime.set(0L)
            updateState(MdState.WAITING_CONNECTION)
        } else if (state.get() == MdState.ALL_CONNECTED || state.get() == MdState.READY) {
            updateState(MdState.CONNECTED)
        }
    }

    // ==================== CMD 读取循环 ====================

    private fun startCmdReadLoop(channel: Channel) {
        cmdReadJob?.cancel()
        cmdReadJob = scope.launch {
            LogUtils.i(TAG, "CMD read loop started")
            while (channel.isConnected) {
                val msg = channel.readCarLifeMsg() ?: break
                val (serviceType, data) = msg
                handleCarLifeCmdMessage(serviceType, data)
            }
            LogUtils.i(TAG, "CMD read loop ended")
        }
    }

    private fun startMediaReadLoop(port: Int, channel: Channel) {
        mediaReadJobs[port]?.cancel()
        val job = scope.launch {
            LogUtils.i(TAG, "Media read loop started on port $port")
            while (channel.isConnected) {
                val msg = channel.readCarLifeMediaMsg() ?: break
                val (serviceType, timestamp, data) = msg
                handleMediaMessage(port, serviceType, timestamp, data)
            }
            LogUtils.i(TAG, "Media read loop ended on port $port")
        }
        mediaReadJobs[port] = job
    }

    private fun handleMediaMessage(port: Int, serviceType: Int, timestamp: Int, data: ByteArray) {
        if (!handshakeCompleted.get()) return
        val hu = huRole ?: return
        val header = ChannelHeader.Media(serviceType, timestamp, data.size)

        when (port) {
            Constants.PortMD.MD_VIDEO -> hu.sendVideoData(header, data)
            Constants.PortMD.MD_MEDIA -> hu.sendMediaData(header, data)
            Constants.PortMD.MD_TTS -> hu.sendTtsData(header, data)
            Constants.PortMD.MD_VR -> hu.sendVrData(header, data)
            Constants.PortMD.MD_CTRL -> hu.sendControlMsg(serviceType, data)
        }
    }

    // ==================== CarLife CMD 消息处理（车机侧握手） ====================

    private fun handleCarLifeCmdMessage(serviceType: Int, data: ByteArray) {
        when (serviceType) {
            // === 车机发来的 HU 消息（车机作为 HU 客户端发起握手） ===
            CarLifeMsg.HU_PROTOCOL_VERSION -> {
                // Phase 1: 车机发送协议版本 → 回复 VERSION_MATCH_STATUS
                LogUtils.i(TAG, "[Phase 1] Car HU_PROTOCOL_VERSION received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.VERSION_NEGOTIATION, "←", serviceType)
                handleCarProtocolVersion(data)
            }
            CarLifeMsg.HU_INFO -> {
                // Phase 3: 车机发送设备信息 → 回复 MD_INFO
                LogUtils.i(TAG, "[Phase 3] Car HU_INFO received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.DEVICE_INFO, "←", serviceType)
                handleCarHuInfo(data)
            }
            CarLifeMsg.HU_AUTHEN_REQUEST -> {
                // Phase 5: 车机发送认证请求 → 回复 MD_AUTHEN_RESPONSE
                LogUtils.i(TAG, "[Phase 5] Car HU_AUTHEN_REQUEST received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.AUTHENTICATION, "←", serviceType)
                handleCarAuthenRequest(data)
            }
            CarLifeMsg.HU_AUTHEN_RESULT -> {
                // Phase 7: 车机发送认证结果 → 回复 MD_AUTHEN_RESULT
                LogUtils.i(TAG, "[Phase 7] Car HU_AUTHEN_RESULT received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.AUTH_RESULT, "←", serviceType)
                handleCarAuthenResult(data)
            }
            CarLifeMsg.HU_FEATURE_CONFIG_RESPONSE -> {
                // Phase 10: 车机回复特性配置 → 等待 VIDEO_ENCODER_INIT
                LogUtils.i(TAG, "[Phase 10] Car HU_FEATURE_CONFIG_RESPONSE received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.FEATURE_CONFIG, "←", serviceType)
                handleCarFeatureConfigResponse(data)
            }
            CarLifeMsg.VIDEO_ENCODER_INIT -> {
                // Phase 11: 车机发送编码器初始化 → 回复 VIDEO_ENCODER_INIT_DONE
                LogUtils.i(TAG, "[Phase 11] Car VIDEO_ENCODER_INIT received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.VIDEO_ENCODER_INIT, "←", serviceType)
                handleCarVideoEncoderInit(data)
            }
            CarLifeMsg.VIDEO_ENCODER_START -> {
                // Phase 13: 车机发送编码器启动 → 握手完成
                LogUtils.i(TAG, "[Phase 13] Car VIDEO_ENCODER_START received")
                protocolService?.reportHandshakePhase(
                    ProtocolService.HandshakePhase.VIDEO_START, "←", serviceType)
                handleCarVideoEncoderStart()
            }
            else -> {
                // v2.3.0 新增消息 — 车机发来的其他 HU 消息
                if (handshakeCompleted.get()) {
                    LogUtils.d(TAG, "Forwarding CMD 0x${Integer.toHexString(serviceType)} to Phone B")
                    huRole?.sendControlMsg(serviceType, data)
                } else {
                    LogUtils.d(TAG, "Unhandled CMD during handshake: 0x${Integer.toHexString(serviceType)}")
                }
            }
        }
    }

    // ==================== 车机侧握手处理 ====================

    /** Phase 1: 处理车机协议版本，回复 VERSION_MATCH_STATUS */
    private fun handleCarProtocolVersion(data: ByteArray) {
        try {
            val version = CarlifeProtocolVersionProto.CarlifeProtocolVersion.parseFrom(data)
            LogUtils.i(TAG, "[Phase 1] Car protocol version: ${version.majorVersion}.${version.minorVersion}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 1] Failed to parse protocol version: ${e.message}")
        }
        try {
            val response = CarlifeProtocolVersionProto.CarlifeProtocolVersion.newBuilder()
                .setMajorVersion(Constants.PROTOCOL_MAJOR_VERSION)
                .setMinorVersion(Constants.PROTOCOL_MINOR_VERSION)
                .build()
            sendCmdMessage(CarLifeMsg.VERSION_MATCH_STATUS, response.toByteArray())
            LogUtils.i(TAG, "[Phase 2] VERSION_MATCH_STATUS sent")
            protocolService?.reportHandshakePhase(
                ProtocolService.HandshakePhase.VERSION_NEGOTIATION, "→", CarLifeMsg.VERSION_MATCH_STATUS)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 2] Failed to send VERSION_MATCH_STATUS")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase2-VersionMatch")
        }
    }

    /** Phase 3: 处理车机设备信息，回复 MD_INFO */
    private fun handleCarHuInfo(data: ByteArray) {
        try {
            val info = CarlifeDeviceInfoProto.CarlifeDeviceInfo.parseFrom(data)
            LogUtils.i(TAG, "[Phase 3] Car info: ${info.manufacturer} ${info.model}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 3] Failed to parse HU_INFO: ${e.message}")
        }
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
            sendCmdMessage(CarLifeMsg.MD_INFO, mdInfo.toByteArray())
            LogUtils.i(TAG, "[Phase 4] MD_INFO sent")
            protocolService?.reportHandshakePhase(
                ProtocolService.HandshakePhase.DEVICE_INFO, "→", CarLifeMsg.MD_INFO)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 4] Failed to send MD_INFO")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase4-MdInfo")
        }
    }

    /** Phase 5: 处理车机认证请求，回复 MD_AUTHEN_RESPONSE（直接成功） */
    private fun handleCarAuthenRequest(data: ByteArray) {
        try {
            val request = CarlifeAuthenRequestProto.CarlifeAuthenRequest.parseFrom(data)
            LogUtils.i(TAG, "[Phase 5] Car auth request: method=${request.method}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 5] Failed to parse auth request: ${e.message}")
        }
        try {
            val response = CarlifeAuthenResponseProto.CarlifeAuthenResponse.newBuilder()
                .setSuccess(true)
                .build()
            sendCmdMessage(CarLifeMsg.MD_AUTHEN_RESPONSE, response.toByteArray())
            LogUtils.i(TAG, "[Phase 6] MD_AUTHEN_RESPONSE sent (success=true)")
            protocolService?.reportHandshakePhase(
                ProtocolService.HandshakePhase.AUTHENTICATION, "→", CarLifeMsg.MD_AUTHEN_RESPONSE)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 6] Failed to send MD_AUTHEN_RESPONSE")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase6-AuthenResponse")
        }
    }

    /** Phase 7: 处理车机认证结果，回复 MD_AUTHEN_RESULT + 发送 MD_FEATURE_CONFIG_REQUEST */
    private fun handleCarAuthenResult(data: ByteArray) {
        try {
            val result = CarlifeAuthenResultProto.CarlifeAuthenResult.parseFrom(data)
            LogUtils.i(TAG, "[Phase 7] Car auth result: ${result.result}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 7] Failed to parse auth result: ${e.message}")
        }
        try {
            val mdResult = CarlifeAuthenResultProto.CarlifeAuthenResult.newBuilder()
                .setResult(CarlifeAuthenResultProto.AuthenResultCode.AUTHEN_RESULT_SUCCESS)
                .build()
            sendCmdMessage(CarLifeMsg.MD_AUTHEN_RESULT, mdResult.toByteArray())
            LogUtils.i(TAG, "[Phase 8] MD_AUTHEN_RESULT sent (SUCCESS)")
            protocolService?.reportHandshakePhase(
                ProtocolService.HandshakePhase.AUTH_RESULT, "→", CarLifeMsg.MD_AUTHEN_RESULT)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 8] Failed to send MD_AUTHEN_RESULT")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase8-AuthenResult")
        }
        // Phase 9: 发送特性配置请求
        sendFeatureConfigRequest()
    }

    /** Phase 9: 发送 MD_FEATURE_CONFIG_REQUEST */
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
            sendCmdMessage(CarLifeMsg.MD_FEATURE_CONFIG_REQUEST, config.toByteArray())
            LogUtils.i(TAG, "[Phase 9] MD_FEATURE_CONFIG_REQUEST sent")
            protocolService?.reportHandshakePhase(
                ProtocolService.HandshakePhase.FEATURE_CONFIG, "→", CarLifeMsg.MD_FEATURE_CONFIG_REQUEST)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 9] Failed to send MD_FEATURE_CONFIG_REQUEST")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase9-FeatureConfig")
        }
    }

    /** Phase 10: 处理车机特性配置响应（等待 VIDEO_ENCODER_INIT） */
    private fun handleCarFeatureConfigResponse(data: ByteArray) {
        try {
            val config = CarlifeFeatureConfigProto.CarlifeFeatureConfig.parseFrom(data)
            LogUtils.i(TAG, "[Phase 10] Car feature config: video=${config.videoEnabled}, audio=${config.audioEnabled}")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 10] Failed to parse feature config: ${e.message}")
        }
    }

    /** Phase 11: 处理车机编码器初始化，回复 VIDEO_ENCODER_INIT_DONE */
    private fun handleCarVideoEncoderInit(data: ByteArray) {
        try {
            val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.parseFrom(data)
            LogUtils.i(TAG, "[Phase 11] Car encoder: codec=${info.preferredCodec}, " +
                    "res=${info.currentResolutionEnum}, fps=${info.currentFps}")

            // 捕获车机编码能力，同步给 HuRole
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

            // 回复编码器初始化完成（匹配车机参数）
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
            sendCmdMessage(CarLifeMsg.VIDEO_ENCODER_INIT_DONE, done.toByteArray())
            LogUtils.i(TAG, "[Phase 12] VIDEO_ENCODER_INIT_DONE sent")
            protocolService?.reportHandshakePhase(
                ProtocolService.HandshakePhase.VIDEO_ENCODER_INIT, "→", CarLifeMsg.VIDEO_ENCODER_INIT_DONE)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 12] Failed to handle VIDEO_ENCODER_INIT")
            ErrorTracker.recordHandshakeFailure("MdRole", e.message ?: "unknown", "Phase12-VideoEncoderInitDone")
        }
    }

    /** Phase 13: 处理车机编码器启动，握手完成 */
    private fun handleCarVideoEncoderStart() {
        LogUtils.i(TAG, "[Phase 13] Car VIDEO_ENCODER_START — handshake complete!")
        handshakeCompleted.set(true)
        updateState(MdState.READY)
        protocolService?.completeHandshake(true)
        LogUtils.i(TAG, "===== Ready to forward data =====")
    }

    // ==================== 数据发送（ConnectionService 调用） ====================

    /**
     * 向车机发送媒体数据（CarLife 媒体格式 12 字节）
     */
    fun sendData(port: Int, payloadType: Int, data: ByteArray): Boolean {
        val channel = channels[port] ?: return false
        return channel.sendCarLifeMediaMsg(payloadType, 0, data)
    }

    /**
     * 向车机发送控制数据（CarLife CMD 格式 8 字节）
     */
    fun sendControlData(serviceType: Int, data: ByteArray): Boolean {
        val channel = channels[Constants.PortMD.MD_CTRL] ?: return false
        return channel.sendCarLifeMsg(serviceType, data)
    }

    private fun sendCmdMessage(serviceType: Int, data: ByteArray): Boolean {
        val cmdChannel = channels[Constants.PortMD.MD_CMD] ?: return false
        return cmdChannel.sendCarLifeMsg(serviceType, data)
    }

    // ==================== 查询方法 ====================

    fun isReady(): Boolean = state.get() == MdState.READY && handshakeCompleted.get()
    fun getConnectionDuration(): Long {
        val start = connectionStartTime.get()
        return if (start > 0L) System.currentTimeMillis() - start else 0L
    }
    fun getLastErrorMessage(): String = lastErrorMessage.get()
    fun setLastErrorMessage(msg: String) { lastErrorMessage.set(msg) }
    fun getChannelInfo(): Map<Int, String> {
        return channels.mapValues { (port, ch) ->
            "Connected: ${ch.isConnected}, Name: ${ChannelType.getByPort(port)?.name}"
        }
    }
    fun getVideoConfig(): Triple<Int, Int, Int> {
        val (w, h) = SettingsManager.getResolution(context)
        return Triple(w, h, SettingsManager.getBitrate(context))
    }
    fun getFramerate(): Int = SettingsManager.getFramerate(context)
    fun getAudioConfig(): Int = SettingsManager.getSampleRate(context)
}
