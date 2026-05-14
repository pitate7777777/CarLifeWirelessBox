package com.carlife.wireless.util

import android.content.Context
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ConcurrentLinkedQueue
import java.util.concurrent.atomic.AtomicInteger

/**
 * 错误追踪器
 *
 * 功能：
 * 1. 记录关键错误事件（握手失败、连接超时、协议错误等）
 * 2. 错误统计（按类型分类计数）
 * 3. 错误导出（生成诊断报告）
 * 4. 与 LogFileManager 配合，保留 7 天错误日志
 */
object ErrorTracker {

    private const val TAG = "ErrorTracker"
    private const val MAX_RECENT_ERRORS = 100
    private const val ERROR_LOG_PREFIX = "errors_"
    private const val ERROR_LOG_SUFFIX = ".log"

    /** 错误类型枚举 */
    enum class ErrorType(val label: String) {
        HANDSHAKE_FAILED("握手失败"),
        CONNECTION_TIMEOUT("连接超时"),
        CONNECTION_LOST("连接断开"),
        PROTOCOL_ERROR("协议错误"),
        VIDEO_ERROR("视频错误"),
        AUDIO_ERROR("音频错误"),
        USB_ERROR("USB 错误"),
        UNKNOWN("未知错误")
    }

    /** 错误事件数据 */
    data class ErrorEvent(
        val timestamp: Long = System.currentTimeMillis(),
        val type: ErrorType,
        val module: String,     // 模块名（如 "HuRole", "MdRole", "VideoService"）
        val message: String,
        val details: String = "",
        val stackTrace: String = ""
    ) {
        fun format(): String {
            val time = SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(Date(timestamp))
            val sb = StringBuilder("[$time] [${type.label}] [$module] $message")
            if (details.isNotEmpty()) sb.appendLine().append("  详情: $details")
            if (stackTrace.isNotEmpty()) sb.appendLine().append("  堆栈: $stackTrace")
            return sb.toString()
        }
    }

    // 最近错误队列（内存中保留最近 N 条）
    private val recentErrors = ConcurrentLinkedQueue<ErrorEvent>()

    // 错误计数器（按类型）
    private val errorCounts = ConcurrentHashMap<ErrorType, AtomicInteger>()

    // 总错误计数
    private val totalErrors = AtomicInteger(0)

    init {
        ErrorType.entries.forEach { errorCounts[it] = AtomicInteger(0) }
    }

    /**
     * 记录错误事件
     */
    fun recordError(type: ErrorType, module: String, message: String, details: String = "", throwable: Throwable? = null) {
        val event = ErrorEvent(
            type = type,
            module = module,
            message = message,
            details = details,
            stackTrace = throwable?.stackTraceToString() ?: ""
        )

        // 添加到内存队列
        recentErrors.add(event)
        while (recentErrors.size > MAX_RECENT_ERRORS) {
            recentErrors.poll()
        }

        // 更新计数
        errorCounts[type]?.incrementAndGet()
        totalErrors.incrementAndGet()

        // 写入日志
        LogUtils.e(TAG, "[${type.label}] [$module] $message${if (details.isNotEmpty()) " - $details" else ""}")

        // 写入错误日志文件
        // 注意：context 需要通过 init(context) 设置
    }

    /**
     * 记录握手失败
     */
    fun recordHandshakeFailure(module: String, reason: String, phase: String = "") {
        val details = if (phase.isNotEmpty()) "阶段: $phase, 原因: $reason" else reason
        recordError(ErrorType.HANDSHAKE_FAILED, module, "CarLife 握手失败", details)
    }

    /**
     * 记录连接超时
     */
    fun recordConnectionTimeout(module: String, target: String, timeoutMs: Long) {
        recordError(ErrorType.CONNECTION_TIMEOUT, module, "连接超时", "目标: $target, 超时: ${timeoutMs}ms")
    }

    /**
     * 记录连接断开
     */
    fun recordConnectionLost(module: String, reason: String) {
        recordError(ErrorType.CONNECTION_LOST, module, "连接断开", reason)
    }

    /**
     * 记录协议错误
     */
    fun recordProtocolError(module: String, message: String, details: String = "") {
        recordError(ErrorType.PROTOCOL_ERROR, module, message, details)
    }

    /**
     * 获取最近错误列表
     */
    fun getRecentErrors(limit: Int = 20): List<ErrorEvent> {
        return recentErrors.toList().takeLast(limit)
    }

    /**
     * 获取错误统计
     */
    fun getErrorStats(): Map<ErrorType, Int> {
        return errorCounts.mapValues { it.value.get() }
    }

    /**
     * 获取总错误数
     */
    fun getTotalErrors(): Int = totalErrors.get()

    /**
     * 重置统计
     */
    fun resetStats() {
        errorCounts.values.forEach { it.set(0) }
        totalErrors.set(0)
        recentErrors.clear()
    }

    /**
     * 生成诊断报告文本
     */
    fun generateReport(context: Context): String {
        val sb = StringBuilder()
        val time = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(Date())

        sb.appendLine("╔══════════════════════════════════════════╗")
        sb.appendLine("║     CarLife Wireless Box 诊断报告        ║")
        sb.appendLine("╚══════════════════════════════════════════╝")
        sb.appendLine("生成时间: $time")
        sb.appendLine()

        // 错误统计
        sb.appendLine("═══ 错误统计 ═══")
        sb.appendLine("总错误数: ${totalErrors.get()}")
        errorCounts.forEach { (type, count) ->
            val c = count.get()
            if (c > 0) sb.appendLine("  ${type.label}: $c 次")
        }
        sb.appendLine()

        // 最近错误
        sb.appendLine("═══ 最近错误 (最多 20 条) ═══")
        val recent = getRecentErrors(20)
        if (recent.isEmpty()) {
            sb.appendLine("  无错误记录")
        } else {
            recent.forEach { sb.appendLine(it.format()) }
        }
        sb.appendLine()

        // 系统信息
        sb.appendLine("═══ 系统信息 ═══")
        sb.appendLine("设备型号: ${android.os.Build.MODEL}")
        sb.appendLine("制造商: ${android.os.Build.MANUFACTURER}")
        sb.appendLine("Android 版本: ${android.os.Build.VERSION.RELEASE}")
        sb.appendLine("SDK: ${android.os.Build.VERSION.SDK_INT}")
        sb.appendLine("内核: ${System.getProperty("os.version")}")
        sb.appendLine()

        // 日志文件信息
        sb.appendLine("═══ 日志文件 ═══")
        val logFiles = LogFileManager.getLogFiles(context)
        sb.appendLine("日志文件数: ${logFiles.size}")
        sb.appendLine("日志总大小: ${LogFileManager.getLogSizeFormatted(context)}")
        logFiles.take(5).forEach { file ->
            val size = if (file.length() < 1024) "${file.length()} B" else "${file.length() / 1024} KB"
            sb.appendLine("  ${file.name} ($size)")
        }

        return sb.toString()
    }

    /**
     * 保存诊断报告到文件
     */
    fun saveReportToFile(context: Context): File? {
        return try {
            val report = generateReport(context)
            val time = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
            val dir = File(context.getExternalFilesDir(null), "reports")
            if (!dir.exists()) dir.mkdirs()
            val file = File(dir, "carlife_report_$time.txt")
            file.writeText(report)
            LogUtils.i(TAG, "诊断报告已保存: ${file.absolutePath}")
            file
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "保存诊断报告失败")
            null
        }
    }
}
