package com.carlife.wireless.network

import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.channel.DeviceRole
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.util.LogUtils
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import java.io.IOException
import java.net.ServerSocket
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger

/**
 * TCP 服务端回调接口
 * 监听服务端生命周期和客户端连接事件
 */
interface TcpServerListener {

    /**
     * 服务端已启动
     * @param port 监听的端口号
     */
    fun onStarted(port: Int)

    /**
     * 服务端已停止
     * @param port 监听的端口号
     */
    fun onStopped(port: Int)

    /**
     * 客户端已连接
     * @param port 监听的端口号
     * @param channel 对应的 Channel 实例
     */
    fun onClientConnected(port: Int, channel: Channel)

    /**
     * 客户端已断开
     * @param port 监听的端口号
     * @param channel 对应的 Channel 实例
     * @param reason 断开原因
     */
    fun onClientDisconnected(port: Int, channel: Channel, reason: String?)

    /**
     * 收到客户端数据
     * @param port 监听的端口号
     * @param channel 对应的 Channel 实例
     * @param header 协议包头
     * @param payload 载荷数据
     */
    fun onDataReceived(port: Int, channel: Channel, header: ChannelHeader, payload: ByteArray)

    /**
     * 发生错误
     * @param port 监听的端口号
     * @param error 错误信息
     */
    fun onError(port: Int, error: String)
}

/**
 * TCP 服务端
 * 监听指定端口，接受客户端连接，并为每个连接创建独立的 Channel
 *
 * @property type 通道类型（决定端口和协议格式）
 * @property role 设备角色（决定端口号）
 * @property listener 事件监听器
 */
class TcpServer(
    private val type: ChannelType,
    private val role: DeviceRole,
    private val listener: TcpServerListener?,
    private val autoRead: Boolean = true
) {

    /**
     * 便捷构造函数 - 仅指定端口，支持 autoRead
     * 使用 CMD 通道类型和 HU 设备角色
     *
     * @param port 监听的端口号
     * @param listener 事件监听器
     * @param autoRead 是否自动启动读取循环
     */
    constructor(port: Int, listener: TcpServerListener?, autoRead: Boolean = true) : this(
        ChannelType.HU_CMD,
        DeviceRole.HU,
        listener,
        autoRead
    ) {
        this._customPort = port
    }

    private var _customPort: Int? = null
    private val customPort: Int get() = _customPort ?: type.getPort(role)

    companion object {
        private const val TAG = "TcpServer"
    }

    private val scope = CoroutineScope(Dispatchers.IO + Job())
    private var serverSocket: ServerSocket? = null
    private val clients = ConcurrentHashMap<Int, Channel>()
    private val isRunning = AtomicBoolean(false)
    private var boundPort: Int = 0
    private val clientIdCounter = AtomicInteger(0)

    /**
     * 启动服务端
     * @param port 监听的端口号（默认使用 type.getPort(role)）
     */
    fun start(port: Int = customPort) {
        if (!isRunning.compareAndSet(false, true)) {
            LogUtils.w("$TAG: Already running on port $port")
            return
        }

        scope.launch {
            try {
                val ss = ServerSocket(port)
                serverSocket = ss
                boundPort = port

                // 如果在 ServerSocket 创建后、进入 accept 循环前 stop() 被调用，立即退出
                if (!isRunning.get()) {
                    try { ss.close() } catch (_: Exception) {}
                    serverSocket = null
                    return@launch
                }

                LogUtils.i("$TAG: Started on port $port, type=${type.name}")
                listener?.onStarted(port)

                // 接受客户端连接（阻塞，直到 stop() 被调用）
                while (isRunning.get()) {
                    val socket = try {
                        ss.accept()
                    } catch (e: IOException) {
                        if (isRunning.get()) {
                            val error = "Accept failed: ${e.message}"
                            LogUtils.e(e, "$TAG: $error")
                            listener?.onError(port, "Accept failed: ${e.message}")
                        }
                        break
                    } ?: break

                    LogUtils.i("$TAG: Client connected: ${socket.inetAddress.hostAddress}:${socket.port}")

                    // 创建 Channel 并管理
                    val channel = Channel.wrap(type, role, socket, autoRead)
                    val clientId = clientIdCounter.incrementAndGet()

                    channel.callback = object : ChannelCallback {
                        override fun onConnected(ch: Channel) {
                            clients[clientId] = ch
                            LogUtils.d("$TAG: Client #$clientId connected, total=${clients.size}")
                            listener?.onClientConnected(port, ch)
                            // TcpServerChannel.connect() 内部已调用 startReadLoop()
                        }

                        override fun onDisconnected(ch: Channel, reason: String?) {
                            clients.remove(clientId)
                            LogUtils.d("$TAG: Client #$clientId disconnected, total=${clients.size}, reason=$reason")
                            listener?.onClientDisconnected(port, ch, reason)
                        }

                        override fun onDataReceived(ch: Channel, header: ChannelHeader, payload: ByteArray) {
                            listener?.onDataReceived(port, ch, header, payload)
                        }

                        override fun onError(ch: Channel, error: Throwable) {
                            LogUtils.e(error, "$TAG: Client #$clientId error: ${error.message}")
                        }
                    }

                    // 触发连接（将 Socket 附加到 Channel）
                    // 对于 TcpServerChannel，host/port 参数被忽略，Socket 已通过 wrap() 注入
                    channel.connect("", port)
                }
            } catch (e: IOException) {
                if (isRunning.getAndSet(false)) {
                    val error = "Failed to start server on port $port: ${e.message}"
                    LogUtils.e(e, "$TAG: $error")
                    listener?.onError(port, "Failed to start server on port $port: ${e.message}")
                }
            } finally {
                isRunning.set(false)
                // 清理 ServerSocket（避免 accept() 阻塞）
                try {
                    serverSocket?.close()
                } catch (_: Exception) {
                    // Ignore - socket may already be closed
                }
            }
        }
    }

    /**
     * 停止服务端
     */
    fun stop() {
        if (!isRunning.getAndSet(false)) {
            return
        }

        LogUtils.i("$TAG: Stopping on port $boundPort...")

        clients.values.forEach { it.disconnect("server stopped") }
        clients.clear()

        try {
            serverSocket?.close()
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Error closing server socket")
        }
        serverSocket = null

        LogUtils.i("$TAG: Stopped on port $boundPort")
        listener?.onStopped(boundPort)
    }

    /**
     * 释放资源（stop + 取消协程作用域）
     */
    fun release() {
        stop()
        scope.cancel("TcpServer released")
        LogUtils.d("$TAG: Released")
    }

    /**
     * 获取当前连接的客户端数量
     */
    fun getClientCount(): Int = clients.size

    /**
     * 获取所有客户端 Channel
     */
    fun getClients(): List<Channel> = clients.values.toList()

    /**
     * 是否正在运行
     */
    fun isRunning(): Boolean = isRunning.get()
}
