package com.carlife.wireless.protocol

import com.carlife.wireless.util.LogUtils

/**
 * 版本检测工具
 *
 * 用于检测 CarLife 协议版本和 CarWith APP 版本，判断兼容性。
 *
 * 版本兼容性矩阵：
 * - CarWith 6.7.2 及之前 → ✅ 完全兼容 WinCE 车机
 * - CarWith 7.2 及之后   → ❌ 与 WinCE 车机不兼容（连接黑屏/断开）
 *
 * 注意：协议版本号（握手时发送的 majorVersion.minorVersion）始终为 1.0，
 * 真正的兼容性问题来自 CarWith APP 内部的行为变化，而非协议版本号本身。
 */
object VersionDetector {

    private const val TAG = "VersionDetector"

    /** CarWith 兼容版本上限 */
    private const val COMPAT_MAJOR = 6
    private const val COMPAT_MINOR = 7

    /**
     * CarWith APP 版本（从 MD_INFO 中提取）
     */
    data class CarWithVersion(
        val major: Int,
        val minor: Int,
        val patch: Int = 0,
        val raw: String = ""
    ) {
        val versionString: String get() = "$major.$minor.$patch"

        /**
         * 是否与 WinCE 车机兼容
         * 6.7.2 及之前：兼容
         * 7.0 及之后：不兼容
         */
        val isWinCeCompatible: Boolean
            get() = major < COMPAT_MAJOR || (major == COMPAT_MAJOR && minor <= COMPAT_MINOR)

        /**
         * 兼容性等级
         */
        val compatibilityLevel: CompatibilityLevel
            get() = when {
                major < 6 -> CompatibilityLevel.UNKNOWN
                major == 6 && minor < 7 -> CompatibilityLevel.COMPATIBLE
                major == 6 && minor == 7 -> CompatibilityLevel.COMPATIBLE
                major == 6 && minor > 7 -> CompatibilityLevel.WARNING
                major == 7 && minor < 2 -> CompatibilityLevel.WARNING
                major >= 7 && minor >= 2 -> CompatibilityLevel.INCOMPATIBLE
                major > 7 -> CompatibilityLevel.INCOMPATIBLE
                else -> CompatibilityLevel.UNKNOWN
            }
    }

    /**
     * 兼容性等级
     */
    enum class CompatibilityLevel(val label: String, val description: String) {
        COMPATIBLE("✅ 兼容", "CarWith 版本与 WinCE 车机完全兼容"),
        WARNING("⚠️ 警告", "CarWith 版本可能存在兼容性问题，建议降级到 6.7.2"),
        INCOMPATIBLE("❌ 不兼容", "CarWith 版本与 WinCE 车机不兼容，连接会黑屏或断开。请降级到 6.7.2"),
        UNKNOWN("❓ 未知", "无法确定兼容性")
    }

    /**
     * 从 CarWith 版本字符串解析版本号
     * 支持格式： "6.7.2", "7.2.0", "CarWith_6.7.2_build123"
     */
    fun parseCarWithVersion(versionStr: String): CarWithVersion {
        // 提取版本号部分（去掉前缀如 "CarWith_" 和后缀如 "_build123"）
        val versionPattern = Regex("""(\d+)\.(\d+)\.(\d+)""")
        val match = versionPattern.find(versionStr)

        return if (match != null) {
            val (major, minor, patch) = match.destructured
            CarWithVersion(
                major = major.toIntOrNull() ?: 0,
                minor = minor.toIntOrNull() ?: 0,
                patch = patch.toIntOrNull() ?: 0,
                raw = versionStr
            )
        } else {
            // 尝试解析 "major.minor" 格式
            val parts = versionStr.split(".")
            CarWithVersion(
                major = parts.getOrNull(0)?.toIntOrNull() ?: 0,
                minor = parts.getOrNull(1)?.toIntOrNull() ?: 0,
                patch = 0,
                raw = versionStr
            )
        }
    }

    /**
     * 检查 CarWith 版本是否需要协议转换
     * @deprecated 使用 CarWithVersion.isWinCeCompatible 代替
     */
    @Deprecated("Use CarWithVersion.isWinCeCompatible instead")
    fun needTranslation(major: Int, minor: Int): Boolean {
        return major > COMPAT_MAJOR || (major == COMPAT_MAJOR && minor > COMPAT_MINOR)
    }

    /**
     * 从完整版本字符串判断是否需要转换
     * @deprecated 使用 parseCarWithVersion + isWinCeCompatible 代替
     */
    @Deprecated("Use parseCarWithVersion + isWinCeCompatible instead")
    fun needTranslation(versionName: String): Boolean {
        val version = parseCarWithVersion(versionName)
        return !version.isWinCeCompatible
    }

    /**
     * 检查协议版本号是否匹配
     * CarLife 协议版本号始终为 1.0，此方法用于验证
     */
    fun isProtocolVersionCompatible(major: Int, minor: Int): Boolean {
        return major == 1 && minor == 0
    }

    /**
     * 获取兼容性诊断信息
     */
    fun getCompatibilityDiagnosis(carWithVersion: CarWithVersion): String {
        val level = carWithVersion.compatibilityLevel
        return buildString {
            appendLine("=== CarWith 兼容性诊断 ===")
            appendLine("CarWith 版本: ${carWithVersion.versionString}")
            appendLine("兼容性等级: ${level.label}")
            appendLine("说明: ${level.description}")
            appendLine()
            when (level) {
                CompatibilityLevel.COMPATIBLE -> {
                    appendLine("✅ 当前 CarWith 版本与 WinCE 车机兼容，可以正常使用。")
                }
                CompatibilityLevel.WARNING -> {
                    appendLine("⚠️ 当前 CarWith 版本可能存在兼容性问题。")
                    appendLine("建议：")
                    appendLine("  1. 降级 CarWith 到 6.7.2 版本")
                    appendLine("  2. 或尝试连接，观察是否出现黑屏")
                }
                CompatibilityLevel.INCOMPATIBLE -> {
                    appendLine("❌ 当前 CarWith 版本与 WinCE 车机不兼容！")
                    appendLine("问题：")
                    appendLine("  - 连接在 90% 处断开")
                    appendLine("  - 或连接成功但黑屏")
                    appendLine("解决方案：")
                    appendLine("  1. 降级 CarWith 到 6.7.2 版本（推荐）")
                    appendLine("  2. 使用备选方案：APP 直装手机B（见 docs/手机B直装方案可行性分析.md）")
                }
                CompatibilityLevel.UNKNOWN -> {
                    appendLine("❓ 无法确定 CarWith 版本的兼容性。")
                    appendLine("建议尝试连接，如果出现问题请检查日志。")
                }
            }
        }
    }
}
