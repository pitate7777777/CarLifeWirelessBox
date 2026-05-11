package com.carlife.wireless.protocol

import com.carlife.wireless.util.LogUtils

/**
 * 版本检测工具
 * 用于检测 CarLife 协议版本并判断是否需要协议转换
 */
object VersionDetector {
    
    /**
     * 解析版本号字符串
     */
    fun parseVersion(versionName: String): Pair<Int, Int> {
        return try {
            val parts = versionName.split(".")
            val major = parts.getOrNull(0)?.toIntOrNull() ?: 0
            val minor = parts.getOrNull(1)?.toIntOrNull() ?: 0
            Pair(major, minor)
        } catch (e: Exception) {
            LogUtils.e("VersionDetector", e, "Failed to parse version: $versionName")
            Pair(0, 0)
        }
    }
    
    /**
     * 判断是否需要协议转换
     * 高版本 CarLife (7.2+) 与旧版 WinCE 车机不兼容，需要转换
     */
    fun needTranslation(major: Int, minor: Int): Boolean {
        return major > 6 || (major == 6 && minor > 7)
    }
    
    /**
     * 从完整版本字符串判断是否需要转换
     */
    fun needTranslation(versionName: String): Boolean {
        val (major, minor) = parseVersion(versionName)
        return needTranslation(major, minor)
    }
}
