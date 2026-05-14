package com.carlife.wireless.util

import android.content.Context
import android.os.Build
import android.util.Log
import java.io.File
import java.io.FileWriter
import java.io.IOException
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

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
    private const val AUTO_FLUSH_INTERVAL_MS = 3000L // 自动刷新间隔
    
    private val dateFormat = SimpleDateFormat("yyyy-MM-dd", Locale.US)
    private val timeFormat = SimpleDateFormat("HH:mm:ss.SSS", Locale.US)
    
    // 缓存当前日志文件的 Writer，避免每行都开关文件
    @Volatile private var cachedWriter: FileWriter? = null
    @Volatile private var cachedWriterDate: String? = null
    @Volatile private var cachedWriterContext: Context? = null
    private val writeLock = Any()
    private var lastFlushTime = 0L
    
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
     * 获取或创建当天的缓存 Writer
     * 日期变化时自动关闭旧 Writer，创建新的
     */
    private fun getOrCreateWriter(context: Context): FileWriter? {
        val today = dateFormat.format(Date())
        
        // 日期未变化且 Writer 有效 → 直接返回
        if (cachedWriter != null && cachedWriterDate == today) {
            return cachedWriter
        }
        
        // 日期变化或首次创建 → 关闭旧 Writer，创建新的
        synchronized(writeLock) {
            // 双重检查
            if (cachedWriter != null && cachedWriterDate == today) {
                return cachedWriter
            }
            
            // 关闭旧 Writer
            try { cachedWriter?.close() } catch (_: Exception) {}
            cachedWriter = null
            cachedWriterDate = null
            
            // 创建新 Writer
            return try {
                val logFile = getTodayLogFile(context)
                val writer = FileWriter(logFile, true)
                cachedWriter = writer
                cachedWriterDate = today
                cachedWriterContext = context
                lastFlushTime = System.currentTimeMillis()
                writer
            } catch (e: IOException) {
                Log.e(TAG, "Failed to create log writer", e)
                null
            }
        }
    }
    
    /**
     * 写入日志到文件（使用缓存 Writer，定期 flush）
     */
    fun writeLog(context: Context, level: String, tag: String, message: String) {
        try {
            val timestamp = timeFormat.format(Date())
            val logLine = "[$timestamp] $level/$tag: $message\n"
            
            val writer = getOrCreateWriter(context) ?: return
            
            synchronized(writeLock) {
                writer.append(logLine)
                
                // 定期 flush，避免日志丢失
                val now = System.currentTimeMillis()
                if (now - lastFlushTime > AUTO_FLUSH_INTERVAL_MS) {
                    writer.flush()
                    lastFlushTime = now
                }
            }
            
        } catch (e: IOException) {
            // Writer 可能已失效，清除缓存下次重建
            synchronized(writeLock) {
                try { cachedWriter?.close() } catch (_: Exception) {}
                cachedWriter = null
                cachedWriterDate = null
            }
            Log.e(TAG, "Failed to write log", e)
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
            flush()
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
     * 刷新缓存的 Writer（确保日志写入磁盘）
     * 在 Service 停止时调用
     */
    fun flush() {
        synchronized(writeLock) {
            try {
                cachedWriter?.flush()
            } catch (_: Exception) {}
        }
    }
    
    /**
     * 关闭缓存的 Writer（释放文件句柄）
     * 在 Application.onTerminate() 或不再需要日志时调用
     */
    fun close() {
        synchronized(writeLock) {
            try {
                cachedWriter?.flush()
                cachedWriter?.close()
            } catch (_: Exception) {}
            cachedWriter = null
            cachedWriterDate = null
            cachedWriterContext = null
        }
    }
    
    /**
     * 获取日志文件大小（格式化）
     */
    fun getLogSizeFormatted(context: Context): String {
        val logFiles = getLogFiles(context)
        val totalBytes = logFiles.sumOf { it.length() }

        return when {
            totalBytes < 1024 -> "$totalBytes B"
            totalBytes < 1024 * 1024 -> "${"%.1f".format(totalBytes / 1024.0)} KB"
            else -> "${"%.1f".format(totalBytes / (1024.0 * 1024.0))} MB"
        }
    }
}
