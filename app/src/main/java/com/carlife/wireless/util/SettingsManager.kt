package com.carlife.wireless.util

import android.content.Context

object SettingsManager {

    const val SAMPLE_RATE_DEFAULT = 44100

    /**
     * 车机兼容模式预设
     */
    enum class CarPreset(val label: String, val width: Int, val height: Int, val fps: Int, val bitrateKbps: Int) {
        WINCE_800x480("WinCE 标准 (800x480)", 800, 480, 30, 2000),
        WINCE_1024x600("WinCE 宽屏 (1024x600)", 1024, 600, 30, 2500),
        WINCE_1280x480("WinCE 超宽 (1280x480)", 1280, 480, 30, 2500),
        ANDROID_1280x720("Android 车机 (1280x720)", 1280, 720, 30, 3000),
        ANDROID_1920x1080("Android 车机 (1920x1080)", 1920, 1080, 30, 4000),
        CUSTOM("自定义", 0, 0, 0, 0);

        companion object {
            fun findByResolution(width: Int, height: Int): CarPreset {
                return entries.find { it.width == width && it.height == height && it != CUSTOM } ?: CUSTOM
            }
        }
    }

    fun getResolution(context: Context): Pair<Int, Int> {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        val resolution = prefs.getString("resolution", "800x480") ?: "800x480"
        val parts = resolution.split("x")
        val width = parts.getOrNull(0)?.toIntOrNull() ?: 800
        val height = parts.getOrNull(1)?.toIntOrNull() ?: 480
        return Pair(width, height)
    }

    fun getBitrate(context: Context): Int {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getInt("bitrate", 2000000)
    }

    fun getBitrateKbps(context: Context): Int {
        return getBitrate(context) / 1000
    }

    fun getFramerate(context: Context): Int {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getString("framerate", "30")?.toIntOrNull() ?: 30
    }

    fun getSampleRate(context: Context): Int {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getString("sample_rate", "44100")?.toIntOrNull() ?: 44100
    }

    fun getPort(context: Context): Int {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getInt("port", 8234)
    }

    /**
     * 获取手机 B 的 IP 地址
     *
     * 优先返回用户手动设置的 IP；
     * 若未设置，则自动从当前 WiFi 连接的 DHCP 网关中获取（即热点网关地址）。
     */
    fun getPhoneBIp(context: Context): String {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        val saved = prefs.getString("phone_b_ip", null)
        if (!saved.isNullOrEmpty() && saved != Constants.IpAddress.HOTSPOT_GATEWAY) {
            // 用户手动设置过 IP，直接使用
            return saved
        }
        // 未手动设置 → 自动检测当前热点网关
        val autoDetected = NetworkUtils.getActiveGatewayIp(context)
        if (!autoDetected.isNullOrEmpty()) {
            return autoDetected
        }
        // 回退到默认值
        return Constants.IpAddress.HOTSPOT_GATEWAY
    }

    /**
     * 保存手机 B 的 IP 地址
     */
    fun setPhoneBIp(context: Context, ip: String) {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        prefs.edit().putString("phone_b_ip", ip).apply()
    }

    /**
     * 获取当前兼容模式预设
     */
    fun getCarPreset(context: Context): CarPreset {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        val presetName = prefs.getString("car_preset", null)
        if (presetName != null) {
            return try {
                CarPreset.valueOf(presetName)
            } catch (_: Exception) {
                CarPreset.WINCE_800x480
            }
        }
        // 根据当前分辨率推断
        val (w, h) = getResolution(context)
        return CarPreset.findByResolution(w, h)
    }

    /**
     * 应用车机兼容模式预设
     */
    fun applyCarPreset(context: Context, preset: CarPreset) {
        if (preset == CarPreset.CUSTOM) return
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        prefs.edit().apply {
            putString("car_preset", preset.name)
            putString("resolution", "${preset.width}x${preset.height}")
            putInt("bitrate", preset.bitrateKbps * 1000)
            putString("framerate", preset.fps.toString())
            apply()
        }
    }

    /**
     * 获取兼容模式描述
     */
    fun getCompatibilityInfo(context: Context): String {
        val preset = getCarPreset(context)
        val (w, h) = getResolution(context)
        val fps = getFramerate(context)
        val bitrate = getBitrateKbps(context)
        return "预设: ${preset.label}\n分辨率: ${w}x${h}\n帧率: ${fps}fps\n码率: ${bitrate}kbps"
    }

    // ==================== 通道开关配置 ====================

    /** 通道开关配置数据类 */
    data class ChannelConfig(
        val cmdEnabled: Boolean = true,      // 必须
        val videoEnabled: Boolean = true,    // 必须
        val ctrlEnabled: Boolean = true,     // 必须
        val mediaEnabled: Boolean = true,    // 可选
        val ttsEnabled: Boolean = false,     // 可选
        val vrEnabled: Boolean = false       // 可选
    )

    /**
     * 获取通道开关配置
     */
    fun getChannelConfig(context: Context): ChannelConfig {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return ChannelConfig(
            cmdEnabled = true,   // CMD 始终启用（不可关闭）
            videoEnabled = true, // VIDEO 始终启用（不可关闭）
            ctrlEnabled = true,  // CTRL 始终启用（不可关闭）
            mediaEnabled = prefs.getBoolean("channel_media", true),
            ttsEnabled = prefs.getBoolean("channel_tts", false),
            vrEnabled = prefs.getBoolean("channel_vr", false)
        )
    }

    /**
     * 保存通道开关配置
     */
    fun saveChannelConfig(context: Context, config: ChannelConfig) {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        prefs.edit().apply {
            putBoolean("channel_media", config.mediaEnabled)
            putBoolean("channel_tts", config.ttsEnabled)
            putBoolean("channel_vr", config.vrEnabled)
            apply()
        }
    }

    // ==================== 日志开关配置 ====================

    /**
     * 获取控制台日志开关状态
     */
    fun isConsoleLogEnabled(context: Context): Boolean {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getBoolean("log_console_enabled", true)
    }

    /**
     * 设置控制台日志开关
     */
    fun setConsoleLogEnabled(context: Context, enabled: Boolean) {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        prefs.edit().putBoolean("log_console_enabled", enabled).apply()
    }

    /**
     * 获取文件日志开关状态
     */
    fun isFileLogEnabled(context: Context): Boolean {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getBoolean("log_file_enabled", true)
    }

    /**
     * 设置文件日志开关
     */
    fun setFileLogEnabled(context: Context, enabled: Boolean) {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        prefs.edit().putBoolean("log_file_enabled", enabled).apply()
    }
}
