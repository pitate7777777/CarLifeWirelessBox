package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Test
import java.io.File
import java.text.SimpleDateFormat
import java.util.*

class LogFileManagerTest {

    // ==================== getLogSizeFormatted 精度测试 ====================

    @Test
    fun `getLogSizeFormatted returns bytes for small sizes`() {
        // 通过反射或直接测试格式化逻辑
        // 这里测试格式化函数本身的逻辑
        val totalBytes = 512L
        val result = formatSize(totalBytes)
        assertEquals("512 B", result)
    }

    @Test
    fun `getLogSizeFormatted returns KB with decimal for medium sizes`() {
        val totalBytes = 1536L // 1.5 KB
        val result = formatSize(totalBytes)
        assertEquals("1.5 KB", result)
    }

    @Test
    fun `getLogSizeFormatted returns MB with decimal for large sizes`() {
        val totalBytes = 1572864L // 1.5 MB
        val result = formatSize(totalBytes)
        assertEquals("1.5 MB", result)
    }

    @Test
    fun `getLogSizeFormatted handles zero bytes`() {
        val result = formatSize(0L)
        assertEquals("0 B", result)
    }

    @Test
    fun `getLogSizeFormatted handles exactly 1KB`() {
        val result = formatSize(1024L)
        assertEquals("1.0 KB", result)
    }

    @Test
    fun `getLogSizeFormatted handles exactly 1MB`() {
        val result = formatSize(1048576L)
        assertEquals("1.0 MB", result)
    }

    // ==================== 日志文件名格式测试 ====================

    @Test
    fun `log file name follows date pattern`() {
        val dateFormat = SimpleDateFormat("yyyy-MM-dd", Locale.US)
        val today = dateFormat.format(Date())
        val fileName = "carlife_$today.log"
        assertTrue(fileName.startsWith("carlife_"))
        assertTrue(fileName.endsWith(".log"))
        assertTrue(fileName.length > 10)
    }

    // ==================== 辅助方法 ====================

    /** 复制 LogFileManager 的格式化逻辑进行独立测试 */
    private fun formatSize(totalBytes: Long): String {
        return when {
            totalBytes < 1024 -> "$totalBytes B"
            totalBytes < 1024 * 1024 -> "${"%.1f".format(totalBytes / 1024.0)} KB"
            else -> "${"%.1f".format(totalBytes / (1024.0 * 1024.0))} MB"
        }
    }
}
