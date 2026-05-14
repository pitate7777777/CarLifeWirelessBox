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

    /**
     * 判断协议版本是否被允许（v3.2+）
     * v3.2 之前的 v3.x 版本不再支持
     */
    fun isVersionAllowed(major: Int, minor: Int): Boolean {
        return major > 3 || (major == 3 && minor >= 2)
    }

    /**
     * 判断是否为推荐版本（v4.1+）
     * 推荐版本与新车机端SDK绑定
     */
    fun isVersionRecommended(major: Int, minor: Int): Boolean {
        return major >= 4
    }
}
