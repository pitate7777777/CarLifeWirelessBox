/**
 * 版本检测工具
 * 用于检测 CarLife 协议版本并判断是否需要协议转换
 *
 * 版本体系（与 ProtocolTranslator 保持一致）：
 * - v1.0: 当前使用，兼容旧版 CarWith，本项目默认版本
 * - v3.0/3.1: 不再支持，需降级到 v1.0
 * - v3.2: 允许使用（从 2023 年 5 月开始新项目使用）
 * - v4.1+: 推荐使用（与新车机端 SDK 绑定）
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
     * v3.0/3.1 需要降级到 v1.0（不再支持）
     * v6.8+ (CarLife 7.2+) 与 WinCE 不兼容，需要转换
     */
    fun needTranslation(major: Int, minor: Int): Boolean {
        // v3.0/3.1 需要降级
        if (major == 3 && minor < 2) return true
        // v6.8+ (CarLife 7.2+) 需要转换
        return major > 6 || (major == 6 && minor > 7)
    }

    fun needTranslation(versionName: String): Boolean {
        val (major, minor) = parseVersion(versionName)
        return needTranslation(major, minor)
    }

    /**
     * 判断协议版本是否被允许
     * v3.2 之前的 v3.x 版本不再支持
     */
    fun isVersionAllowed(major: Int, minor: Int): Boolean {
        return major > 3 || (major == 3 && minor >= 2)
    }

    /**
     * 判断是否为推荐版本（v4.1+）
     */
    fun isVersionRecommended(major: Int, minor: Int): Boolean {
        return major >= 4
    }
}
