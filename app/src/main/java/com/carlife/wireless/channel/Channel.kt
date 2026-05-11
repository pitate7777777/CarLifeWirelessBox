package com.carlife.wireless.channel

import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.model.KConnectionState
import com.carlife.wireless.util.ByteUtils
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import java.io.InputStream
import java.io.OutputStream
import java.net.Socket
import java.net.SocketException

/**
 * 通道类型枚举（6种 CarLife 通道）
 *
 * @property huPort HU 侧（车机/盒子）端口号
 * @property mdPort Mobile 侧（手机）端口号
 */
enum class ChannelType(
    val huPort: Int,
    val mdPort: Int
) {
    /** 命令通道：Protobuf 控制消息 */
    HU_CMD(Constants.Port.HU_CMD, Constants.PortMD.MD_CMD),

    /** 视频通道：H.264/H.265 视频流 */
    HU_VIDEO(Constants.Port.HU_VIDEO, Constants.PortMD.MD_VIDEO),

    /** 音频通道：AAC/Opus 音频流 */
    HU_MEDIA(Constants.Port.HU_MEDIA, Constants.PortMD.MD_MEDIA),

    /** TTS 通道：语音合成数据 */
    HU_TTS(Constants.Port.HU_TTS, Constants.PortMD.MD_TTS),

    /** VR 通道：语音识别数据 */
    HU_VR(Constants.Port.HU_VR, Constants.PortMD.MD_VR),

    /** 控制通道：触摸/按键事件 */
    HU_CTRL(Constants.Port.HU_CTRL, Constants.PortMD.MD_CTRL);

    /** 根据设备角色获取对应端口号 */
    fun getPort(role: DeviceRole): Int = when (role) {
        DeviceRole.HU -> huPort
        DeviceRole.MOBILE -> mdPort
    }

    /** 是否为媒体通道（使用 12 字节包头） */
    fun isMediaChannel(): Boolean = when (this) {
        HU_VIDEO, HU_MEDIA, HU_TTS, HU_VR -> true
        else -> false
    }
}

/**
 * 设备角色枚举
 */
enum class DeviceRole {
    /** Head Unit（车机/盒子） */
    HU,

    /** Mobile（手机） */
    MOBILE
}

/**
 * 通道回调接口
 * 监听通道生命周期和数据事件
 */
interface ChannelCallback {
    /** 通道已连接 */
    fun onConnected(channel: Channel)

    /** 通道已断开 */
    fun onDisconnected(channel: Channel, reason: String?)

    /** 收到数据（已解析包头） */
    fun onDataReceived(channel: Channel, header: ChannelHeader, payload: ByteArray)

    /** 发生错误 */
    fun onError(channel: Channel, error: Throwable)
}

/**
 * 抽象通道类
 * 封装单条 TCP 连接，支持协议包头读写
 *
 * 子类需实现具体的连接逻辑（如 TCP / 模拟通道）
 *
 * @param type 通道类型（决定端口和包头格式）
 * @param role 设备角色（决定使用 HU 端口还是 MD 端口）
 */
abstract class Channel(
    val type: ChannelType,
    val role: DeviceRole
) {
    /** 当前连接状态 */
    var state: KConnectionState = KConnectionState.IDLE
        protected set

    /** TCP Socket（子类可访问） */
    protected var socket: Socket? = null

    /** 输入流 */
    protected var inputStream: InputStream? = null

    /** 输出流 */
    protected var outputStream: OutputStream? = null

    /** 事件回调 */
    var callback: ChannelCallback? = null

    /** 通道名称（用于日志） */
    val name: String get() = "${role.name}_${type.name}"

    /** 是否已连接 */
    val isConnected: Boolean get() = state == KConnectionState.CONNECTED


    /**
     * 发送数据（直接发送载荷，自动添加协议包头）
     * 通道类型由子类决定（CMD 或 Media）
     *
     * @param payload 载荷数据
     * @return 是否发送成功
     */
    fun send(payload: ByteArray): Boolean {
        if (state != KConnectionState.CONNECTED) {
            LogUtils.w("[$name] send failed: not connected (state=$state)")
            return false
        }
        try {
            write(0, payload)
            return true
        } catch (e: Exception) {
            LogUtils.e(e, "[$name] send failed")
            return false
        }
    }

    /**
     * 断开连接（别名）
     */
    fun close(reason: String? = null) {
        disconnect(reason)
    }

    /**
     * 启动接收循环（使用回调）
     * 启动后台线程持续读取消息，通过回调通知
     *
     * @param callback 收到数据的回调，参数为载荷数据
     */
    fun startReceiving(callback: (ByteArray) -> Unit) {
        callback.let { cb ->
            Thread {
                LogUtils.i("[$name] receiving started")
                while (state == KConnectionState.CONNECTED) {
                    val result = read()
                    if (result == null) break
                    val (header, payload) = result
                    cb(payload)
                }
                LogUtils.i("[$name] receiving stopped")
            }.apply {
                name = "Channel-Recv-$name"
                isDaemon = true
                start()
            }
        }
    }

    /** 发起连接（异步，子类实现） */
    abstract fun connect(host: String, port: Int = type.getPort(role))

    /** 断开连接 */
    abstract fun disconnect(reason: String? = null)

    /**
     * 发送数据（自动添加协议包头）
     *
     * CMD 通道：追加 8 字节 CmdChannelHeader
     * 媒体通道：追加 12 字节 MediaChannelHeader
     *
     * @param payloadType 消息类型 / 媒体类型
     * @param payload 载荷数据（Protobuf 序列化结果或音视频帧）
     * @param timestamp 时间戳（仅媒体通道有效，毫秒）
     * @param frameIndex 帧序号（仅媒体通道有效）
     */
    @Synchronized
    fun write(
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
                val crc = calculateCrc(payload)
                val header = ChannelHeader.Cmd(payloadType, payload.size, crc)
                header.toBytes()
            }

            val out = outputStream ?: throw IllegalStateException("outputStream is null")
            out.write(headerBytes)
            out.write(payload)
            out.flush()

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
     * @return Pair<包头, 载荷数据>，连接断开时返回 null
     */
    @Synchronized
    fun read(): Pair<ChannelHeader, ByteArray>? {
        if (state != KConnectionState.CONNECTED) {
            LogUtils.w("[$name] read failed: not connected (state=$state)")
            return null
        }

        return try {
            val headerSize = if (type.isMediaChannel()) {
                ChannelHeader.MEDIA_HEADER_SIZE
            } else {
                ChannelHeader.CMD_HEADER_SIZE
            }

            val headerBytes = readExact(headerSize)
                ?: run {
                    disconnect("connection closed by peer")
                    return null
                }

            val header = if (type.isMediaChannel()) {
                ChannelHeader.Media.fromBytes(headerBytes)
            } else {
                ChannelHeader.Cmd.fromBytes(headerBytes)
            }

            val payload = if (header is ChannelHeader.Cmd) {
                if (header.payloadLength > 0) {
                    readExact(header.payloadLength) ?: run {
                        disconnect("connection closed while reading payload")
                        return null
                    }
                } else {
                    ByteArray(0)
                }
            } else {
                val mediaHeader = header as ChannelHeader.Media
                if (mediaHeader.payloadLength > 0) {
                    readExact(mediaHeader.payloadLength) ?: run {
                        disconnect("connection closed while reading payload")
                        return null
                    }
                } else {
                    ByteArray(0)
                }
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
     * 精确读取指定字节数（阻塞，直到读满或连接断开）
     */
    protected fun readExact(length: Int): ByteArray? {
        val buffer = ByteArray(length)
        var offset = 0
        val input = inputStream ?: return null

        while (offset < length) {
            val read = input.read(buffer, offset, length - offset)
            if (read == -1) return null // 连接断开
            offset += read
        }
        return buffer
    }

    /**
     * 计算 CRC 校验和（简单加和，取低 8 位）
     */
    protected fun calculateCrc(data: ByteArray): Byte {
        var sum = 0
        for (b in data) {
            sum += b.toInt() and 0xFF
        }
        return (sum and 0xFF).toByte()
    }

    /**
     * 启动读取循环（在后台线程调用）
     * 持续读取消息并通过回调通知
     */
    protected fun startReadLoop() {
        Thread {
            LogUtils.i("[$name] read loop started")
            while (state == KConnectionState.CONNECTED) {
                val result = read() ?: break
                val (header, payload) = result
                callback?.onDataReceived(this, header, payload)
            }
            LogUtils.i("[$name] read loop ended (state=$state)")
        }.apply {
            name = "Channel-Read-$name"
            isDaemon = true
            start()
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
        /**
         * 工厂方法：创建指定类型和角色的 TCP 通道（客户端）
         *
         * @param type 通道类型
         * @param role 设备角色
         * @return 配置好的 Channel 实例
         */
        fun create(type: ChannelType, role: DeviceRole): Channel {
            return TcpChannel(type, role)
        }

        /**
         * 工厂方法：包装已连接的 Socket（服务端）
         *
         * 用于 ServerSocket.accept() 返回的已连接 Socket，
         * 直接在现有连接上创建 Channel，无需再次 connect()。
         *
         * @param type 通道类型
         * @param role 设备角色
         * @param socket 已连接的 Socket
         * @return 配置好的 Channel 实例
         */
        fun wrap(type: ChannelType, role: DeviceRole, socket: Socket): Channel {
            return TcpServerChannel(type, role, socket)
        }
    }
}

/**
 * TCP 通道具体实现
 * 使用 java.net.Socket 进行网络通信
 */
private class TcpChannel(
    type: ChannelType,
    role: DeviceRole
) : Channel(type, role) {

    override fun connect(host: String, port: Int) {
        if (state != KConnectionState.IDLE && state != KConnectionState.DISCONNECTED) {
            LogUtils.w("[$name] connect ignored: invalid state $state")
            return
        }

        updateState(KConnectionState.CONNECTING)

        Thread {
            try {
                LogUtils.i("[$name] connecting to $host:$port...")
                val sock = Socket(host, port)
                sock.soTimeout = 5000 // 5 秒读超时

                socket = sock
                inputStream = sock.getInputStream()
                outputStream = sock.getOutputStream()

                updateState(KConnectionState.CONNECTED)
                LogUtils.i("[$name] connected to $host:$port")

                // 启动读取循环
                startReadLoop()
            } catch (e: Exception) {
                LogUtils.e(e, "[$name] connect failed to $host:$port")
                callback?.onError(this, e)
                updateState(KConnectionState.DISCONNECTED, "connect failed: ${e.message}")
            }
        }.apply {
            name = "Channel-Connect-$name"
            isDaemon = true
            start()
        }
    }

    override fun disconnect(reason: String?) {
        if (state == KConnectionState.DISCONNECTED || state == KConnectionState.IDLE) {
            return
        }

        LogUtils.i("[$name] disconnecting: ${reason ?: "unknown"}")

        try {
            inputStream?.close()
        } catch (_: Exception) { }
        try {
            outputStream?.close()
        } catch (_: Exception) { }
        try {
            socket?.close()
        } catch (_: Exception) { }

        inputStream = null
        outputStream = null
        socket = null

        updateState(KConnectionState.DISCONNECTED, reason)
    }
}

/**
 * TCP 服务端通道（包装已连接的 Socket）
 * 用于 ServerSocket.accept() 返回的已连接 Socket，
 * 无需主动 connect()，直接包装即可使用。
 *
 * @param connectedSocket ServerSocket.accept() 返回的已连接 Socket
 */
class TcpServerChannel(
    type: ChannelType,
    role: DeviceRole,
    private val connectedSocket: Socket
) : Channel(type, role) {

    override fun connect(host: String, port: Int) {
        if (state != KConnectionState.IDLE && state != KConnectionState.DISCONNECTED) {
            LogUtils.w("[$name] connect ignored: invalid state $state")
            return
        }

        updateState(KConnectionState.CONNECTING)

        try {
            connectedSocket.soTimeout = 5000
            socket = connectedSocket
            inputStream = connectedSocket.getInputStream()
            outputStream = connectedSocket.getOutputStream()

            updateState(KConnectionState.CONNECTED)
            LogUtils.i("[$name] attached server socket: ${connectedSocket.inetAddress.hostAddress}:${connectedSocket.port}")
            startReadLoop()
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

        try {
            inputStream?.close()
        } catch (_: Exception) { }
        try {
            outputStream?.close()
        } catch (_: Exception) { }
        try {
            connectedSocket.close()
        } catch (_: Exception) { }

        inputStream = null
        outputStream = null
        socket = null

        updateState(KConnectionState.DISCONNECTED, reason)
    }
}
