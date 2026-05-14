package com.carlife.wireless.role

import com.carlife.wireless.channel.ChannelType
import org.junit.Assert.*
import org.junit.Test

class MdRoleTest {

    // ==================== MdState 枚举 ====================

    @Test
    fun `MdState has all required states`() {
        val states = MdRole.MdState.entries.map { it.name }
        assertTrue(states.contains("IDLE"))
        assertTrue(states.contains("STARTING"))
        assertTrue(states.contains("WAITING_CONNECTION"))
        assertTrue(states.contains("CONNECTED"))
        assertTrue(states.contains("ALL_CONNECTED"))
        assertTrue(states.contains("HANDSHAKING"))
        assertTrue(states.contains("READY"))
        assertTrue(states.contains("ERROR"))
    }

    @Test
    fun `MdState has exactly 8 states`() {
        assertEquals(8, MdRole.MdState.entries.size)
    }

    @Test
    fun `MdState initial state is IDLE`() {
        assertEquals(MdRole.MdState.IDLE, MdRole.MdState.entries.first())
    }

    // ==================== MD_PORTS 常量 ====================

    @Test
    fun `MD_PORTS has 6 entries`() {
        assertEquals(6, MdRole.MD_PORTS.size)
    }

    @Test
    fun `MD_PORTS matches ChannelType mdPort values`() {
        val expectedPorts = ChannelType.entries.map { it.mdPort }
        assertEquals(expectedPorts, MdRole.MD_PORTS)
    }

    @Test
    fun `MD_PORTS are unique`() {
        assertEquals(MdRole.MD_PORTS.size, MdRole.MD_PORTS.toSet().size)
    }

    // ==================== PORT_NAMES 常量 ====================

    @Test
    fun `PORT_NAMES has 6 entries`() {
        assertEquals(6, MdRole.PORT_NAMES.size)
    }

    @Test
    fun `PORT_NAMES maps each MD port to a name`() {
        for (port in MdRole.MD_PORTS) {
            assertNotNull("PORT_NAMES should have entry for port $port", MdRole.PORT_NAMES[port])
        }
    }

    @Test
    fun `PORT_NAMES values are unique`() {
        val names = MdRole.PORT_NAMES.values.toList()
        assertEquals(names.size, names.toSet().size)
    }

    // ==================== ChannelType 与 MD_PORTS 对应 ====================

    @Test
    fun `CMD port is 7200`() {
        assertEquals(7200, ChannelType.CMD.mdPort)
    }

    @Test
    fun `VIDEO port is 8200`() {
        assertEquals(8200, ChannelType.VIDEO.mdPort)
    }

    @Test
    fun `MEDIA port is 9200`() {
        assertEquals(9200, ChannelType.MEDIA.mdPort)
    }

    @Test
    fun `TTS port is 9201`() {
        assertEquals(9201, ChannelType.TTS.mdPort)
    }

    @Test
    fun `VR port is 9202`() {
        assertEquals(9202, ChannelType.VR.mdPort)
    }

    @Test
    fun `CTRL port is 9300`() {
        assertEquals(9300, ChannelType.CTRL.mdPort)
    }
}
