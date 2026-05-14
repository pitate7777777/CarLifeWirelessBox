package com.carlife.wireless.service

import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

class ProtocolServiceTest {

    private lateinit var service: ProtocolService

    @Before
    fun setUp() {
        service = ProtocolService()
    }

    // ==================== Channel 枚举 ====================

    @Test
    fun `Channel has 6 entries`() {
        assertEquals(6, ProtocolService.Channel.entries.size)
    }

    @Test
    fun `Channel labels are not empty`() {
        ProtocolService.Channel.entries.forEach { ch ->
            assertFalse("Channel ${ch.name} label should not be empty", ch.label.isEmpty())
        }
    }

    // ==================== HandshakePhase 枚举 ====================

    @Test
    fun `HandshakePhase has all required phases`() {
        val phases = ProtocolService.HandshakePhase.entries.map { it.name }
        assertTrue(phases.contains("IDLE"))
        assertTrue(phases.contains("VERSION_NEGOTIATION"))
        assertTrue(phases.contains("DEVICE_INFO"))
        assertTrue(phases.contains("AUTHENTICATION"))
        assertTrue(phases.contains("AUTH_RESULT"))
        assertTrue(phases.contains("FEATURE_CONFIG"))
        assertTrue(phases.contains("VIDEO_ENCODER_INIT"))
        assertTrue(phases.contains("VIDEO_START"))
        assertTrue(phases.contains("COMPLETED"))
        assertTrue(phases.contains("FAILED"))
    }

    @Test
    fun `HandshakePhase initial state is IDLE`() {
        assertEquals(ProtocolService.HandshakePhase.IDLE, service.getCurrentHandshakePhase())
    }

    // ==================== EventType 枚举 ====================

    @Test
    fun `EventType has all required types`() {
        val types = ProtocolService.EventType.entries.map { it.name }
        assertTrue(types.contains("MSG_SENT"))
        assertTrue(types.contains("MSG_RECEIVED"))
        assertTrue(types.contains("HANDSHAKE"))
        assertTrue(types.contains("CONNECTION"))
        assertTrue(types.contains("ERROR"))
        assertTrue(types.contains("HEARTBEAT"))
    }

    // ==================== 消息统计 ====================

    @Test
    fun `initial channel stats are zero`() {
        ProtocolService.Channel.entries.forEach { ch ->
            val stats = service.getChannelStats(ch)
            assertEquals("Initial sent for $ch should be 0", 0, stats.sent)
            assertEquals("Initial received for $ch should be 0", 0, stats.received)
            assertEquals("Initial errors for $ch should be 0", 0, stats.errors)
        }
    }

    @Test
    fun `reportMessageSent increments sent count`() {
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001, 1024)
        val stats = service.getChannelStats(ProtocolService.Channel.VIDEO)
        assertEquals(1, stats.sent)
        assertEquals(0, stats.received)
    }

    @Test
    fun `reportMessageReceived increments received count`() {
        service.reportMessageReceived(ProtocolService.Channel.MEDIA, 0x00030006, 512)
        val stats = service.getChannelStats(ProtocolService.Channel.MEDIA)
        assertEquals(0, stats.sent)
        assertEquals(1, stats.received)
    }

    @Test
    fun `reportChannelError increments error count`() {
        service.reportChannelError(ProtocolService.Channel.CTRL, "connection lost")
        val stats = service.getChannelStats(ProtocolService.Channel.CTRL)
        assertEquals(1, stats.errors)
    }

    @Test
    fun `multiple reports accumulate correctly`() {
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001)
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001)
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001)
        service.reportMessageReceived(ProtocolService.Channel.VIDEO, 0x00020001)
        val stats = service.getChannelStats(ProtocolService.Channel.VIDEO)
        assertEquals(3, stats.sent)
        assertEquals(1, stats.received)
    }

    @Test
    fun `getAllChannelStats returns all channels`() {
        val allStats = service.getAllChannelStats()
        assertEquals(6, allStats.size)
        ProtocolService.Channel.entries.forEach { ch ->
            assertTrue("getAllChannelStats should contain $ch", allStats.containsKey(ch))
        }
    }

    @Test
    fun `getTotalMessageCount returns correct totals`() {
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001)
        service.reportMessageSent(ProtocolService.Channel.CMD, 0x00018001)
        service.reportMessageReceived(ProtocolService.Channel.MEDIA, 0x00030006)
        val (sent, recv) = service.getTotalMessageCount()
        assertEquals(2, sent)
        assertEquals(1, recv)
    }

    @Test
    fun `getTotalErrors returns correct total`() {
        service.reportChannelError(ProtocolService.Channel.VIDEO, "err1")
        service.reportChannelError(ProtocolService.Channel.CMD, "err2")
        assertEquals(2, service.getTotalErrors())
    }

    // ==================== 握手追踪 ====================

    @Test
    fun `startHandshake sets phase to VERSION_NEGOTIATION`() {
        service.startHandshake()
        assertEquals(ProtocolService.HandshakePhase.VERSION_NEGOTIATION, service.getCurrentHandshakePhase())
    }

    @Test
    fun `reportHandshakePhase updates current phase`() {
        service.startHandshake()
        service.reportHandshakePhase(
            ProtocolService.HandshakePhase.AUTHENTICATION,
            "→",
            0x00018048
        )
        assertEquals(ProtocolService.HandshakePhase.AUTHENTICATION, service.getCurrentHandshakePhase())
    }

    @Test
    fun `completeHandshake success sets COMPLETED phase`() {
        service.startHandshake()
        service.completeHandshake(true)
        assertEquals(ProtocolService.HandshakePhase.COMPLETED, service.getCurrentHandshakePhase())
    }

    @Test
    fun `completeHandshake failure sets FAILED phase`() {
        service.startHandshake()
        service.completeHandshake(false, "timeout")
        assertEquals(ProtocolService.HandshakePhase.FAILED, service.getCurrentHandshakePhase())
    }

    @Test
    fun `handshake stats track success and failure`() {
        service.startHandshake()
        service.completeHandshake(true)
        service.startHandshake()
        service.completeHandshake(false, "error")
        val (success, fails) = service.getHandshakeStats()
        assertEquals(1, success)
        assertEquals(1, fails)
    }

    @Test
    fun `handshake timeline records events`() {
        service.startHandshake()
        service.reportHandshakePhase(ProtocolService.HandshakePhase.DEVICE_INFO, "←", 0x00010004)
        service.completeHandshake(true)
        val timeline = service.getHandshakeTimeline()
        assertTrue("Timeline should have at least 3 events", timeline.size >= 3)
    }

    @Test
    fun `getLastHandshakeDurationMs returns non-negative after completion`() {
        service.startHandshake()
        service.completeHandshake(true)
        assertTrue("Handshake duration should be non-negative", service.getLastHandshakeDurationMs() >= 0)
    }

    // ==================== 心跳统计 ====================

    @Test
    fun `initial heartbeat stats are zero`() {
        val hb = service.getHeartbeatStats()
        assertEquals(0, hb.sent)
        assertEquals(0, hb.received)
        assertEquals(0, hb.timeouts)
    }

    @Test
    fun `reportHeartbeatSent increments sent count`() {
        service.reportHeartbeatSent()
        service.reportHeartbeatSent()
        val hb = service.getHeartbeatStats()
        assertEquals(2, hb.sent)
    }

    @Test
    fun `reportHeartbeatReceived increments received count and updates latency`() {
        service.reportHeartbeatReceived(50L)
        val hb = service.getHeartbeatStats()
        assertEquals(1, hb.received)
        assertEquals(50L, hb.lastLatencyMs)
        assertEquals(50L, hb.avgLatencyMs)
    }

    @Test
    fun `reportHeartbeatTimeout increments timeout count`() {
        service.reportHeartbeatTimeout()
        service.reportHeartbeatTimeout()
        val hb = service.getHeartbeatStats()
        assertEquals(2, hb.timeouts)
    }

    @Test
    fun `average latency is calculated correctly`() {
        service.reportHeartbeatReceived(100L)
        service.reportHeartbeatReceived(200L)
        service.reportHeartbeatReceived(300L)
        val hb = service.getHeartbeatStats()
        assertEquals(200L, hb.avgLatencyMs)
    }

    // ==================== 连接事件 ====================

    @Test
    fun `reportConnectionEvent adds to timeline`() {
        service.reportConnectionEvent(ProtocolService.Channel.CMD, true, "test")
        val events = service.getEventTimeline()
        assertTrue("Event timeline should have at least 1 event", events.isNotEmpty())
    }

    // ==================== 协议事件时间线 ====================

    @Test
    fun `event timeline records multiple events`() {
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001)
        service.reportMessageReceived(ProtocolService.Channel.MEDIA, 0x00030006)
        service.reportChannelError(ProtocolService.Channel.CTRL, "error")
        val events = service.getEventTimeline()
        assertTrue("Event timeline should have at least 3 events", events.size >= 3)
    }

    // ==================== 重置 ====================

    @Test
    fun `resetStats clears all counters`() {
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001)
        service.reportMessageReceived(ProtocolService.Channel.MEDIA, 0x00030006)
        service.reportChannelError(ProtocolService.Channel.CTRL, "error")
        service.startHandshake()
        service.completeHandshake(true)
        service.reportHeartbeatSent()
        service.reportHeartbeatReceived(50L)

        service.resetStats()

        val (sent, recv) = service.getTotalMessageCount()
        assertEquals(0, sent)
        assertEquals(0, recv)
        assertEquals(0, service.getTotalErrors())
        assertEquals(ProtocolService.HandshakePhase.IDLE, service.getCurrentHandshakePhase())
        val (success, fails) = service.getHandshakeStats()
        assertEquals(0, success)
        assertEquals(0, fails)
        val hb = service.getHeartbeatStats()
        assertEquals(0, hb.sent)
        assertEquals(0, hb.received)
    }

    // ==================== 诊断报告 ====================

    @Test
    fun `generateReport returns non-empty string`() {
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001)
        service.startHandshake()
        service.completeHandshake(true)
        val report = service.generateReport()
        assertTrue("Report should not be empty", report.isNotEmpty())
        assertTrue("Report should contain header", report.contains("协议诊断报告"))
    }

    @Test
    fun `generateReport includes channel stats`() {
        service.reportMessageSent(ProtocolService.Channel.VIDEO, 0x00020001, 1024)
        val report = service.generateReport()
        assertTrue("Report should contain VIDEO channel", report.contains("视频通道"))
    }

    @Test
    fun `generateReport includes handshake stats`() {
        service.startHandshake()
        service.completeHandshake(true)
        val report = service.generateReport()
        assertTrue("Report should contain handshake info", report.contains("握手"))
    }

    @Test
    fun `generateReport includes heartbeat stats`() {
        service.reportHeartbeatSent()
        service.reportHeartbeatReceived(50L)
        val report = service.generateReport()
        assertTrue("Report should contain heartbeat info", report.contains("心跳"))
    }

    // ==================== ChannelStats.lastActivityFormatted ====================

    @Test
    fun `ChannelStats lastActivityFormatted returns 无 for zero timestamp`() {
        val stats = ProtocolService.ChannelStats(lastActivityMs = 0L)
        assertEquals("无", stats.lastActivityFormatted())
    }

    @Test
    fun `ChannelStats lastActivityFormatted returns 刚刚 for recent timestamp`() {
        val stats = ProtocolService.ChannelStats(lastActivityMs = System.currentTimeMillis())
        assertEquals("刚刚", stats.lastActivityFormatted())
    }

    // ==================== HandshakeEvent.format ====================

    @Test
    fun `HandshakeEvent format includes phase label`() {
        val event = ProtocolService.HandshakeEvent(
            phase = ProtocolService.HandshakePhase.VERSION_NEGOTIATION,
            direction = "→",
            messageType = 0x00018001
        )
        val formatted = event.format()
        assertTrue(formatted.contains("版本协商"))
        assertTrue(formatted.contains("→"))
    }

    // ==================== ProtocolEvent.format ====================

    @Test
    fun `ProtocolEvent format includes type and message`() {
        val event = ProtocolService.ProtocolEvent(
            type = ProtocolService.EventType.MSG_SENT,
            channel = ProtocolService.Channel.VIDEO,
            message = "test message"
        )
        val formatted = event.format()
        assertTrue(formatted.contains("发送"))
        assertTrue(formatted.contains("视频通道"))
        assertTrue(formatted.contains("test message"))
    }
}
