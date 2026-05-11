package com.carlife.wireless.network

import android.content.Context
import com.carlife.wireless.proto.CarlifeHeartbeatProto
import com.carlife.wireless.util.ByteUtils
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.NetworkUtils
import kotlinx.coroutines.*
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import java.io.IOException
import java.io.InputStream
import java.io.OutputStream
import java.net.Socket
import java.net.SocketTimeoutException
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong

/**
 * TCP客户端回调接口
 * 根据架构文档实现
 */
interface TcpClientListener {
    /**
     * 连接成功回调
     */
    fun onConnected()

    /**
     * 连接断开回调
     */
    fun onDisconnected()

    /**
     * 接收到数据回调
     * @param data 接收到的字节数组
     */
    fun onDataReceived(data: ByteArray)

    /**
     * 错误回调
     * @param error 错误信息
     */
    fun onError(error: String)
}

/**
 * TCP客户端类
 * 封装Socket连接管理，支持重连机制
 * 根据任务T-04实现
 */
class TcpClient(
    private val context: Context,
    private val listener: TcpClientListener? = null
) {
    companion object {
        private const val TAG = "TcpClient"
        
        // 连接超时（毫秒）
        private const val CONNECT_TIMEOUT = 3000
        
        // 读取超时（毫秒）
        private const val READ_TIMEOUT = 5000
        
        // 心跳间隔（毫秒）
        private val HEARTBEAT_INTERVAL = Constants.Heartbeat.INTERVAL_MS
        
        // 心跳超时（毫秒）
        private val HEARTBEAT_TIMEOUT = Constants.Heartbeat.TIMEOUT_MS
        
        // 读取缓冲区大小
        private val READ_BUFFER_SIZE = Constants.Buffer.READ_BUFFER_SIZE
        
        // 最大重试次数
        private val MAX_RETRY = Constants.Reconnect.MAX_RETRY
        
        // 基础重试延迟（毫秒）
        private val BASE_RETRY_DELAY = Constants.Reconnect.DELAY_MS
    }

    // Socket对象
    private var socket: Socket? = null
    
    // 输入输出流
    private var inputStream: InputStream? = null
    private var outputStream: OutputStream? = null
    
    // 协程作用域
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    
    // 连接状态
    private val isConnected = AtomicBoolean(false)
    private val isConnecting = AtomicBoolean(false)
    
    // 重连锁
    private val reconnectMutex = Mutex()
    
    // 心跳相关
    private var heartbeatJob: Job? = null
    private var heartbeatMonitorJob: Job? = null
    private val lastHeartbeatTime = AtomicLong(0)
    private val heartbeatSequence = AtomicInteger(0)
    
    // 目标地址和端口
    private var targetHost: String = Constants.IpAddress.USB_TETHERING_LOCAL
    private var targetPort: Int = Constants.Port.HU_CMD
    
    // 重试计数器
    private val retryCount = AtomicInteger(0)
    
    // 设备ID（用于心跳）
    private var deviceId: String = ""

    /**
     * 设置目标地址
     * @param host 目标IP地址
     * @param port 目标端口
     */
    fun setTarget(host: String, port: Int) {
        this.targetHost = host
        this.targetPort = port
        LogUtils.d("$TAG: Target set to $host:$port")
    }

    /**
     * 设置设备ID（用于心跳）
     * @param id 设备ID
     */
    fun setDeviceId(id: String) {
        this.deviceId = id
        LogUtils.d("$TAG: Device ID set to $id")
    }

    /**
     * 连接到服务器
     * @param host 目标IP地址（可选，默认使用Constants中的地址）
     * @param port 目标端口（可选，默认使用HU_CMD端口）
     */
    fun connect(host: String = targetHost, port: Int = targetPort) {
        if (isConnecting.get() || isConnected.get()) {
            LogUtils.w("$TAG: Already connecting or connected")
            return
        }

        targetHost = host
        targetPort = port
        
        scope.launch {
            doConnect(host, port)
        }
    }

    /**
     * 执行连接
     */
    private suspend fun doConnect(host: String, port: Int) {
        isConnecting.set(true)
        retryCount.set(0)
        
        LogUtils.i("$TAG: Connecting to $host:$port...")
        
        while (retryCount.get() <= MAX_RETRY) {
            try {
                // 检查网络状态
                if (!NetworkUtils.isWifiConnected(context)) {
                    val error = "Wi-Fi not connected"
                    LogUtils.e("$TAG: $error")
                    listener?.onError(error)
                    break
                }
                
                // 创建Socket连接
                val newSocket = Socket()
                newSocket.soTimeout = READ_TIMEOUT
                newSocket.connect(java.net.InetSocketAddress(host, port), CONNECT_TIMEOUT)
                
                // 连接成功
                socket = newSocket
                inputStream = newSocket.getInputStream()
                outputStream = newSocket.getOutputStream()
                
                isConnecting.set(false)
                isConnected.set(true)
                retryCount.set(0)
                
                LogUtils.i("$TAG: Connected to $host:$port")
                listener?.onConnected()
                
                // 启动心跳
                startHeartbeat()
                
                // 启动数据读取
                startReading()
                
                // 连接成功，退出重试循环
                break
                
            } catch (e: SocketTimeoutException) {
                val error = "Connection timeout: ${e.message}"
                LogUtils.e("$TAG: $error")
                handleConnectionFailure(e, host, port)
            } catch (e: IOException) {
                val error = "Connection failed: ${e.message}"
                LogUtils.e("$TAG: $error")
                handleConnectionFailure(e, host, port)
            } catch (e: Exception) {
                val error = "Unexpected error: ${e.message}"
                LogUtils.e(e, "$TAG: $error")
                handleConnectionFailure(e, host, port)
            }
        }
        
        if (!isConnected.get()) {
            isConnecting.set(false)
            listener?.onError("Failed to connect after $MAX_RETRY retries")
        }
    }

    /**
     * 处理连接失败，进行重试
     */
    private suspend fun handleConnectionFailure(e: Exception, host: String, port: Int) {
        val currentRetry = retryCount.incrementAndGet()
        
        if (currentRetry > MAX_RETRY) {
            LogUtils.e("$TAG: Max retries ($MAX_RETRY) reached")
            listener?.onError("Max retries reached: ${e.message}")
            return
        }
        
        // 计算指数退避延迟
        val delay = calculateBackoffDelay(currentRetry)
        LogUtils.w("$TAG: Retry $currentRetry/$MAX_RETRY after ${delay}ms...")
        
        // 等待后退延迟
        delay(delay)
        
        // 重试前检查网络状态
        if (!NetworkUtils.isWifiConnected(context)) {
            val error = "Wi-Fi disconnected, aborting retry"
            LogUtils.e("$TAG: $error")
            listener?.onError(error)
            return
        }
    }

    /**
     * 计算指数退避延迟
     * @param retry 当前重试次数（从1开始）
     * @return 延迟时间（毫秒）
     */
    private fun calculateBackoffDelay(retry: Int): Long {
        return BASE_RETRY_DELAY * (1L shl (retry - 1)) // 2000, 4000, 8000, 16000, 32000
    }

    /**
     * 启动数据读取
     */
    private fun startReading() {
        scope.launch {
            val buffer = ByteArray(READ_BUFFER_SIZE)
            
            while (isConnected.get() && !isConnecting.get()) {
                try {
                    val input = inputStream ?: break
                    val bytesRead = input.read(buffer)
                    
                    if (bytesRead == -1) {
                        // 连接关闭
                        LogUtils.w("$TAG: Connection closed by server")
                        disconnect()
                        break
                    }
                    
                    if (bytesRead > 0) {
                        // 复制接收到的数据
                        val receivedData = ByteArray(bytesRead)
                        System.arraycopy(buffer, 0, receivedData, 0, bytesRead)
                        
                        // 更新心跳时间
                        lastHeartbeatTime.set(System.currentTimeMillis())
                        
                        // 回调接收到的数据
                        listener?.onDataReceived(receivedData)
                    }
                    
                } catch (e: SocketTimeoutException) {
                    // 读取超时，继续读取
                    continue
                } catch (e: IOException) {
                    if (isConnected.get()) {
                        LogUtils.e(e, "$TAG: Read error")
                        listener?.onError("Read error: ${e.message}")
                        disconnect()
                    }
                    break
                } catch (e: Exception) {
                    if (isConnected.get()) {
                        LogUtils.e(e, "$TAG: Unexpected read error")
                        listener?.onError("Unexpected error: ${e.message}")
                    }
                    break
                }
            }
        }
    }

    /**
     * 启动心跳机制
     */
    private fun startHeartbeat() {
        // 取消现有心跳
        stopHeartbeat()
        
        // 启动心跳发送
        heartbeatJob = scope.launch {
            while (isConnected.get()) {
                try {
                    sendHeartbeat()
                    delay(HEARTBEAT_INTERVAL)
                } catch (e: Exception) {
                    LogUtils.e(e, "$TAG: Heartbeat send error")
                }
            }
        }
        
        // 启动心跳监控
        heartbeatMonitorJob = scope.launch {
            while (isConnected.get()) {
                delay(1000) // 每秒检查一次
                
                val lastTime = lastHeartbeatTime.get()
                if (lastTime > 0) {
                    val elapsed = System.currentTimeMillis() - lastTime
                    if (elapsed > HEARTBEAT_TIMEOUT) {
                        LogUtils.e("$TAG: Heartbeat timeout, disconnecting...")
                        listener?.onError("Heartbeat timeout")
                        disconnect()
                        break
                    }
                }
            }
        }
        
        LogUtils.d("$TAG: Heartbeat started (interval: ${HEARTBEAT_INTERVAL}ms, timeout: ${HEARTBEAT_TIMEOUT}ms)")
    }

    /**
     * 停止心跳机制
     */
    private fun stopHeartbeat() {
        heartbeatJob?.cancel()
        heartbeatJob = null
        heartbeatMonitorJob?.cancel()
        heartbeatMonitorJob = null
    }

    /**
     * 发送心跳包
     */
    private suspend fun sendHeartbeat() {
        if (!isConnected.get()) return
        
        try {
            val sequence = heartbeatSequence.incrementAndGet().toLong()
            val timestamp = System.currentTimeMillis()
            
            // 构建心跳消息
            val heartbeat = CarlifeHeartbeatProto.CarlifeHeartbeat.newBuilder()
                .setDeviceId(deviceId)
                .setTimestampMs(timestamp)
                .setSequence(sequence.toInt())
                .setConnectionState(1) // 1 = connected
                .setPayload(com.google.protobuf.ByteString.copyFrom(ByteUtils.intToBytes(0))) // 空负载
                .build()
            
            // 序列化为字节数组
            val heartbeatBytes = heartbeat.toByteArray()
            
            // 发送心跳
            sendData(heartbeatBytes)
            
            LogUtils.d("$TAG: Heartbeat sent (seq: $sequence, time: $timestamp)")
            
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Failed to send heartbeat")
            throw e
        }
    }

    /**
     * 发送数据
     * @param data 要发送的字节数组
     * @return 是否发送成功
     */
    fun sendData(data: ByteArray): Boolean {
        if (!isConnected.get()) {
            LogUtils.w("$TAG: Not connected, cannot send data")
            return false
        }
        
        return try {
            val output = outputStream ?: return false
            
            synchronized(this) {
                output.write(data)
                output.flush()
            }
            
            LogUtils.d("$TAG: Sent ${data.size} bytes")
            true
            
        } catch (e: IOException) {
            LogUtils.e(e, "$TAG: Send error")
            listener?.onError("Send error: ${e.message}")
            disconnect()
            false
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Unexpected send error")
            false
        }
    }

    /**
     * 获取Socket对象
     * @return Socket对象，如果没有连接则返回null
     */
    fun getSocket(): Socket? {
        return socket
    }

    /**
     * 断开连接
     */
    fun disconnect() {
        if (!isConnected.get() && !isConnecting.get()) {
            return
        }
        
        LogUtils.i("$TAG: Disconnecting...")
        
        // 停止心跳
        stopHeartbeat()
        
        // 更新状态
        isConnected.set(false)
        isConnecting.set(false)
        
        // 关闭流和Socket
        try {
            inputStream?.close()
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Error closing input stream")
        }
        
        try {
            outputStream?.close()
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Error closing output stream")
        }
        
        try {
            socket?.close()
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Error closing socket")
        }
        
        socket = null
        inputStream = null
        outputStream = null
        
        // 重置心跳序列
        heartbeatSequence.set(0)
        lastHeartbeatTime.set(0)
        
        LogUtils.i("$TAG: Disconnected")
        listener?.onDisconnected()
    }

    /**
     * 检查是否已连接
     * @return 是否已连接
     */
    fun isConnected(): Boolean {
        return isConnected.get() && socket?.isConnected == true && !socket!!.isClosed
    }

    /**
     * 检查是否正在连接
     * @return 是否正在连接
     */
    fun isConnecting(): Boolean {
        return isConnecting.get()
    }

    /**
     * 获取当前重试次数
     * @return 重试次数
     */
    fun getRetryCount(): Int {
        return retryCount.get()
    }

    /**
     * 释放资源
     * 应该在不再使用时调用
     */
    fun release() {
        disconnect()
        scope.cancel()
        LogUtils.d("$TAG: Released")
    }
}
