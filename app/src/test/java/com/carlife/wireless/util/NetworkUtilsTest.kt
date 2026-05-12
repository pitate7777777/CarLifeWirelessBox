package com.carlife.wireless.util

import org.junit.Assert.*
import org.junit.Test

class NetworkUtilsTest {

    // ==================== ping 方法 ====================

    @Test
    fun `ping unreachable TEST-NET address returns false`() {
        // 192.0.2.0/24 是 RFC 5737 TEST-NET，不可路由
        val result = NetworkUtils.ping("192.0.2.1", 500)
        assertFalse(result)
    }

    @Test
    fun `ping invalid hostname returns false`() {
        val result = NetworkUtils.ping("invalid.host.local", 500)
        assertFalse(result)
    }

    @Test
    fun `ping with zero timeout returns false for unreachable host`() {
        val result = NetworkUtils.ping("192.0.2.1", 0)
        assertFalse(result)
    }

    @Test
    fun `ping does not throw on invalid input`() {
        // 不应抛出异常，应返回 false
        try {
            NetworkUtils.ping("", 100)
        } catch (e: Exception) {
            fail("ping should not throw exceptions, got: ${e.message}")
        }
    }
}
