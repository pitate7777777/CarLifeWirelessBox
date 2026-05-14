package com.carlife.wireless.channel

import com.carlife.wireless.model.ChannelHeader
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import java.io.PipedInputStream
import java.io.PipedOutputStream
import java.net.ServerSocket
import java.net.Socket
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

/**
 * Channel 测试
 *
 * 测试 CarLife 协议消息的序列化/反序列化：
 * - CMD 消息（8字节头）：[data_len(2B)][reserved(2B)][service_type(4B)] + [data]
 * - 媒体消息（12字节头）：[data_len(4B)][timestamp(4B)][service_type(4B)] + [data]
 */
class ChannelTest {

    private lateinit var serverSocket: ServerSocket
    private lateinit var clientSocket: Socket
    private lateinit var serverChannel: Channel
    private lateinit var clientChannel: Channel

    @Before
    fun setup() {
        serverSocket = ServerSocket(0) // 随机端口
        val port = serverSocket.localPort

        // 客户端连接
        clientSocket = Socket("127.0.0.1", port)
        val acceptedSocket = serverSocket.accept()

        // 创建通道（使用 TcpServerChannel 包装已连接的 socket）
        clientChannel = Channel.create(ChannelType.HU_CMD, DeviceRole.MOBILE, autoRead = false)
        serverChannel = Channel.wrap(ChannelType.HU_CMD, DeviceRole.HU, acceptedSocket, autoRead = false)

        clientChannel.connect("127.0.0.1", port)
        serverChannel.connect("", port)
    }

    @After
    fun teardown() {
        try { clientChannel.disconnect("test cleanup") } catch (_: Exception) {}
        try { serverChannel.disconnect("test cleanup") } catch (_: Exception) {}
        try { clientSocket.close() } catch (_: Exception) {}
        try { serverSocket.close() } catch (_: Exception) {}
    }

    // ==================== CarLife CMD 消息测试 ====================

    @Test
    fun `sendCarLifeMsg and readCarLifeMsg roundtrip`() {
        val serviceType = 0x00018001 // HU_PROTOCOL_VERSION
        val data = byteArrayOf(0x01, 0x00, 0x00, 0x00) // version 1.0.0.0

        val sent = clientChannel.sendCarLifeMsg(serviceType, data)
        assertTrue("send should succeed", sent)

        val msg = serverChannel.readCarLifeMsg()
        assertNotNull("should receive message", msg)
        assertEquals(serviceType, msg!!.first)
        assertArrayEquals(data, msg.second)
    }

    @Test
    fun `sendCarLifeMsg with empty payload`() {
        val serviceType = 0x00018009 // VIDEO_ENCODER_START

        clientChannel.sendCarLifeMsg(serviceType, ByteArray(0))

        val msg = serverChannel.readCarLifeMsg()
        assertNotNull(msg)
        assertEquals(serviceType, msg!!.first)
        assertEquals(0, msg.second.size)
    }

    @Test
    fun `sendCarLifeMsg with large payload`() {
        val serviceType = 0x00018003 // HU_INFO
        val data = ByteArray(4096) { (it % 256).toByte() }

        clientChannel.sendCarLifeMsg(serviceType, data)

        val msg = serverChannel.readCarLifeMsg()
        assertNotNull(msg)
        assertEquals(serviceType, msg!!.first)
        assertArrayEquals(data, msg.second)
    }

    @Test
    fun `sendCarLifeMsg header format is correct`() {
        val serviceType = 0x00018007 // VIDEO_ENCODER_INIT
        val data = byteArrayOf(0x01, 0x02, 0x03)

        clientChannel.sendCarLifeMsg(serviceType, data)

        // 直接从输入流读取并验证原始字节
        val input = serverChannel.javaClass.getDeclaredField("inputStream").apply { isAccessible = true }
        val stream = input.get(serverChannel) as java.io.InputStream

        // 读取 8 字节头
        val header = ByteArray(8)
        var offset = 0
        while (offset < 8) {
            val read = stream.read(header, offset, 8 - offset)
            if (read == -1) break
            offset += read
        }
        assertEquals(8, offset)

        // 验证 data_len (2B, Big-Endian)
        val dataLen = ((header[0].toInt() and 0xFF) shl 8) or (header[1].toInt() and 0xFF)
        assertEquals(3, dataLen)

        // 验证 reserved (2B) = 0
        assertEquals(0, header[2].toInt())
        assertEquals(0, header[3].toInt())

        // 验证 service_type (4B, Big-Endian)
        val parsedType = ((header[4].toInt() and 0xFF) shl 24) or
                ((header[5].toInt() and 0xFF) shl 16) or
                ((header[6].toInt() and 0xFF) shl 8) or
                (header[7].toInt() and 0xFF)
        assertEquals(serviceType, parsedType)
    }

    // ==================== CarLife 媒体消息测试 ====================

    @Test
    fun `sendCarLifeMediaMsg and readCarLifeMediaMsg roundtrip`() {
        // 使用 VIDEO 通道类型以启用媒体格式
        val videoServerSocket = ServerSocket(0)
        val videoClient = Socket("127.0.0.1", videoServerSocket.localPort)
        val videoAccepted = videoServerSocket.accept()

        val videoClientCh = Channel.create(ChannelType.HU_VIDEO, DeviceRole.MOBILE, autoRead = false)
        val videoServerCh = Channel.wrap(ChannelType.HU_VIDEO, DeviceRole.HU, videoAccepted, autoRead = false)

        videoClientCh.connect("127.0.0.1", videoServerSocket.localPort)
        videoServerCh.connect("", videoServerSocket.localPort)

        try {
            val serviceType = 0x00020001 // VIDEO_DATA
            val timestamp = 12345
            val data = ByteArray(1024) { (it % 256).toByte() }

            val sent = videoClientCh.sendCarLifeMediaMsg(serviceType, timestamp, data)
            assertTrue("media send should succeed", sent)

            val msg = videoServerCh.readCarLifeMediaMsg()
            assertNotNull("should receive media message", msg)
            assertEquals(serviceType, msg!!.first)
            assertEquals(timestamp, msg.second)
            assertArrayEquals(data, msg.third)
        } finally {
            try { videoClientCh.disconnect("test") } catch (_: Exception) {}
            try { videoServerCh.disconnect("test") } catch (_: Exception) {}
            try { videoClient.close() } catch (_: Exception) {}
            try { videoServerSocket.close() } catch (_: Exception) {}
        }
    }

    @Test
    fun `sendCarLifeMediaMsg with zero timestamp`() {
        val videoServerSocket = ServerSocket(0)
        val videoClient = Socket("127.0.0.1", videoServerSocket.localPort)
        val videoAccepted = videoServerSocket.accept()

        val videoClientCh = Channel.create(ChannelType.HU_VIDEO, DeviceRole.MOBILE, autoRead = false)
        val videoServerCh = Channel.wrap(ChannelType.HU_VIDEO, DeviceRole.HU, videoAccepted, autoRead = false)

        videoClientCh.connect("127.0.0.1", videoServerSocket.localPort)
        videoServerCh.connect("", videoServerSocket.localPort)

        try {
            val serviceType = 0x00030006 // MEDIA_DATA
            val data = byteArrayOf(0xAA.toByte(), 0xBB.toByte())

            videoClientCh.sendCarLifeMediaMsg(serviceType, 0, data)

            val msg = videoServerCh.readCarLifeMediaMsg()
            assertNotNull(msg)
            assertEquals(serviceType, msg!!.first)
            assertEquals(0, msg.second)
            assertArrayEquals(data, msg.third)
        } finally {
            try { videoClientCh.disconnect("test") } catch (_: Exception) {}
            try { videoServerCh.disconnect("test") } catch (_: Exception) {}
            try { videoClient.close() } catch (_: Exception) {}
            try { videoServerSocket.close() } catch (_: Exception) {}
        }
    }

    // ==================== Channel 状态测试 ====================

    @Test
    fun `channel starts in connected state after connect`() {
        assertTrue(clientChannel.isConnected)
        assertEquals(KConnectionState.CONNECTED, clientChannel.state)
    }

    @Test
    fun `channel disconnect changes state`() {
        clientChannel.disconnect("test")
        assertEquals(KConnectionState.DISCONNECTED, clientChannel.state)
        assertFalse(clientChannel.isConnected)
    }

    @Test
    fun `send fails when disconnected`() {
        clientChannel.disconnect("test")
        val result = clientChannel.sendCarLifeMsg(0x00018001, ByteArray(4))
        assertFalse("send should fail when disconnected", result)
    }

    @Test
    fun `readCarLifeMsg returns null when disconnected`() {
        clientChannel.disconnect("test")
        val msg = clientChannel.readCarLifeMsg()
        assertNull("read should return null when disconnected", msg)
    }

    // ==================== Channel 名称测试 ====================

    @Test
    fun `channel name format is ROLE_TYPE`() {
        assertTrue(clientChannel.name.contains("MOBILE"))
        assertTrue(clientChannel.name.contains("HU_CMD"))
    }

    // ==================== 连续消息测试 ====================

    @Test
    fun `multiple messages can be sent and received sequentially`() {
        for (i in 1..5) {
            val serviceType = 0x00018000 + i
            val data = byteArrayOf(i.toByte())

            clientChannel.sendCarLifeMsg(serviceType, data)

            val msg = serverChannel.readCarLifeMsg()
            assertNotNull("message $i should be received", msg)
            assertEquals(serviceType, msg!!.first)
            assertArrayEquals(data, msg.second)
        }
    }
}
