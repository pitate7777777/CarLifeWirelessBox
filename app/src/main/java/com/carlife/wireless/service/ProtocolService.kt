package com.carlife.wireless.service

import android.app.Service
import android.content.Intent
import android.os.Binder
import android.os.IBinder
import com.carlife.wireless.util.LogUtils
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors

/**
 * 协议服务
 * 
 * 负责：
 * - Protobuf 消息解析
 * - 消息分发
 * - 心跳管理
 */
class ProtocolService : Service() {
    
    companion object {
        private const val TAG = "ProtocolService"
    }
    
    private val binder = ProtocolBinder()
    private val executor: ExecutorService = Executors.newCachedThreadPool()
    
    inner class ProtocolBinder : Binder() {
        fun getService(): ProtocolService = this@ProtocolService
    }
    
    override fun onCreate() {
        super.onCreate()
        LogUtils.i(TAG, "ProtocolService created")
    }
    
    override fun onBind(intent: Intent?): IBinder {
        return binder
    }
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtils.i(TAG, "ProtocolService started")
        // TODO: 启动协议处理
        return START_STICKY
    }
    
    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "ProtocolService destroyed")
        executor.shutdown()
    }
    
    /**
     * 解析 Protobuf 消息
     * 当前由 MdRole/HuRole 直接处理，此方法保留供未来扩展
     */
    fun parseProtobuf(data: ByteArray): Boolean {
        LogUtils.d(TAG, "Parsing protobuf message, length: ${data.size}")
        // 消息解析已由 MdRole.handleCarLifeCmdMessage() 和 HuRole.handleCarLifeCmdMessage() 直接实现
        return true
    }
    
    /**
     * 分发消息到对应服务
     * 当前由 MdRole/HuRole 按通道类型直接分发，此方法保留供未来扩展
     */
    fun dispatchMessage(messageType: Int, data: ByteArray) {
        LogUtils.d(TAG, "Dispatching message type: $messageType")
        // 消息分发已由 MdRole/HuRole 通过 Channel 回调直接实现
    }
    
    /**
     * 启动心跳管理
     * 当前由 TcpClient 内部管理心跳，此方法保留供未来扩展
     */
    fun startHeartbeat() {
        LogUtils.i(TAG, "Starting heartbeat...")
        // 心跳已由 TcpClient.startHeartbeat() 内部实现
    }
    
    /**
     * 停止心跳管理
     */
    fun stopHeartbeat() {
        LogUtils.i(TAG, "Stopping heartbeat...")
    }
    
    /**
     * 发送心跳消息
     */
    fun sendHeartbeat(): Boolean {
        LogUtils.d(TAG, "Sending heartbeat...")
        // 心跳发送已由 TcpClient.sendHeartbeat() 内部实现
        return true
    }
}
