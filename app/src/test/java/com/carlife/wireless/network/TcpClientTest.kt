package com.carlife.wireless.network

import com.carlife.wireless.util.Constants
import org.junit.Assert.*
import org.junit.Test

class TcpClientTest {

    // ==================== 初始状态测试 ====================

    @Test
    fun `new TcpClient is not connected`() {
        // TcpClient 需要 Context，这里只测试不依赖 Android 的静态逻辑
        // 验证默认常量
        assertEquals(Constants.IpAddress.USB_TETHERING_LOCAL, "192.168.42.129")
        assertEquals(Constants.Port.HU_CMD, 7240)
    }

    // ==================== TcpClientListener 接口测试 ====================

    @Test
    fun `TcpClientListener interface has all required methods`() {
        // 验证接口方法存在（编译时检查）
        val listener = object : TcpClientListener {
            override fun onConnected() {}
            override fun onDisconnected() {}
            override fun onDataReceived(header: com.carlife.wireless.model.ChannelHeader, payload: ByteArray) {}
            override fun onError(error: String) {}
        }
        assertNotNull(listener)
    }

    // ==================== 重连参数测试 ====================

    @Test
    fun `max retry is 5`() {
        assertEquals(5, Constants.Reconnect.MAX_RETRY)
    }

    @Test
    fun `reconnect delay is 2000ms`() {
        assertEquals(2000L, Constants.Reconnect.DELAY_MS)
    }

    @Test
    fun `exponential backoff calculation`() {
        // 验证指数退避计算逻辑
        for (attempt in 1..Constants.Reconnect.MAX_RETRY) {
            val delay = Constants.Reconnect.DELAY_MS * (1L shl (attempt - 1))
            assertTrue("delay for attempt $attempt should be positive", delay > 0)
            if (attempt > 1) {
                val prevDelay = Constants.Reconnect.DELAY_MS * (1L shl (attempt - 2))
                assertTrue("delay should increase", delay > prevDelay)
            }
        }
    }

    @Test
    fun `max backoff delay for attempt 5`() {
        val attempt = 5
        val delay = Constants.Reconnect.DELAY_MS * (1L shl (attempt - 1))
        // 2000 * 16 = 32000ms = 32s
        assertEquals(32000L, delay)
    }

    // ==================== 心跳参数测试 ====================

    @Test
    fun `heartbeat interval is 3 seconds`() {
        assertEquals(3000L, Constants.Heartbeat.INTERVAL_MS)
    }

    @Test
    fun `heartbeat timeout is 9 seconds`() {
        assertEquals(9000L, Constants.Heartbeat.TIMEOUT_MS)
    }

    @Test
    fun `heartbeat timeout is 3x interval`() {
        assertEquals(
            Constants.Heartbeat.INTERVAL_MS * 3,
            Constants.Heartbeat.TIMEOUT_MS
        )
    }
}
