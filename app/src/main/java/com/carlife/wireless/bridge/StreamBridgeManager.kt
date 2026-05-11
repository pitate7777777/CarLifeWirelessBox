package com.carlife.wireless.bridge

import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.util.LogUtils

/**
 * StreamBridge 管理器
 * 管理 6 个通道的 StreamBridge 实例
 */
class StreamBridgeManager {

    companion object {
        private const val TAG = "CarLife_BridgeManager"
    }

    private val bridges: MutableMap<ChannelType, StreamBridge> = mutableMapOf()
    private var callback: BridgeManagerCallback? = null

    interface BridgeManagerCallback {
        fun onAllBridgesStarted()
        fun onBridgeError(channelType: ChannelType, error: String)
        fun onAllBridgesStopped()
    }

    fun setCallback(callback: BridgeManagerCallback) { this.callback = callback }

    fun createAndStartBridge(
        channelType: ChannelType,
        sourceChannel: Channel,
        targetChannel: Channel,
        needTranslation: Boolean = false
    ) {
        if (bridges.containsKey(channelType)) {
            LogUtils.w(TAG, "Bridge already exists for $channelType")
            return
        }

        val bridge = StreamBridge(sourceChannel, targetChannel, needTranslation)
        bridge.setCallback(object : StreamBridge.BridgeCallback {
            override fun onFrameForwarded(frameData: ByteArray, sourcePort: Int, targetPort: Int) {
                LogUtils.d(TAG, "Frame forwarded: $channelType, ${frameData.size} bytes")
            }

            override fun onError(error: String, sourcePort: Int, targetPort: Int) {
                LogUtils.e(TAG, "Bridge error: $channelType, $error")
                callback?.onBridgeError(channelType, error)
            }

            override fun onBridgeStopped(sourcePort: Int, targetPort: Int) {
                LogUtils.i(TAG, "Bridge stopped: $channelType")
            }
        })

        bridge.start()
        bridges[channelType] = bridge

        LogUtils.i(TAG, "Bridge created and started for $channelType")

        if (bridges.size == ChannelType.entries.size) {
            callback?.onAllBridgesStarted()
        }
    }

    fun stopBridge(channelType: ChannelType) {
        val bridge = bridges[channelType]
        if (bridge != null) {
            bridge.stop()
            bridges.remove(channelType)
            LogUtils.i(TAG, "Bridge stopped for $channelType")
        }
    }

    fun stopAllBridges() {
        LogUtils.i(TAG, "Stopping all bridges...")
        bridges.values.forEach { it.stop() }
        bridges.clear()
        callback?.onAllBridgesStopped()
        LogUtils.i(TAG, "All bridges stopped")
    }

    fun getBridge(channelType: ChannelType): StreamBridge? = bridges[channelType]

    fun getAllBridgeInfo(): String {
        if (bridges.isEmpty()) return "No bridges running"
        return bridges.entries.joinToString("\n") { (type, bridge) ->
            "$type: ${bridge.getBridgeInfo()}"
        }
    }

    fun areAllBridgesRunning(): Boolean {
        return bridges.size == ChannelType.entries.size &&
               bridges.values.all { it.isRunning() }
    }
}
