package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE)
class SettingsManagerTest {

    private lateinit var context: android.content.Context

    @Before
    fun setUp() {
        context = RuntimeEnvironment.getApplication()
        // Clear preferences before each test
        context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
            .edit().clear().commit()
    }

    // ==================== CarPreset ====================

    @Test
    fun `CarPreset has all expected entries`() {
        val presets = SettingsManager.CarPreset.entries
        assertTrue(presets.contains(SettingsManager.CarPreset.WINCE_800x480))
        assertTrue(presets.contains(SettingsManager.CarPreset.WINCE_1024x600))
        assertTrue(presets.contains(SettingsManager.CarPreset.WINCE_1280x480))
        assertTrue(presets.contains(SettingsManager.CarPreset.ANDROID_1280x720))
        assertTrue(presets.contains(SettingsManager.CarPreset.ANDROID_1920x1080))
        assertTrue(presets.contains(SettingsManager.CarPreset.CUSTOM))
    }

    @Test
    fun `CarPreset WINCE_800x480 has correct dimensions`() {
        val preset = SettingsManager.CarPreset.WINCE_800x480
        assertEquals(800, preset.width)
        assertEquals(480, preset.height)
        assertEquals(30, preset.fps)
        assertEquals(2000, preset.bitrateKbps)
    }

    @Test
    fun `CarPreset WINCE_1024x600 has correct dimensions`() {
        val preset = SettingsManager.CarPreset.WINCE_1024x600
        assertEquals(1024, preset.width)
        assertEquals(600, preset.height)
        assertEquals(30, preset.fps)
        assertEquals(2500, preset.bitrateKbps)
    }

    @Test
    fun `CarPreset WINCE_1280x480 has correct dimensions`() {
        val preset = SettingsManager.CarPreset.WINCE_1280x480
        assertEquals(1280, preset.width)
        assertEquals(480, preset.height)
        assertEquals(30, preset.fps)
        assertEquals(2500, preset.bitrateKbps)
    }

    @Test
    fun `CarPreset ANDROID_1280x720 has correct dimensions`() {
        val preset = SettingsManager.CarPreset.ANDROID_1280x720
        assertEquals(1280, preset.width)
        assertEquals(720, preset.height)
        assertEquals(30, preset.fps)
        assertEquals(3000, preset.bitrateKbps)
    }

    @Test
    fun `CarPreset ANDROID_1920x1080 has correct dimensions`() {
        val preset = SettingsManager.CarPreset.ANDROID_1920x1080
        assertEquals(1920, preset.width)
        assertEquals(1080, preset.height)
        assertEquals(30, preset.fps)
        assertEquals(4000, preset.bitrateKbps)
    }

    @Test
    fun `CarPreset CUSTOM has zero dimensions`() {
        val preset = SettingsManager.CarPreset.CUSTOM
        assertEquals(0, preset.width)
        assertEquals(0, preset.height)
        assertEquals(0, preset.fps)
        assertEquals(0, preset.bitrateKbps)
    }

    @Test
    fun `CarPreset findByResolution returns correct preset`() {
        assertEquals(SettingsManager.CarPreset.WINCE_800x480, SettingsManager.CarPreset.findByResolution(800, 480))
        assertEquals(SettingsManager.CarPreset.WINCE_1024x600, SettingsManager.CarPreset.findByResolution(1024, 600))
        assertEquals(SettingsManager.CarPreset.ANDROID_1280x720, SettingsManager.CarPreset.findByResolution(1280, 720))
        assertEquals(SettingsManager.CarPreset.ANDROID_1920x1080, SettingsManager.CarPreset.findByResolution(1920, 1080))
    }

    @Test
    fun `CarPreset findByResolution returns CUSTOM for unknown`() {
        assertEquals(SettingsManager.CarPreset.CUSTOM, SettingsManager.CarPreset.findByResolution(123, 456))
    }

    @Test
    fun `CarPreset labels are non-empty`() {
        SettingsManager.CarPreset.entries.forEach { preset ->
            assertTrue("Label for $preset should not be empty", preset.label.isNotEmpty())
        }
    }

    // ==================== getResolution ====================

    @Test
    fun `getResolution returns default 800x480`() {
        val (width, height) = SettingsManager.getResolution(context)
        assertEquals(800, width)
        assertEquals(480, height)
    }

    @Test
    fun `getResolution returns stored resolution`() {
        val prefs = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        prefs.edit().putString("resolution", "1920x1080").commit()
        val (width, height) = SettingsManager.getResolution(context)
        assertEquals(1920, width)
        assertEquals(1080, height)
    }

    @Test
    fun `getResolution handles invalid format gracefully`() {
        val prefs = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        prefs.edit().putString("resolution", "invalid").commit()
        val (width, height) = SettingsManager.getResolution(context)
        assertEquals(800, width)
        assertEquals(480, height)
    }

    // ==================== getBitrate ====================

    @Test
    fun `getBitrate returns default 2000000`() {
        assertEquals(2000000, SettingsManager.getBitrate(context))
    }

    @Test
    fun `getBitrate returns stored value`() {
        val prefs = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        prefs.edit().putInt("bitrate", 4000000).commit()
        assertEquals(4000000, SettingsManager.getBitrate(context))
    }

    @Test
    fun `getBitrateKbps is getBitrate divided by 1000`() {
        assertEquals(2000, SettingsManager.getBitrateKbps(context))
    }

    // ==================== getFramerate ====================

    @Test
    fun `getFramerate returns default 30`() {
        assertEquals(30, SettingsManager.getFramerate(context))
    }

    @Test
    fun `getFramerate returns stored value`() {
        val prefs = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        prefs.edit().putString("framerate", "60").commit()
        assertEquals(60, SettingsManager.getFramerate(context))
    }

    @Test
    fun `getFramerate handles invalid value gracefully`() {
        val prefs = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        prefs.edit().putString("framerate", "not_a_number").commit()
        assertEquals(30, SettingsManager.getFramerate(context))
    }

    // ==================== getSampleRate ====================

    @Test
    fun `getSampleRate returns default 44100`() {
        assertEquals(44100, SettingsManager.getSampleRate(context))
    }

    @Test
    fun `SAMPLE_RATE_DEFAULT is 44100`() {
        assertEquals(44100, SettingsManager.SAMPLE_RATE_DEFAULT)
    }

    // ==================== getPort ====================

    @Test
    fun `getPort returns default 8234`() {
        assertEquals(8234, SettingsManager.getPort(context))
    }

    @Test
    fun `getPort returns stored value`() {
        val prefs = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        prefs.edit().putInt("port", 9999).commit()
        assertEquals(9999, SettingsManager.getPort(context))
    }

    // ==================== getPhoneBIp / setPhoneBIp ====================

    @Test
    fun `getPhoneBIp returns default USB tethering IP`() {
        assertEquals(Constants.IpAddress.USB_TETHERING_LOCAL, SettingsManager.getPhoneBIp(context))
    }

    @Test
    fun `setPhoneBIp stores IP correctly`() {
        SettingsManager.setPhoneBIp(context, "192.168.1.100")
        assertEquals("192.168.1.100", SettingsManager.getPhoneBIp(context))
    }

    @Test
    fun `setPhoneBIp overwrites previous value`() {
        SettingsManager.setPhoneBIp(context, "10.0.0.1")
        SettingsManager.setPhoneBIp(context, "10.0.0.2")
        assertEquals("10.0.0.2", SettingsManager.getPhoneBIp(context))
    }

    // ==================== getCarPreset / applyCarPreset ====================

    @Test
    fun `getCarPreset returns default WINCE_800x480`() {
        assertEquals(SettingsManager.CarPreset.WINCE_800x480, SettingsManager.getCarPreset(context))
    }

    @Test
    fun `applyCarPreset stores all values correctly`() {
        SettingsManager.applyCarPreset(context, SettingsManager.CarPreset.ANDROID_1280x720)
        val prefs = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        assertEquals("ANDROID_1280x720", prefs.getString("car_preset", null))
        assertEquals("1280x720", prefs.getString("resolution", null))
        assertEquals(3000000, prefs.getInt("bitrate", 0))
        assertEquals("30", prefs.getString("framerate", null))
    }

    @Test
    fun `applyCarPreset CUSTOM does nothing`() {
        // Set some initial values
        SettingsManager.applyCarPreset(context, SettingsManager.CarPreset.ANDROID_1920x1080)
        val prefsBefore = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        val resolutionBefore = prefsBefore.getString("resolution", null)

        // Apply CUSTOM - should not change anything
        SettingsManager.applyCarPreset(context, SettingsManager.CarPreset.CUSTOM)
        val prefsAfter = context.getSharedPreferences("carlife_settings", android.content.Context.MODE_PRIVATE)
        assertEquals(resolutionBefore, prefsAfter.getString("resolution", null))
    }

    @Test
    fun `getCarPreset returns stored preset`() {
        SettingsManager.applyCarPreset(context, SettingsManager.CarPreset.WINCE_1280x480)
        assertEquals(SettingsManager.CarPreset.WINCE_1280x480, SettingsManager.getCarPreset(context))
    }

    // ==================== getCompatibilityInfo ====================

    @Test
    fun `getCompatibilityInfo contains resolution`() {
        val info = SettingsManager.getCompatibilityInfo(context)
        assertTrue(info.contains("800x480"))
    }

    @Test
    fun `getCompatibilityInfo contains preset label`() {
        val info = SettingsManager.getCompatibilityInfo(context)
        assertTrue(info.contains("WinCE"))
    }

    @Test
    fun `getCompatibilityInfo contains framerate`() {
        val info = SettingsManager.getCompatibilityInfo(context)
        assertTrue(info.contains("30fps"))
    }

    @Test
    fun `getCompatibilityInfo contains bitrate`() {
        val info = SettingsManager.getCompatibilityInfo(context)
        assertTrue(info.contains("2000kbps"))
    }
}
