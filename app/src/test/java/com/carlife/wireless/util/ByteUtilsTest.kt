package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder

class ByteUtilsTest {

    // ==================== intToBytes ====================

    @Test
    fun `intToBytes zero returns four zero bytes`() {
        val result = ByteUtils.intToBytes(0)
        assertArrayEquals(byteArrayOf(0, 0, 0, 0), result)
    }

    @Test
    fun `intToBytes one returns big-endian representation`() {
        val result = ByteUtils.intToBytes(1)
        assertArrayEquals(byteArrayOf(0, 0, 0, 1), result)
    }

    @Test
    fun `intToBytes 256 sets second byte`() {
        val result = ByteUtils.intToBytes(256)
        assertArrayEquals(byteArrayOf(0, 0, 1, 0), result)
    }

    @Test
    fun `intToBytes max value`() {
        val result = ByteUtils.intToBytes(Int.MAX_VALUE)
        assertArrayEquals(byteArrayOf(0x7F, 0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte()), result)
    }

    @Test
    fun `intToBytes negative one`() {
        val result = ByteUtils.intToBytes(-1)
        assertArrayEquals(byteArrayOf(0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte()), result)
    }

    @Test
    fun `intToBytes protocol magic 0x434C`() {
        val result = ByteUtils.intToBytes(0x434C)
        assertEquals(0x00.toByte(), result[0])
        assertEquals(0x00.toByte(), result[1])
        assertEquals(0x43.toByte(), result[2])
        assertEquals(0x4C.toByte(), result[3])
    }

    @Test
    fun `intToBytes typical service type 0x00018001`() {
        val result = ByteUtils.intToBytes(0x00018001)
        assertEquals(0x00.toByte(), result[0])
        assertEquals(0x01.toByte(), result[1])
        assertEquals(0x80.toByte(), result[2])
        assertEquals(0x01.toByte(), result[3])
    }

    // ==================== shortToBytes ====================

    @Test
    fun `shortToBytes zero returns two zero bytes`() {
        val result = ByteUtils.shortToBytes(0)
        assertArrayEquals(byteArrayOf(0, 0), result)
    }

    @Test
    fun `shortToBytes one`() {
        val result = ByteUtils.shortToBytes(1)
        assertArrayEquals(byteArrayOf(0, 1), result)
    }

    @Test
    fun `shortToBytes 256`() {
        val result = ByteUtils.shortToBytes(256)
        assertArrayEquals(byteArrayOf(1, 0), result)
    }

    @Test
    fun `shortToBytes max short`() {
        val result = ByteUtils.shortToBytes(Short.MAX_VALUE)
        assertArrayEquals(byteArrayOf(0x7F, 0xFF.toByte()), result)
    }

    @Test
    fun `shortToBytes negative`() {
        val result = ByteUtils.shortToBytes(-1)
        assertArrayEquals(byteArrayOf(0xFF.toByte(), 0xFF.toByte()), result)
    }

    // ==================== bytesToInt ====================

    @Test
    fun `bytesToInt from big-endian bytes`() {
        val bytes = byteArrayOf(0x00, 0x00, 0x43, 0x4C)
        assertEquals(0x434C, ByteUtils.bytesToInt(bytes))
    }

    @Test
    fun `bytesToInt zero`() {
        val bytes = byteArrayOf(0, 0, 0, 0)
        assertEquals(0, ByteUtils.bytesToInt(bytes))
    }

    @Test
    fun `bytesToInt max value`() {
        val bytes = byteArrayOf(0x7F, 0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte())
        assertEquals(Int.MAX_VALUE, ByteUtils.bytesToInt(bytes))
    }

    @Test
    fun `bytesToInt all ones is negative one`() {
        val bytes = byteArrayOf(0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte(), 0xFF.toByte())
        assertEquals(-1, ByteUtils.bytesToInt(bytes))
    }

    @Test
    fun `bytesToInt with offset`() {
        val bytes = byteArrayOf(0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00)
        assertEquals(65536, ByteUtils.bytesToInt(bytes, offset = 4))
    }

    @Test
    fun `bytesToInt little-endian`() {
        val bytes = byteArrayOf(0x01, 0x00, 0x00, 0x00)
        assertEquals(1, ByteUtils.bytesToInt(bytes, order = ByteOrder.LITTLE_ENDIAN))
    }

    @Test
    fun `bytesToInt little-endian 256`() {
        val bytes = byteArrayOf(0x00, 0x01, 0x00, 0x00)
        assertEquals(256, ByteUtils.bytesToInt(bytes, order = ByteOrder.LITTLE_ENDIAN))
    }

    @Test
    fun `bytesToInt with fewer than 4 bytes big-endian`() {
        val bytes = byteArrayOf(0x01, 0x02)
        // Should pad with zeros on the left for big-endian
        assertEquals(0x00000102, ByteUtils.bytesToInt(bytes))
    }

    // ==================== bytesToShort ====================

    @Test
    fun `bytesToShort from big-endian`() {
        val bytes = byteArrayOf(0x43, 0x4C)
        assertEquals(0x434C.toShort(), ByteUtils.bytesToShort(bytes))
    }

    @Test
    fun `bytesToShort zero`() {
        val bytes = byteArrayOf(0, 0)
        assertEquals(0.toShort(), ByteUtils.bytesToShort(bytes))
    }

    @Test
    fun `bytesToShort one`() {
        val bytes = byteArrayOf(0, 1)
        assertEquals(1.toShort(), ByteUtils.bytesToShort(bytes))
    }

    @Test
    fun `bytesToShort with offset`() {
        val bytes = byteArrayOf(0x00, 0x00, 0x00, 0x05)
        assertEquals(5.toShort(), ByteUtils.bytesToShort(bytes, offset = 2))
    }

    @Test
    fun `bytesToShort with fewer than 2 bytes`() {
        val bytes = byteArrayOf(0x05)
        assertEquals(5.toShort(), ByteUtils.bytesToShort(bytes))
    }

    // ==================== concat ====================

    @Test
    fun `concat single array returns same content`() {
        val arr = byteArrayOf(1, 2, 3)
        assertArrayEquals(arr, ByteUtils.concat(arr))
    }

    @Test
    fun `concat two arrays`() {
        val a = byteArrayOf(1, 2)
        val b = byteArrayOf(3, 4)
        assertArrayEquals(byteArrayOf(1, 2, 3, 4), ByteUtils.concat(a, b))
    }

    @Test
    fun `concat three arrays`() {
        val a = byteArrayOf(1)
        val b = byteArrayOf(2, 3)
        val c = byteArrayOf(4, 5, 6)
        assertArrayEquals(byteArrayOf(1, 2, 3, 4, 5, 6), ByteUtils.concat(a, b, c))
    }

    @Test
    fun `concat empty arrays`() {
        val a = byteArrayOf()
        val b = byteArrayOf(1, 2)
        val c = byteArrayOf()
        assertArrayEquals(byteArrayOf(1, 2), ByteUtils.concat(a, b, c))
    }

    @Test
    fun `concat all empty`() {
        assertArrayEquals(byteArrayOf(), ByteUtils.concat(byteArrayOf(), byteArrayOf()))
    }

    // ==================== hexDump ====================

    @Test
    fun `hexDump single byte`() {
        assertEquals("0A", ByteUtils.hexDump(byteArrayOf(0x0A)))
    }

    @Test
    fun `hexDump multiple bytes`() {
        val bytes = byteArrayOf(0x01, 0x02, 0x03, 0x0A, 0xFF.toByte())
        assertEquals("01 02 03 0A FF", ByteUtils.hexDump(bytes))
    }

    @Test
    fun `hexDump empty array`() {
        assertEquals("", ByteUtils.hexDump(byteArrayOf()))
    }

    @Test
    fun `hexDump 16 bytes on single line`() {
        val bytes = ByteArray(16) { it.toByte() }
        assertEquals("00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F", ByteUtils.hexDump(bytes))
    }

    @Test
    fun `hexDump 17 bytes wraps to second line`() {
        val bytes = ByteArray(17) { it.toByte() }
        val result = ByteUtils.hexDump(bytes)
        val lines = result.split("\n")
        assertEquals(2, lines.size)
        assertEquals("00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F", lines[0])
        assertEquals("10", lines[1])
    }

    @Test
    fun `hexDump with offset`() {
        val bytes = byteArrayOf(0x00, 0x00, 0xAB.toByte(), 0xCD.toByte())
        assertEquals("AB CD", ByteUtils.hexDump(bytes, offset = 2))
    }

    @Test
    fun `hexDump with length limit`() {
        val bytes = byteArrayOf(0x01, 0x02, 0x03, 0x04)
        assertEquals("01 02", ByteUtils.hexDump(bytes, length = 2))
    }

    // ==================== Roundtrip tests ====================

    @Test
    fun `intToBytes then bytesToInt roundtrip`() {
        val values = listOf(0, 1, 255, 256, 65535, 65536, 0x434C, 0x00018001, Int.MAX_VALUE, -1, -256)
        for (value in values) {
            val bytes = ByteUtils.intToBytes(value)
            val result = ByteUtils.bytesToInt(bytes)
            assertEquals("Roundtrip failed for $value", value, result)
        }
    }

    @Test
    fun `shortToBytes then bytesToShort roundtrip`() {
        val values = listOf<Short>(0, 1, 255, 256, Short.MAX_VALUE, -1, -256)
        for (value in values) {
            val bytes = ByteUtils.shortToBytes(value)
            val result = ByteUtils.bytesToShort(bytes)
            assertEquals("Roundtrip failed for $value", value, result)
        }
    }
}
