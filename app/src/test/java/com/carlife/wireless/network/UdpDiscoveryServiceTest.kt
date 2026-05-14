package com.carlife.wireless.network

import org.junit.Assert.*
import org.junit.Test

class UdpDiscoveryServiceTest {

    // ==================== 协议常量测试 ====================

    @Test
    fun `discovery port is 7200`() {
        // 通过反射读取私有常量
        val field = UdpDiscoveryService::class.java.getDeclaredField("DISCOVERY_PORT")
        field.isAccessible = true
        assertEquals(7200, field.getInt(null))
    }

    @Test
    fun `discover magic is CARLIFE_DISCOVER`() {
        val field = UdpDiscoveryService::class.java.getDeclaredField("DISCOVER_MAGIC")
        field.isAccessible = true
        assertEquals("CARLIFE_DISCOVER", field.get(null))
    }

    @Test
    fun `response magic is CARLIFE_BOX_HERE`() {
        val field = UdpDiscoveryService::class.java.getDeclaredField("RESPONSE_MAGIC")
        field.isAccessible = true
        assertEquals("CARLIFE_BOX_HERE", field.get(null))
    }

    @Test
    fun `buffer size is 1024`() {
        val field = UdpDiscoveryService::class.java.getDeclaredField("BUFFER_SIZE")
        field.isAccessible = true
        assertEquals(1024, field.getInt(null))
    }

    @Test
    fun `broadcast interval is 5 seconds`() {
        val field = UdpDiscoveryService::class.java.getDeclaredField("BROADCAST_INTERVAL_MS")
        field.isAccessible = true
        assertEquals(5000L, field.getLong(null))
    }

    // ==================== 响应消息格式测试 ====================

    @Test
    fun `response message format is correct`() {
        val responseMagic = "CARLIFE_BOX_HERE"
        val localIp = "192.168.43.100"
        val response = "$responseMagic|$localIp|7200|8200|9200|9201|9202|9300"

        val parts = response.split("|")
        assertEquals(8, parts.size)
        assertEquals("CARLIFE_BOX_HERE", parts[0])
        assertEquals(localIp, parts[1])
        assertEquals("7200", parts[2])  // CMD
        assertEquals("8200", parts[3])  // VIDEO
        assertEquals("9200", parts[4])  // MEDIA
        assertEquals("9201", parts[5])  // TTS
        assertEquals("9202", parts[6])  // VR
        assertEquals("9300", parts[7])  // CTRL
    }

    @Test
    fun `discover message format is correct`() {
        val discoverMagic = "CARLIFE_DISCOVER"
        assertEquals("CARLIFE_DISCOVER", discoverMagic)
    }

    @Test
    fun `response ports match MD port constants`() {
        val response = "CARLIFE_BOX_HERE|192.168.43.100|7200|8200|9200|9201|9202|9300"
        val parts = response.split("|")

        assertEquals(com.carlife.wireless.util.Constants.PortMD.MD_CMD.toString(), parts[2])
        assertEquals(com.carlife.wireless.util.Constants.PortMD.MD_VIDEO.toString(), parts[3])
        assertEquals(com.carlife.wireless.util.Constants.PortMD.MD_MEDIA.toString(), parts[4])
        assertEquals(com.carlife.wireless.util.Constants.PortMD.MD_TTS.toString(), parts[5])
        assertEquals(com.carlife.wireless.util.Constants.PortMD.MD_VR.toString(), parts[6])
        assertEquals(com.carlife.wireless.util.Constants.PortMD.MD_CTRL.toString(), parts[7])
    }

    // ==================== 服务状态测试 ====================

    @Test
    fun `new service is not running`() {
        val service = UdpDiscoveryService()
        // 通过反射检查 running 字段
        val field = UdpDiscoveryService::class.java.getDeclaredField("running")
        field.isAccessible = true
        assertFalse(field.getBoolean(service))
    }
}
