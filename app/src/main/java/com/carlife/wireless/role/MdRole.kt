package com.carlife.wireless.role

import android.content.Context
import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.channel.DeviceRole
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.network.TcpServer
import com.carlife.wireless.network.TcpServerListener
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.atomic.AtomicReference

/**
 * MD 角色实现（车机侧）
 *
 * MD (Mobile Device) 角色作为服务端，监听来自车机的连接。
 * 启动 6 个 TcpServer 实例，分别监听不同端口。
 */
class MdRole(private val context: Context) {

    companion object {
        private const val TAG = "MdRole"

        val MD_PORTS: List<Int> = ChannelType.entries.map { it.mdPort }
        val PORT_NAMES: Map<Int, String> = ChannelType.entries.associate { it.mdPort to it.name }
    }

    enum class MdState {
        IDLE,
        STARTING,
        WAITING_CONNECTION,
        CONNECTED,
        ALL_CONNECTED,
        HANDSHAKING,
        READY,
        ERROR
    }

    private val state = AtomicReference(MdState.IDLE)
    private var stateListener: ((MdState) -> Unit)? = null
    private val executor: ExecutorService = Executors.newCachedThreadPool()
    private val tcpServers: MutableMap<Int, TcpServer> = ConcurrentHashMap()
    private val channels: MutableMap<Int, Channel> = ConcurrentHashMap()
    private val connectedCount = AtomicInteger(0)
    private var huRole: HuRole? = null
    private val handshakeCompleted = AtomicBoolean(false)
    private val connectionStartTime = AtomicLong(0L)
    private val lastErrorMessage = AtomicReference("")

    fun setStateListener(listener: (MdState) -> Unit) { this.stateListener = listener }
    fun setHuRole(huRole: HuRole) { this.huRole = huRole }
    fun getState(): MdState = state.get()

    private fun updateState(newState: MdState) {
        val oldState = state.getAndSet(newState)
        if (oldState != newState) {
            stateListener?.invoke(newState)
            LogUtils.i(TAG, "State changed to: $newState")
        }
    }

    fun start() {
        if (state.get() != MdState.IDLE && state.get() != MdState.ERROR) {
            LogUtils.w(TAG, "Cannot start, current state: ${state.get()}")
            return
        }

        updateState(MdState.STARTING)

        try {
            MD_PORTS.forEach { port ->
                val server = TcpServer(port, object : TcpServerListener {
                    override fun onStarted(port: Int) {
                        LogUtils.i(TAG, "TcpServer started on port $port (${PORT_NAMES[port]})")
                    }
                    override fun onStopped(port: Int) {
                        LogUtils.i(TAG, "TcpServer stopped on port $port")
                    }
                    override fun onClientConnected(port: Int, channel: Channel) {
                        handleClientConnected(port, channel)
                    }
                    override fun onClientDisconnected(port: Int, channel: Channel, reason: String?) {
                        handleClientDisconnected(port, reason)
                    }
                    override fun onDataReceived(port: Int, channel: Channel, header: ChannelHeader, payload: ByteArray) {
                        handleDataReceived(port, header, payload)
                    }
                    override fun onError(port: Int, error: String) {
                        LogUtils.e(TAG, "Error on port $port (${PORT_NAMES[port]}): $error")
                        lastErrorMessage.set("Port ${PORT_NAMES[port]}: $error")
                        updateState(MdState.ERROR)
                    }
                })

                tcpServers[port] = server
                server.start()
            }

            updateState(MdState.WAITING_CONNECTION)
            LogUtils.i(TAG, "All TcpServers started, waiting for connections...")

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to start TcpServers")
            updateState(MdState.ERROR)
        }
    }

    fun stop() {
        LogUtils.i(TAG, "Stopping MdRole...")

        tcpServers.values.forEach { it.release() }
        tcpServers.clear()

        channels.values.forEach { it.disconnect("MdRole stopped") }
        channels.clear()

        connectedCount.set(0)
        handshakeCompleted.set(false)
        connectionStartTime.set(0L)
        lastErrorMessage.set("")

        updateState(MdState.IDLE)
        LogUtils.i(TAG, "MdRole stopped")
    }

    private fun handleClientConnected(port: Int, channel: Channel) {
        LogUtils.i(TAG, "Client connected on port $port (${PORT_NAMES[port]})")

        channels[port] = channel
        val count = connectedCount.incrementAndGet()
        LogUtils.i(TAG, "Connected channels: $count/6")

        if (count > 0 && state.get() == MdState.WAITING_CONNECTION) {
            updateState(MdState.CONNECTED)
        }

        if (count == ChannelType.entries.size) {
            LogUtils.i(TAG, "All channels connected, starting handshake...")
            connectionStartTime.set(System.currentTimeMillis())
            updateState(MdState.ALL_CONNECTED)
            startHandshake()
        }
    }

    private fun handleClientDisconnected(port: Int, reason: String?) {
        LogUtils.w(TAG, "Client disconnected from port $port (${PORT_NAMES[port]}): $reason")

        channels.remove(port)

        // 防止计数器变为负数
        val count = connectedCount.updateAndGet { maxOf(0, it - 1) }

        if (handshakeCompleted.get()) {
            handshakeCompleted.set(false)
            updateState(MdState.CONNECTED)
        }

        if (count == 0) {
            connectionStartTime.set(0L)
            updateState(MdState.WAITING_CONNECTION)
        } else if (state.get() == MdState.ALL_CONNECTED || state.get() == MdState.READY) {
            updateState(MdState.CONNECTED)
        }
    }

    private fun handleDataReceived(port: Int, header: ChannelHeader, payload: ByteArray) {
        LogUtils.d(TAG, "Data received on port $port (${PORT_NAMES[port]}), type=${when (header) {
            is ChannelHeader.Cmd -> header.payloadType
            is ChannelHeader.Media -> header.payloadType
        }}, len=${payload.size}")

        if (!handshakeCompleted.get()) {
            LogUtils.d(TAG, "Handshake not completed, ignoring data from port $port")
            return
        }

        forwardDataToHu(port, header, payload)
    }

    private fun startHandshake() {
        updateState(MdState.HANDSHAKING)

        executor.submit {
            try {
                LogUtils.i(TAG, "Starting protocol handshake with car device...")

                val cmdChannel = channels[Constants.PortMD.MD_CMD]
                if (cmdChannel == null) {
                    LogUtils.e(TAG, "CMD channel not available for handshake")
                    updateState(MdState.ERROR)
                    return@submit
                }

                // 发送握手请求
                val payload = "HELLO_CAR_DEVICE".toByteArray()
                cmdChannel.send(0x01, payload)
                LogUtils.i(TAG, "Handshake request sent")

                // 给车机一点时间响应
                Thread.sleep(200)

                handshakeCompleted.set(true)
                updateState(MdState.READY)
                LogUtils.i(TAG, "Handshake completed, ready to forward data")

                val (width, height) = SettingsManager.getResolution(context)
                val bitrate = SettingsManager.getBitrate(context)
                val framerate = SettingsManager.getFramerate(context)
                val sampleRate = SettingsManager.getSampleRate(context)
                LogUtils.i(TAG, "Video config — resolution=${width}x${height}, bitrate=$bitrate, framerate=$framerate")
                LogUtils.i(TAG, "Audio config — sampleRate=$sampleRate")

            } catch (e: Exception) {
                LogUtils.e(TAG, e, "Handshake failed")
                updateState(MdState.ERROR)
            }
        }
    }

    private fun forwardDataToHu(port: Int, header: ChannelHeader, data: ByteArray) {
        val hu = huRole
        if (hu == null) {
            LogUtils.w(TAG, "HU role not set, cannot forward data")
            return
        }

        // 根据端口类型转发到 HU 对应通道
        // TODO: 实现 MdRole → HuRole 的数据转发
        LogUtils.d(TAG, "Forwarding data from port $port (${PORT_NAMES[port]})")
    }

    fun sendData(port: Int, payloadType: Int, data: ByteArray): Boolean {
        val channel = channels[port] ?: run {
            LogUtils.w(TAG, "Channel not available for port $port")
            return false
        }
        return channel.send(payloadType, data)
    }

    fun getChannelInfo(): Map<Int, String> {
        return channels.mapValues { (port, channel) ->
            "Connected: ${channel.isConnected}, Name: ${PORT_NAMES[port]}"
        }
    }

    fun getVideoConfig(): Triple<Int, Int, Int> {
        val (width, height) = SettingsManager.getResolution(context)
        val bitrate = SettingsManager.getBitrate(context)
        return Triple(width, height, bitrate)
    }

    fun getFramerate(): Int = SettingsManager.getFramerate(context)
    fun getAudioConfig(): Int = SettingsManager.getSampleRate(context)
    fun isReady(): Boolean = state.get() == MdState.READY && handshakeCompleted.get()

    fun getConnectionDuration(): Long {
        val start = connectionStartTime.get()
        if (start <= 0L) return 0L
        return System.currentTimeMillis() - start
    }

    fun getLastErrorMessage(): String = lastErrorMessage.get()
    fun setLastErrorMessage(msg: String) { lastErrorMessage.set(msg) }
}
