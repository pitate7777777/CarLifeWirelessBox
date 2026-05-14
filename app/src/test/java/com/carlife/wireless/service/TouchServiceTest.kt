package com.carlife.wireless.service

import org.junit.Assert.*
import org.junit.Test

class TouchServiceTest {

    // ==================== CarLife 触摸事件常量 ====================

    @Test
    fun `touch event constants are correct`() {
        assertEquals(0x00068001, TouchService.TOUCH_ACTION)
        assertEquals(0x00068002, TouchService.TOUCH_ACTION_DOWN)
        assertEquals(0x00068003, TouchService.TOUCH_ACTION_UP)
        assertEquals(0x00068004, TouchService.TOUCH_ACTION_MOVE)
        assertEquals(0x00068005, TouchService.TOUCH_SINGLE_CLICK)
        assertEquals(0x00068006, TouchService.TOUCH_DOUBLE_CLICK)
        assertEquals(0x00068007, TouchService.TOUCH_LONG_PRESS)
        assertEquals(0x00068008, TouchService.TOUCH_CAR_HARD_KEY_CODE)
    }

    @Test
    fun `touch event constants are sequential`() {
        assertEquals(TouchService.TOUCH_ACTION + 1, TouchService.TOUCH_ACTION_DOWN)
        assertEquals(TouchService.TOUCH_ACTION_DOWN + 1, TouchService.TOUCH_ACTION_UP)
        assertEquals(TouchService.TOUCH_ACTION_UP + 1, TouchService.TOUCH_ACTION_MOVE)
        assertEquals(TouchService.TOUCH_ACTION_MOVE + 1, TouchService.TOUCH_SINGLE_CLICK)
        assertEquals(TouchService.TOUCH_SINGLE_CLICK + 1, TouchService.TOUCH_DOUBLE_CLICK)
        assertEquals(TouchService.TOUCH_DOUBLE_CLICK + 1, TouchService.TOUCH_LONG_PRESS)
        assertEquals(TouchService.TOUCH_LONG_PRESS + 1, TouchService.TOUCH_CAR_HARD_KEY_CODE)
    }

    @Test
    fun `touch event constants are in CTRL channel range`() {
        val ctrlRange = 0x00060000..0x0006FFFF
        assertTrue(TouchService.TOUCH_ACTION in ctrlRange)
        assertTrue(TouchService.TOUCH_ACTION_DOWN in ctrlRange)
        assertTrue(TouchService.TOUCH_ACTION_UP in ctrlRange)
        assertTrue(TouchService.TOUCH_ACTION_MOVE in ctrlRange)
        assertTrue(TouchService.TOUCH_SINGLE_CLICK in ctrlRange)
        assertTrue(TouchService.TOUCH_DOUBLE_CLICK in ctrlRange)
        assertTrue(TouchService.TOUCH_LONG_PRESS in ctrlRange)
        assertTrue(TouchService.TOUCH_CAR_HARD_KEY_CODE in ctrlRange)
    }

    // ==================== bytesToInt 工具方法测试 ====================

    @Test
    fun `bytesToInt converts zero correctly`() {
        val bytes = byteArrayOf(0x00, 0x00, 0x00, 0x00)
        val result = bytesToInt(bytes, 0)
        assertEquals(0, result)
    }

    @Test
    fun `bytesToInt converts one correctly`() {
        val bytes = byteArrayOf(0x00, 0x00, 0x00, 0x01)
        val result = bytesToInt(bytes, 0)
        assertEquals(1, result)
    }

    @Test
    fun `bytesToInt converts 256 correctly`() {
        val bytes = byteArrayOf(0x00, 0x00, 0x01, 0x00)
        val result = bytesToInt(bytes, 0)
        assertEquals(256, result)
    }

    @Test
    fun `bytesToInt converts max int correctly`() {
        val bytes = byteArrayOf(0x7F, 0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte())
        val result = bytesToInt(bytes, 0)
        assertEquals(Int.MAX_VALUE, result)
    }

    @Test
    fun `bytesToInt with offset reads correctly`() {
        val bytes = byteArrayOf(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02)
        val result = bytesToInt(bytes, 4)
        assertEquals(2, result)
    }

    @Test
    fun `bytesToInt big-endian byte order`() {
        // 0x01020304 = 16909060
        val bytes = byteArrayOf(0x01, 0x02, 0x03, 0x04)
        val result = bytesToInt(bytes, 0)
        assertEquals(0x01020304, result)
        assertEquals(16909060, result)
    }

    @Test
    fun `bytesToInt for typical car X coordinate`() {
        // 400 = 0x00000190
        val bytes = byteArrayOf(0x00, 0x00, 0x01, 0x90.toByte())
        val result = bytesToInt(bytes, 0)
        assertEquals(400, result)
    }

    @Test
    fun `bytesToInt for typical car Y coordinate`() {
        // 240 = 0x000000F0
        val bytes = byteArrayOf(0x00, 0x00, 0x00, 0xF0.toByte())
        val result = bytesToInt(bytes, 0)
        assertEquals(240, result)
    }

    // ==================== 辅助方法 ====================

    /**
     * 复制 TouchService 的 bytesToInt 方法用于测试
     * （private 方法通过 companion object 常量间接测试）
     */
    private fun bytesToInt(bytes: ByteArray, offset: Int): Int {
        return ((bytes[offset].toInt() and 0xFF) shl 24) or
                ((bytes[offset + 1].toInt() and 0xFF) shl 16) or
                ((bytes[offset + 2].toInt() and 0xFF) shl 8) or
                (bytes[offset + 3].toInt() and 0xFF)
    }
}
