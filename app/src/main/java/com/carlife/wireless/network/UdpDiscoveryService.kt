package com.carlife.wireless.network

import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.NetworkUtils
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.delay
import kotlinx.coroutines.cancel
import java.net.DatagramPacket
import java.net.DatagramSocket
import java.net.InetAddress
import java.net.MulticastSocket
import java.net.NetworkInterface

/**
 * UDP 广播发现服务
 *
 * 当 mDNS 不可用或无法解析时，提供备用的设备发现机制。
 *
 * 工作原理：
 * 1. 在 UDP 端口 7200 上监听广播消息
 * 2. 收到 "CARLIFE_DISCOVER" 消息时，回复本机 IP 和所有 CarLife 端口信息
 * 3. 同时定期发送广播公告（每 5 秒），让局域网内的设备主动发现本机
 *
 * 这样即使 mDNS 失败，手机 B 的 CarWith 也能通过 UDP 广播发现转接盒。
 */
class UdpDiscoveryService {

    companion object {
        private const val TAG = "UdpDiscoveryService"
        private const val DISCOVERY_PORT = 7200
        private const val DISCOVER_MAGIC = "CARLIFE_DISCOVER"
        private const val RESPONSE_MAGIC = "CARLIFE_BOX_HERE"
        private const val BROADCAST_INTERVAL_MS = 5000L
        private const val BUFFER_SIZE = 1024
    }

    private var scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var listenSocket: DatagramSocket? = null
    @Volatile private var running = false

    /**
     * 启动 UDP 发现服务
     */
    fun start() {
        if (running) return
        running = true

        // 启动监听协程
        scope.launch { listenLoop() }
        // 启动广播公告协程
        scope.launch { broadcastLoop() }

        LogUtils.i(TAG, "UDP discovery service started on port $DISCOVERY_PORT")
    }

    /**
     * 停止 UDP 发现服务
     */
    fun stop() {
        running = false
        try { listenSocket?.close() } catch (_: Exception) {}
        listenSocket = null
        scope.cancel()
        scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
        LogUtils.i(TAG, "UDP discovery service stopped")
    }

    /**
     * 监听 UDP 广播消息
     */
    private suspend fun listenLoop() {
        try {
            listenSocket = DatagramSocket(DISCOVERY_PORT)
            listenSocket?.broadcast = true
            listenSocket?.soTimeout = 2000

            val buffer = ByteArray(BUFFER_SIZE)

            while (running) {
                try {
                    val packet = DatagramPacket(buffer, buffer.size)
                    listenSocket?.receive(packet)

                    val message = String(packet.data, 0, packet.length).trim()
                    val senderIp = packet.address.hostAddress ?: continue

                    LogUtils.d(TAG, "Received UDP: '$message' from $senderIp")

                    if (message.startsWith(DISCOVER_MAGIC)) {
                        // 收到发现请求，回复本机信息
                        sendDiscoveryResponse(senderIp)
                    }
                } catch (e: java.net.SocketTimeoutException) {
                    // 超时，继续监听
                } catch (e: Exception) {
                    if (running) {
                        LogUtils.w(TAG, "Listen error: ${e.message}")
                    }
                }
            }
        } catch (e: Exception) {
            if (running) {
                LogUtils.e(TAG, "Failed to start listen: ${e.message}")
            }
        } finally {
            try { listenSocket?.close() } catch (_: Exception) {}
        }
    }

    /**
     * 定期发送广播公告
     */
    private suspend fun broadcastLoop() {
        while (running) {
            try {
                sendBroadcastAnnouncement()
            } catch (e: Exception) {
                LogUtils.w(TAG, "Broadcast error: ${e.message}")
            }
            delay(BROADCAST_INTERVAL_MS)
        }
    }

    /**
     * 发送发现响应到指定 IP
     */
    private fun sendDiscoveryResponse(targetIp: String) {
        val localIp = NetworkUtils.getLocalIpAddress() ?: return
        val response = "$RESPONSE_MAGIC|$localIp|7200|8200|9200|9201|9202|9300"
        val data = response.toByteArray()

        try {
            DatagramSocket().use { socket ->
                socket.broadcast = true
                val packet = DatagramPacket(
                    data, data.size,
                    InetAddress.getByName(targetIp), DISCOVERY_PORT
                )
                socket.send(packet)
            }
            LogUtils.i(TAG, "Discovery response sent to $targetIp: $response")
        } catch (e: Exception) {
            LogUtils.w(TAG, "Failed to send response to $targetIp: ${e.message}")
        }
    }

    /**
     * 发送广播公告到局域网
     */
    private fun sendBroadcastAnnouncement() {
        val localIp = NetworkUtils.getLocalIpAddress() ?: return
        val announcement = "$RESPONSE_MAGIC|$localIp|7200|8200|9200|9201|9202|9300"
        val data = announcement.toByteArray()

        try {
            DatagramSocket().use { socket ->
                socket.broadcast = true

                // 发送到 255.255.255.255
                val packet = DatagramPacket(
                    data, data.size,
                    InetAddress.getByName("255.255.255.255"), DISCOVERY_PORT
                )
                socket.send(packet)

                // 也发送到子网广播地址
                try {
                    val interfaces = NetworkInterface.getNetworkInterfaces()
                    while (interfaces.hasMoreElements()) {
                        val intf = interfaces.nextElement()
                        if (intf.isLoopback || !intf.isUp) continue
                        for (addr in intf.interfaceAddresses) {
                            val broadcast = addr.broadcast ?: continue
                            val pkt = DatagramPacket(
                                data, data.size,
                                broadcast, DISCOVERY_PORT
                            )
                            socket.send(pkt)
                        }
                    }
                } catch (_: Exception) {}
            }
            LogUtils.d(TAG, "Broadcast announcement sent: $announcement")
        } catch (e: Exception) {
            LogUtils.w(TAG, "Failed to send broadcast: ${e.message}")
        }
    }
}
