package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Test

class CoordConverterTest {

    // ==================== 横屏模式 (ROTATION_90) ====================

    @Test
    fun `landscape 1920x1080 phone with 800x480 car - center point maps correctly`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(400f, 240f, CoordConverter.ROTATION_90)
        // factorW = 1920/800 = 2.4, factorH = 1080/480 = 2.25
        assertEquals(960f, phoneX, 0.01f)
        assertEquals(540f, phoneY, 0.01f)
    }

    @Test
    fun `landscape 1920x1080 phone with 800x480 car - top-left corner`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(0f, 0f, CoordConverter.ROTATION_90)
        assertEquals(0f, phoneX, 0.01f)
        assertEquals(0f, phoneY, 0.01f)
    }

    @Test
    fun `landscape 1920x1080 phone with 800x480 car - bottom-right corner`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(799f, 479f, CoordConverter.ROTATION_90)
        // 799 * 2.4 = 1917.6, 479 * 2.25 = 1077.75
        assertEquals(1917.6f, phoneX, 0.01f)
        assertEquals(1077.75f, phoneY, 0.01f)
    }

    @Test
    fun `landscape ROTATION_270 behaves same as ROTATION_90`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val r90 = converter.convert(400f, 240f, CoordConverter.ROTATION_90)
        val r270 = converter.convert(400f, 240f, CoordConverter.ROTATION_270)
        assertEquals(r90.first, r270.first, 0.01f)
        assertEquals(r90.second, r270.second, 0.01f)
    }

    // ==================== 竖屏模式 (ROTATION_0) ====================

    @Test
    fun `portrait 1080x1920 phone with 800x480 car - center point maps correctly`() {
        // 竖屏: screenWidth=1080, screenHeight=1920
        val converter = CoordConverter(1080, 1920, 800, 480)
        val (phoneX, phoneY) = converter.convert(400f, 240f, CoordConverter.ROTATION_0)
        // portraitCarWidth = 800 * 480 / 1080 = 355.56
        // portraitLeftX = (800 - 355.56) / 2 = 222.22
        // portraitFactorW = 1920 / 355.56 = 5.4
        // portraitFactorH = 1080 / 480 = 2.25
        // phoneX = (400 - 222.22) * 5.4 = 177.78 * 5.4 = 960.0
        // phoneY = 240 * 2.25 = 540.0
        assertEquals(960f, phoneX, 1f)
        assertEquals(540f, phoneY, 0.01f)
    }

    @Test
    fun `portrait 1080x1920 phone - left offset is subtracted`() {
        val converter = CoordConverter(1080, 1920, 800, 480)
        // portraitCarWidth = 800 * 480 / 1080 = 355.56
        // portraitLeftX = (800 - 355.56) / 2 = 222.22
        // 点击在左侧偏移区域内 → phoneX 应被 clamp 到 0
        val (phoneX, _) = converter.convert(100f, 240f, CoordConverter.ROTATION_0)
        // (100 - 222.22) * 5.4 = -660 → clamp to 0
        assertEquals(0f, phoneX, 0.01f)
    }

    @Test
    fun `portrait ROTATION_180 behaves same as ROTATION_0`() {
        val converter = CoordConverter(1080, 1920, 800, 480)
        val r0 = converter.convert(400f, 240f, CoordConverter.ROTATION_0)
        val r180 = converter.convert(400f, 240f, CoordConverter.ROTATION_180)
        assertEquals(r0.first, r180.first, 0.01f)
        assertEquals(r0.second, r180.second, 0.01f)
    }

    // ==================== 零坐标处理 ====================

    @Test
    fun `zero coordinates in landscape maps to origin`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(0f, 0f, CoordConverter.ROTATION_90)
        assertEquals(0f, phoneX, 0.01f)
        assertEquals(0f, phoneY, 0.01f)
    }

    @Test
    fun `zero coordinates in portrait clamps to origin`() {
        val converter = CoordConverter(1080, 1920, 800, 480)
        val (phoneX, phoneY) = converter.convert(0f, 0f, CoordConverter.ROTATION_0)
        // phoneX = (0 - 222.22) * 5.4 = -660 → clamp to 0
        assertEquals(0f, phoneX, 0.01f)
        assertEquals(0f, phoneY, 0.01f)
    }

    // ==================== 边界保护 ====================

    @Test
    fun `negative coordinates are clamped to zero in landscape`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(-100f, -50f, CoordConverter.ROTATION_90)
        assertEquals(0f, phoneX, 0.01f)
        assertEquals(0f, phoneY, 0.01f)
    }

    @Test
    fun `coordinates exceeding car display are clamped to phone boundary in landscape`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(2000f, 1000f, CoordConverter.ROTATION_90)
        // maxX = 1920, maxY = 1080
        assertEquals(1919f, phoneX, 0.01f)
        assertEquals(1079f, phoneY, 0.01f)
    }

    @Test
    fun `coordinates exceeding car display are clamped to phone boundary in portrait`() {
        val converter = CoordConverter(1080, 1920, 800, 480)
        val (phoneX, phoneY) = converter.convert(2000f, 2000f, CoordConverter.ROTATION_0)
        // maxX = 1920, maxY = 1080
        assertEquals(1919f, phoneX, 0.01f)
        assertEquals(1079f, phoneY, 0.01f)
    }

    // ==================== 不同车机分辨率 ====================

    @Test
    fun `landscape with 1280x720 car display`() {
        val converter = CoordConverter(1920, 1080, 1280, 720)
        val (phoneX, phoneY) = converter.convert(640f, 360f, CoordConverter.ROTATION_90)
        // factorW = 1920/1280 = 1.5, factorH = 1080/720 = 1.5
        assertEquals(960f, phoneX, 0.01f)
        assertEquals(540f, phoneY, 0.01f)
    }

    @Test
    fun `landscape with 1920x1080 car display - 1_1 mapping`() {
        val converter = CoordConverter(1920, 1080, 1920, 1080)
        val (phoneX, phoneY) = converter.convert(500f, 300f, CoordConverter.ROTATION_90)
        // factor = 1.0
        assertEquals(500f, phoneX, 0.01f)
        assertEquals(300f, phoneY, 0.01f)
    }

    // ==================== 小屏幕手机 ====================

    @Test
    fun `landscape with 480x320 small phone and 800x480 car`() {
        val converter = CoordConverter(480, 320, 800, 480)
        val (phoneX, phoneY) = converter.convert(400f, 240f, CoordConverter.ROTATION_90)
        // factorW = 480/800 = 0.6, factorH = 320/480 = 0.667
        assertEquals(240f, phoneX, 0.01f)
        assertEquals(160f, phoneY, 0.1f)
    }

    @Test
    fun `portrait with 480x320 small phone and 800x480 car`() {
        val converter = CoordConverter(480, 320, 800, 480)
        val (phoneX, phoneY) = converter.convert(400f, 240f, CoordConverter.ROTATION_0)
        // portraitCarWidth = 800 * 480 / 480 = 800
        // portraitLeftX = (800 - 800) / 2 = 0
        // portraitFactorW = 320 / 800 = 0.4
        // portraitFactorH = 480 / 480 = 1.0
        // phoneX = (400 - 0) * 0.4 = 160
        // phoneY = 240 * 1.0 = 240
        assertEquals(160f, phoneX, 0.01f)
        assertEquals(240f, phoneY, 0.01f)
    }

    // ==================== 车机最大坐标映射 ====================

    @Test
    fun `car max coordinates map to phone boundary in landscape`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(800f, 480f, CoordConverter.ROTATION_90)
        // 800 * 2.4 = 1920 → clamp to 1919
        // 480 * 2.25 = 1080 → clamp to 1079
        assertEquals(1919f, phoneX, 0.01f)
        assertEquals(1079f, phoneY, 0.01f)
    }

    // ==================== 未知 rotation 值 ====================

    @Test
    fun `unknown rotation value uses fallback formula`() {
        val converter = CoordConverter(1920, 1080, 800, 480)
        val (phoneX, phoneY) = converter.convert(400f, 240f, 99)
        // fallback: phoneX = 400 * 1920/800 = 960, phoneY = 240 * 1080/480 = 540
        assertEquals(960f, phoneX, 0.01f)
        assertEquals(540f, phoneY, 0.01f)
    }

    // ==================== Companion 常量 ====================

    @Test
    fun `rotation constants are correct`() {
        assertEquals(0, CoordConverter.ROTATION_0)
        assertEquals(1, CoordConverter.ROTATION_90)
        assertEquals(2, CoordConverter.ROTATION_180)
        assertEquals(3, CoordConverter.ROTATION_270)
    }
}
