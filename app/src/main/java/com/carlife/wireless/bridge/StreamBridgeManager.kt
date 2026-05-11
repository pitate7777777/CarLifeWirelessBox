package com.carlife.wireless.bridge

import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.util.LogUtils

/**
 * StreamBridge 管理器
 * 
 * 基于百度CarLife SDK架构思路实现：
 * - 管理6个通道的StreamBridge实例
 * - 协调HuRole和MdRole之间的数据流转发
 * - 处理双向数据流：手机 ↔ 车机
 * 
 * 数据流向：
 * 手机 → HuRole → StreamBridge → MdRole → 车机
 * 车机 → MdRole → StreamBridge → HuRole → 手机
 */
class StreamBridgeManager {
    
    companion object {
        private const val TAG = "CarLife_BridgeManager"
    }
    
    // 6个通道的Bridge映射表
    private val bridges: MutableMap<ChannelType, StreamBridge> = mutableMapOf()
    
    // 桥接回调
    private var callback: BridgeManagerCallback? = null
    
    /**
     * 桥接管理器回调接口
     */
    interface BridgeManagerCallback {
        fun onAllBridgesStarted()
        fun onBridgeError(channelType: ChannelType, error: String)
        fun onAllBridgesStopped()
    }
    
    /**
     * 设置回调
     */
    fun setCallback(callback: BridgeManagerCallback) {
        this.callback = callback
    }
    
    /**
     * 为指定通道类型创建并启动Bridge
     * 
     * @param channelType 通道类型
     * @param sourceChannel 源通道（HuRole的通道）
     * @param targetChannel 目标通道（MdRole的通道）
     * @param needTranslation 是否需要协议转换
     */
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
        
        // 检查是否所有6个通道的Bridge都已启动
        if (bridges.size == ChannelType.values().size) {
            callback?.onAllBridgesStarted()
        }
    }
    
    /**
     * 停止指定通道类型的Bridge
     */
    fun stopBridge(channelType: ChannelType) {
        val bridge = bridges[channelType]
        if (bridge != null) {
            bridge.stop()
            bridges.remove(channelType)
            LogUtils.i(TAG, "Bridge stopped for $channelType")
        }
    }
    
    /**
     * 停止所有Bridge
     */
    fun stopAllBridges() {
        LogUtils.i(TAG, "Stopping all bridges...")
        
        bridges.values.forEach { it.stop() }
        bridges.clear()
        
        callback?.onAllBridgesStopped()
        LogUtils.i(TAG, "All bridges stopped")
    }
    
    /**
     * 获取指定通道类型的Bridge
     */
    fun getBridge(channelType: ChannelType): StreamBridge? {
        return bridges[channelType]
    }
    
    /**
     * 获取所有Bridge的信息
     */
    fun getAllBridgeInfo(): String {
        if (bridges.isEmpty()) {
            return "No bridges running"
        }
        
        return bridges.entries.joinToString("\n") { (type, bridge) ->
            "$type: ${bridge.getBridgeInfo()}"
        }
    }
    
    /**
     * 检查是否所有Bridge都在运行
     */
    fun areAllBridgesRunning(): Boolean {
        return bridges.size == ChannelType.values().size && 
               bridges.values.all { it.isRunning() }
    }
}
