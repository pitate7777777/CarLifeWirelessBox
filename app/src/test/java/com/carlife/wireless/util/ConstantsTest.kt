package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Test

class ConstantsTest {

    // ==================== Protocol version ====================

    @Test
    fun `protocol major version is 1`() {
        assertEquals(1, Constants.PROTOCOL_MAJOR_VERSION)
    }

    @Test
    fun `protocol minor version is 0`() {
        assertEquals(0, Constants.PROTOCOL_MINOR_VERSION)
    }

    // ==================== Protocol magic ====================

    @Test
    fun `protocol magic is 0x434C`() {
        assertEquals(0x434C.toShort(), Constants.PROTOCOL_MAGIC)
    }

    @Test
    fun `protocol magic matches CL in ASCII`() {
        val magic = Constants.PROTOCOL_MAGIC.toInt() and 0xFFFF
        assertEquals('C'.code.toByte().toInt(), (magic shr 8) and 0xFF)
        assertEquals('L'.code.toByte().toInt(), magic and 0xFF)
    }

    // ==================== HU Ports ====================

    @Test
    fun `HU CMD port is 7240`() {
        assertEquals(7240, Constants.Port.HU_CMD)
    }

    @Test
    fun `HU VIDEO port is 8240`() {
        assertEquals(8240, Constants.Port.HU_VIDEO)
    }

    @Test
    fun `HU MEDIA port is 9240`() {
        assertEquals(9240, Constants.Port.HU_MEDIA)
    }

    @Test
    fun `HU TTS port is 9241`() {
        assertEquals(9241, Constants.Port.HU_TTS)
    }

    @Test
    fun `HU VR port is 9242`() {
        assertEquals(9242, Constants.Port.HU_VR)
    }

    @Test
    fun `HU CTRL port is 9340`() {
        assertEquals(9340, Constants.Port.HU_CTRL)
    }

    // ==================== MD Ports ====================

    @Test
    fun `MD CMD port is 7200`() {
        assertEquals(7200, Constants.PortMD.MD_CMD)
    }

    @Test
    fun `MD VIDEO port is 8200`() {
        assertEquals(8200, Constants.PortMD.MD_VIDEO)
    }

    @Test
    fun `MD MEDIA port is 9200`() {
        assertEquals(9200, Constants.PortMD.MD_MEDIA)
    }

    @Test
    fun `MD TTS port is 9201`() {
        assertEquals(9201, Constants.PortMD.MD_TTS)
    }

    @Test
    fun `MD VR port is 9202`() {
        assertEquals(9202, Constants.PortMD.MD_VR)
    }

    @Test
    fun `MD CTRL port is 9300`() {
        assertEquals(9300, Constants.PortMD.MD_CTRL)
    }

    // ==================== Port offset pattern ====================

    @Test
    fun `HU ports are exactly 40 more than MD ports`() {
        assertEquals(Constants.PortMD.MD_CMD + 40, Constants.Port.HU_CMD)
        assertEquals(Constants.PortMD.MD_VIDEO + 40, Constants.Port.HU_VIDEO)
        assertEquals(Constants.PortMD.MD_MEDIA + 40, Constants.Port.HU_MEDIA)
        assertEquals(Constants.PortMD.MD_TTS + 40, Constants.Port.HU_TTS)
        assertEquals(Constants.PortMD.MD_VR + 40, Constants.Port.HU_VR)
        assertEquals(Constants.PortMD.MD_CTRL + 40, Constants.Port.HU_CTRL)
    }

    // ==================== IP Address ====================

    @Test
    fun `USB tethering local IP is 192_168_42_129`() {
        assertEquals("192.168.42.129", Constants.IpAddress.USB_TETHERING_LOCAL)
    }

    @Test
    fun `hotspot gateway IP is 192_168_43_1`() {
        assertEquals("192.168.43.1", Constants.IpAddress.HOTSPOT_GATEWAY)
    }

    // ==================== Video parameters ====================

    @Test
    fun `default video width is 800`() {
        assertEquals(800, Constants.Video.DEFAULT_WIDTH)
    }

    @Test
    fun `default video height is 480`() {
        assertEquals(480, Constants.Video.DEFAULT_HEIGHT)
    }

    @Test
    fun `default video fps is 30`() {
        assertEquals(30, Constants.Video.DEFAULT_FPS)
    }

    // ==================== Audio parameters ====================

    @Test
    fun `audio sample rate is 48000`() {
        assertEquals(48000, Constants.Audio.SAMPLE_RATE)
    }

    @Test
    fun `audio bit depth is 16`() {
        assertEquals(16, Constants.Audio.BIT_DEPTH)
    }

    @Test
    fun `audio channels is 2`() {
        assertEquals(2, Constants.Audio.CHANNELS)
    }

    // ==================== Heartbeat parameters ====================

    @Test
    fun `heartbeat interval is 3000ms`() {
        assertEquals(3000L, Constants.Heartbeat.INTERVAL_MS)
    }

    @Test
    fun `heartbeat timeout is 9000ms`() {
        assertEquals(9000L, Constants.Heartbeat.TIMEOUT_MS)
    }

    @Test
    fun `heartbeat timeout is 3x interval`() {
        assertEquals(
            Constants.Heartbeat.INTERVAL_MS * 3,
            Constants.Heartbeat.TIMEOUT_MS
        )
    }

    // ==================== Reconnect parameters ====================

    @Test
    fun `max retry is 5`() {
        assertEquals(5, Constants.Reconnect.MAX_RETRY)
    }

    @Test
    fun `reconnect delay is 2000ms`() {
        assertEquals(2000L, Constants.Reconnect.DELAY_MS)
    }

    // ==================== Header sizes ====================

    @Test
    fun `CMD channel header size is 8`() {
        assertEquals(8, Constants.HeaderSize.CMD_CHANNEL)
    }

    @Test
    fun `media channel header size is 11`() {
        assertEquals(11, Constants.HeaderSize.MEDIA_CHANNEL)
    }

    // ==================== Protocol channel types ====================

    @Test
    fun `protocol channel CMD is 1`() {
        assertEquals(1, Constants.Protocol.CHANNEL_CMD)
    }

    @Test
    fun `protocol channel VIDEO is 2`() {
        assertEquals(2, Constants.Protocol.CHANNEL_VIDEO)
    }

    @Test
    fun `protocol channel AUDIO is 3`() {
        assertEquals(3, Constants.Protocol.CHANNEL_AUDIO)
    }

    @Test
    fun `protocol channel TTS is 4`() {
        assertEquals(4, Constants.Protocol.CHANNEL_TTS)
    }

    @Test
    fun `protocol channel VR is 5`() {
        assertEquals(5, Constants.Protocol.CHANNEL_VR)
    }

    @Test
    fun `protocol channel CTRL is 6`() {
        assertEquals(6, Constants.Protocol.CHANNEL_CTRL)
    }

    @Test
    fun `protocol channel MAX is 7`() {
        assertEquals(7, Constants.Protocol.CHANNEL_MAX)
    }

    // ==================== Connection timeout ====================

    @Test
    fun `connection timeout is 5000ms`() {
        assertEquals(5000, Constants.CONNECTION_TIMEOUT_MS)
    }

    // ==================== Buffer sizes ====================

    @Test
    fun `read buffer size is 8192`() {
        assertEquals(8192, Constants.Buffer.READ_BUFFER_SIZE)
    }

    @Test
    fun `video frame max size is 200000`() {
        assertEquals(200_000, Constants.Buffer.VIDEO_FRAME_MAX_SIZE)
    }
}
