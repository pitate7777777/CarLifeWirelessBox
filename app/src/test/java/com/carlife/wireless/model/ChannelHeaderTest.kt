package com.carlife.wireless.model

import org.junit.Assert.*
import org.junit.Test

class ChannelHeaderTest {

    // ==================== Constants ====================

    @Test
    fun `magic value is 0x434C`() {
        assertEquals(0x434C.toShort(), ChannelHeader.MAGIC)
    }

    @Test
    fun `CMD header size is 8`() {
        assertEquals(8, ChannelHeader.CMD_HEADER_SIZE)
    }

    @Test
    fun `Media header size is 11`() {
        assertEquals(11, ChannelHeader.MEDIA_HEADER_SIZE)
    }

    // ==================== ChannelHeader.Cmd ====================

    @Test
    fun `Cmd toBytes produces correct magic bytes`() {
        val header = ChannelHeader.Cmd(payloadType = 1, payloadLength = 100)
        val bytes = header.toBytes()
        assertEquals(8, bytes.size)
        assertEquals(0x43.toByte(), bytes[0])
        assertEquals(0x4C.toByte(), bytes[1])
    }

    @Test
    fun `Cmd toBytes produces correct payload type`() {
        val header = ChannelHeader.Cmd(payloadType = 0x42, payloadLength = 0)
        val bytes = header.toBytes()
        assertEquals(0x42.toByte(), bytes[2])
    }

    @Test
    fun `Cmd toBytes produces correct payload length`() {
        val header = ChannelHeader.Cmd(payloadType = 0, payloadLength = 1024)
        val bytes = header.toBytes()
        // 1024 = 0x00000400
        assertEquals(0x00.toByte(), bytes[3])
        assertEquals(0x00.toByte(), bytes[4])
        assertEquals(0x04.toByte(), bytes[5])
        assertEquals(0x00.toByte(), bytes[6])
    }

    @Test
    fun `Cmd toBytes produces correct crc`() {
        val header = ChannelHeader.Cmd(payloadType = 0, payloadLength = 0, crc = 0xAB.toByte())
        val bytes = header.toBytes()
        assertEquals(0xAB.toByte(), bytes[7])
    }

    @Test
    fun `Cmd fromBytes parses correctly`() {
        val header = ChannelHeader.Cmd(payloadType = 5, payloadLength = 200, crc = 0x10)
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(5, parsed.payloadType)
        assertEquals(200, parsed.payloadLength)
        assertEquals(0x10.toByte(), parsed.crc)
    }

    @Test
    fun `Cmd fromBytes with zero values`() {
        val header = ChannelHeader.Cmd(payloadType = 0, payloadLength = 0, crc = 0)
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(0, parsed.payloadType)
        assertEquals(0, parsed.payloadLength)
        assertEquals(0.toByte(), parsed.crc)
    }

    @Test
    fun `Cmd fromBytes with max payload type`() {
        val header = ChannelHeader.Cmd(payloadType = 255, payloadLength = 0)
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(255, parsed.payloadType)
    }

    @Test
    fun `Cmd fromBytes with large payload length`() {
        val header = ChannelHeader.Cmd(payloadType = 0, payloadLength = 200_000)
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(200_000, parsed.payloadLength)
    }

    @Test(expected = IllegalArgumentException::class)
    fun `Cmd fromBytes throws on too small input`() {
        ChannelHeader.Cmd.fromBytes(byteArrayOf(0x43, 0x4C, 0x01))
    }

    @Test
    fun `Cmd calcCrc of empty payload is zero`() {
        assertEquals(0.toByte(), ChannelHeader.Cmd.calcCrc(byteArrayOf()))
    }

    @Test
    fun `Cmd calcCrc of single byte`() {
        assertEquals(0x42.toByte(), ChannelHeader.Cmd.calcCrc(byteArrayOf(0x42)))
    }

    @Test
    fun `Cmd calcCrc wraps at 255`() {
        // 256 mod 256 = 0
        assertEquals(0.toByte(), ChannelHeader.Cmd.calcCrc(byteArrayOf(0xFF.toByte(), 0x01)))
    }

    @Test
    fun `Cmd calcCrc of multiple bytes`() {
        val payload = byteArrayOf(0x01, 0x02, 0x03)
        // sum = 6
        assertEquals(6.toByte(), ChannelHeader.Cmd.calcCrc(payload))
    }

    @Test
    fun `Cmd withCrc computes correct crc`() {
        val payload = byteArrayOf(0x10, 0x20, 0x30)
        val header = ChannelHeader.Cmd(payloadType = 1, payloadLength = 3)
        val withCrc = header.withCrc(payload)
        assertEquals(ChannelHeader.Cmd.calcCrc(payload), withCrc.crc)
    }

    @Test
    fun `Cmd roundtrip serialization`() {
        val original = ChannelHeader.Cmd(payloadType = 42, payloadLength = 9999, crc = 0x77)
        val bytes = original.toBytes()
        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(original, parsed)
    }

    @Test
    fun `Cmd data class equality`() {
        val a = ChannelHeader.Cmd(1, 100, 0x10)
        val b = ChannelHeader.Cmd(1, 100, 0x10)
        assertEquals(a, b)
        assertEquals(a.hashCode(), b.hashCode())
    }

    @Test
    fun `Cmd data class copy`() {
        val original = ChannelHeader.Cmd(1, 100, 0x10)
        val copy = original.copy(payloadLength = 200)
        assertEquals(1, copy.payloadType)
        assertEquals(200, copy.payloadLength)
        assertEquals(0x10.toByte(), copy.crc)
    }

    // ==================== ChannelHeader.Media ====================

    @Test
    fun `Media toBytes produces correct magic bytes`() {
        val header = ChannelHeader.Media(payloadType = 1, timestamp = 0, payloadLength = 100)
        val bytes = header.toBytes()
        assertEquals(11, bytes.size)
        assertEquals(0x43.toByte(), bytes[0])
        assertEquals(0x4C.toByte(), bytes[1])
    }

    @Test
    fun `Media toBytes produces correct payload type`() {
        val header = ChannelHeader.Media(payloadType = 3, timestamp = 0, payloadLength = 0)
        val bytes = header.toBytes()
        assertEquals(3.toByte(), bytes[2])
    }

    @Test
    fun `Media toBytes produces correct timestamp`() {
        val header = ChannelHeader.Media(payloadType = 0, timestamp = 1000, payloadLength = 0)
        val bytes = header.toBytes()
        // 1000 = 0x000003E8
        assertEquals(0x00.toByte(), bytes[3])
        assertEquals(0x00.toByte(), bytes[4])
        assertEquals(0x03.toByte(), bytes[5])
        assertEquals(0xE8.toByte(), bytes[6])
    }

    @Test
    fun `Media toBytes produces correct payload length`() {
        val header = ChannelHeader.Media(payloadType = 0, timestamp = 0, payloadLength = 65536)
        val bytes = header.toBytes()
        // 65536 = 0x00010000
        assertEquals(0x00.toByte(), bytes[7])
        assertEquals(0x01.toByte(), bytes[8])
        assertEquals(0x00.toByte(), bytes[9])
        assertEquals(0x00.toByte(), bytes[10])
    }

    @Test
    fun `Media fromBytes parses correctly`() {
        val header = ChannelHeader.Media(payloadType = 2, timestamp = 5000, payloadLength = 8192)
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Media.fromBytes(bytes)
        assertEquals(2, parsed.payloadType)
        assertEquals(5000, parsed.timestamp)
        assertEquals(8192, parsed.payloadLength)
    }

    @Test
    fun `Media fromBytes with zero values`() {
        val header = ChannelHeader.Media(payloadType = 0, timestamp = 0, payloadLength = 0)
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Media.fromBytes(bytes)
        assertEquals(0, parsed.payloadType)
        assertEquals(0, parsed.timestamp)
        assertEquals(0, parsed.payloadLength)
    }

    @Test(expected = IllegalArgumentException::class)
    fun `Media fromBytes throws on too small input`() {
        ChannelHeader.Media.fromBytes(byteArrayOf(0x43, 0x4C, 0x01, 0x00))
    }

    @Test
    fun `Media roundtrip serialization`() {
        val original = ChannelHeader.Media(payloadType = 7, timestamp = 123456789, payloadLength = 100000)
        val bytes = original.toBytes()
        val parsed = ChannelHeader.Media.fromBytes(bytes)
        assertEquals(original, parsed)
    }

    @Test
    fun `Media data class equality`() {
        val a = ChannelHeader.Media(1, 100, 200)
        val b = ChannelHeader.Media(1, 100, 200)
        assertEquals(a, b)
        assertEquals(a.hashCode(), b.hashCode())
    }

    // ==================== Sealed class behavior ====================

    @Test
    fun `Cmd is instance of ChannelHeader`() {
        val header: ChannelHeader = ChannelHeader.Cmd(1, 100)
        assertTrue(header is ChannelHeader)
    }

    @Test
    fun `Media is instance of ChannelHeader`() {
        val header: ChannelHeader = ChannelHeader.Media(1, 0, 100)
        assertTrue(header is ChannelHeader)
    }

    @Test
    fun `when expression works with sealed class`() {
        val cmd: ChannelHeader = ChannelHeader.Cmd(1, 100)
        val result = when (cmd) {
            is ChannelHeader.Cmd -> "cmd"
            is ChannelHeader.Media -> "media"
        }
        assertEquals("cmd", result)
    }
}
