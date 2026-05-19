package com.carlife.wireless.util

import android.content.Context
import android.util.Log
import com.carlife.wireless.BuildConfig

/**
 * 日志工具类
 * 根据架构文档 7.4 节实现
 * 使用 android.util.Log，保持轻量，不引入第三方依赖
 *
 * 改进：
 * 1. 支持将日志保存到本地文件（用于离线调试）
 * 2. 需要初始化 context 才能保存日志到文件
 * 3. 支持控制台日志开关（生产环境可关闭 Logcat 输出）
 * 4. 支持文件日志开关（独立控制）
 * 5. Release 构建默认关闭控制台日志，防止敏感信息泄露
 */
object LogUtils {

    private const val TAG = "CarLifeWireless"

    // 上下文（用于保存日志到文件）
    @Volatile private var context: Context? = null

    /** 控制台日志开关（Logcat 输出） */
    @Volatile private var consoleLogEnabled = true

    /** 文件日志开关 */
    @Volatile private var fileLogEnabled = true

    /**
     * 初始化（在 Application 中调用）
     *
     * Release 构建默认关闭控制台日志（Logcat），防止敏感信息泄露。
     * 文件日志在所有构建中保留，便于离线调试。
     */
    fun init(context: Context, saveToFile: Boolean = true) {
        this.context = context.applicationContext
        this.fileLogEnabled = saveToFile
        // Release 构建默认关闭控制台日志，减少信息泄露风险
        this.consoleLogEnabled = BuildConfig.DEBUG

        i(TAG, "LogUtils initialized, consoleLog=$consoleLogEnabled, fileLog=$fileLogEnabled")
    }

    /**
     * 启用/禁用控制台日志（Logcat）
     *
     * 关闭后不再输出到 Logcat，但不影响文件日志。
     * 适用于生产环境减少日志泄露风险。
     */
    fun setConsoleLogEnabled(enabled: Boolean) {
        this.consoleLogEnabled = enabled
        // 此条仍输出到 Logcat，方便调试确认开关生效
        if (enabled) {
            Log.i(TAG, "[$TAG] Console logging enabled")
        }
    }

    /**
     * 启用/禁用文件日志
     */
    fun setSaveToFile(enabled: Boolean) {
        this.fileLogEnabled = enabled
        i(TAG, "File logging ${if (enabled) "enabled" else "disabled"}")
    }

    /**
     * 获取控制台日志开关状态
     */
    fun isConsoleLogEnabled(): Boolean = consoleLogEnabled

    /**
     * 获取文件日志开关状态
     */
    fun isFileLogEnabled(): Boolean = fileLogEnabled

    /**
     * 是否为调试构建（控制台日志开启时视为调试模式）
     * 用于控制详细日志输出（如原始字节 hex dump），避免 Release 构建产生大量日志
     */
    fun isDebug(): Boolean = consoleLogEnabled || BuildConfig.DEBUG

    /**
     * 调试级别日志
     */
    fun d(message: String) {
        if (consoleLogEnabled) Log.d(TAG, message)
        saveLogToFile("D", TAG, message)
    }

    /**
     * 调试级别日志（带标签）
     */
    fun d(tag: String, message: String) {
        if (consoleLogEnabled) Log.d(TAG, "[$tag] $message")
        saveLogToFile("D", tag, message)
    }

    /**
     * 信息级别日志
     */
    fun i(message: String) {
        if (consoleLogEnabled) Log.i(TAG, message)
        saveLogToFile("I", TAG, message)
    }

    /**
     * 信息级别日志（带标签）
     */
    fun i(tag: String, message: String) {
        if (consoleLogEnabled) Log.i(TAG, "[$tag] $message")
        saveLogToFile("I", tag, message)
    }

    /**
     * 警告级别日志
     */
    fun w(message: String) {
        if (consoleLogEnabled) Log.w(TAG, message)
        saveLogToFile("W", TAG, message)
    }

    /**
     * 警告级别日志（带标签）
     */
    fun w(tag: String, message: String) {
        if (consoleLogEnabled) Log.w(TAG, "[$tag] $message")
        saveLogToFile("W", tag, message)
    }

    /**
     * 警告级别日志（带异常）
     */
    fun w(throwable: Throwable, message: String) {
        if (consoleLogEnabled) Log.w(TAG, message, throwable)
        saveLogToFile("W", TAG, "$message - ${throwable.message}")
    }

    /**
     * 警告级别日志（带标签和异常）
     */
    fun w(tag: String, throwable: Throwable, message: String) {
        if (consoleLogEnabled) Log.w(TAG, "[$tag] $message", throwable)
        saveLogToFile("W", tag, "$message - ${throwable.message}")
    }

    /**
     * 错误级别日志
     */
    fun e(message: String) {
        if (consoleLogEnabled) Log.e(TAG, message)
        saveLogToFile("E", TAG, message)
    }

    /**
     * 错误级别日志（带标签）
     */
    fun e(tag: String, message: String) {
        if (consoleLogEnabled) Log.e(TAG, "[$tag] $message")
        saveLogToFile("E", tag, message)
    }

    /**
     * 错误级别日志（带异常）
     */
    fun e(throwable: Throwable, message: String) {
        if (consoleLogEnabled) Log.e(TAG, message, throwable)
        saveLogToFile("E", TAG, "$message - ${throwable.message}")
    }

    /**
     * 错误级别日志（带标签和异常）
     */
    fun e(tag: String, throwable: Throwable, message: String) {
        if (consoleLogEnabled) Log.e(TAG, "[$tag] $message", throwable)
        saveLogToFile("E", tag, "$message - ${throwable.message}")
    }

    /**
     * 打印十六进制数据
     */
    fun printHex(tag: String, bytes: ByteArray, length: Int = bytes.size) {
        val hexDump = com.carlife.wireless.util.ByteUtils.hexDump(bytes, 0, length)
        if (consoleLogEnabled) Log.d(TAG, "[$tag] Hex Dump (${length} bytes):\n$hexDump")
        saveLogToFile("D", tag, "Hex Dump (${length} bytes):\n$hexDump")
    }

    /**
     * 保存日志到文件（私有方法）
     */
    private fun saveLogToFile(level: String, tag: String, message: String) {
        if (!fileLogEnabled) return

        val ctx = context
        if (ctx == null) {
            return
        }

        try {
            LogFileManager.writeLog(ctx, level, tag, message)
        } catch (e: Exception) {
            // 保存失败时仍输出到 Logcat（不受 consoleLog 开关限制，这是内部错误）
            Log.e(TAG, "Failed to save log to file", e)
        }
    }
}
