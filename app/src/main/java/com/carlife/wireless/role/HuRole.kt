package com.carlife.wireless.role

import android.content.Context
import android.os.Build
import com.carlife.wireless.model.KConnectionState
import com.carlife.wireless.network.TcpClient
import com.carlife.wireless.network.TcpClientListener
import com.carlife.wireless.proto.CarlifeAuthenRequestProto
import com.carlife.wireless.proto.CarlifeAuthenResponseProto
import com.carlife.wireless.proto.CarlifeAuthMethodProto.AuthMethod
import com.carlife.wireless.proto.CarlifeDeviceInfoProto
import com.carlife.wireless.proto.CarlifeDeviceInfoProto.DeviceType
import com.carlife.wireless.proto.CarlifeDeviceInfoProto.OsType
import com.carlife.wireless.proto.CarlifeFeatureConfigProto
import com.carlife.wireless.proto.CarlifeRegisterRequestProto
import com.carlife.wireless.proto.CarlifeRegisterResponseProto
import com.carlife.wireless.proto.CarlifeRegisterTypeProto.RegisterType
import com.carlife.wireless.proto.CarlifeRegisterTypeProto.RegisterResultCode
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto.VideoCodecType
import com.carlife.wireless.proto.CarlifeVideoEncoderInfoProto.VideoResolution
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicReference

/**
 * HU 角色状态枚举
 * 定义 HU（车机/盒子）侧的完整连接生命周期
 */
enum class HuState {
    /** 初始状态，未发起连接 */
    IDLE,

    /** 正在连接手机 B（6 个通道） */
    CONNECTING,

    /** 正在认证 */
    AUTHENTICATING,

    /** 正在注册 */
    REGISTERING,

    /** 功能协商中 */
    NEGOTIATING,

    /** 已连接，正常接收投屏数据 */
    CONNECTED,

    /** 已断开连接 */
    DISCONNECTED
}

/**
 * HU 角色回调接口
 * 监听 HU 角色的状态变化和接收到的数据
 */
interface HuRoleListener {
    /** 状态变化回调 */
    fun onStateChanged(state: HuState, reason: String?)

    /** 视频帧接收回调 */
    fun onVideoFrameReceived(frame: ByteArray)

    /** 音频帧接收回调 */
    fun onAudioFrameReceived(frame: ByteArray)

    /** TTS 数据接收回调 */
    fun onTtsFrameReceived(data: ByteArray)

    /** VR 数据接收回调 */
    fun onVrFrameReceived(data: ByteArray)

    /** 控制通道数据接收回调 */
    fun onControlReceived(payloadType: Int, payload: ByteArray)

    /** 错误回调 */
    fun onError(error: String)
}

/**
 * HU 角色类（车机/盒子侧）
 * 作为客户端主动连接手机 B，完成 CarLife 协议握手，并接收音视频流。
 *
 * 连接流程：认证 → 注册 → 功能协商 → 投屏
 *
 * @param context Android Context（用于网络状态检查）
 * @param phoneBIp 手机 B 的 IP 地址（默认 192.168.42.129）
 * @param listener 事件监听器
 */
class HuRole(
    val context: Context,
    val phoneBIp: String = Constants.IpAddress.USB_TETHERING_LOCAL,
    var listener: HuRoleListener? = null
) {
    companion object {
        private const val TAG = "HuRole"

        // 设备信息
        private val DEVICE_ID: String = Build.SERIAL ?: "unknown"
        private val DEVICE_NAME: String = Build.MODEL ?: "Android Box"
        private val MANUFACTURER: String = Build.MANUFACTURER ?: "Unknown"
        private val OS_VERSION: String = Build.VERSION.RELEASE ?: "unknown"
    }

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val state = AtomicReference(HuState.IDLE)
    private var handshakeJob: Job? = null

    // 6 个通道的 TcpClient
    private lateinit var cmdClient: TcpClient
    private lateinit var videoClient: TcpClient
    private lateinit var mediaClient: TcpClient
    private lateinit var ttsClient: TcpClient
    private lateinit var vrClient: TcpClient
    private lateinit var ctrlClient: TcpClient

    // 通道连接计数器（等待所有 6 个通道都连接后再发起握手）
    private val connectedChannelCount = AtomicInteger(0)

    /**
     * 连接到手机 B
     * 初始化 6 个 TCP 通道并等待全部连接成功后发起握手
     */
    fun connect() {
        if (state.get() != HuState.IDLE) {
            LogUtils.w("$TAG: Cannot connect, current state: ${state.get()}")
            return
        }

        updateState(HuState.CONNECTING)
        connectedChannelCount.set(0)

        try {
            // 初始化 6 个通道的 TcpClient
            cmdClient = TcpClient(context, createCmdListener())
            videoClient = TcpClient(context, createVideoListener())
            mediaClient = TcpClient(context, createMediaListener())
            ttsClient = TcpClient(context, createTtsListener())
            vrClient = TcpClient(context, createVrListener())
            ctrlClient = TcpClient(context, createCtrlListener())

            // 设置设备 ID（用于心跳）
            cmdClient.setDeviceId(DEVICE_ID)

            // 连接到手机 B 的 6 个端口
            cmdClient.connect(phoneBIp, Constants.Port.HU_CMD)
            videoClient.connect(phoneBIp, Constants.Port.HU_VIDEO)
            mediaClient.connect(phoneBIp, Constants.Port.HU_MEDIA)
            ttsClient.connect(phoneBIp, Constants.Port.HU_TTS)
            vrClient.connect(phoneBIp, Constants.Port.HU_VR)
            ctrlClient.connect(phoneBIp, Constants.Port.HU_CTRL)

            LogUtils.i("$TAG: Connecting to phone B at $phoneBIp (6 channels)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Failed to initialize connections")
            listener?.onError("Connection initialization failed: ${e.message}")
            updateState(HuState.DISCONNECTED, "Initialization failed")
        }
    }

    /**
     * 断开与手机 B 的所有连接
     */
    fun disconnect(reason: String? = null) {
        if (state.get() == HuState.DISCONNECTED) {
            return
        }

        updateState(HuState.DISCONNECTED, reason)
        handshakeJob?.cancel()

        try {
            if (::cmdClient.isInitialized) cmdClient.disconnect()
            if (::videoClient.isInitialized) videoClient.disconnect()
            if (::mediaClient.isInitialized) mediaClient.disconnect()
            if (::ttsClient.isInitialized) ttsClient.disconnect()
            if (::vrClient.isInitialized) vrClient.disconnect()
            if (::ctrlClient.isInitialized) ctrlClient.disconnect()
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Error during disconnect")
        }

        LogUtils.i("$TAG: Disconnected: ${reason ?: "unknown"}")
    }

    /**
     * 释放资源
     */
    fun release() {
        LogUtils.i("$TAG: Releasing resources...")
        disconnect("releasing")
        scope.cancel()
        LogUtils.d("$TAG: Released")
    }

    /**
     * 设置事件监听器
     */
    fun setListener(listener: HuRoleListener?) {
        this.listener = listener
    }
    
    /**
     * 获取当前状态
     */
    fun getState(): HuState = state.get()

    /**
     * 是否已连接
     */
    fun isConnected(): Boolean = state.get() == HuState.CONNECTED

    // ==================== 协议握手流程 ====================

    /**
     * 通道计数器达到 6 时，自动发起握手
     * 每次有通道连接时调用
     */
    private fun onChannelConnected() {
        val count = connectedChannelCount.incrementAndGet()
        LogUtils.d("$TAG: Channel connected, count=$count/6")

        if (count >= 6) {
            LogUtils.i("$TAG: All 6 channels connected, starting handshake...")
            handshakeJob = scope.launch {
                delay(100) // 短暂延迟确保所有通道就绪
                sendAuthenRequest()
            }
        }
    }

    /**
     * 阶段1：发送认证请求
     */
    private fun sendAuthenRequest() {
        updateState(HuState.AUTHENTICATING)

        try {
            val request = CarlifeAuthenRequestProto.CarlifeAuthenRequest.newBuilder()
                .setMethod(AuthMethod.AUTH_METHOD_NONE) // 无需认证
                .setDeviceId(DEVICE_ID)
                .setDeviceName(DEVICE_NAME)
                .setDeviceModel(DEVICE_NAME)
                .build()

            cmdClient.sendData(request.toByteArray())
            LogUtils.i("$TAG: [Phase 1] AuthenRequest sent (deviceId=$DEVICE_ID)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 1] Failed to send AuthenRequest")
            listener?.onError("AuthenRequest failed: ${e.message}")
            disconnect("Authentication failed")
        }
    }

    /**
     * 阶段2：发送注册请求
     */
    private fun sendRegisterRequest() {
        updateState(HuState.REGISTERING)

        try {
            // 构建设备信息
            val deviceInfo = CarlifeDeviceInfoProto.CarlifeDeviceInfo.newBuilder()
                .setDeviceType(DeviceType.DEVICE_TYPE_BOX)
                .setOsType(OsType.OS_ANDROID)
                .setOsVersion(OS_VERSION)
                .setManufacturer(MANUFACTURER)
                .setModel(DEVICE_NAME)
                .setDeviceId(DEVICE_ID)
                .setDeviceName(DEVICE_NAME)
                .build()

            val request = CarlifeRegisterRequestProto.CarlifeRegisterRequest.newBuilder()
                .setRegisterType(RegisterType.REGISTER_TYPE_NEW)
                .setDeviceInfo(deviceInfo.toByteString())
                .setProtocolVersion("${Constants.PROTOCOL_MAJOR_VERSION}.${Constants.PROTOCOL_MINOR_VERSION}")
                .setDeviceId(DEVICE_ID)
                .setDeviceName(DEVICE_NAME)
                .setDeviceManufacturer(MANUFACTURER)
                .setDeviceModel(DEVICE_NAME)
                .build()

            cmdClient.sendData(request.toByteArray())
            LogUtils.i("$TAG: [Phase 2] RegisterRequest sent (deviceId=$DEVICE_ID)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 2] Failed to send RegisterRequest")
            listener?.onError("RegisterRequest failed: ${e.message}")
            disconnect("Registration failed")
        }
    }

    /**
     * 阶段3：发送功能配置
     */
    private fun sendFeatureConfig() {
        updateState(HuState.NEGOTIATING)

        try {
            // 构建视频编码器信息
            val videoEncoderInfo = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.newBuilder()
                .setSupportedCodecs(
                    (1 shl VideoCodecType.VIDEO_CODEC_H264.number) or
                    (1 shl VideoCodecType.VIDEO_CODEC_H265.number)
                )
                .setPreferredCodec(VideoCodecType.VIDEO_CODEC_H264)
                .setCurrentResolution(
                    (1 shl VideoResolution.RES_480P.number) or
                    (1 shl VideoResolution.RES_720P.number) or
                    (1 shl VideoResolution.RES_1080P.number)
                )
                .setCurrentResolutionEnum(VideoResolution.RES_480P)
                .addSupportedResolutions(VideoResolution.RES_480P)
                .addSupportedResolutions(VideoResolution.RES_720P)
                .addSupportedResolutions(VideoResolution.RES_1080P)
                .setCurrentFps(Constants.Video.DEFAULT_FPS)
                .setBitrateKbps(2000)
                .setIFrameInterval(2)
                .setHardwareEncoder(true)
                .build()

            val config = CarlifeFeatureConfigProto.CarlifeFeatureConfig.newBuilder()
                // 功能位图：Bit0=视频, Bit1=音频, Bit2=触摸, Bit3=音乐, Bit4=导航, Bit5=语音
                .setFeatureBitmap(
                    (1L shl 0) or  // 视频投屏
                    (1L shl 1) or  // 音频投屏
                    (1L shl 2) or  // 触摸控制
                    (1L shl 3) or  // 音乐控制
                    (1L shl 4) or  // 导航投射
                    (1L shl 5)     // 语音识别
                )
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

            cmdClient.sendData(config.toByteArray())
            LogUtils.i("$TAG: [Phase 3] FeatureConfig sent (${Constants.Video.DEFAULT_WIDTH}x${Constants.Video.DEFAULT_HEIGHT}@${Constants.Video.DEFAULT_FPS}fps)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 3] Failed to send FeatureConfig")
            listener?.onError("FeatureConfig failed: ${e.message}")
            disconnect("Feature negotiation failed")
        }
    }

    /**
     * 处理认证响应
     */
    private fun handleAuthenResponse(data: ByteArray) {
        try {
            val response = CarlifeAuthenResponseProto.CarlifeAuthenResponse.parseFrom(data)
            LogUtils.i("$TAG: [Phase 1] AuthenResponse: success=${response.success}, errorCode=${response.errorCode}")

            if (response.success || response.errorCode == 0) {
                // 认证成功，进入阶段2
                sendRegisterRequest()
            } else {
                val error = "Authentication failed: ${response.errorMsg}"
                LogUtils.e("$TAG: $error")
                listener?.onError(error)
                disconnect("Authentication failed: ${response.errorCode}")
            }
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 1] Failed to parse AuthenResponse")
            // 协议容错：无法解析时假设成功，继续注册
            sendRegisterRequest()
        }
    }

    /**
     * 处理注册响应
     */
    private fun handleRegisterResponse(data: ByteArray) {
        try {
            val response = CarlifeRegisterResponseProto.CarlifeRegisterResponse.parseFrom(data)
            LogUtils.i("$TAG: [Phase 2] RegisterResponse: result=${response.result}, sessionId=${response.sessionId}")

            if (response.result == RegisterResultCode.REGISTER_RESULT_SUCCESS) {
                // 注册成功，进入阶段3
                sendFeatureConfig()
            } else {
                val error = "Registration failed: ${response.description}"
                LogUtils.e("$TAG: $error")
                listener?.onError(error)
                disconnect("Registration failed: ${response.result}")
            }
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 2] Failed to parse RegisterResponse")
            // 协议容错：无法解析时假设成功，继续协商
            sendFeatureConfig()
        }
    }

    /**
     * 处理功能协商响应（手机返回的视频编码器信息）
     */
    private fun handleVideoEncoderInfo(data: ByteArray) {
        try {
            val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.parseFrom(data)
            LogUtils.i(
                "$TAG: [Phase 3] VideoEncoderInfo: " +
                "codec=${info.preferredCodec}, " +
                "resolution=${info.currentResolution}, " +
                "fps=${info.currentFps}, " +
                "bitrate=${info.bitrateKbps}kbps, " +
                "hwEncode=${info.hardwareEncoder}"
            )
        } catch (e: Exception) {
            LogUtils.w(e, "$TAG: [Phase 3] Failed to parse VideoEncoderInfo (optional)")
        }

        // 功能协商完成，进入连接状态
        updateState(HuState.CONNECTED)
        LogUtils.i("$TAG: ===== Screen projection started =====")
    }

    // ==================== 状态管理 ====================

    private fun updateState(newState: HuState, reason: String? = null) {
        val oldState = state.getAndSet(newState)
        if (oldState != newState) {
            LogUtils.i("$TAG: State: $oldState -> $newState${if (reason != null) " ($reason)" else ""}")
            listener?.onStateChanged(newState, reason)
        }
    }

    private fun areAllChannelsConnected(): Boolean {
        return if (::cmdClient.isInitialized &&
                   ::videoClient.isInitialized &&
                   ::mediaClient.isInitialized &&
                   ::ttsClient.isInitialized &&
                   ::vrClient.isInitialized &&
                   ::ctrlClient.isInitialized
        ) {
            cmdClient.isConnected() && videoClient.isConnected() &&
            mediaClient.isConnected() && ttsClient.isConnected() &&
            vrClient.isConnected() && ctrlClient.isConnected()
        } else {
            false
        }
    }

    // ==================== 通道监听器 ====================

    private fun createCmdListener() = object : TcpClientListener {
        override fun onConnected() {
            LogUtils.i("$TAG: CMD channel connected")
            onChannelConnected()
        }

        override fun onDisconnected() {
            LogUtils.w("$TAG: CMD channel disconnected")
            if (state.get() != HuState.DISCONNECTED) {
                disconnect("CMD channel disconnected")
            }
        }

        override fun onDataReceived(data: ByteArray) {
            if (data.isEmpty()) return
            try {
                // 根据当前握手阶段分发响应
                when (state.get()) {
                    HuState.AUTHENTICATING -> handleAuthenResponse(data)
                    HuState.REGISTERING -> handleRegisterResponse(data)
                    HuState.NEGOTIATING -> handleVideoEncoderInfo(data)
                    HuState.CONNECTED -> {
                        // 正常投屏阶段的 CMD 消息
                        val payloadType = data[0].toInt() and 0xFF
                        listener?.onControlReceived(payloadType, data)
                    }
                    else -> {
                        // 其他状态，透传命令
                        val payloadType = data[0].toInt() and 0xFF
                        listener?.onControlReceived(payloadType, data)
                    }
                }
            } catch (e: Exception) {
                LogUtils.e(e, "$TAG: CMD data processing error")
            }
        }

        override fun onError(error: String) {
            LogUtils.e("$TAG: CMD channel error: $error")
            listener?.onError("CMD channel: $error")
        }
    }

    private fun createVideoListener() = object : TcpClientListener {
        override fun onConnected() {
            LogUtils.i("$TAG: Video channel connected")
            onChannelConnected()
        }

        override fun onDisconnected() {
            LogUtils.w("$TAG: Video channel disconnected")
            if (state.get() != HuState.DISCONNECTED) {
                disconnect("Video channel disconnected")
            }
        }

        override fun onDataReceived(data: ByteArray) {
            if (data.isEmpty()) return
            try {
                listener?.onVideoFrameReceived(data)
            } catch (e: Exception) {
                LogUtils.e(e, "$TAG: Video data error")
            }
        }

        override fun onError(error: String) {
            LogUtils.e("$TAG: Video channel error: $error")
        }
    }

    private fun createMediaListener() = object : TcpClientListener {
        override fun onConnected() {
            LogUtils.i("$TAG: Media channel connected")
            onChannelConnected()
        }

        override fun onDisconnected() {
            LogUtils.w("$TAG: Media channel disconnected")
            if (state.get() != HuState.DISCONNECTED) {
                disconnect("Media channel disconnected")
            }
        }

        override fun onDataReceived(data: ByteArray) {
            if (data.isEmpty()) return
            try {
                listener?.onAudioFrameReceived(data)
            } catch (e: Exception) {
                LogUtils.e(e, "$TAG: Media data error")
            }
        }

        override fun onError(error: String) {
            LogUtils.e("$TAG: Media channel error: $error")
        }
    }

    private fun createTtsListener() = object : TcpClientListener {
        override fun onConnected() {
            LogUtils.i("$TAG: TTS channel connected")
            onChannelConnected()
        }

        override fun onDisconnected() {
            LogUtils.w("$TAG: TTS channel disconnected")
        }

        override fun onDataReceived(data: ByteArray) {
            if (data.isEmpty()) return
            try {
                listener?.onTtsFrameReceived(data)
            } catch (e: Exception) {
                LogUtils.e(e, "$TAG: TTS data error")
            }
        }

        override fun onError(error: String) {
            LogUtils.e("$TAG: TTS channel error: $error")
        }
    }

    private fun createVrListener() = object : TcpClientListener {
        override fun onConnected() {
            LogUtils.i("$TAG: VR channel connected")
            onChannelConnected()
        }

        override fun onDisconnected() {
            LogUtils.w("$TAG: VR channel disconnected")
        }

        override fun onDataReceived(data: ByteArray) {
            if (data.isEmpty()) return
            try {
                listener?.onVrFrameReceived(data)
            } catch (e: Exception) {
                LogUtils.e(e, "$TAG: VR data error")
            }
        }

        override fun onError(error: String) {
            LogUtils.e("$TAG: VR channel error: $error")
        }
    }

    private fun createCtrlListener() = object : TcpClientListener {
        override fun onConnected() {
            LogUtils.i("$TAG: Ctrl channel connected")
            onChannelConnected()
        }

        override fun onDisconnected() {
            LogUtils.w("$TAG: Ctrl channel disconnected")
        }

        override fun onDataReceived(data: ByteArray) {
            if (data.isEmpty()) return
            try {
                val payloadType = if (data.isNotEmpty()) data[0].toInt() and 0xFF else 0
                listener?.onControlReceived(payloadType, data)
            } catch (e: Exception) {
                LogUtils.e(e, "$TAG: Ctrl data error")
            }
        }

        override fun onError(error: String) {
            LogUtils.e("$TAG: Ctrl channel error: $error")
        }
    }
}
