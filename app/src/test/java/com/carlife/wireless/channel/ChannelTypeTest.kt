package com.carlife.wireless.channel

import com.carlife.wireless.util.Constants
import org.junit.Assert.*
import org.junit.Test

class ChannelTypeTest {

    // ==================== ChannelType enum ====================

    @Test
    fun `has exactly 6 channel types`() {
        assertEquals(6, ChannelType.entries.size)
    }

    // ==================== HU port mapping ====================

    @Test
    fun `HU_CMD has correct HU port`() {
        assertEquals(Constants.Port.HU_CMD, ChannelType.HU_CMD.huPort)
    }

    @Test
    fun `HU_VIDEO has correct HU port`() {
        assertEquals(Constants.Port.HU_VIDEO, ChannelType.HU_VIDEO.huPort)
    }

    @Test
    fun `HU_MEDIA has correct HU port`() {
        assertEquals(Constants.Port.HU_MEDIA, ChannelType.HU_MEDIA.huPort)
    }

    @Test
    fun `HU_TTS has correct HU port`() {
        assertEquals(Constants.Port.HU_TTS, ChannelType.HU_TTS.huPort)
    }

    @Test
    fun `HU_VR has correct HU port`() {
        assertEquals(Constants.Port.HU_VR, ChannelType.HU_VR.huPort)
    }

    @Test
    fun `HU_CTRL has correct HU port`() {
        assertEquals(Constants.Port.HU_CTRL, ChannelType.HU_CTRL.huPort)
    }

    // ==================== MD port mapping ====================

    @Test
    fun `HU_CMD has correct MD port`() {
        assertEquals(Constants.PortMD.MD_CMD, ChannelType.HU_CMD.mdPort)
    }

    @Test
    fun `HU_VIDEO has correct MD port`() {
        assertEquals(Constants.PortMD.MD_VIDEO, ChannelType.HU_VIDEO.mdPort)
    }

    @Test
    fun `HU_MEDIA has correct MD port`() {
        assertEquals(Constants.PortMD.MD_MEDIA, ChannelType.HU_MEDIA.mdPort)
    }

    @Test
    fun `HU_TTS has correct MD port`() {
        assertEquals(Constants.PortMD.MD_TTS, ChannelType.HU_TTS.mdPort)
    }

    @Test
    fun `HU_VR has correct MD port`() {
        assertEquals(Constants.PortMD.MD_VR, ChannelType.HU_VR.mdPort)
    }

    @Test
    fun `HU_CTRL has correct MD port`() {
        assertEquals(Constants.PortMD.MD_CTRL, ChannelType.HU_CTRL.mdPort)
    }

    // ==================== getPort ====================

    @Test
    fun `getPort HU returns huPort`() {
        assertEquals(7240, ChannelType.HU_CMD.getPort(DeviceRole.HU))
        assertEquals(8240, ChannelType.HU_VIDEO.getPort(DeviceRole.HU))
        assertEquals(9240, ChannelType.HU_MEDIA.getPort(DeviceRole.HU))
    }

    @Test
    fun `getPort MOBILE returns mdPort`() {
        assertEquals(7200, ChannelType.HU_CMD.getPort(DeviceRole.MOBILE))
        assertEquals(8200, ChannelType.HU_VIDEO.getPort(DeviceRole.MOBILE))
        assertEquals(9200, ChannelType.HU_MEDIA.getPort(DeviceRole.MOBILE))
    }

    // ==================== isMediaChannel ====================

    @Test
    fun `HU_CMD is not media channel`() {
        assertFalse(ChannelType.HU_CMD.isMediaChannel())
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

    @Test
    fun `HU_CTRL is not media channel`() {
        assertFalse(ChannelType.HU_CTRL.isMediaChannel())
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
    fun `getByPort MD VIDEO port returns HU_VIDEO`() {
        assertEquals(ChannelType.HU_VIDEO, ChannelType.getByPort(8200))
    }

    @Test
    fun `getByPort HU MEDIA port returns HU_MEDIA`() {
        assertEquals(ChannelType.HU_MEDIA, ChannelType.getByPort(9240))
    }

    @Test
    fun `getByPort unknown port returns null`() {
        assertNull(ChannelType.getByPort(1234))
    }

    @Test
    fun `getByPort zero returns null`() {
        assertNull(ChannelType.getByPort(0))
    }

    @Test
    fun `getByPort all HU ports`() {
        assertEquals(ChannelType.HU_CMD, ChannelType.getByPort(Constants.Port.HU_CMD))
        assertEquals(ChannelType.HU_VIDEO, ChannelType.getByPort(Constants.Port.HU_VIDEO))
        assertEquals(ChannelType.HU_MEDIA, ChannelType.getByPort(Constants.Port.HU_MEDIA))
        assertEquals(ChannelType.HU_TTS, ChannelType.getByPort(Constants.Port.HU_TTS))
        assertEquals(ChannelType.HU_VR, ChannelType.getByPort(Constants.Port.HU_VR))
        assertEquals(ChannelType.HU_CTRL, ChannelType.getByPort(Constants.Port.HU_CTRL))
    }

    @Test
    fun `getByPort all MD ports`() {
        assertEquals(ChannelType.HU_CMD, ChannelType.getByPort(Constants.PortMD.MD_CMD))
        assertEquals(ChannelType.HU_VIDEO, ChannelType.getByPort(Constants.PortMD.MD_VIDEO))
        assertEquals(ChannelType.HU_MEDIA, ChannelType.getByPort(Constants.PortMD.MD_MEDIA))
        assertEquals(ChannelType.HU_TTS, ChannelType.getByPort(Constants.PortMD.MD_TTS))
        assertEquals(ChannelType.HU_VR, ChannelType.getByPort(Constants.PortMD.MD_VR))
        assertEquals(ChannelType.HU_CTRL, ChannelType.getByPort(Constants.PortMD.MD_CTRL))
    }

    // ==================== DeviceRole ====================

    @Test
    fun `DeviceRole has exactly 2 values`() {
        assertEquals(2, DeviceRole.entries.size)
    }

    @Test
    fun `DeviceRole HU exists`() {
        assertNotNull(DeviceRole.HU)
    }

    @Test
    fun `DeviceRole MOBILE exists`() {
        assertNotNull(DeviceRole.MOBILE)
    }

    // ==================== Port offset pattern ====================

    @Test
    fun `HU ports are exactly 40 more than MD ports`() {
        ChannelType.entries.forEach { type ->
            assertEquals("${type.name}: huPort should be mdPort + 40", type.mdPort + 40, type.huPort)
        }
    }
}
