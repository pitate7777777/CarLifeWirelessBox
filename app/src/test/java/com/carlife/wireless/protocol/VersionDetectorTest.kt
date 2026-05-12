package com.carlife.wireless.protocol

import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE)
class VersionDetectorTest {

    // ==================== parseVersion ====================

    @Test
    fun `parseVersion normal version string`() {
        val (major, minor) = VersionDetector.parseVersion("7.2")
        assertEquals(7, major)
        assertEquals(2, minor)
    }

    @Test
    fun `parseVersion single digit`() {
        val (major, minor) = VersionDetector.parseVersion("1.0")
        assertEquals(1, major)
        assertEquals(0, minor)
    }

    @Test
    fun `parseVersion multi-digit version`() {
        val (major, minor) = VersionDetector.parseVersion("12.34")
        assertEquals(12, major)
        assertEquals(34, minor)
    }

    @Test
    fun `parseVersion with extra parts ignores them`() {
        val (major, minor) = VersionDetector.parseVersion("7.2.1")
        assertEquals(7, major)
        assertEquals(2, minor)
    }

    @Test
    fun `parseVersion single number treats minor as zero`() {
        val (major, minor) = VersionDetector.parseVersion("7")
        assertEquals(7, major)
        assertEquals(0, minor)
    }

    @Test
    fun `parseVersion empty string returns zeros`() {
        val (major, minor) = VersionDetector.parseVersion("")
        assertEquals(0, major)
        assertEquals(0, minor)
    }

    @Test
    fun `parseVersion non-numeric returns zeros`() {
        val (major, minor) = VersionDetector.parseVersion("abc.def")
        assertEquals(0, major)
        assertEquals(0, minor)
    }

    @Test
    fun `parseVersion mixed numeric and non-numeric`() {
        val (major, minor) = VersionDetector.parseVersion("7.beta")
        assertEquals(7, major)
        assertEquals(0, minor)
    }

    @Test
    fun `parseVersion zero zero`() {
        val (major, minor) = VersionDetector.parseVersion("0.0")
        assertEquals(0, major)
        assertEquals(0, minor)
    }

    @Test
    fun `parseVersion with leading zeros`() {
        val (major, minor) = VersionDetector.parseVersion("07.02")
        assertEquals(7, major)
        assertEquals(2, minor)
    }

    // ==================== needTranslation(Int, Int) ====================

    @Test
    fun `needTranslation version 7_0 needs translation`() {
        assertTrue(VersionDetector.needTranslation(7, 0))
    }

    @Test
    fun `needTranslation version 7_2 needs translation`() {
        assertTrue(VersionDetector.needTranslation(7, 2))
    }

    @Test
    fun `needTranslation version 10_0 needs translation`() {
        assertTrue(VersionDetector.needTranslation(10, 0))
    }

    @Test
    fun `needTranslation version 6_8 needs translation`() {
        assertTrue(VersionDetector.needTranslation(6, 8))
    }

    @Test
    fun `needTranslation version 6_7 does not need translation`() {
        assertFalse(VersionDetector.needTranslation(6, 7))
    }

    @Test
    fun `needTranslation version 6_0 does not need translation`() {
        assertFalse(VersionDetector.needTranslation(6, 0))
    }

    @Test
    fun `needTranslation version 5_99 does not need translation`() {
        assertFalse(VersionDetector.needTranslation(5, 99))
    }

    @Test
    fun `needTranslation version 1_0 does not need translation`() {
        assertFalse(VersionDetector.needTranslation(1, 0))
    }

    @Test
    fun `needTranslation version 0_0 does not need translation`() {
        assertFalse(VersionDetector.needTranslation(0, 0))
    }

    @Test
    fun `needTranslation boundary version 6_7`() {
        assertFalse(VersionDetector.needTranslation(6, 7))
    }

    @Test
    fun `needTranslation boundary version 6_8`() {
        assertTrue(VersionDetector.needTranslation(6, 8))
    }

    // ==================== needTranslation(String) ====================

    @Test
    fun `needTranslation string version 7_2 needs translation`() {
        assertTrue(VersionDetector.needTranslation("7.2"))
    }

    @Test
    fun `needTranslation string version 6_7 does not need translation`() {
        assertFalse(VersionDetector.needTranslation("6.7"))
    }

    @Test
    fun `needTranslation string version 6_8 needs translation`() {
        assertTrue(VersionDetector.needTranslation("6.8"))
    }

    @Test
    fun `needTranslation string version 1_0 does not need translation`() {
        assertFalse(VersionDetector.needTranslation("1.0"))
    }

    @Test
    fun `needTranslation string version with patch ignores patch`() {
        assertTrue(VersionDetector.needTranslation("7.2.1"))
    }

    @Test
    fun `needTranslation string empty returns false`() {
        assertFalse(VersionDetector.needTranslation(""))
    }

    @Test
    fun `needTranslation string non-numeric returns false`() {
        assertFalse(VersionDetector.needTranslation("unknown"))
    }
}
