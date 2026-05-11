package com.carlife.wireless.util

import android.content.Context
import android.os.Build
import java.io.File
import java.io.FileWriter
import java.io.IOException
import java.text.SimpleDateFormat
import java.util.*

/**
 * 日志文件管理器
 * 
 * 功能：
 * 1. 将日志保存到手机本地文件
 * 2. 支持按日期分割日志文件
 * 3. 自动清理旧日志（保留最近7天）
 * 4. 支持导出/分享日志文件
 * 
 * 使用 app-specific 存储（无需运行时权限）
 */
object LogFileManager {
    
    private const val TAG = "LogFileManager"
    private const val LOG_DIR_NAME = "logs"
    private const val LOG_FILE_PREFIX = "carlife_"
    private const val LOG_FILE_SUFFIX = ".log"
    private const val MAX_LOG_FILES = 7 // 保留最近7天的日志
    
    private val dateFormat = SimpleDateFormat("yyyy-MM-dd", Locale.US)
    private val timeFormat = SimpleDateFormat("HH:mm:ss.SSS", Locale.US)
    
    /**
     * 获取日志目录（app-specific，无需权限）
     */
    private fun getLogDir(context: Context): File {
        val logDir = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            // Android 10+ 使用 app-specific 外部存储
            File(context.getExternalFilesDir(null), LOG_DIR_NAME)
        } else {
            // Android 9- 使用内部存储
            File(context.filesDir, LOG_DIR_NAME)
        }
        
        if (!logDir.exists()) {
            logDir.mkdirs()
        }
        
        return logDir
    }
    
    /**
     * 获取今天的日志文件
     */
    private fun getTodayLogFile(context: Context): File {
        val today = dateFormat.format(Date())
        val logFile = File(getLogDir(context), "${LOG_FILE_PREFIX}${today}${LOG_FILE_SUFFIX}")
        return logFile
    }
    
    /**
     * 写入日志到文件（异步，不阻塞主线程）
     */
    fun writeLog(context: Context, level: String, tag: String, message: String) {
        try {
            val timestamp = timeFormat.format(Date())
            val logLine = "[$timestamp] $level/$tag: $message\n"
            
            val logFile = getTodayLogFile(context)
            FileWriter(logFile, true).use { writer ->
                writer.append(logLine)
            }
            
        } catch (e: IOException) {
            e.printStackTrace()
        }
    }
    
    /**
     * 获取所有日志文件
     */
    fun getLogFiles(context: Context): List<File> {
        val logDir = getLogDir(context)
        return logDir.listFiles { file -> file.name.endsWith(LOG_FILE_SUFFIX) }
            ?.sortedByDescending { it.lastModified() }
            ?: emptyList()
    }
    
    /**
     * 获取日志文件内容
     */
    fun getLogContent(logFile: File): String {
        return try {
            logFile.readText()
        } catch (e: IOException) {
            "读取日志文件失败: ${e.message}"
        }
    }
    
    /**
     * 清理旧日志文件（保留最近 MAX_LOG_FILES 天）
     */
    fun cleanupOldLogs(context: Context) {
        try {
            val logFiles = getLogFiles(context)
            if (logFiles.size > MAX_LOG_FILES) {
                logFiles.drop(MAX_LOG_FILES).forEach { file ->
                    if (file.delete()) {
                        LogUtils.d(TAG, "已删除旧日志: ${file.name}")
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "清理旧日志失败")
        }
    }
    
    /**
     * 清空所有日志
     */
    fun clearAllLogs(context: Context): Boolean {
        return try {
            val logFiles = getLogFiles(context)
            logFiles.forEach { it.delete() }
            LogUtils.i(TAG, "已清空所有日志")
            true
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "清空日志失败")
            false
        }
    }
    
    /**
     * 获取日志文件大小（格式化）
     */
    fun getLogSizeFormatted(context: Context): String {
        val logFiles = getLogFiles(context)
        val totalBytes = logFiles.sumOf { it.length() }
        
        return when {
            totalBytes < 1024 -> "${totalBytes} B"
            totalBytes < 1024 * 1024 -> "${totalBytes / 1024} KB"
            else -> "${totalBytes / (1024 * 1024)} MB"
        }
    }
}
