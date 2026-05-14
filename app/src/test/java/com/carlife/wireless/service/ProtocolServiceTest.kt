package com.carlife.wireless.service

import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE)
class ProtocolServiceTest {

    // ==================== parseProtobuf ====================

    @Test
    fun `parseProtobuf returns true for valid data`() {
        // ProtocolService.parseProtobuf 当前是直通实现（由 MdRole/HuRole 直接处理）
        // 这里测试方法不崩溃
        val service = ProtocolService()
        val result = service.parseProtobuf(byteArrayOf(0x01, 0x02, 0x03))
        assertTrue(result)
    }

    @Test
    fun `parseProtobuf returns true for empty data`() {
        val service = ProtocolService()
        val result = service.parseProtobuf(byteArrayOf())
        assertTrue(result)
    }

    @Test
    fun `parseProtobuf returns true for large data`() {
        val service = ProtocolService()
        val largeData = ByteArray(1024 * 64) { it.toByte() }
        val result = service.parseProtobuf(largeData)
        assertTrue(result)
    }

    // ==================== sendHeartbeat ====================

    @Test
    fun `sendHeartbeat returns true`() {
        val service = ProtocolService()
        val result = service.sendHeartbeat()
        assertTrue(result)
    }

    // ==================== dispatchMessage ====================

    @Test
    fun `dispatchMessage does not throw`() {
        val service = ProtocolService()
        try {
            service.dispatchMessage(0x00018001, byteArrayOf(0x01))
        } catch (e: Exception) {
            fail("dispatchMessage should not throw: ${e.message}")
        }
    }

    // ==================== startHeartbeat / stopHeartbeat ====================

    @Test
    fun `startHeartbeat does not throw`() {
        val service = ProtocolService()
        try {
            service.startHeartbeat()
        } catch (e: Exception) {
            fail("startHeartbeat should not throw: ${e.message}")
        }
    }

    @Test
    fun `stopHeartbeat does not throw`() {
        val service = ProtocolService()
        try {
            service.stopHeartbeat()
        } catch (e: Exception) {
            fail("stopHeartbeat should not throw: ${e.message}")
        }
    }
}
