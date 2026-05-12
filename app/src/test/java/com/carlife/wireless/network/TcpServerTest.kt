package com.carlife.wireless.network

import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.channel.DeviceRole
import com.carlife.wireless.util.Constants
import org.junit.Assert.*
import org.junit.Test

class TcpServerTest {

    // ==================== 构造参数验证 ====================

    @Test
    fun `HU_CMD channel type has correct ports`() {
        val channelType = ChannelType.HU_CMD
        assertEquals(7240, channelType.huPort)
        assertEquals(7200, channelType.mdPort)
    }

    @Test
    fun `DeviceRole HU exists`() {
        val role = DeviceRole.HU
        assertNotNull(role)
    }

    // ==================== ChannelType 端口与 Constants 一致 ====================

    @Test
    fun `channel type HU_CMD port matches Constants`() {
        assertEquals(Constants.Port.HU_CMD, ChannelType.HU_CMD.huPort)
    }

    @Test
    fun `channel type HU_VIDEO port matches Constants`() {
        assertEquals(Constants.Port.HU_VIDEO, ChannelType.HU_VIDEO.huPort)
    }

    @Test
    fun `channel type HU_MEDIA port matches Constants`() {
        assertEquals(Constants.Port.HU_MEDIA, ChannelType.HU_MEDIA.huPort)
    }

    @Test
    fun `channel type HU_TTS port matches Constants`() {
        assertEquals(Constants.Port.HU_TTS, ChannelType.HU_TTS.huPort)
    }

    @Test
    fun `channel type HU_VR port matches Constants`() {
        assertEquals(Constants.Port.HU_VR, ChannelType.HU_VR.huPort)
    }

    @Test
    fun `channel type HU_CTRL port matches Constants`() {
        assertEquals(Constants.Port.HU_CTRL, ChannelType.HU_CTRL.huPort)
    }

    // ==================== getByPort ====================

    @Test
    fun `getByPort HU CMD port returns HU_CMD`() {
        assertEquals(ChannelType.HU_CMD, ChannelType.getByPort(7240))
    }

    @Test
    fun `getByPort MD CMD port returns HU_CMD`() {
        assertEquals(ChannelType.HU_CMD, ChannelType.getByPort(7200))
    }

    @Test
    fun `getByPort HU VIDEO port returns HU_VIDEO`() {
        assertEquals(ChannelType.HU_VIDEO, ChannelType.getByPort(8240))
    }

    @Test
    fun `getByPort unknown port returns null`() {
        assertNull(ChannelType.getByPort(9999))
    }

    @Test
    fun `getByPort zero returns null`() {
        assertNull(ChannelType.getByPort(0))
    }

    // ==================== isMediaChannel 分类 ====================

    @Test
    fun `HU_CMD is not media channel`() {
        assertFalse(ChannelType.HU_CMD.isMediaChannel())
    }

    @Test
    fun `HU_CTRL is not media channel`() {
        assertFalse(ChannelType.HU_CTRL.isMediaChannel())
    }

    @Test
    fun `HU_VIDEO is media channel`() {
        assertTrue(ChannelType.HU_VIDEO.isMediaChannel())
    }

    @Test
    fun `HU_MEDIA is media channel`() {
        assertTrue(ChannelType.HU_MEDIA.isMediaChannel())
    }

    @Test
    fun `HU_TTS is media channel`() {
        assertTrue(ChannelType.HU_TTS.isMediaChannel())
    }

    @Test
    fun `HU_VR is media channel`() {
        assertTrue(ChannelType.HU_VR.isMediaChannel())
    }

    // ==================== 端口范围合理性 ====================

    @Test
    fun `all HU ports are in valid range`() {
        ChannelType.entries.forEach { type ->
            assertTrue("${type.name} huPort should be > 0", type.huPort > 0)
            assertTrue("${type.name} huPort should be < 65536", type.huPort < 65536)
        }
    }

    @Test
    fun `all MD ports are in valid range`() {
        ChannelType.entries.forEach { type ->
            assertTrue("${type.name} mdPort should be > 0", type.mdPort > 0)
            assertTrue("${type.name} mdPort should be < 65536", type.mdPort < 65536)
        }
    }

    @Test
    fun `HU ports are exactly 40 more than MD ports`() {
        ChannelType.entries.forEach { type ->
            assertEquals(
                "${type.name}: HU port should be MD port + 40",
                type.mdPort + 40, type.huPort
            )
        }
    }
}
