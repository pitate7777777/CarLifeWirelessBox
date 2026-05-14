package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Test

class LogUtilsTest {

    // ==================== 日志开关测试 ====================

    @Test
    fun `console log is enabled by default`() {
        // LogUtils 是 object 单例，初始状态应为 true
        // 注意：测试之间状态会保留，这里只验证方法存在且可调用
        val state = LogUtils.isConsoleLogEnabled()
        assertTrue("default console log should be enabled", state)
    }

    @Test
    fun `file log is enabled by default`() {
        val state = LogUtils.isFileLogEnabled()
        assertTrue("default file log should be enabled", state)
    }

    @Test
    fun `setConsoleLogEnabled toggles state`() {
        val original = LogUtils.isConsoleLogEnabled()

        LogUtils.setConsoleLogEnabled(false)
        assertFalse(LogUtils.isConsoleLogEnabled())

        LogUtils.setConsoleLogEnabled(true)
        assertTrue(LogUtils.isConsoleLogEnabled())

        // 恢复原始状态
        LogUtils.setConsoleLogEnabled(original)
    }

    @Test
    fun `setSaveToFile toggles state`() {
        val original = LogUtils.isFileLogEnabled()

        LogUtils.setSaveToFile(false)
        assertFalse(LogUtils.isFileLogEnabled())

        LogUtils.setSaveToFile(true)
        assertTrue(LogUtils.isFileLogEnabled())

        // 恢复原始状态
        LogUtils.setSaveToFile(original)
    }

    // ==================== 日志方法不抛异常 ====================

    @Test
    fun `d with message does not throw`() {
        try {
            LogUtils.d("test debug message")
        } catch (e: Exception) {
            fail("LogUtils.d should not throw: ${e.message}")
        }
    }

    @Test
    fun `d with tag and message does not throw`() {
        try {
            LogUtils.d("TestTag", "test debug message")
        } catch (e: Exception) {
            fail("LogUtils.d(tag, msg) should not throw: ${e.message}")
        }
    }

    @Test
    fun `i with message does not throw`() {
        try {
            LogUtils.i("test info message")
        } catch (e: Exception) {
            fail("LogUtils.i should not throw: ${e.message}")
        }
    }

    @Test
    fun `i with tag and message does not throw`() {
        try {
            LogUtils.i("TestTag", "test info message")
        } catch (e: Exception) {
            fail("LogUtils.i(tag, msg) should not throw: ${e.message}")
        }
    }

    @Test
    fun `w with message does not throw`() {
        try {
            LogUtils.w("test warning message")
        } catch (e: Exception) {
            fail("LogUtils.w should not throw: ${e.message}")
        }
    }

    @Test
    fun `w with tag and message does not throw`() {
        try {
            LogUtils.w("TestTag", "test warning message")
        } catch (e: Exception) {
            fail("LogUtils.w(tag, msg) should not throw: ${e.message}")
        }
    }

    @Test
    fun `w with throwable does not throw`() {
        try {
            LogUtils.w(RuntimeException("test"), "test warning with exception")
        } catch (e: Exception) {
            fail("LogUtils.w(throwable, msg) should not throw: ${e.message}")
        }
    }

    @Test
    fun `e with message does not throw`() {
        try {
            LogUtils.e("test error message")
        } catch (e: Exception) {
            fail("LogUtils.e should not throw: ${e.message}")
        }
    }

    @Test
    fun `e with tag and message does not throw`() {
        try {
            LogUtils.e("TestTag", "test error message")
        } catch (e: Exception) {
            fail("LogUtils.e(tag, msg) should not throw: ${e.message}")
        }
    }

    @Test
    fun `e with throwable does not throw`() {
        try {
            LogUtils.e(RuntimeException("test"), "test error with exception")
        } catch (e: Exception) {
            fail("LogUtils.e(throwable, msg) should not throw: ${e.message}")
        }
    }

    @Test
    fun `e with tag and throwable does not throw`() {
        try {
            LogUtils.e("TestTag", RuntimeException("test"), "test error with tag and exception")
        } catch (e: Exception) {
            fail("LogUtils.e(tag, throwable, msg) should not throw: ${e.message}")
        }
    }

    // ==================== 日志开关不影响方法执行 ====================

    @Test
    fun `logging methods work when console disabled`() {
        LogUtils.setConsoleLogEnabled(false)
        try {
            LogUtils.d("test")
            LogUtils.d("tag", "test")
            LogUtils.i("test")
            LogUtils.i("tag", "test")
            LogUtils.w("test")
            LogUtils.w("tag", "test")
            LogUtils.e("test")
            LogUtils.e("tag", "test")
        } finally {
            LogUtils.setConsoleLogEnabled(true)
        }
    }

    @Test
    fun `logging methods work when file disabled`() {
        LogUtils.setSaveToFile(false)
        try {
            LogUtils.d("test")
            LogUtils.i("test")
            LogUtils.w("test")
            LogUtils.e("test")
        } finally {
            LogUtils.setSaveToFile(true)
        }
    }
}
