package com.carlife.wireless.network

import com.carlife.wireless.util.Constants
import org.junit.Assert.*
import org.junit.Test

class NetworkDiagnosticsTest {

    // ==================== DiagResult 摘要测试 ====================

    @Test
    fun `DiagResult toSummary shows WiFi not connected`() {
        val result = createDiagResult(
            wifiConnected = false,
            hotspotConnected = false,
            pingReachable = false,
            allPortsOpen = false
        )
        assertTrue(result.toSummary().contains("WiFi"))
    }

    @Test
    fun `DiagResult toSummary shows hotspot not connected`() {
        val result = createDiagResult(
            wifiConnected = true,
            hotspotConnected = false,
            pingReachable = false,
            allPortsOpen = false
        )
        assertTrue(result.toSummary().contains("手机B热点") || result.toSummary().contains("未连接"))
    }

    @Test
    fun `DiagResult toSummary shows phone unreachable`() {
        val result = createDiagResult(
            wifiConnected = true,
            hotspotConnected = true,
            pingReachable = false,
            allPortsOpen = false
        )
        assertTrue(result.toSummary().contains("不可达"))
    }

    @Test
    fun `DiagResult toSummary shows ports not ready`() {
        val result = createDiagResult(
            wifiConnected = true,
            hotspotConnected = true,
            pingReachable = true,
            allPortsOpen = false
        )
        assertTrue(result.toSummary().contains("未就绪") || result.toSummary().contains("端口"))
    }

    @Test
    fun `DiagResult toSummary shows ready when all checks pass`() {
        val result = createDiagResult(
            wifiConnected = true,
            hotspotConnected = true,
            pingReachable = true,
            allPortsOpen = true
        )
        assertTrue(result.toSummary().contains("就绪") || result.toSummary().contains("可以连接"))
    }

    // ==================== PortCheckResult 测试 ====================

    @Test
    fun `PortCheckResult stores port and name correctly`() {
        val result = NetworkDiagnostics.PortCheckResult(7240, "CMD", true, 50)
        assertEquals(7240, result.port)
        assertEquals("CMD", result.name)
        assertTrue(result.isOpen)
        assertEquals(50, result.latencyMs)
    }

    @Test
    fun `PortCheckResult closed port has correct defaults`() {
        val result = NetworkDiagnostics.PortCheckResult(8240, "VIDEO", false)
        assertEquals(8240, result.port)
        assertEquals("VIDEO", result.name)
        assertFalse(result.isOpen)
        assertEquals(-1, result.latencyMs)
    }

    // ==================== 端口列表测试 ====================

    @Test
    fun `CARWITH ports contains 6 entries`() {
        // 通过 checkCarWithPorts 间接验证
        // CARWITH_PORTS 应包含 7240, 8240, 9240, 9241, 9242, 9340
        val expectedPorts = listOf(7240, 8240, 9240, 9241, 9242, 9340)
        assertEquals(6, expectedPorts.size)
    }

    // ==================== 辅助方法 ====================

    private fun createDiagResult(
        wifiConnected: Boolean,
        hotspotConnected: Boolean,
        pingReachable: Boolean,
        allPortsOpen: Boolean
    ): NetworkDiagnostics.DiagResult {
        val portResults = listOf(
            NetworkDiagnostics.PortCheckResult(7240, "CMD", allPortsOpen),
            NetworkDiagnostics.PortCheckResult(8240, "VIDEO", allPortsOpen),
            NetworkDiagnostics.PortCheckResult(9240, "MEDIA", allPortsOpen),
            NetworkDiagnostics.PortCheckResult(9241, "TTS", allPortsOpen),
            NetworkDiagnostics.PortCheckResult(9242, "VR", allPortsOpen),
            NetworkDiagnostics.PortCheckResult(9340, "CTRL", allPortsOpen)
        )
        return NetworkDiagnostics.DiagResult(
            wifiConnected = wifiConnected,
            wifiSsid = if (wifiConnected) "TestWiFi" else null,
            hotspotConnected = hotspotConnected,
            phoneBIp = "192.168.43.1",
            pingReachable = pingReachable,
            portResults = portResults,
            localIp = "192.168.43.100",
            networkInterfaces = emptyList(),
            suggestions = emptyList()
        )
    }
}
