package com.carlife.wireless.bridge

import com.carlife.wireless.channel.ChannelType
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

class StreamBridgeManagerTest {

    private lateinit var manager: StreamBridgeManager

    @Before
    fun setup() {
        manager = StreamBridgeManager()
    }

    // ==================== 初始状态测试 ====================

    @Test
    fun `new manager has no bridges`() {
        assertEquals(0, manager.getAllBridgeInfo().split("\n").filter { it.isNotBlank() }.size)
        assertFalse(manager.areAllBridgesRunning())
    }

    @Test
    fun `getAllBridgeInfo returns no bridges message`() {
        assertEquals("No bridges running", manager.getAllBridgeInfo())
    }

    @Test
    fun `getBridge returns null for any type`() {
        ChannelType.entries.forEach { type ->
            assertNull("Bridge for $type should be null", manager.getBridge(type))
        }
    }

    // ==================== stopAllBridges 幂等性测试 ====================

    @Test
    fun `stopAllBridges on empty manager does not throw`() {
        try {
            manager.stopAllBridges()
        } catch (e: Exception) {
            fail("stopAllBridges on empty manager should not throw: ${e.message}")
        }
    }

    @Test
    fun `stopBridge on non-existent type does not throw`() {
        try {
            manager.stopBridge(ChannelType.HU_CMD)
        } catch (e: Exception) {
            fail("stopBridge on non-existent type should not throw: ${e.message}")
        }
    }

    // ==================== Callback 接口测试 ====================

    @Test
    fun `BridgeManagerCallback interface has all required methods`() {
        val callback = object : StreamBridgeManager.BridgeManagerCallback {
            override fun onAllBridgesStarted() {}
            override fun onBridgeError(channelType: ChannelType, error: String) {}
            override fun onAllBridgesStopped() {}
        }
        assertNotNull(callback)
    }

    // ==================== ChannelType 枚举测试 ====================

    @Test
    fun `all 6 channel types exist for bridge management`() {
        assertEquals(6, ChannelType.entries.size)
    }
}
