package com.carlife.wireless.network

import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE)
class DynamicBitrateTest {

    // ==================== SignalLevel ====================

    @Test
    fun `SignalLevel has all expected entries`() {
        val levels = DynamicBitrate.SignalLevel.entries
        assertTrue(levels.contains(DynamicBitrate.SignalLevel.EXCELLENT))
        assertTrue(levels.contains(DynamicBitrate.SignalLevel.GOOD))
        assertTrue(levels.contains(DynamicBitrate.SignalLevel.FAIR))
        assertTrue(levels.contains(DynamicBitrate.SignalLevel.WEAK))
        assertTrue(levels.contains(DynamicBitrate.SignalLevel.TERRIBLE))
        assertTrue(levels.contains(DynamicBitrate.SignalLevel.DISCONNECTED))
    }

    @Test
    fun `SignalLevel has exactly 6 entries`() {
        assertEquals(6, DynamicBitrate.SignalLevel.entries.size)
    }

    @Test
    fun `SignalLevel EXCELLENT factor is 1_0`() {
        assertEquals(1.0f, DynamicBitrate.SignalLevel.EXCELLENT.factor, 0.001f)
    }

    @Test
    fun `SignalLevel GOOD factor is 0_8`() {
        assertEquals(0.8f, DynamicBitrate.SignalLevel.GOOD.factor, 0.001f)
    }

    @Test
    fun `SignalLevel FAIR factor is 0_6`() {
        assertEquals(0.6f, DynamicBitrate.SignalLevel.FAIR.factor, 0.001f)
    }

    @Test
    fun `SignalLevel WEAK factor is 0_4`() {
        assertEquals(0.4f, DynamicBitrate.SignalLevel.WEAK.factor, 0.001f)
    }

    @Test
    fun `SignalLevel TERRIBLE factor is 0_25`() {
        assertEquals(0.25f, DynamicBitrate.SignalLevel.TERRIBLE.factor, 0.001f)
    }

    @Test
    fun `SignalLevel DISCONNECTED factor is 0`() {
        assertEquals(0f, DynamicBitrate.SignalLevel.DISCONNECTED.factor, 0.001f)
    }

    @Test
    fun `SignalLevel factors are strictly decreasing from EXCELLENT to TERRIBLE`() {
        val factors = listOf(
            DynamicBitrate.SignalLevel.EXCELLENT.factor,
            DynamicBitrate.SignalLevel.GOOD.factor,
            DynamicBitrate.SignalLevel.FAIR.factor,
            DynamicBitrate.SignalLevel.WEAK.factor,
            DynamicBitrate.SignalLevel.TERRIBLE.factor
        )
        for (i in 0 until factors.size - 1) {
            assertTrue(
                "Factor at $i (${factors[i]}) should be > factor at ${i + 1} (${factors[i + 1]})",
                factors[i] > factors[i + 1]
            )
        }
    }

    @Test
    fun `SignalLevel labels are non-empty`() {
        DynamicBitrate.SignalLevel.entries.forEach { level ->
            assertTrue("Label for $level should not be empty", level.label.isNotEmpty())
        }
    }

    @Test
    fun `SignalLevel label for EXCELLENT is correct`() {
        assertEquals("极好", DynamicBitrate.SignalLevel.EXCELLENT.label)
    }

    @Test
    fun `SignalLevel label for GOOD is correct`() {
        assertEquals("良好", DynamicBitrate.SignalLevel.GOOD.label)
    }

    @Test
    fun `SignalLevel label for FAIR is correct`() {
        assertEquals("一般", DynamicBitrate.SignalLevel.FAIR.label)
    }

    @Test
    fun `SignalLevel label for WEAK is correct`() {
        assertEquals("较差", DynamicBitrate.SignalLevel.WEAK.label)
    }

    @Test
    fun `SignalLevel label for TERRIBLE is correct`() {
        assertEquals("极差", DynamicBitrate.SignalLevel.TERRIBLE.label)
    }

    @Test
    fun `SignalLevel label for DISCONNECTED is correct`() {
        assertEquals("未连接", DynamicBitrate.SignalLevel.DISCONNECTED.label)
    }

    // ==================== Bitrate calculation ====================

    @Test
    fun `bitrate calculation at EXCELLENT signal`() {
        val baseBitrate = 2_000_000
        val result = (baseBitrate * DynamicBitrate.SignalLevel.EXCELLENT.factor).toInt()
        assertEquals(2_000_000, result)
    }

    @Test
    fun `bitrate calculation at GOOD signal`() {
        val baseBitrate = 2_000_000
        val result = (baseBitrate * DynamicBitrate.SignalLevel.GOOD.factor).toInt()
        assertEquals(1_600_000, result)
    }

    @Test
    fun `bitrate calculation at FAIR signal`() {
        val baseBitrate = 2_000_000
        val result = (baseBitrate * DynamicBitrate.SignalLevel.FAIR.factor).toInt()
        assertEquals(1_200_000, result)
    }

    @Test
    fun `bitrate calculation at WEAK signal`() {
        val baseBitrate = 2_000_000
        val result = (baseBitrate * DynamicBitrate.SignalLevel.WEAK.factor).toInt()
        assertEquals(800_000, result)
    }

    @Test
    fun `bitrate calculation at TERRIBLE signal`() {
        val baseBitrate = 2_000_000
        val result = (baseBitrate * DynamicBitrate.SignalLevel.TERRIBLE.factor).toInt()
        assertEquals(500_000, result)
    }

    @Test
    fun `bitrate calculation at DISCONNECTED is zero`() {
        val baseBitrate = 2_000_000
        val result = (baseBitrate * DynamicBitrate.SignalLevel.DISCONNECTED.factor).toInt()
        assertEquals(0, result)
    }
}
