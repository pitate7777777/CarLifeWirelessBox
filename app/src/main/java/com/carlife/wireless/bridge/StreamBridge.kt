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
 * 基于百度CarLife SDK架构思路实现：
 * - 负责在两个通道之间转发数据
 * - 支持协议转换（高版本 → 旧版本）
 * - 处理视频、音频、控制等多种数据流
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
        private const val READ_TIMEOUT_MS = 5000L
        private const val MAX_FRAME_SIZE = 200_000 // 200KB max frame size
    }
    
    private var isRunning = false
    private var bridgeThread: Thread? = null
    private var callback: BridgeCallback? = null
    
    /**
     * 桥接器回调接口
     */
    interface BridgeCallback {
        fun onFrameForwarded(frameData: ByteArray, sourcePort: Int, targetPort: Int)
        fun onError(error: String, sourcePort: Int, targetPort: Int)
        fun onBridgeStopped(sourcePort: Int, targetPort: Int)
    }
    
    /**
     * 设置回调
     */
    fun setCallback(callback: BridgeCallback) {
        this.callback = callback
    }
    
    /**
     * 启动桥接
     */
    @Synchronized
    fun start() {
        if (isRunning) {
            LogUtils.w(TAG, "Bridge already running: ${getBridgeInfo()}")
            return
        }
        
        if (!sourceChannel.isConnected) {
            val error = "Source channel not connected: ${sourceChannel.name}"
            LogUtils.e(TAG, error)
            callback?.onError(error, sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
            return
        }
        
        if (!targetChannel.isConnected) {
            val error = "Target channel not connected: ${targetChannel.name}"
            LogUtils.e(TAG, error)
            callback?.onError(error, sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
            return
        }
        
        isRunning = true
        
        // 设置源通道的数据接收回调
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
                callback?.onError("Channel error: ${error.message}", sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
            }
        }
        
        // 启动源通道的数据读取（如果还没启动）
        // Note: TcpChannel 在 connect() 成功后会自动启动 startReadLoop()
        
        LogUtils.i(TAG, "Bridge started: ${getBridgeInfo()}")
    }
    
    /**
     * 停止桥接
     */
    @Synchronized
    fun stop() {
        if (!isRunning) {
            LogUtils.w(TAG, "Bridge not running")
            return
        }
        
        LogUtils.i(TAG, "Stopping bridge: ${getBridgeInfo()}")
        isRunning = false
        
        // 清除源通道的回调
        sourceChannel.callback = null
        
        callback?.onBridgeStopped(sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
        
        LogUtils.i(TAG, "Bridge stopped")
    }
    
    /**
     * 处理接收到的数据帧
     */
    private fun handleReceivedFrame(header: ChannelHeader, payload: ByteArray) {
        if (!isRunning) {
            return
        }
        
        try {
            // 将header序列化为字节数组
            val headerBytes = when (header) {
                is ChannelHeader.Cmd -> header.toBytes()
                is ChannelHeader.Media -> header.toBytes()
            }
            
            // 合并header和payload
            val frameData = headerBytes + payload
            
            // 协议转换（如果需要）
            val (translatedData, codecType) = translateFrame(frameData)
            
            // 发送到目标通道
            val success = targetChannel.send(translatedData)
            
            if (success) {
                LogUtils.d(TAG, "Bridged ${frameData.size} bytes → ${translatedData.size} bytes (codec: $codecType)")
                callback?.onFrameForwarded(translatedData, sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
            } else {
                val error = "Failed to send translated frame to ${targetChannel.name}"
                LogUtils.w(TAG, error)
                callback?.onError(error, sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
            }
            
        } catch (e: IOException) {
            LogUtils.e(TAG, e, "IO error handling frame")
            callback?.onError("IO error: ${e.message}", sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Error handling frame")
            callback?.onError("Error: ${e.message}", sourceChannel.type.getPort(sourceChannel.role), targetChannel.type.getPort(targetChannel.role))
        }
    }
    
    /**
     * 转换数据帧（协议转换）
     */
    private fun translateFrame(frameData: ByteArray): Pair<ByteArray, Int> {
        if (!needTranslation) {
            return Pair(frameData, getCodecType(frameData))
        }
        
        val streamType = detectStreamType()
        
        return when (streamType) {
            Constants.Protocol.CHANNEL_VIDEO -> {
                val codecType = getCodecType(frameData)
                ProtocolTranslator.translateVideoFrame(frameData, codecType)
            }
            Constants.Protocol.CHANNEL_AUDIO -> {
                val codecType = getCodecType(frameData)
                ProtocolTranslator.translateAudioFrame(frameData, codecType)
            }
            else -> {
                LogUtils.d(TAG, "No translation needed for stream type: $streamType")
                Pair(frameData, getCodecType(frameData))
            }
        }
    }
    
    /**
     * 检测流类型（基于通道名称）
     */
    private fun detectStreamType(): Int {
        val sourceName = sourceChannel.name.lowercase()
        
        return when {
            sourceName.contains("video") -> Constants.Protocol.CHANNEL_VIDEO
            sourceName.contains("audio") -> Constants.Protocol.CHANNEL_AUDIO
            sourceName.contains("cmd") -> Constants.Protocol.CHANNEL_CMD
            sourceName.contains("tts") -> Constants.Protocol.CHANNEL_TTS
            sourceName.contains("vr") -> Constants.Protocol.CHANNEL_VR
            sourceName.contains("ctrl") -> Constants.Protocol.CHANNEL_CTRL
            else -> Constants.Protocol.CHANNEL_MAX
        }
    }
    
    /**
     * 获取编解码器类型
     */
    private fun getCodecType(frameData: ByteArray): Int {
        // 简化实现：从数据包头部或内容判断编解码器类型
        // 实际实现需要根据CarLife协议规范解析
        val streamType = detectStreamType()
        
        return when (streamType) {
            Constants.Protocol.CHANNEL_VIDEO -> {
                // 简化：默认H.264，实际应该从数据包中解析
                ProtocolTranslator.CODEC_H264
            }
            Constants.Protocol.CHANNEL_AUDIO -> {
                // 简化：默认AAC，实际应该从数据包中解析
                ProtocolTranslator.CODEC_AAC
            }
            else -> 0
        }
    }
    
    /**
     * 检查桥接是否运行中
     */
    fun isRunning(): Boolean = isRunning
    
    /**
     * 获取桥接信息
     */
    fun getBridgeInfo(): String {
        val sourcePort = sourceChannel.type.getPort(sourceChannel.role)
        val targetPort = targetChannel.type.getPort(targetChannel.role)
        return "Bridge[${sourceChannel.name}($sourcePort)] → ${targetChannel.name}($targetPort), running=$isRunning, translation=$needTranslation]"
    }
}
