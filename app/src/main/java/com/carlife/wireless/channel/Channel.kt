package com.carlife.wireless.channel

import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.model.KConnectionState
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.cancel
import kotlinx.coroutines.isActive
import java.io.InputStream
import java.io.OutputStream
import java.net.Socket
import java.net.SocketException

/**
 * 通道类型枚举（6种 CarLife 通道）
 */
enum class ChannelType(
    val huPort: Int,
    val mdPort: Int
) {
    HU_CMD(Constants.Port.HU_CMD, Constants.PortMD.MD_CMD),
    HU_VIDEO(Constants.Port.HU_VIDEO, Constants.PortMD.MD_VIDEO),
    HU_MEDIA(Constants.Port.HU_MEDIA, Constants.PortMD.MD_MEDIA),
    HU_TTS(Constants.Port.HU_TTS, Constants.PortMD.MD_TTS),
    HU_VR(Constants.Port.HU_VR, Constants.PortMD.MD_VR),
    HU_CTRL(Constants.Port.HU_CTRL, Constants.PortMD.MD_CTRL);

    fun getPort(role: DeviceRole): Int = when (role) {
        DeviceRole.HU -> huPort
        DeviceRole.MOBILE -> mdPort
    }

    fun isMediaChannel(): Boolean = when (this) {
        HU_VIDEO, HU_MEDIA, HU_TTS, HU_VR -> true
        else -> false
    }

    companion object {
        fun getByPort(port: Int): ChannelType? = entries.find {
            it.mdPort == port || it.huPort == port
        }
    }
}

/**
 * 设备角色枚举
 */
enum class DeviceRole {
    HU,
    MOBILE
}

/**
 * 通道回调接口
 */
interface ChannelCallback {
    fun onConnected(channel: Channel)
    fun onDisconnected(channel: Channel, reason: String?)
    fun onDataReceived(channel: Channel, header: ChannelHeader, payload: ByteArray)
    fun onError(channel: Channel, error: Throwable)
}

/**
 * 通道抽象类
 * 封装单条 TCP 连接，支持 CarLife 协议包头读写
 */
abstract class Channel(
    val type: ChannelType,
    val role: DeviceRole,
    /** 是否自动启动读取循环。CMD 通道设为 false 由上层协议自行读取 */
    val autoRead: Boolean = true
) {
    @Volatile
    var state: KConnectionState = KConnectionState.IDLE
        protected set

    protected var socket: Socket? = null
    protected var inputStream: InputStream? = null
    protected var outputStream: OutputStream? = null
    var callback: ChannelCallback? = null

    // 协程作用域（IO 线程池 + SupervisorJob）
    // 注意：disconnect() 会 cancel scope，connect() 需要检查并重建
    protected var scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    val name: String get() = "${role.name}_${type.name}"
    val isConnected: Boolean get() = state == KConnectionState.CONNECTED

    /**
     * 发送数据（自动添加协议包头）
     *
     * @param payloadType 消息类型 / 媒体类型
     * @param payload 载荷数据（Protobuf 序列化结果或音视频帧）
     * @param timestamp 时间戳（仅媒体通道有效，毫秒）
     * @return 是否发送成功
     */
    fun send(payloadType: Int, payload: ByteArray, timestamp: Int = 0): Boolean {
        if (state != KConnectionState.CONNECTED) {
            LogUtils.w("[$name] send failed: not connected (state=$state)")
            return false
        }
        try {
            writeFrame(payloadType, payload, timestamp)
            return true
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] send failed")
            callback?.onError(this, e)
            disconnect("send error: ${e.message}")
            return false
        }
    }

    fun close(reason: String? = null) {
        disconnect(reason)
    }

    abstract fun connect(host: String, port: Int = type.getPort(role))
    abstract fun disconnect(reason: String? = null)

    // ==================== CarLife CMD 协议读写 ====================
    // CarLife CMD 通道使用 8 字节消息头：
    // [data_len(2B)][reserved(2B)][service_type(4B)] + [protobuf_data]
    // 与 Channel 自有的 8 字节包头格式不同，需要独立处理。

    /**
     * 发送 CarLife CMD 消息
     *
     * @param serviceType 4 字节消息 ID（如 0x00018001）
     * @param protobufData Protobuf 序列化数据
     */
    fun sendCarLifeMsg(serviceType: Int, protobufData: ByteArray): Boolean {
        if (state != KConnectionState.CONNECTED) {
            LogUtils.w("[$name] sendCarLifeMsg failed: not connected")
            return false
        }
        return try {
            val dataLen = protobufData.size
            val header = ByteArray(8)
            // data_len (2B, Big-Endian)
            header[0] = ((dataLen shr 8) and 0xFF).toByte()
            header[1] = (dataLen and 0xFF).toByte()
            // reserved (2B) = 0
            header[2] = 0; header[3] = 0
            // service_type (4B, Big-Endian)
            header[4] = ((serviceType shr 24) and 0xFF).toByte()
            header[5] = ((serviceType shr 16) and 0xFF).toByte()
            header[6] = ((serviceType shr 8) and 0xFF).toByte()
            header[7] = (serviceType and 0xFF).toByte()

            synchronized(writeLock) {
                val out = outputStream ?: throw IllegalStateException("outputStream is null")
                out.write(header)
                out.write(protobufData)
                out.flush()
            }
            LogUtils.d("[$name] CarLife sent: 0x${Integer.toHexString(serviceType)}, len=${protobufData.size}")
            true
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] sendCarLifeMsg failed")
            callback?.onError(this, e)
            disconnect("send error: ${e.message}")
            false
        }
    }

    /**
     * 读取一条 CarLife CMD 消息（阻塞）
     *
     * CarLife CMD 通道使用 8 字节消息头：
     * [data_len(2B)][reserved(2B)][service_type(4B)] + [protobuf_data]
     *
     * 注意：不使用 @Synchronized，避免与 sendCarLifeMsg() 的 synchronized(this) 锁竞争。
     * 读操作使用 inputStream（read 线程），写操作使用 outputStream（send 线程），
     * 两者操作不同的 I/O 流，天然线程安全，不需要互斥。
     * 如果加锁，读线程阻塞时会阻止写线程发送握手消息，导致协议超时。
     *
     * @return Pair(serviceType, protobufData) 或 null（连接断开）
     */
    fun readCarLifeMsg(): Pair<Int, ByteArray>? {
        if (state != KConnectionState.CONNECTED) return null

        return try {
            // 读取 8 字节消息头
            val header = readExact(8) ?: run {
                disconnect("connection closed by peer")
                return null
            }

            // 解析 data_len (2B)
            val dataLen = ((header[0].toInt() and 0xFF) shl 8) or
                          (header[1].toInt() and 0xFF)

            // 解析 service_type (4B)
            val serviceType = ((header[4].toInt() and 0xFF) shl 24) or
                              ((header[5].toInt() and 0xFF) shl 16) or
                              ((header[6].toInt() and 0xFF) shl 8) or
                              (header[7].toInt() and 0xFF)

            // 读取 protobuf 数据
            val data = if (dataLen > 0) {
                readExact(dataLen) ?: run {
                    disconnect("connection closed while reading payload")
                    return null
                }
            } else {
                ByteArray(0)
            }

            LogUtils.d("[$name] CarLife received: 0x${Integer.toHexString(serviceType)}, len=${data.size}")
            Pair(serviceType, data)
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] readCarLifeMsg failed")
            callback?.onError(this, e)
            disconnect("read error: ${e.message}")
            null
        }
    }

    /**
     * 读取一条 CarLife 媒体消息（阻塞）
     *
     * CarLife 媒体通道格式（12 字节）：
     * [data_len(4B)][timestamp(4B)][service_type(4B)] + [raw_data]
     *
     * 注意：不使用 @Synchronized，避免与 sendCarLifeMediaMsg() 锁竞争。
     * 读操作使用 inputStream，写操作使用 outputStream，天然线程安全。
     *
     * @return Triple(serviceType, timestamp, rawData) 或 null（连接断开）
     */
    fun readCarLifeMediaMsg(): Triple<Int, Int, ByteArray>? {
        if (state != KConnectionState.CONNECTED) return null

        return try {
            // 读取 12 字节媒体头
            val header = readExact(12) ?: run {
                disconnect("connection closed by peer")
                return null
            }

            // 解析 data_len (4B, Big-Endian)
            val dataLen = ((header[0].toInt() and 0xFF) shl 24) or
                          ((header[1].toInt() and 0xFF) shl 16) or
                          ((header[2].toInt() and 0xFF) shl 8) or
                          (header[3].toInt() and 0xFF)

            // 解析 timestamp (4B, Big-Endian)
            val timestamp = ((header[4].toInt() and 0xFF) shl 24) or
                            ((header[5].toInt() and 0xFF) shl 16) or
                            ((header[6].toInt() and 0xFF) shl 8) or
                            (header[7].toInt() and 0xFF)

            // 解析 service_type (4B, Big-Endian)
            val serviceType = ((header[8].toInt() and 0xFF) shl 24) or
                              ((header[9].toInt() and 0xFF) shl 16) or
                              ((header[10].toInt() and 0xFF) shl 8) or
                              (header[11].toInt() and 0xFF)

            // 读取原始数据
            val data = if (dataLen > 0) {
                readExact(dataLen) ?: run {
                    disconnect("connection closed while reading payload")
                    return null
                }
            } else {
                ByteArray(0)
            }

            LogUtils.d("[$name] CarLife media received: 0x${Integer.toHexString(serviceType)}, ts=$timestamp, len=${data.size}")
            Triple(serviceType, timestamp, data)
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] readCarLifeMediaMsg failed")
            callback?.onError(this, e)
            disconnect("read error: ${e.message}")
            null
        }
    }

    /**
     * 发送 CarLife 媒体消息
     *
     * @param serviceType 4 字节消息 ID
     * @param timestamp 时间戳（毫秒）
     * @param rawData 原始数据（H.264 帧 / PCM 音频等）
     */
    fun sendCarLifeMediaMsg(serviceType: Int, timestamp: Int, rawData: ByteArray): Boolean {
        if (state != KConnectionState.CONNECTED) {
            LogUtils.w("[$name] sendCarLifeMediaMsg failed: not connected")
            return false
        }
        return try {
            val dataLen = rawData.size
            val header = ByteArray(12)
            // data_len (4B, Big-Endian)
            header[0] = ((dataLen shr 24) and 0xFF).toByte()
            header[1] = ((dataLen shr 16) and 0xFF).toByte()
            header[2] = ((dataLen shr 8) and 0xFF).toByte()
            header[3] = (dataLen and 0xFF).toByte()
            // timestamp (4B, Big-Endian)
            header[4] = ((timestamp shr 24) and 0xFF).toByte()
            header[5] = ((timestamp shr 16) and 0xFF).toByte()
            header[6] = ((timestamp shr 8) and 0xFF).toByte()
            header[7] = (timestamp and 0xFF).toByte()
            // service_type (4B, Big-Endian)
            header[8] = ((serviceType shr 24) and 0xFF).toByte()
            header[9] = ((serviceType shr 16) and 0xFF).toByte()
            header[10] = ((serviceType shr 8) and 0xFF).toByte()
            header[11] = (serviceType and 0xFF).toByte()

            synchronized(writeLock) {
                val out = outputStream ?: throw IllegalStateException("outputStream is null")
                out.write(header)
                out.write(rawData)
                out.flush()
            }
            LogUtils.d("[$name] CarLife media sent: 0x${Integer.toHexString(serviceType)}, len=${rawData.size}")
            true
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] sendCarLifeMediaMsg failed")
            callback?.onError(this, e)
            disconnect("send error: ${e.message}")
            false
        }
    }

    // 写锁：保护 outputStream 写操作不被并发交错
    // 使用独立于 this 的锁对象，避免与读操作的 synchronized 竞争
    private val writeLock = Any()

    /**
     * 发送一帧数据（自动添加协议包头）
     *
     * 使用 writeLock 保护写操作，避免并发写入导致数据交错。
     * 不使用 @Synchronized（锁 this），避免与 read() 的阻塞读操作锁竞争。
     */
    private fun writeFrame(
        payloadType: Int,
        payload: ByteArray,
        timestamp: Int = 0
    ) {
        if (state != KConnectionState.CONNECTED) {
            LogUtils.w("[$name] write failed: not connected (state=$state)")
            return
        }

        try {
            val headerBytes = if (type.isMediaChannel()) {
                val header = ChannelHeader.Media(payloadType, timestamp, payload.size)
                header.toBytes()
            } else {
                val crc = ChannelHeader.Cmd.calcCrc(payload)
                val header = ChannelHeader.Cmd(payloadType, payload.size, crc)
                header.toBytes()
            }

            val out = outputStream ?: throw IllegalStateException("outputStream is null")
            synchronized(writeLock) {
                out.write(headerBytes)
                out.write(payload)
                out.flush()
            }

            LogUtils.d("[$name] sent: type=$payloadType, len=${payload.size}")
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] write failed")
            callback?.onError(this, e)
            disconnect("write error: ${e.message}")
        }
    }

    /**
     * 读取一条完整消息（阻塞）
     * 先读取协议包头，再读取载荷数据
     *
     * 不使用 @Synchronized，避免与 writeFrame() 锁竞争。
     * 读操作使用 inputStream，写操作使用 outputStream，天然线程安全。
     */
    fun read(): Pair<ChannelHeader, ByteArray>? {
        if (state != KConnectionState.CONNECTED) {
            return null
        }

        return try {
            val headerSize = if (type.isMediaChannel()) {
                ChannelHeader.MEDIA_HEADER_SIZE
            } else {
                ChannelHeader.CMD_HEADER_SIZE
            }

            val headerBytes = readExact(headerSize) ?: run {
                disconnect("connection closed by peer")
                return null
            }

            val header = if (type.isMediaChannel()) {
                ChannelHeader.Media.fromBytes(headerBytes)
            } else {
                ChannelHeader.Cmd.fromBytes(headerBytes)
            }

            val payloadLength = when (header) {
                is ChannelHeader.Cmd -> header.payloadLength
                is ChannelHeader.Media -> header.payloadLength
            }

            val payload = if (payloadLength > 0) {
                readExact(payloadLength) ?: run {
                    disconnect("connection closed while reading payload")
                    return null
                }
            } else {
                ByteArray(0)
            }

            LogUtils.d("[$name] received: type=${when (header) {
                is ChannelHeader.Cmd -> header.payloadType
                is ChannelHeader.Media -> header.payloadType
            }}, len=${payload.size}")

            Pair(header, payload)
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] read failed")
            callback?.onError(this, e)
            disconnect("read error: ${e.message}")
            null
        }
    }

    /**
     * 精确读取指定字节数（阻塞）
     */
    protected fun readExact(length: Int): ByteArray? {
        if (length == 0) return ByteArray(0)
        if (length < 0) {
            LogUtils.e("[$name] readExact: invalid length $length")
            disconnect("invalid payload length: $length")
            return null
        }
        val buffer = ByteArray(length)
        var offset = 0
        val input = inputStream ?: return null

        while (offset < length) {
            val bytesRead = input.read(buffer, offset, length - offset)
            if (bytesRead == -1) return null
            offset += bytesRead
        }
        return buffer
    }

    /**
     * 确保 scope 处于活跃状态
     * disconnect() 会 cancel scope，再次 connect() 前需要重建
     */
    protected fun ensureScopeActive() {
        if (!scope.isActive) {
            scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
        }
    }

    /**
     * 启动读取循环（在后台协程调用）
     */
    protected fun startReadLoop() {
        scope.launch {
            LogUtils.i("[$name] read loop started")
            while (state == KConnectionState.CONNECTED) {
                val result = read() ?: break
                val (header, payload) = result
                callback?.onDataReceived(this@Channel, header, payload)
            }
            LogUtils.i("[$name] read loop ended (state=$state)")
        }
    }

    /**
     * 更新状态并触发回调
     */
    protected fun updateState(newState: KConnectionState, reason: String? = null) {
        val oldState = state
        state = newState
        LogUtils.i("[$name] state: $oldState -> $newState")

        when (newState) {
            KConnectionState.CONNECTED -> callback?.onConnected(this)
            KConnectionState.DISCONNECTED -> callback?.onDisconnected(this, reason)
            else -> {}
        }
    }

    companion object {
        fun create(type: ChannelType, role: DeviceRole, autoRead: Boolean = true): Channel {
            return TcpChannel(type, role, autoRead)
        }

        fun wrap(type: ChannelType, role: DeviceRole, socket: Socket, autoRead: Boolean = true): Channel {
            return TcpServerChannel(type, role, socket, autoRead)
        }
    }
}

/**
 * TCP 通道（客户端）
 */
private class TcpChannel(
    type: ChannelType,
    role: DeviceRole,
    autoRead: Boolean = true
) : Channel(type, role, autoRead) {

    override fun connect(host: String, port: Int) {
        if (state != KConnectionState.IDLE && state != KConnectionState.DISCONNECTED) {
            LogUtils.w("[$name] connect ignored: invalid state $state")
            return
        }

        updateState(KConnectionState.CONNECTING)
        ensureScopeActive()

        scope.launch {
            val sock = Socket()
            try {
                LogUtils.i("[$name] connecting to $host:$port...")
                // 使用 Socket() + connect(InetSocketAddress, timeout) 而非 Socket(host, port)
                // 与 NetworkDiagnostics 保持一致的连接方式，避免 Android 8 上构造函数行为差异
                sock.connect(java.net.InetSocketAddress(host, port), 10000)
                sock.soTimeout = 5000

                socket = sock
                inputStream = sock.getInputStream()
                outputStream = sock.getOutputStream()

                updateState(KConnectionState.CONNECTED)
                LogUtils.i("[$name] connected to $host:$port")

                if (autoRead) startReadLoop()
            } catch (e: Exception) {
                LogUtils.e(e, "[$name] connect failed to $host:$port")
                // 连接失败时关闭 socket，防止资源泄漏
                try { sock.close() } catch (_: Exception) {}
                callback?.onError(this@TcpChannel, e)
                updateState(KConnectionState.DISCONNECTED, "connect failed: ${e.message}")
            }
        }
    }

    override fun disconnect(reason: String?) {
        if (state == KConnectionState.DISCONNECTED || state == KConnectionState.IDLE) {
            return
        }

        LogUtils.i("[$name] disconnecting: ${reason ?: "unknown"}")

        // 先关闭 socket（中断阻塞的 read），再 cancel scope
        // 顺序不能反：如果先 cancel scope，读循环可能永远不退出
        try { inputStream?.close() } catch (_: Exception) {}
        try { outputStream?.close() } catch (_: Exception) {}
        try { socket?.close() } catch (_: Exception) {}

        inputStream = null
        outputStream = null
        socket = null

        scope.cancel()
        updateState(KConnectionState.DISCONNECTED, reason)
    }
}

/**
 * TCP 服务端通道（包装已连接的 Socket）
 */
class TcpServerChannel(
    type: ChannelType,
    role: DeviceRole,
    private val connectedSocket: Socket,
    autoRead: Boolean = true
) : Channel(type, role, autoRead) {

    override fun connect(host: String, port: Int) {
        if (state != KConnectionState.IDLE && state != KConnectionState.DISCONNECTED) {
            LogUtils.w("[$name] connect ignored: invalid state $state")
            return
        }

        updateState(KConnectionState.CONNECTING)
        ensureScopeActive()

        try {
            connectedSocket.soTimeout = 5000
            socket = connectedSocket
            inputStream = connectedSocket.getInputStream()
            outputStream = connectedSocket.getOutputStream()

            updateState(KConnectionState.CONNECTED)
            LogUtils.i("[$name] attached server socket: ${connectedSocket.inetAddress.hostAddress}:${connectedSocket.port}")
            if (autoRead) startReadLoop()
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] attach socket failed")
            callback?.onError(this, e)
            updateState(KConnectionState.DISCONNECTED, "attach failed: ${e.message}")
        }
    }

    override fun disconnect(reason: String?) {
        if (state == KConnectionState.DISCONNECTED || state == KConnectionState.IDLE) {
            return
        }

        LogUtils.i("[$name] disconnecting: ${reason ?: "unknown"}")

        // 先关闭 socket（中断阻塞的 read），再 cancel scope
        try { inputStream?.close() } catch (_: Exception) {}
        try { outputStream?.close() } catch (_: Exception) {}
        try { connectedSocket.close() } catch (_: Exception) {}

        inputStream = null
        outputStream = null
        socket = null

        scope.cancel()
        updateState(KConnectionState.DISCONNECTED, reason)
    }
}
