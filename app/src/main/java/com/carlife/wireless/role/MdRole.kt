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
import com.carlife.wireless.proto.CarlifeAuthenResponseProto
import com.carlife.wireless.proto.CarlifeAuthenResultProto
import com.carlife.wireless.proto.CarlifeDeviceInfoProto
import com.carlife.wireless.proto.CarlifeFeatureConfigProto
import com.carlife.wireless.proto.CarlifeProtocolVersionProto
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.atomic.AtomicReference

/**
 * MD 角色实现（车机侧）
 *
 * MD (Mobile Device) 角色作为服务端，监听来自车机的连接。
 * 启动 6 个 TcpServer 实例，分别监听不同端口。
 *
 * CarLife 握手流程（MD 视角，由车机 HU 发起）：
 * 1. Car(HU) → Box(MD): HU_PROTOCOL_VERSION — 协议版本
 * 2. Box(MD) → Car(HU): VERSION_MATCH_STATUS — 版本匹配确认
 * 3. Car(HU) → Box(MD): HU_INFO — 车机设备信息
 * 4. Box(MD) → Car(HU): MD_INFO — 转接盒设备信息
 * 5. Car(HU) → Box(MD): HU_AUTHEN_REQUEST — 认证请求
 * 6. Box(MD) → Car(HU): MD_AUTHEN_RESPONSE — 认证响应（直接成功）
 * 7. Car(HU) → Box(MD): HU_AUTHEN_RESULT — 认证结果
 * 8. Box(MD) → Car(HU): MD_AUTHEN_RESULT — MD 认证结果
 * 9. Box(MD) → Car(HU): MD_FEATURE_CONFIG_REQUEST — 特性配置请求
 * 10. Car(HU) → Box(MD): HU_FEATURE_CONFIG_RESPONSE — 特性配置响应
 * 11. Car(HU) → Box(MD): VIDEO_ENCODER_INIT — 视频编码器参数
 * 12. Box(MD) → Car(HU): VIDEO_ENCODER_INIT_DONE — 编码器就绪确认
 * 13. Car(HU) → Box(MD): VIDEO_ENCODER_START — 开始传输
 */
class MdRole(private val context: Context) {

    companion object {
        private const val TAG = "MdRole"

        val MD_PORTS: List<Int> = ChannelType.entries.map { it.mdPort }
        val PORT_NAMES: Map<Int, String> = ChannelType.entries.associate { it.mdPort to it.name }

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
    private var stateListener: ((MdState) -> Unit)? = null
    private val executor: ExecutorService = Executors.newCachedThreadPool()
    private val tcpServers: MutableMap<Int, TcpServer> = ConcurrentHashMap()
    private val channels: MutableMap<Int, Channel> = ConcurrentHashMap()
    private val connectedCount = AtomicInteger(0)
    private var huRole: HuRole? = null
    private val handshakeCompleted = AtomicBoolean(false)
    private val connectionStartTime = AtomicLong(0L)
    private val lastErrorMessage = AtomicReference("")
    private var cmdReadThread: Thread? = null

    fun setStateListener(listener: (MdState) -> Unit) { this.stateListener = listener }
    fun setHuRole(huRole: HuRole) { this.huRole = huRole }
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
            MD_PORTS.forEach { port ->
                // CMD 通道使用 CarLife 格式解析，禁用默认的 ChannelHeader 读取循环
                val isCmdPort = (port == Constants.PortMD.MD_CMD)
                val server = TcpServer(port, object : TcpServerListener {
                    override fun onStarted(port: Int) {
                        LogUtils.i(TAG, "TcpServer started on port $port (${PORT_NAMES[port]})")
                    }
                    override fun onStopped(port: Int) {
                        LogUtils.i(TAG, "TcpServer stopped on port $port")
                    }
                    override fun onClientConnected(port: Int, channel: Channel) {
                        handleClientConnected(port, channel)
                    }
                    override fun onClientDisconnected(port: Int, channel: Channel, reason: String?) {
                        handleClientDisconnected(port, reason)
                    }
                    override fun onDataReceived(port: Int, channel: Channel, header: ChannelHeader, payload: ByteArray) {
                        handleDataReceived(port, header, payload)
                    }
                    override fun onError(port: Int, error: String) {
                        LogUtils.e(TAG, "Error on port $port (${PORT_NAMES[port]}): $error")
                        lastErrorMessage.set("Port ${PORT_NAMES[port]}: $error")
                        updateState(MdState.ERROR)
                    }
                }, autoRead = !isCmdPort)

                tcpServers[port] = server
                server.start()
            }

            updateState(MdState.WAITING_CONNECTION)
            LogUtils.i(TAG, "All TcpServers started, waiting for connections...")

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to start TcpServers")
            updateState(MdState.ERROR)
        }
    }

    fun stop() {
        LogUtils.i(TAG, "Stopping MdRole...")

        cmdReadThread?.interrupt()
        cmdReadThread = null

        tcpServers.values.forEach { it.release() }
        tcpServers.clear()

        channels.values.forEach { it.disconnect("MdRole stopped") }
        channels.clear()

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

        // CMD 通道：启动 CarLife 格式读取循环
        if (port == Constants.PortMD.MD_CMD) {
            startCmdReadLoop(channel)
        }

        if (count == ChannelType.entries.size) {
            LogUtils.i(TAG, "All 6 channels connected, waiting for car handshake...")
            connectionStartTime.set(System.currentTimeMillis())
            updateState(MdState.ALL_CONNECTED)
            updateState(MdState.HANDSHAKING)
            // 握手由车机发起，MdRole 通过 handleDataReceived 被动响应
            // 不需要主动发送任何消息，等待车机发送 HU_PROTOCOL_VERSION
        }
    }

    /**
     * CMD 通道 CarLife 格式读取循环
     * 使用 readCarLifeMsg() 读取 CarLife 协议格式消息
     * 格式：[data_len(2B)][reserved(2B)][service_type(4B)] + [protobuf_data]
     */
    private fun startCmdReadLoop(channel: Channel) {
        cmdReadThread?.interrupt()
        cmdReadThread = Thread({
            LogUtils.i(TAG, "CMD CarLife read loop started")
            while (channel.isConnected) {
                val msg = channel.readCarLifeMsg() ?: break
                val (serviceType, data) = msg
                handleCarLifeCmdMessage(serviceType, data)
            }
            LogUtils.i(TAG, "CMD CarLife read loop ended")
        }, "MdRole-CMD-Read").apply {
            isDaemon = true
            start()
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

    private fun handleDataReceived(port: Int, header: ChannelHeader, payload: ByteArray) {
        val payloadType = when (header) {
            is ChannelHeader.Cmd -> header.payloadType
            is ChannelHeader.Media -> header.payloadType
        }
        LogUtils.d(TAG, "Data received on port $port (${PORT_NAMES[port]}), type=0x${Integer.toHexString(payloadType)}, len=${payload.size}")

        // CMD 通道：处理 CarLife 协议握手消息
        if (port == Constants.PortMD.MD_CMD) {
            handleCarLifeCmdMessage(payloadType, payload)
            return
        }

        // 非 CMD 通道：握手完成后直接转发到 HuRole
        if (!handshakeCompleted.get()) {
            LogUtils.d(TAG, "Handshake not completed, ignoring data from port $port")
            return
        }

        forwardDataToHu(port, header, payload)
    }

    // ==================== CarLife CMD 消息处理 ====================

    /**
     * 处理 CarLife CMD 通道消息（握手协议）
     * 车机 (HU) 发送的消息由 MdRole (MD) 响应
     */
    private fun handleCarLifeCmdMessage(serviceType: Int, data: ByteArray) {
        when (serviceType) {
            HU_PROTOCOL_VERSION -> {
                // Phase 1: 收到车机协议版本 → 回复版本匹配
                handleHuProtocolVersion(data)
            }
            HU_INFO -> {
                // Phase 2: 收到车机设备信息 → 回复转接盒设备信息
                handleHuInfo(data)
            }
            HU_AUTHEN_REQUEST -> {
                // Phase 3: 收到认证请求 → 回复认证响应
                handleHuAuthenRequest(data)
            }
            HU_AUTHEN_RESULT -> {
                // Phase 4: 收到认证结果 → 回复 MD 认证结果
                handleHuAuthenResult(data)
            }
            HU_FEATURE_CONFIG_RESPONSE -> {
                // Phase 6: 收到特性配置响应 → 等待 VIDEO_ENCODER_INIT
                handleHuFeatureConfigResponse(data)
            }
            VIDEO_ENCODER_INIT -> {
                // Phase 7: 收到视频编码器初始化 → 回复 INIT_DONE
                handleVideoEncoderInit(data)
            }
            VIDEO_ENCODER_START -> {
                // Phase 8: 车机发出开始传输指令
                handleVideoEncoderStart()
            }
            else -> {
                LogUtils.d(TAG, "Unhandled CMD from car: 0x${Integer.toHexString(serviceType)}, len=${data.size}")
            }
        }
    }

    /**
     * Phase 1: 处理车机协议版本
     * 解析版本号，回复 VERSION_MATCH_STATUS
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
                .setDeviceId(Build.SERIAL ?: "box-001")
                .setDeviceName("CarLife Wireless Box")
                .build()
            sendCmdMessage(MD_INFO, mdInfo.toByteArray())
            LogUtils.i(TAG, "[Phase 2] MD_INFO sent")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 2] Failed to send MD_INFO")
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
     */
    private fun handleVideoEncoderInit(data: ByteArray) {
        try {
            val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.parseFrom(data)
            LogUtils.i(TAG, "[Phase 7] Car VIDEO_ENCODER_INIT: codec=${info.preferredCodec}, " +
                    "res=${info.currentResolutionEnum}, fps=${info.currentFps}, bitrate=${info.bitrateKbps}kbps")
        } catch (e: Exception) {
            LogUtils.w(TAG, "[Phase 7] Failed to parse VIDEO_ENCODER_INIT: ${e.message}")
        }

        // 回复编码器初始化完成
        try {
            val done = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.newBuilder()
                .setSupportedCodecs(1 shl CarlifeVideoEncoderInfoProto.VideoCodecType.VIDEO_CODEC_H264.number)
                .setPreferredCodec(CarlifeVideoEncoderInfoProto.VideoCodecType.VIDEO_CODEC_H264)
                .setCurrentResolutionEnum(CarlifeVideoEncoderInfoProto.VideoResolution.RES_480P)
                .setCurrentFps(Constants.Video.DEFAULT_FPS)
                .setBitrateKbps(SettingsManager.getBitrate(context) / 1000)
                .setIFrameInterval(2)
                .setHardwareEncoder(true)
                .build()
            sendCmdMessage(VIDEO_ENCODER_INIT_DONE, done.toByteArray())
            LogUtils.i(TAG, "[Phase 7] VIDEO_ENCODER_INIT_DONE sent")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "[Phase 7] Failed to send VIDEO_ENCODER_INIT_DONE")
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

    private fun forwardDataToHu(port: Int, header: ChannelHeader, data: ByteArray) {
        val hu = huRole
        if (hu == null) {
            LogUtils.w(TAG, "HU role not set, cannot forward data")
            return
        }

        // 根据端口类型转发到 HU 对应通道
        when (port) {
            Constants.PortMD.MD_CMD -> {
                // CMD 通道：已在 handleCarLifeCmdMessage 处理
                LogUtils.d(TAG, "CMD data should be handled by handleCarLifeCmdMessage")
            }
            Constants.PortMD.MD_VIDEO -> {
                // 视频数据：车机发来的视频（不太常见，但保留转发能力）
                if (header is ChannelHeader.Media) {
                    hu.sendVideoData(header, data)
                }
            }
            Constants.PortMD.MD_MEDIA -> {
                // 音频数据：车机发来的音频
                if (header is ChannelHeader.Media) {
                    hu.sendMediaData(header, data)
                }
            }
            Constants.PortMD.MD_TTS -> {
                // TTS 数据
                if (header is ChannelHeader.Media) {
                    hu.sendTtsData(header, data)
                }
            }
            Constants.PortMD.MD_VR -> {
                // VR 数据：车机麦克风数据 → 转发到手机 B（语音识别）
                if (header is ChannelHeader.Media) {
                    hu.sendVrData(header, data)
                }
            }
            Constants.PortMD.MD_CTRL -> {
                // 控制指令：车机触摸事件 → 转发到手机 B
                if (header is ChannelHeader.Cmd) {
                    hu.sendControlData(header, data)
                }
            }
            else -> {
                LogUtils.w(TAG, "Unknown port $port for forwarding")
            }
        }
    }

    fun sendData(port: Int, payloadType: Int, data: ByteArray): Boolean {
        val channel = channels[port] ?: run {
            LogUtils.w(TAG, "Channel not available for port $port")
            return false
        }
        return channel.send(payloadType, data)
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
