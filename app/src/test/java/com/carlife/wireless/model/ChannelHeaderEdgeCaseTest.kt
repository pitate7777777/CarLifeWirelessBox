package com.carlife.wireless.model

import org.junit.Assert.*
import org.junit.Test

class ChannelHeaderEdgeCaseTest {

    // ==================== Cmd 序列化往返 ====================

    @Test
    fun `Cmd header toBytes and fromBytes roundtrip`() {
        val original = ChannelHeader.Cmd(payloadType = 0x42, payloadLength = 1024, crc = 0x7F.toByte())
        val bytes = original.toBytes()
        assertEquals(ChannelHeader.CMD_HEADER_SIZE, bytes.size)

        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(original.payloadType, parsed.payloadType)
        assertEquals(original.payloadLength, parsed.payloadLength)
        assertEquals(original.crc, parsed.crc)
    }

    // ==================== Media 序列化往返 ====================

    @Test
    fun `Media header toBytes and fromBytes roundtrip`() {
        val original = ChannelHeader.Media(payloadType = 0x01, timestamp = 123456789, payloadLength = 65536)
        val bytes = original.toBytes()
        assertEquals(ChannelHeader.MEDIA_HEADER_SIZE, bytes.size)

        val parsed = ChannelHeader.Media.fromBytes(bytes)
        assertEquals(original.payloadType, parsed.payloadType)
        assertEquals(original.timestamp, parsed.timestamp)
        assertEquals(original.payloadLength, parsed.payloadLength)
    }

    // ==================== Magic 字节 ====================

    @Test
    fun `Cmd header magic bytes are 0x434C`() {
        val header = ChannelHeader.Cmd(0, 0)
        val bytes = header.toBytes()
        assertEquals(0x43.toByte(), bytes[0])
        assertEquals(0x4C.toByte(), bytes[1])
    }

    @Test
    fun `Media header magic bytes are 0x434C`() {
        val header = ChannelHeader.Media(0, 0, 0)
        val bytes = header.toBytes()
        assertEquals(0x43.toByte(), bytes[0])
        assertEquals(0x4C.toByte(), bytes[1])
    }

    // ==================== 零值载荷 ====================

    @Test
    fun `Cmd header zero payload`() {
        val header = ChannelHeader.Cmd(0x01, 0, 0)
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(0, parsed.payloadLength)
    }

    // ==================== 最大载荷长度 ====================

    @Test
    fun `Cmd header max payload length`() {
        val header = ChannelHeader.Cmd(0xFF, Int.MAX_VALUE, 0xFF.toByte())
        val bytes = header.toBytes()
        val parsed = ChannelHeader.Cmd.fromBytes(bytes)
        assertEquals(Int.MAX_VALUE, parsed.payloadLength)
    }

    // ==================== CRC 计算 ====================

    @Test
    fun `calcCrc returns correct value`() {
        val payload = byteArrayOf(0x01, 0x02, 0x03)
        val crc = ChannelHeader.Cmd.calcCrc(payload)
        // sum = 1+2+3 = 6, (6 & 0xFF) = 6
        assertEquals(6.toByte(), crc)
    }

    @Test
    fun `calcCrc overflow handling`() {
        // 测试 CRC 溢出（只取低 8 位）
        val payload = byteArrayOf(0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte())
        val crc = ChannelHeader.Cmd.calcCrc(payload)
        // sum = 255+255+255 = 765, (765 & 0xFF) = 253
        assertEquals(253.toByte(), crc)
    }

    @Test
    fun `calcCrc of empty payload is zero`() {
        assertEquals(0.toByte(), ChannelHeader.Cmd.calcCrc(byteArrayOf()))
    }

    @Test
    fun `calcCrc of single byte returns that byte`() {
        assertEquals(0x42.toByte(), ChannelHeader.Cmd.calcCrc(byteArrayOf(0x42)))
    }

    // ==================== withCrc ====================

    @Test
    fun `withCrc sets correct crc`() {
        val payload = byteArrayOf(0x10, 0x20, 0x30)
        val header = ChannelHeader.Cmd(0x01, payload.size, 0)
        val withCrc = header.withCrc(payload)
        assertEquals(ChannelHeader.Cmd.calcCrc(payload), withCrc.crc)
    }

    @Test
    fun `withCrc preserves other fields`() {
        val payload = byteArrayOf(0x10, 0x20)
        val header = ChannelHeader.Cmd(0x42, 100, 0)
        val withCrc = header.withCrc(payload)
        assertEquals(0x42, withCrc.payloadType)
        assertEquals(100, withCrc.payloadLength)
    }

    // ==================== 异常情况 ====================

    @Test(expected = IllegalArgumentException::class)
    fun `Cmd fromBytes throws on too small input`() {
        ChannelHeader.Cmd.fromBytes(ByteArray(7))
    }

    @Test(expected = IllegalArgumentException::class)
    fun `Media fromBytes throws on too small input`() {
        ChannelHeader.Media.fromBytes(ByteArray(10))
    }

    @Test(expected = IllegalArgumentException::class)
    fun `Cmd fromBytes throws on empty input`() {
        ChannelHeader.Cmd.fromBytes(ByteArray(0))
    }

    @Test(expected = IllegalArgumentException::class)
    fun `Media fromBytes throws on empty input`() {
        ChannelHeader.Media.fromBytes(ByteArray(0))
    }

    // ==================== Media 大时间戳 ====================

    @Test
    fun `Media header with large timestamp roundtrip`() {
        val original = ChannelHeader.Media(payloadType = 0x05, timestamp = Int.MAX_VALUE, payloadLength = 0)
        val bytes = original.toBytes()
        val parsed = ChannelHeader.Media.fromBytes(bytes)
        assertEquals(Int.MAX_VALUE, parsed.timestamp)
    }

    @Test
    fun `Media header with zero timestamp roundtrip`() {
        val original = ChannelHeader.Media(payloadType = 0x01, timestamp = 0, payloadLength = 100)
        val bytes = original.toBytes()
        val parsed = ChannelHeader.Media.fromBytes(bytes)
        assertEquals(0, parsed.timestamp)
    }
}
