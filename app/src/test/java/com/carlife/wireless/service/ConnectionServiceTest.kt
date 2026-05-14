package com.carlife.wireless.service

import org.junit.Assert.*
import org.junit.Test

class ConnectionServiceTest {

    // ==================== Broadcast Actions ====================

    @Test
    fun `ACTION_STATE_CHANGED is correct`() {
        assertEquals("com.carlife.wireless.STATE_CHANGED", ConnectionService.ACTION_STATE_CHANGED)
    }

    @Test
    fun `EXTRA_STATE is correct`() {
        assertEquals("state", ConnectionService.EXTRA_STATE)
    }

    @Test
    fun `EXTRA_CONNECTED_CHANNELS is correct`() {
        assertEquals("connected_channels", ConnectionService.EXTRA_CONNECTED_CHANNELS)
    }

    @Test
    fun `EXTRA_LOCAL_IP is correct`() {
        assertEquals("local_ip", ConnectionService.EXTRA_LOCAL_IP)
    }

    @Test
    fun `EXTRA_CONNECTION_DURATION is correct`() {
        assertEquals("connection_duration", ConnectionService.EXTRA_CONNECTION_DURATION)
    }

    // ==================== Notification Constants ====================

    @Test
    fun `NOTIFICATION_ID is positive`() {
        // 通过反射读取 private 常量
        val field = ConnectionService::class.java.getDeclaredField("NOTIFICATION_ID")
        field.isAccessible = true
        val value = field.getInt(null)
        assertTrue("NOTIFICATION_ID should be positive", value > 0)
    }

    @Test
    fun `CHANNEL_ID is not empty`() {
        val field = ConnectionService::class.java.getDeclaredField("CHANNEL_ID")
        field.isAccessible = true
        val value = field.get(null) as String
        assertFalse("CHANNEL_ID should not be empty", value.isEmpty())
    }
}
