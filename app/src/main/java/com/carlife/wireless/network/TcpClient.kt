package com.carlife.wireless.network

import android.content.Context
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.proto.CarlifeHeartbeatProto
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.NetworkUtils
import kotlinx.coroutines.*
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
 */
interface TcpClientListener {
    fun onConnected()
    fun onDisconnected()
    fun onDataReceived(header: ChannelHeader, payload: ByteArray)
    fun onError(error: String)
}

/**
 * TCP客户端
 * 封装 Socket 连接管理，支持 CarLife 协议分帧、心跳、重连
 */
class TcpClient(
    private val context: Context,
    private val listener: TcpClientListener? = null
) {
    companion object {
        private const val TAG = "TcpClient"
        private const val CONNECT_TIMEOUT = 3000
        private const val READ_TIMEOUT = 5000
    }

    private var socket: Socket? = null
    private var inputStream: InputStream? = null
    private var outputStream: OutputStream? = null

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val isConnected = AtomicBoolean(false)
    private val isConnecting = AtomicBoolean(false)

    private var heartbeatJob: Job? = null
    private var heartbeatMonitorJob: Job? = null
    private val lastHeartbeatTime = AtomicLong(0)
    private val heartbeatSequence = AtomicInteger(0)

    private var targetHost: String = Constants.IpAddress.USB_TETHERING_LOCAL
    private var targetPort: Int = Constants.Port.HU_CMD
    private val retryCount = AtomicInteger(0)
    private var deviceId: String = ""

    fun setTarget(host: String, port: Int) {
        this.targetHost = host
        this.targetPort = port
    }

    fun setDeviceId(id: String) {
        this.deviceId = id
    }

    fun connect(host: String = targetHost, port: Int = targetPort) {
        if (isConnecting.get() || isConnected.get()) {
            LogUtils.w("$TAG: Already connecting or connected")
            return
        }
        targetHost = host
        targetPort = port
        scope.launch { doConnect(host, port) }
    }

    private suspend fun doConnect(host: String, port: Int) {
        isConnecting.set(true)
        retryCount.set(0)

        while (retryCount.get() <= Constants.Reconnect.MAX_RETRY) {
            try {
                if (!NetworkUtils.isWifiConnected(context)) {
                    listener?.onError("Wi-Fi not connected")
                    break
                }

                val newSocket = Socket()
                newSocket.soTimeout = READ_TIMEOUT
                newSocket.connect(java.net.InetSocketAddress(host, port), CONNECT_TIMEOUT)

                socket = newSocket
                inputStream = newSocket.getInputStream()
                outputStream = newSocket.getOutputStream()

                isConnecting.set(false)
                isConnected.set(true)
                retryCount.set(0)

                LogUtils.i("$TAG: Connected to $host:$port")
                listener?.onConnected()

                startHeartbeat()
                startReading()
                break

            } catch (e: SocketTimeoutException) {
                LogUtils.e("$TAG: Connection timeout: ${e.message}")
                handleConnectionFailure(e, host, port)
            } catch (e: IOException) {
                LogUtils.e("$TAG: Connection failed: ${e.message}")
                handleConnectionFailure(e, host, port)
            } catch (e: Exception) {
                LogUtils.e(e, "$TAG: Unexpected error: ${e.message}")
                handleConnectionFailure(e, host, port)
            }
        }

        if (!isConnected.get()) {
            isConnecting.set(false)
            listener?.onError("Failed to connect after ${Constants.Reconnect.MAX_RETRY} retries")
        }
    }

    private suspend fun handleConnectionFailure(e: Exception, host: String, port: Int) {
        val currentRetry = retryCount.incrementAndGet()
        if (currentRetry > Constants.Reconnect.MAX_RETRY) {
            listener?.onError("Max retries reached: ${e.message}")
            return
        }
        val delay = Constants.Reconnect.DELAY_MS * (1L shl (currentRetry - 1))
        LogUtils.w("$TAG: Retry $currentRetry/${Constants.Reconnect.MAX_RETRY} after ${delay}ms...")
        delay(delay)
        if (!NetworkUtils.isWifiConnected(context)) {
            listener?.onError("Wi-Fi disconnected, aborting retry")
        }
    }

    /**
     * 启动数据读取 — 按 CarLife 协议分帧，回调完整消息
     */
    private fun startReading() {
        scope.launch {
            readLoop()
        }
    }

    /**
     * 读取循环（独立函数，避免 break/continue 在 inline lambda 中的实验性问题）
     */
    private suspend fun readLoop() {
        while (isConnected.get()) {
            try {
                val input = inputStream ?: return

                // 读取协议包头（先读 2 字节 magic + 1 字节 payloadType）
                val magicAndType = readExact(input, 3) ?: run {
                    LogUtils.w("$TAG: Connection closed by server (header)")
                    disconnect()
                    return
                }

                val magic = ((magicAndType[0].toInt() and 0xFF) shl 8) or
                            (magicAndType[1].toInt() and 0xFF)
                if (magic != 0x434C) {
                    LogUtils.e("$TAG: Invalid magic: 0x${Integer.toHexString(magic)}, skipping byte")
                    continue
                }

                val payloadType = magicAndType[2].toInt() and 0xFF

                val isMedia = isMediaChannel()
                val remainingHeaderSize = if (isMedia) 8 else 5
                val remainingHeader = readExact(input, remainingHeaderSize) ?: run {
                    LogUtils.w("$TAG: Connection closed by server (header body)")
                    disconnect()
                    return
                }

                val header: ChannelHeader
                val payloadLength: Int

                if (isMedia) {
                    val timestamp = bytesToIntBE(remainingHeader, 0)
                    payloadLength = bytesToIntBE(remainingHeader, 4)
                    header = ChannelHeader.Media(payloadType, timestamp, payloadLength)
                } else {
                    payloadLength = bytesToIntBE(remainingHeader, 0)
                    val crc = remainingHeader[4]
                    header = ChannelHeader.Cmd(payloadType, payloadLength, crc)
                }

                val payload = if (payloadLength > 0) {
                    readExact(input, payloadLength) ?: run {
                        LogUtils.w("$TAG: Connection closed by server (payload)")
                        disconnect()
                        return
                    }
                } else {
                    ByteArray(0)
                }

                lastHeartbeatTime.set(System.currentTimeMillis())
                listener?.onDataReceived(header, payload)

            } catch (e: SocketTimeoutException) {
                // 读取超时，继续读取
            } catch (e: IOException) {
                if (isConnected.get()) {
                    LogUtils.e(e, "$TAG: Read error")
                    listener?.onError("Read error: ${e.message}")
                    disconnect()
                }
                return
            } catch (e: Exception) {
                if (isConnected.get()) {
                    LogUtils.e(e, "$TAG: Unexpected read error")
                    listener?.onError("Unexpected error: ${e.message}")
                }
                return
            }
        }
    }

    /**
     * 精确读取指定字节数
     */
    private fun readExact(input: InputStream, length: Int): ByteArray? {
        val buffer = ByteArray(length)
        var offset = 0
        while (offset < length) {
            val bytesRead = input.read(buffer, offset, length - offset)
            if (bytesRead == -1) return null
            offset += bytesRead
        }
        return buffer
    }

    private fun bytesToIntBE(bytes: ByteArray, offset: Int): Int {
        return ((bytes[offset].toInt() and 0xFF) shl 24) or
               ((bytes[offset + 1].toInt() and 0xFF) shl 16) or
               ((bytes[offset + 2].toInt() and 0xFF) shl 8) or
               (bytes[offset + 3].toInt() and 0xFF)
    }

    /**
     * 判断当前通道是否为媒体通道（根据 targetPort）
     */
    private fun isMediaChannel(): Boolean {
        return targetPort != Constants.Port.HU_CMD && targetPort != Constants.Port.HU_CTRL
    }

    private fun startHeartbeat() {
        stopHeartbeat()

        heartbeatJob = scope.launch {
            while (isConnected.get()) {
                try {
                    sendHeartbeat()
                    delay(Constants.Heartbeat.INTERVAL_MS)
                } catch (e: Exception) {
                    LogUtils.e(e, "$TAG: Heartbeat send error")
                }
            }
        }

        heartbeatMonitorJob = scope.launch {
            heartbeatMonitorLoop()
        }
    }

    private suspend fun heartbeatMonitorLoop() {
        while (isConnected.get()) {
            delay(1000)
            val lastTime = lastHeartbeatTime.get()
            if (lastTime > 0) {
                val elapsed = System.currentTimeMillis() - lastTime
                if (elapsed > Constants.Heartbeat.TIMEOUT_MS) {
                    LogUtils.e("$TAG: Heartbeat timeout")
                    listener?.onError("Heartbeat timeout")
                    disconnect()
                    return
                }
            }
        }
    }

    private fun stopHeartbeat() {
        heartbeatJob?.cancel()
        heartbeatJob = null
        heartbeatMonitorJob?.cancel()
        heartbeatMonitorJob = null
    }

    private suspend fun sendHeartbeat() {
        if (!isConnected.get()) return

        try {
            val sequence = heartbeatSequence.incrementAndGet().toLong()
            val timestamp = System.currentTimeMillis()

            val heartbeat = CarlifeHeartbeatProto.CarlifeHeartbeat.newBuilder()
                .setDeviceId(deviceId)
                .setTimestampMs(timestamp)
                .setSequence(sequence.toInt())
                .setConnectionState(1)
                .build()

            val heartbeatBytes = heartbeat.toByteArray()

            // 使用协议包头发送
            val crc = ChannelHeader.Cmd.calcCrc(heartbeatBytes)
            val header = ChannelHeader.Cmd(0x01, heartbeatBytes.size, crc)
            val frame = header.toBytes() + heartbeatBytes

            sendDataRaw(frame)

            LogUtils.d("$TAG: Heartbeat sent (seq: $sequence)")
        } catch (e: Exception) {
            LogUtils.e(e, "$TAG: Failed to send heartbeat")
            throw e
        }
    }

    /**
     * 发送带协议包头的数据
     */
    fun sendData(header: ChannelHeader, payload: ByteArray): Boolean {
        if (!isConnected.get()) {
            LogUtils.w("$TAG: Not connected")
            return false
        }
        return try {
            val frame = header.toBytes() + payload
            sendDataRaw(frame)
        } catch (e: IOException) {
            LogUtils.e(e, "$TAG: Send error")
            listener?.onError("Send error: ${e.message}")
            disconnect()
            false
        }
    }

    /**
     * 发送原始字节（内部使用）
     */
    private fun sendDataRaw(data: ByteArray): Boolean {
        val output = outputStream ?: return false
        synchronized(this) {
            output.write(data)
            output.flush()
        }
        return true
    }

    fun getSocket(): Socket? = socket

    fun disconnect() {
        if (!isConnected.get() && !isConnecting.get()) return

        LogUtils.i("$TAG: Disconnecting...")

        stopHeartbeat()
        isConnected.set(false)
        isConnecting.set(false)

        try { inputStream?.close() } catch (_: Exception) {}
        try { outputStream?.close() } catch (_: Exception) {}
        try { socket?.close() } catch (_: Exception) {}

        socket = null
        inputStream = null
        outputStream = null

        heartbeatSequence.set(0)
        lastHeartbeatTime.set(0)

        LogUtils.i("$TAG: Disconnected")
        listener?.onDisconnected()
    }

    fun isConnected(): Boolean = isConnected.get() && socket?.isConnected == true && !socket!!.isClosed
    fun isConnecting(): Boolean = isConnecting.get()
    fun getRetryCount(): Int = retryCount.get()

    fun release() {
        disconnect()
        scope.cancel()
    }
}
