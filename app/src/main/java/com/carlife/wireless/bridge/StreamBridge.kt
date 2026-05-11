package com.carlife.wireless.bridge

import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.protocol.ProtocolTranslator
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import java.io.IOException

/**
 * 数据流桥接器
 *
 * 负责在两个通道之间转发数据，支持协议转换（高版本 → 旧版本）。
 *
 * 数据流向：
 * 手机 → HuRole → StreamBridge → MdRole → 车机
 * 车机 → MdRole → StreamBridge → HuRole → 手机
 */
class StreamBridge(
    private val sourceChannel: Channel,
    private val targetChannel: Channel,
    private val needTranslation: Boolean = false
) {
    companion object {
        private const val TAG = "CarLife_StreamBridge"
    }

    private var isRunning = false
    private var callback: BridgeCallback? = null

    interface BridgeCallback {
        fun onFrameForwarded(frameData: ByteArray, sourcePort: Int, targetPort: Int)
        fun onError(error: String, sourcePort: Int, targetPort: Int)
        fun onBridgeStopped(sourcePort: Int, targetPort: Int)
    }

    fun setCallback(callback: BridgeCallback) { this.callback = callback }

    @Synchronized
    fun start() {
        if (isRunning) {
            LogUtils.w(TAG, "Bridge already running: ${getBridgeInfo()}")
            return
        }

        if (!sourceChannel.isConnected) {
            val error = "Source channel not connected: ${sourceChannel.name}"
            LogUtils.e(TAG, error)
            callback?.onError(error, sourceChannel.type.mdPort, targetChannel.type.mdPort)
            return
        }

        if (!targetChannel.isConnected) {
            val error = "Target channel not connected: ${targetChannel.name}"
            LogUtils.e(TAG, error)
            callback?.onError(error, sourceChannel.type.mdPort, targetChannel.type.mdPort)
            return
        }

        isRunning = true

        sourceChannel.callback = object : ChannelCallback {
            override fun onConnected(channel: Channel) {
                LogUtils.i(TAG, "Source channel connected: ${channel.name}")
            }

            override fun onDisconnected(channel: Channel, reason: String?) {
                LogUtils.w(TAG, "Source channel disconnected: ${channel.name}, reason: $reason")
                stop()
            }

            override fun onDataReceived(channel: Channel, header: ChannelHeader, payload: ByteArray) {
                handleReceivedFrame(header, payload)
            }

            override fun onError(channel: Channel, error: Throwable) {
                LogUtils.e(TAG, "Source channel error: ${channel.name}, error: ${error.message}")
                callback?.onError("Channel error: ${error.message}", sourceChannel.type.mdPort, targetChannel.type.mdPort)
            }
        }

        LogUtils.i(TAG, "Bridge started: ${getBridgeInfo()}")
    }

    @Synchronized
    fun stop() {
        if (!isRunning) return

        LogUtils.i(TAG, "Stopping bridge: ${getBridgeInfo()}")
        isRunning = false
        sourceChannel.callback = null

        callback?.onBridgeStopped(sourceChannel.type.mdPort, targetChannel.type.mdPort)
        LogUtils.i(TAG, "Bridge stopped")
    }

    private fun handleReceivedFrame(header: ChannelHeader, payload: ByteArray) {
        if (!isRunning) return

        try {
            val payloadType = when (header) {
                is ChannelHeader.Cmd -> header.payloadType
                is ChannelHeader.Media -> header.payloadType
            }

            // 协议转换（如果需要）
            val (translatedPayload, codecType) = translateFrame(payload, payloadType)

            // 发送到目标通道（保留原始 payloadType 和时间戳）
            val timestamp = if (header is ChannelHeader.Media) header.timestamp else 0
            val success = targetChannel.send(payloadType, translatedPayload, timestamp)

            if (success) {
                LogUtils.d(TAG, "Bridged ${payload.size} bytes → ${translatedPayload.size} bytes")
                callback?.onFrameForwarded(translatedPayload, sourceChannel.type.mdPort, targetChannel.type.mdPort)
            } else {
                val error = "Failed to send to ${targetChannel.name}"
                LogUtils.w(TAG, error)
                callback?.onError(error, sourceChannel.type.mdPort, targetChannel.type.mdPort)
            }

        } catch (e: IOException) {
            LogUtils.e(TAG, e, "IO error handling frame")
            callback?.onError("IO error: ${e.message}", sourceChannel.type.mdPort, targetChannel.type.mdPort)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Error handling frame")
            callback?.onError("Error: ${e.message}", sourceChannel.type.mdPort, targetChannel.type.mdPort)
        }
    }

    private fun translateFrame(payload: ByteArray, payloadType: Int): Pair<ByteArray, Int> {
        if (!needTranslation) {
            return Pair(payload, getCodecType())
        }

        val streamType = detectStreamType()

        return when (streamType) {
            Constants.Protocol.CHANNEL_VIDEO -> {
                val codecType = getCodecType()
                ProtocolTranslator.translateVideoFrame(payload, codecType)
            }
            Constants.Protocol.CHANNEL_AUDIO -> {
                val codecType = getCodecType()
                ProtocolTranslator.translateAudioFrame(payload, codecType)
            }
            else -> Pair(payload, getCodecType())
        }
    }

    private fun detectStreamType(): Int {
        val sourceName = sourceChannel.name.lowercase()
        return when {
            sourceName.contains("video") -> Constants.Protocol.CHANNEL_VIDEO
            sourceName.contains("audio") || sourceName.contains("media") -> Constants.Protocol.CHANNEL_AUDIO
            sourceName.contains("cmd") -> Constants.Protocol.CHANNEL_CMD
            sourceName.contains("tts") -> Constants.Protocol.CHANNEL_TTS
            sourceName.contains("vr") -> Constants.Protocol.CHANNEL_VR
            sourceName.contains("ctrl") -> Constants.Protocol.CHANNEL_CTRL
            else -> Constants.Protocol.CHANNEL_MAX
        }
    }

    private fun getCodecType(): Int {
        val streamType = detectStreamType()
        return when (streamType) {
            Constants.Protocol.CHANNEL_VIDEO -> ProtocolTranslator.CODEC_H264
            Constants.Protocol.CHANNEL_AUDIO -> ProtocolTranslator.CODEC_AAC
            else -> 0
        }
    }

    fun isRunning(): Boolean = isRunning

    fun getBridgeInfo(): String {
        return "Bridge[${sourceChannel.name}(${sourceChannel.type.mdPort})] → ${targetChannel.name}(${targetChannel.type.mdPort}), running=$isRunning, translation=$needTranslation]"
    }
}
