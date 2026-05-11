package com.carlife.wireless.util

import android.content.Context

object SettingsManager {

    const val SAMPLE_RATE_DEFAULT = 44100

    fun getResolution(context: Context): Pair<Int, Int> {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        val resolution = prefs.getString("resolution", "1280x720") ?: "1280x720"
        val parts = resolution.split("x")
        val width = parts.getOrNull(0)?.toIntOrNull() ?: 1280
        val height = parts.getOrNull(1)?.toIntOrNull() ?: 720
        return Pair(width, height)
    }

    fun getBitrate(context: Context): Int {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getInt("bitrate", 2000000)
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
     */
    fun getPhoneBIp(context: Context): String {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        return prefs.getString("phone_b_ip", Constants.IpAddress.USB_TETHERING_LOCAL)
            ?: Constants.IpAddress.USB_TETHERING_LOCAL
    }

    /**
     * 保存手机 B 的 IP 地址
     */
    fun setPhoneBIp(context: Context, ip: String) {
        val prefs = context.getSharedPreferences("carlife_settings", Context.MODE_PRIVATE)
        prefs.edit().putString("phone_b_ip", ip).apply()
    }
}
