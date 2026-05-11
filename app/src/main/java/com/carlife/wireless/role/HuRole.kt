package com.carlife.wireless.role

import android.content.Context
import android.os.Build
import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.channel.DeviceRole
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.model.KConnectionState
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
}

/**
 * HU 角色（车机/盒子侧）
 * 作为客户端主动连接手机 B，完成 CarLife 协议握手，并接收音视频流。
 *
 * 使用 Channel 抽象层，统一协议分帧和包头处理。
 *
 * 连接流程：6 通道连接 → 认证 → 注册 → 功能协商 → 投屏
 */
class HuRole(
    val context: Context,
    val phoneBIp: String = Constants.IpAddress.USB_TETHERING_LOCAL,
    var listener: HuRoleListener? = null
) {
    companion object {
        private const val TAG = "HuRole"
        private val DEVICE_ID: String = Build.SERIAL ?: "unknown"
        private val DEVICE_NAME: String = Build.MODEL ?: "Android Box"
        private val MANUFACTURER: String = Build.MANUFACTURER ?: "Unknown"
        private val OS_VERSION: String = Build.VERSION.RELEASE ?: "unknown"
    }

    private val state = AtomicReference(HuState.IDLE)
    private val connectedChannelCount = AtomicInteger(0)

    // 6 个通道
    private var cmdChannel: Channel? = null
    private var videoChannel: Channel? = null
    private var mediaChannel: Channel? = null
    private var ttsChannel: Channel? = null
    private var vrChannel: Channel? = null
    private var ctrlChannel: Channel? = null

    /**
     * 连接到手机 B
     */
    fun connect() {
        if (state.get() != HuState.IDLE) {
            LogUtils.w("$TAG: Cannot connect, current state: ${state.get()}")
            return
        }

        updateState(HuState.CONNECTING)
        connectedChannelCount.set(0)

        try {
            cmdChannel = createChannel(ChannelType.HU_CMD)
            videoChannel = createChannel(ChannelType.HU_VIDEO)
            mediaChannel = createChannel(ChannelType.HU_MEDIA)
            ttsChannel = createChannel(ChannelType.HU_TTS)
            vrChannel = createChannel(ChannelType.HU_VR)
            ctrlChannel = createChannel(ChannelType.HU_CTRL)

            cmdChannel?.connect(phoneBIp)
            videoChannel?.connect(phoneBIp)
            mediaChannel?.connect(phoneBIp)
            ttsChannel?.connect(phoneBIp)
            vrChannel?.connect(phoneBIp)
            ctrlChannel?.connect(phoneBIp)

            LogUtils.i("$TAG: Connecting to phone B at $phoneBIp (6 channels)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Failed to initialize connections")
            listener?.onError("Connection initialization failed: ${e.message}")
            updateState(HuState.DISCONNECTED, "Initialization failed")
        }
    }

    /**
     * 创建通道并设置回调
     */
    private fun createChannel(type: ChannelType): Channel {
        val channel = Channel.create(type, DeviceRole.HU)
        channel.callback = object : ChannelCallback {
            override fun onConnected(ch: Channel) {
                LogUtils.i("$TAG: ${ch.name} connected")
                onChannelConnected()
            }

            override fun onDisconnected(ch: Channel, reason: String?) {
                LogUtils.w("$TAG: ${ch.name} disconnected: $reason")
                if (state.get() != HuState.DISCONNECTED) {
                    disconnect("${ch.name} disconnected")
                }
            }

            override fun onDataReceived(ch: Channel, header: ChannelHeader, payload: ByteArray) {
                handleChannelData(ch, header, payload)
            }

            override fun onError(ch: Channel, error: Throwable) {
                LogUtils.e("$TAG: ${ch.name} error: ${error.message}")
                listener?.onError("${ch.name}: ${error.message}")
            }
        }
        return channel
    }

    fun disconnect(reason: String? = null) {
        if (state.get() == HuState.DISCONNECTED) return

        updateState(HuState.DISCONNECTED, reason)

        try {
            cmdChannel?.disconnect("HuRole disconnect")
            videoChannel?.disconnect("HuRole disconnect")
            mediaChannel?.disconnect("HuRole disconnect")
            ttsChannel?.disconnect("HuRole disconnect")
            vrChannel?.disconnect("HuRole disconnect")
            ctrlChannel?.disconnect("HuRole disconnect")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Error during disconnect")
        }

        cmdChannel = null
        videoChannel = null
        mediaChannel = null
        ttsChannel = null
        vrChannel = null
        ctrlChannel = null

        connectedChannelCount.set(0)
        LogUtils.i("$TAG: Disconnected: ${reason ?: "unknown"}")
    }

    fun release() {
        disconnect("releasing")
    }

    fun getState(): HuState = state.get()
    fun isConnected(): Boolean = state.get() == HuState.CONNECTED

    // ==================== 通道连接管理 ====================

    private fun onChannelConnected() {
        val count = connectedChannelCount.incrementAndGet()
        LogUtils.d("$TAG: Channel connected, count=$count/6")

        if (count >= 6) {
            LogUtils.i("$TAG: All 6 channels connected, starting handshake...")
            // 短暂延迟确保所有通道就绪，然后发送认证请求
            Thread {
                Thread.sleep(100)
                sendAuthenRequest()
            }.apply {
                name = "HuRole-Handshake"
                isDaemon = true
                start()
            }
        }
    }

    // ==================== 通道数据分发 ====================

    private fun handleChannelData(channel: Channel, header: ChannelHeader, payload: ByteArray) {
        when (channel.type) {
            ChannelType.HU_CMD -> handleCmdData(header, payload)
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

    /**
     * CMD 通道数据处理 — 根据握手阶段分发
     */
    private fun handleCmdData(header: ChannelHeader, payload: ByteArray) {
        if (header !is ChannelHeader.Cmd) return

        when (state.get()) {
            HuState.AUTHENTICATING -> handleAuthenResponse(payload)
            HuState.REGISTERING -> handleRegisterResponse(payload)
            HuState.NEGOTIATING -> handleVideoEncoderInfo(payload)
            HuState.CONNECTED -> listener?.onControlReceived(header, payload)
            else -> listener?.onControlReceived(header, payload)
        }
    }

    // ==================== 协议握手流程 ====================

    private fun sendAuthenRequest() {
        updateState(HuState.AUTHENTICATING)

        try {
            val request = CarlifeAuthenRequestProto.CarlifeAuthenRequest.newBuilder()
                .setMethod(AuthMethod.AUTH_METHOD_NONE)
                .setDeviceId(DEVICE_ID)
                .setDeviceName(DEVICE_NAME)
                .setDeviceModel(DEVICE_NAME)
                .build()

            val data = request.toByteArray()
            cmdChannel?.send(0x01, data)
            LogUtils.i("$TAG: [Phase 1] AuthenRequest sent (deviceId=$DEVICE_ID)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 1] Failed to send AuthenRequest")
            listener?.onError("AuthenRequest failed: ${e.message}")
            disconnect("Authentication failed")
        }
    }

    private fun sendRegisterRequest() {
        updateState(HuState.REGISTERING)

        try {
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

            val data = request.toByteArray()
            cmdChannel?.send(0x02, data)
            LogUtils.i("$TAG: [Phase 2] RegisterRequest sent (deviceId=$DEVICE_ID)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 2] Failed to send RegisterRequest")
            listener?.onError("RegisterRequest failed: ${e.message}")
            disconnect("Registration failed")
        }
    }

    private fun sendFeatureConfig() {
        updateState(HuState.NEGOTIATING)

        try {
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
                .setFeatureBitmap(
                    (1L shl 0) or (1L shl 1) or (1L shl 2) or
                    (1L shl 3) or (1L shl 4) or (1L shl 5)
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

            val data = config.toByteArray()
            cmdChannel?.send(0x03, data)
            LogUtils.i("$TAG: [Phase 3] FeatureConfig sent")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 3] Failed to send FeatureConfig")
            listener?.onError("FeatureConfig failed: ${e.message}")
            disconnect("Feature negotiation failed")
        }
    }

    private fun handleAuthenResponse(data: ByteArray) {
        try {
            val response = CarlifeAuthenResponseProto.CarlifeAuthenResponse.parseFrom(data)
            LogUtils.i("$TAG: [Phase 1] AuthenResponse: success=${response.success}, errorCode=${response.errorCode}")

            if (response.success) {
                sendRegisterRequest()
            } else {
                val error = "Authentication failed: code=${response.errorCode}, msg=${response.errorMsg}"
                LogUtils.e("$TAG: $error")
                listener?.onError(error)
                disconnect("Authentication failed")
            }
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 1] Failed to parse AuthenResponse")
            // 协议容错：无法解析时假设成功，继续注册
            sendRegisterRequest()
        }
    }

    private fun handleRegisterResponse(data: ByteArray) {
        try {
            val response = CarlifeRegisterResponseProto.CarlifeRegisterResponse.parseFrom(data)
            LogUtils.i("$TAG: [Phase 2] RegisterResponse: result=${response.result}, sessionId=${response.sessionId}")

            if (response.result == RegisterResultCode.REGISTER_RESULT_SUCCESS) {
                sendFeatureConfig()
            } else {
                val error = "Registration failed: ${response.description}"
                LogUtils.e("$TAG: $error")
                listener?.onError(error)
                disconnect("Registration failed")
            }
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: [Phase 2] Failed to parse RegisterResponse")
            sendFeatureConfig()
        }
    }

    private fun handleVideoEncoderInfo(data: ByteArray) {
        try {
            val info = CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo.parseFrom(data)
            LogUtils.i(
                "$TAG: [Phase 3] VideoEncoderInfo: codec=${info.preferredCodec}, " +
                "resolution=${info.currentResolution}, fps=${info.currentFps}, " +
                "bitrate=${info.bitrateKbps}kbps, hw=${info.hardwareEncoder}"
            )
        } catch (e: Exception) {
            LogUtils.w(e, "$TAG: [Phase 3] Failed to parse VideoEncoderInfo (optional)")
        }

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
}
