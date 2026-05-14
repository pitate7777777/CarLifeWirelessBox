package com.carlife.wireless.usb

import org.junit.Assert.*
import org.junit.Test

class UsbTetheringManagerTest {

    // ==================== USB 网络前缀常量 ====================

    @Test
    fun `USB network prefix is 192_168_42`() {
        assertEquals("192.168.42", UsbTetheringManager.USB_NETWORK_PREFIX)
    }

    @Test
    fun `USB local IP is 192_168_42_129`() {
        assertEquals("192.168.42.129", UsbTetheringManager.USB_LOCAL_IP)
    }

    // ==================== UsbState 枚举 ====================

    @Test
    fun `UsbState has all required states`() {
        val states = UsbTetheringManager.UsbState.entries
        assertTrue(states.contains(UsbTetheringManager.UsbState.DISCONNECTED))
        assertTrue(states.contains(UsbTetheringManager.UsbState.CONNECTED))
        assertTrue(states.contains(UsbTetheringManager.UsbState.TETHERING))
        assertTrue(states.contains(UsbTetheringManager.UsbState.CAR_CONNECTED))
    }

    @Test
    fun `UsbState has exactly 4 states`() {
        assertEquals(4, UsbTetheringManager.UsbState.entries.size)
    }

    // ==================== IP 地址格式验证 ====================

    @Test
    fun `USB local IP is valid IPv4 format`() {
        val ip = UsbTetheringManager.USB_LOCAL_IP
        val parts = ip.split(".")
        assertEquals(4, parts.size)
        parts.forEach { part ->
            val num = part.toInt()
            assertTrue("IP segment $num out of range", num in 0..255)
        }
    }

    @Test
    fun `USB network prefix matches local IP`() {
        val prefix = UsbTetheringManager.USB_NETWORK_PREFIX
        val localIp = UsbTetheringManager.USB_LOCAL_IP
        assertTrue(localIp.startsWith(prefix))
    }
}
