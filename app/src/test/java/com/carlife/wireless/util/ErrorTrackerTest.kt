package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE)
class ErrorTrackerTest {

    @Before
    fun setUp() {
        ErrorTracker.resetStats()
    }

    // ==================== ErrorType ====================

    @Test
    fun `ErrorType has all expected entries`() {
        val types = ErrorTracker.ErrorType.entries
        assertTrue(types.contains(ErrorTracker.ErrorType.HANDSHAKE_FAILED))
        assertTrue(types.contains(ErrorTracker.ErrorType.CONNECTION_TIMEOUT))
        assertTrue(types.contains(ErrorTracker.ErrorType.CONNECTION_LOST))
        assertTrue(types.contains(ErrorTracker.ErrorType.PROTOCOL_ERROR))
        assertTrue(types.contains(ErrorTracker.ErrorType.VIDEO_ERROR))
        assertTrue(types.contains(ErrorTracker.ErrorType.AUDIO_ERROR))
        assertTrue(types.contains(ErrorTracker.ErrorType.USB_ERROR))
        assertTrue(types.contains(ErrorTracker.ErrorType.UNKNOWN))
    }

    @Test
    fun `ErrorType labels are non-empty`() {
        ErrorTracker.ErrorType.entries.forEach { type ->
            assertTrue("Label for $type should not be empty", type.label.isNotEmpty())
        }
    }

    // ==================== ErrorEvent ====================

    @Test
    fun `ErrorEvent stores all fields correctly`() {
        val event = ErrorTracker.ErrorEvent(
            timestamp = 1234567890L,
            type = ErrorTracker.ErrorType.CONNECTION_TIMEOUT,
            module = "TestModule",
            message = "Test message",
            details = "Test details",
            stackTrace = "Test stack"
        )
        assertEquals(1234567890L, event.timestamp)
        assertEquals(ErrorTracker.ErrorType.CONNECTION_TIMEOUT, event.type)
        assertEquals("TestModule", event.module)
        assertEquals("Test message", event.message)
        assertEquals("Test details", event.details)
        assertEquals("Test stack", event.stackTrace)
    }

    @Test
    fun `ErrorEvent default timestamp is current time`() {
        val before = System.currentTimeMillis()
        val event = ErrorTracker.ErrorEvent(
            type = ErrorTracker.ErrorType.UNKNOWN,
            module = "Test",
            message = "msg"
        )
        val after = System.currentTimeMillis()
        assertTrue(event.timestamp in before..after)
    }

    @Test
    fun `ErrorEvent default details is empty`() {
        val event = ErrorTracker.ErrorEvent(
            type = ErrorTracker.ErrorType.UNKNOWN,
            module = "Test",
            message = "msg"
        )
        assertEquals("", event.details)
    }

    @Test
    fun `ErrorEvent default stackTrace is empty`() {
        val event = ErrorTracker.ErrorEvent(
            type = ErrorTracker.ErrorType.UNKNOWN,
            module = "Test",
            message = "msg"
        )
        assertEquals("", event.stackTrace)
    }

    @Test
    fun `ErrorEvent format contains message`() {
        val event = ErrorTracker.ErrorEvent(
            type = ErrorTracker.ErrorType.PROTOCOL_ERROR,
            module = "Protocol",
            message = "Invalid header"
        )
        val formatted = event.format()
        assertTrue(formatted.contains("Invalid header"))
        assertTrue(formatted.contains("Protocol"))
    }

    @Test
    fun `ErrorEvent format contains details when present`() {
        val event = ErrorTracker.ErrorEvent(
            type = ErrorTracker.ErrorType.HANDSHAKE_FAILED,
            module = "HuRole",
            message = "Timeout",
            details = "Phase 2 failed"
        )
        val formatted = event.format()
        assertTrue(formatted.contains("Phase 2 failed"))
    }

    @Test
    fun `ErrorEvent format does not contain details section when empty`() {
        val event = ErrorTracker.ErrorEvent(
            type = ErrorTracker.ErrorType.UNKNOWN,
            module = "Test",
            message = "msg"
        )
        val formatted = event.format()
        assertFalse(formatted.contains("详情:"))
    }

    // ==================== resetStats ====================

    @Test
    fun `resetStats clears all counters`() {
        ErrorTracker.recordError(ErrorTracker.ErrorType.HANDSHAKE_FAILED, "mod", "msg1")
        ErrorTracker.recordError(ErrorTracker.ErrorType.CONNECTION_TIMEOUT, "mod", "msg2")
        assertTrue(ErrorTracker.getTotalErrors() > 0)

        ErrorTracker.resetStats()
        assertEquals(0, ErrorTracker.getTotalErrors())
    }

    @Test
    fun `resetStats clears recent errors`() {
        ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "msg")
        ErrorTracker.resetStats()
        assertTrue(ErrorTracker.getRecentErrors().isEmpty())
    }

    @Test
    fun `resetStats resets per-type counts`() {
        ErrorTracker.recordError(ErrorTracker.ErrorType.VIDEO_ERROR, "mod", "msg")
        ErrorTracker.resetStats()
        val stats = ErrorTracker.getErrorStats()
        assertEquals(0, stats[ErrorTracker.ErrorType.VIDEO_ERROR])
    }

    // ==================== recordError ====================

    @Test
    fun `recordError increments total count`() {
        assertEquals(0, ErrorTracker.getTotalErrors())
        ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "msg1")
        assertEquals(1, ErrorTracker.getTotalErrors())
        ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "msg2")
        assertEquals(2, ErrorTracker.getTotalErrors())
    }

    @Test
    fun `recordError increments per-type count`() {
        ErrorTracker.recordError(ErrorTracker.ErrorType.VIDEO_ERROR, "mod", "msg1")
        ErrorTracker.recordError(ErrorTracker.ErrorType.VIDEO_ERROR, "mod", "msg2")
        ErrorTracker.recordError(ErrorTracker.ErrorType.AUDIO_ERROR, "mod", "msg3")

        val stats = ErrorTracker.getErrorStats()
        assertEquals(2, stats[ErrorTracker.ErrorType.VIDEO_ERROR])
        assertEquals(1, stats[ErrorTracker.ErrorType.AUDIO_ERROR])
    }

    @Test
    fun `recordError adds to recent errors`() {
        ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "test message")
        val recent = ErrorTracker.getRecentErrors()
        assertEquals(1, recent.size)
        assertEquals("test message", recent[0].message)
    }

    @Test
    fun `recordError with details stores details`() {
        ErrorTracker.recordError(
            ErrorTracker.ErrorType.PROTOCOL_ERROR,
            "Protocol",
            "Bad header",
            "Expected magic 0x434C"
        )
        val recent = ErrorTracker.getRecentErrors()
        assertEquals("Expected magic 0x434C", recent[0].details)
    }

    @Test
    fun `recordError with throwable stores stack trace`() {
        val exception = RuntimeException("test error")
        ErrorTracker.recordError(
            ErrorTracker.ErrorType.CONNECTION_LOST,
            "mod",
            "Connection dropped",
            throwable = exception
        )
        val recent = ErrorTracker.getRecentErrors()
        assertTrue(recent[0].stackTrace.contains("RuntimeException"))
        assertTrue(recent[0].stackTrace.contains("test error"))
    }

    @Test
    fun `recent errors capped at 100`() {
        for (i in 1..150) {
            ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "msg $i")
        }
        val recent = ErrorTracker.getRecentErrors(200)
        assertTrue(recent.size <= 100)
    }

    @Test
    fun `recent errors keeps latest entries when capped`() {
        for (i in 1..110) {
            ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "msg $i")
        }
        val recent = ErrorTracker.getRecentErrors()
        assertEquals(100, recent.size)
        assertEquals("msg 110", recent.last().message)
    }

    // ==================== getRecentErrors ====================

    @Test
    fun `getRecentErrors returns empty list initially`() {
        ErrorTracker.resetStats()
        assertTrue(ErrorTracker.getRecentErrors().isEmpty())
    }

    @Test
    fun `getRecentErrors with limit`() {
        for (i in 1..10) {
            ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "msg $i")
        }
        val recent = ErrorTracker.getRecentErrors(5)
        assertEquals(5, recent.size)
    }

    @Test
    fun `getRecentErrors returns all when fewer than limit`() {
        for (i in 1..3) {
            ErrorTracker.recordError(ErrorTracker.ErrorType.UNKNOWN, "mod", "msg $i")
        }
        val recent = ErrorTracker.getRecentErrors(10)
        assertEquals(3, recent.size)
    }

    // ==================== getErrorStats ====================

    @Test
    fun `getErrorStats returns all types with zero counts initially`() {
        ErrorTracker.resetStats()
        val stats = ErrorTracker.getErrorStats()
        assertEquals(0, stats[ErrorTracker.ErrorType.HANDSHAKE_FAILED])
        assertEquals(0, stats[ErrorTracker.ErrorType.CONNECTION_TIMEOUT])
        assertEquals(0, stats[ErrorTracker.ErrorType.CONNECTION_LOST])
        assertEquals(0, stats[ErrorTracker.ErrorType.PROTOCOL_ERROR])
        assertEquals(0, stats[ErrorTracker.ErrorType.VIDEO_ERROR])
        assertEquals(0, stats[ErrorTracker.ErrorType.AUDIO_ERROR])
        assertEquals(0, stats[ErrorTracker.ErrorType.USB_ERROR])
        assertEquals(0, stats[ErrorTracker.ErrorType.UNKNOWN])
    }

    // ==================== Convenience methods ====================

    @Test
    fun `recordHandshakeFailure creates correct event`() {
        ErrorTracker.recordHandshakeFailure("HuRole", "Timeout", "Phase 2")
        val recent = ErrorTracker.getRecentErrors()
        assertEquals(1, recent.size)
        assertEquals(ErrorTracker.ErrorType.HANDSHAKE_FAILED, recent[0].type)
        assertEquals("HuRole", recent[0].module)
        assertTrue(recent[0].details.contains("Phase 2"))
    }

    @Test
    fun `recordHandshakeFailure without phase`() {
        ErrorTracker.recordHandshakeFailure("MdRole", "Bad response")
        val recent = ErrorTracker.getRecentErrors()
        assertEquals("Bad response", recent[0].details)
    }

    @Test
    fun `recordConnectionTimeout creates correct event`() {
        ErrorTracker.recordConnectionTimeout("TcpClient", "192.168.1.1", 5000L)
        val recent = ErrorTracker.getRecentErrors()
        assertEquals(ErrorTracker.ErrorType.CONNECTION_TIMEOUT, recent[0].type)
        assertTrue(recent[0].details.contains("192.168.1.1"))
        assertTrue(recent[0].details.contains("5000"))
    }

    @Test
    fun `recordConnectionLost creates correct event`() {
        ErrorTracker.recordConnectionLost("Channel", "Server closed connection")
        val recent = ErrorTracker.getRecentErrors()
        assertEquals(ErrorTracker.ErrorType.CONNECTION_LOST, recent[0].type)
        assertEquals("Server closed connection", recent[0].details)
    }

    @Test
    fun `recordProtocolError creates correct event`() {
        ErrorTracker.recordProtocolError("Protocol", "Invalid magic", "Expected 0x434C")
        val recent = ErrorTracker.getRecentErrors()
        assertEquals(ErrorTracker.ErrorType.PROTOCOL_ERROR, recent[0].type)
        assertEquals("Invalid magic", recent[0].message)
        assertEquals("Expected 0x434C", recent[0].details)
    }

    @Test
    fun `recordProtocolError without details`() {
        ErrorTracker.recordProtocolError("Protocol", "Bad header")
        val recent = ErrorTracker.getRecentErrors()
        assertEquals("", recent[0].details)
    }
}
