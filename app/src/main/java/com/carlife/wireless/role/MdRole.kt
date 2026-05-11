package com.carlife.wireless.role

import android.content.Context
import com.carlife.wireless.channel.Channel
import com.carlife.wireless.channel.ChannelCallback
import com.carlife.wireless.model.ChannelHeader
import com.carlife.wireless.model.KConnectionState
import com.carlife.wireless.network.TcpServer
import com.carlife.wireless.network.TcpServerListener
import com.carlife.wireless.util.Constants
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import java.io.IOException
import java.net.ServerSocket
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
 * MD (Mobile Device) 角色作为服务端，监听来自车机的连接
 * 需要启动 6 个 TcpServer 实例，分别监听不同端口
 */
class MdRole(private val context: Context) {
    
    companion object {
        private const val TAG = "MdRole"
        
        // 引用 Constants.ChannelType 来获取端口列表和名称
        val MD_PORTS = Constants.ChannelType.values().map { it.port }
        
        val PORT_NAMES = Constants.ChannelType.values().associate { it.port to it.displayName }
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

    /** 记录连接开始时间（所有通道连接成功时设置） */
    private val connectionStartTime = AtomicLong(0L)

    /** 记录最后的错误信息 */
    private val lastErrorMessage = AtomicReference("")

    fun setStateListener(listener: (MdState) -> Unit) {
        this.stateListener = listener
    }
    
    fun setHuRole(huRole: HuRole) {
        this.huRole = huRole
    }
    
    fun getState(): MdState = state.get()
    
    private fun updateState(newState: MdState) {
        val oldState = state.getAndSet(newState)
        if (oldState != newState) {
            stateListener?.invoke(newState)
            LogUtils.i("MdRole", "State changed to: $newState")
        }
    }

    fun start() {
        if (state.get() != MdState.IDLE && state.get() != MdState.ERROR) {
            LogUtils.w("MdRole", "Cannot start, current state: $state")
            return
        }
        
        updateState(MdState.STARTING)
        
        try {
            MD_PORTS.forEach { port ->
                val server = TcpServer(port, object : TcpServerListener {
                    override fun onStarted(port: Int) {
                        LogUtils.i("MdRole", "TcpServer started on port $port (${PORT_NAMES[port]})")
                    }
                    
                    override fun onStopped(port: Int) {
                        LogUtils.i("MdRole", "TcpServer stopped on port $port")
                    }
                    
                    override fun onClientConnected(port: Int, channel: Channel) {
                        handleClientConnected(port, channel)
                    }
                    
                    override fun onClientDisconnected(port: Int, channel: Channel, reason: String?) {
                        handleClientDisconnected(port, reason)
                    }
                    
                    override fun onDataReceived(port: Int, channel: Channel, header: ChannelHeader, payload: ByteArray) {
                        handleDataReceived(port, payload)
                    }
                    
                    override fun onError(port: Int, error: String) {
                        LogUtils.e("MdRole", "Error on port $port (${PORT_NAMES[port]}): $error")
                        lastErrorMessage.set("Port ${PORT_NAMES[port]}: $error")
                        updateState(MdState.ERROR)
                    }
                })
                
                tcpServers[port] = server
                server.start()
            }
            
            updateState(MdState.WAITING_CONNECTION)
            LogUtils.i("MdRole", "All TcpServers started, waiting for connections...")
            
        } catch (e: IOException) {
            LogUtils.e("MdRole", e, "Failed to start TcpServers")
            updateState(MdState.ERROR)
        }
    }
    
    fun stop() {
        LogUtils.i("MdRole", "Stopping MdRole...")
        
        tcpServers.values.forEach { it.stop() }
        tcpServers.clear()
        
        channels.values.forEach { it.disconnect("MdRole stopped") }
        channels.clear()
        
        connectedCount.set(0)
        handshakeCompleted.set(false)
        connectionStartTime.set(0L)
        lastErrorMessage.set("")
        
        updateState(MdState.IDLE)
        LogUtils.i("MdRole", "MdRole stopped")
    }
    
    private fun handleClientConnected(port: Int, channel: Channel) {
        LogUtils.i("MdRole", "Client connected on port $port (${PORT_NAMES[port]})")
        
        channels[port] = channel
        
        val count = connectedCount.incrementAndGet()
        LogUtils.i("MdRole", "Connected channels: $count/6")

        if (count > 0 && state.get() == MdState.WAITING_CONNECTION) {
            updateState(MdState.CONNECTED)
        }
        
        if (checkAllChannelsConnected()) {
            LogUtils.i("MdRole", "All channels connected, starting handshake...")
            connectionStartTime.set(System.currentTimeMillis())
            updateState(MdState.ALL_CONNECTED)
            startHandshake()
        }
    }
    
    private fun handleClientDisconnected(port: Int, reason: String?) {
        LogUtils.w("MdRole", "Client disconnected from port $port (${PORT_NAMES[port]}): $reason")
        
        channels.remove(port)
        
        val count = connectedCount.decrementAndGet()
        
        if (handshakeCompleted.get()) {
            handshakeCompleted.set(false)
            updateState(MdState.CONNECTED)
        }
        
        if (count == 0) {
            connectionStartTime.set(0L)   // 所有通道断开，重置连接计时
            updateState(MdState.WAITING_CONNECTION)
        } else if (state.get() == MdState.ALL_CONNECTED || state.get() == MdState.READY) {
            updateState(MdState.CONNECTED)
        }
    }
    
    private fun handleDataReceived(port: Int, payload: ByteArray) {
        LogUtils.d("MdState", "Data received on port $port (${PORT_NAMES[port]}), length: ${payload.size}")
        
        if (!handshakeCompleted.get()) {
            LogUtils.d("MdRole", "Handshake not completed, ignoring data from port $port")
            return
        }
        
        forwardDataToHu(port, payload)
    }
    
    fun checkAllChannelsConnected(): Boolean {
        val allConnected = connectedCount.get() == Constants.ChannelType.values().size
        LogUtils.d("MdRole", "checkAllChannelsConnected: $allConnected (${connectedCount.get()}/${Constants.ChannelType.values().size})")
        return allConnected
    }
    
    private fun startHandshake() {
        updateState(MdState.HANDSHAKING)
        
        executor.submit {
            try {
                LogUtils.i("MdRole", "Starting protocol handshake with car device...")
                
                val cmdChannel = channels[Constants.PortMD.MD_CMD]
                if (cmdChannel == null) {
                    LogUtils.e("MdRole", "CMD channel not available for handshake")
                    updateState(MdState.ERROR)
                    return@submit
                }
                
                val handshakeRequest = buildHandshakeRequest()
                cmdChannel.send(handshakeRequest)
                LogUtils.i("MdRole", "Handshake request sent")
                
                Thread.sleep(100)
                
                handshakeCompleted.set(true)
                updateState(MdState.READY)
                LogUtils.i("MdRole", "Handshake completed, ready to forward data (read loops already active)")

                // 读取并日志输出当前设置参数
                val (width, height) = SettingsManager.getResolution(context)
                val bitrate = SettingsManager.getBitrate(context)
                val framerate = SettingsManager.getFramerate(context)
                val sampleRate = SettingsManager.getSampleRate(context)
                LogUtils.i("MdRole", "Video config — resolution=${width}x${height}, bitrate=$bitrate, framerate=$framerate")
                LogUtils.i("MdRole", "Audio config — sampleRate=$sampleRate")
                
            } catch (e: Exception) {
                LogUtils.e("MdRole", e, "Handshake failed")
                updateState(MdState.ERROR)
            }
        }
    }
    
    private fun buildHandshakeRequest(): ByteArray {
        val payload = "HELLO_CAR_DEVICE".toByteArray()
        val header = ChannelHeader.Cmd(
            payloadType = 0x01,
            payloadLength = payload.size,
            crc = 0
        )
        header.updateCrc(payload)
        
        return header.toBytes() + payload
    }
    
    private fun forwardDataToHu(port: Int, data: ByteArray) {
        val hu = huRole
        if (hu == null) {
            LogUtils.w("MdRole", "HU role not set, cannot forward data")
            return
        }
        
        // Forward data to the corresponding HU channel
        // The HuRole manages HU-side channels, so we just log the forwarding
        LogUtils.d("MdRole", "Forwarding data from port $port (${PORT_NAMES[port]})")
    }
    
    fun sendData(port: Int, data: ByteArray): Boolean {
        val channel = channels[port]
        if (channel == null) {
            LogUtils.w("MdRole", "Channel not available for port $port")
            return false
        }
        
        return try {
            channel.send(data)
            true
        } catch (e: Exception) {
            LogUtils.e("MdRole", e, "Failed to send data on port $port")
            false
        }
    }
    
    fun getChannelInfo(): Map<Int, String> {
        return channels.mapValues { (port, channel) ->
            "Connected: ${channel.isConnected}, Name: ${PORT_NAMES[port]}"
        }
    }
    
    /** 获取当前视频编码配置（来自设置） */
    fun getVideoConfig(): Triple<Int, Int, Int> {
        val (width, height) = SettingsManager.getResolution(context)
        val bitrate = SettingsManager.getBitrate(context)
        return Triple(width, height, bitrate)
    }

    /** 获取当前视频帧率（来自设置） */
    fun getFramerate(): Int = SettingsManager.getFramerate(context)

    /** 获取当前音频采样率（来自设置） */
    fun getAudioConfig(): Int = SettingsManager.getSampleRate(context)

    fun isReady(): Boolean = state.get() == MdState.READY && handshakeCompleted.get()

    /**
     * 获取连接持续时间（毫秒）
     * 当所有通道连接成功后开始计时，stop() 时重置
     */
    fun getConnectionDuration(): Long {
        val start: Long = connectionStartTime.get()
        if (start <= 0L) return 0L
        return System.currentTimeMillis() - start
    }

    /**
     * 获取最后的错误信息
     */
    fun getLastErrorMessage(): String = lastErrorMessage.get()

    /**
     * 设置错误信息（供外部调用）
     */
    fun setLastErrorMessage(msg: String) {
        lastErrorMessage.set(msg)
    }
}
