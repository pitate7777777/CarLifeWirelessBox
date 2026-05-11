package com.carlife.wireless.util

import android.content.Context
import android.util.Log

/**
 * 日志工具类
 * 根据架构文档 7.4 节实现
 * 使用 android.util.Log，保持轻量，不引入第三方依赖
 * 
 * 改进：
 * 1. 支持将日志保存到本地文件（用于离线调试）
 * 2. 需要初始化 context 才能保存日志到文件
 */
object LogUtils {
    
    private const val TAG = "CarLifeWireless"
    
    // 上下文（用于保存日志到文件）
    @Volatile private var context: Context? = null
    @Volatile private var saveToFileEnabled = true
    
    /**
     * 初始化（在 Application 中调用）
     */
    fun init(context: Context, saveToFile: Boolean = true) {
        this.context = context.applicationContext
        this.saveToFileEnabled = saveToFile
        
        i(TAG, "LogUtils initialized, saveToFile=$saveToFileEnabled")
    }
    
    /**
     * 启用/禁用文件日志
     */
    fun setSaveToFile(enabled: Boolean) {
        this.saveToFileEnabled = enabled
        i(TAG, "File logging ${if (enabled) "enabled" else "disabled"}")
    }
    
    /**
     * 调试级别日志
     * @param message 日志消息
     */
    fun d(message: String) {
        Log.d(TAG, message)
        saveLogToFile("D", TAG, message)
    }
    
    /**
     * 调试级别日志（带标签）
     * @param tag 标签
     * @param message 日志消息
     */
    fun d(tag: String, message: String) {
        Log.d(TAG, "[$tag] $message")
        saveLogToFile("D", tag, message)
    }
    
    /**
     * 信息级别日志
     * @param message 日志消息
     */
    fun i(message: String) {
        Log.i(TAG, message)
        saveLogToFile("I", TAG, message)
    }
    
    /**
     * 信息级别日志（带标签）
     * @param tag 标签
     * @param message 日志消息
     */
    fun i(tag: String, message: String) {
        Log.i(TAG, "[$tag] $message")
        saveLogToFile("I", tag, message)
    }
    
    /**
     * 警告级别日志
     * @param message 日志消息
     */
    fun w(message: String) {
        Log.w(TAG, message)
        saveLogToFile("W", TAG, message)
    }
    
    /**
     * 警告级别日志（带标签）
     * @param tag 标签
     * @param message 日志消息
     */
    fun w(tag: String, message: String) {
        Log.w(TAG, "[$tag] $message")
        saveLogToFile("W", tag, message)
    }
    
    /**
     * 警告级别日志（带异常）
     * @param throwable 异常对象
     * @param message 日志消息
     */
    fun w(throwable: Throwable, message: String) {
        Log.w(TAG, message, throwable)
        saveLogToFile("W", TAG, "$message - ${throwable.message}")
    }
    
    /**
     * 警告级别日志（带标签和异常）
     * @param tag 标签
     * @param throwable 异常对象
     * @param message 日志消息
     */
    fun w(tag: String, throwable: Throwable, message: String) {
        Log.w(TAG, "[$tag] $message", throwable)
        saveLogToFile("W", tag, "$message - ${throwable.message}")
    }
    
    /**
     * 错误级别日志
     * @param message 日志消息
     */
    fun e(message: String) {
        Log.e(TAG, message)
        saveLogToFile("E", TAG, message)
    }
    
    /**
     * 错误级别日志（带标签）
     * @param tag 标签
     * @param message 日志消息
     */
    fun e(tag: String, message: String) {
        Log.e(TAG, "[$tag] $message")
        saveLogToFile("E", tag, message)
    }
    
    /**
     * 错误级别日志（带异常）
     * @param throwable 异常对象
     * @param message 日志消息
     */
    fun e(throwable: Throwable, message: String) {
        Log.e(TAG, message, throwable)
        saveLogToFile("E", TAG, "$message - ${throwable.message}")
    }
    
    /**
     * 错误级别日志（带标签和异常）
     * @param tag 标签
     * @param throwable 异常对象
     * @param message 日志消息
     */
    fun e(tag: String, throwable: Throwable, message: String) {
        Log.e(TAG, "[$tag] $message", throwable)
        saveLogToFile("E", tag, "$message - ${throwable.message}")
    }
    
    /**
     * 打印十六进制数据
     * @param tag 自定义标签（会附加到TAG后面）
     * @param bytes 字节数组
     * @param length 要打印的字节数，默认全部
     */
    fun printHex(tag: String, bytes: ByteArray, length: Int = bytes.size) {
        val hexDump = com.carlife.wireless.util.ByteUtils.hexDump(bytes, 0, length)
        Log.d(TAG, "[$tag] Hex Dump (${length} bytes):\n$hexDump")
        saveLogToFile("D", tag, "Hex Dump (${length} bytes):\n$hexDump")
    }
    
    /**
     * 保存日志到文件（私有方法）
     */
    private fun saveLogToFile(level: String, tag: String, message: String) {
        if (!saveToFileEnabled) return
        
        val ctx = context
        if (ctx == null) {
            // 未初始化，无法保存
            return
        }
        
        try {
            LogFileManager.writeLog(ctx, level, tag, message)
        } catch (e: Exception) {
            // 保存失败，不影响正常使用
            Log.e(TAG, "Failed to save log to file", e)
        }
    }
}
