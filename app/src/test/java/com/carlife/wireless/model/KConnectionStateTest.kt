package com.carlife.wireless.model

import org.junit.Assert.*
import org.junit.Test

class KConnectionStateTest {

    @Test
    fun `enum has exactly 4 states`() {
        assertEquals(4, KConnectionState.entries.size)
    }

    @Test
    fun `IDLE exists`() {
        assertNotNull(KConnectionState.IDLE)
    }

    @Test
    fun `CONNECTING exists`() {
        assertNotNull(KConnectionState.CONNECTING)
    }

    @Test
    fun `CONNECTED exists`() {
        assertNotNull(KConnectionState.CONNECTED)
    }

    @Test
    fun `DISCONNECTED exists`() {
        assertNotNull(KConnectionState.DISCONNECTED)
    }

    @Test
    fun `all states are distinct`() {
        val states = KConnectionState.entries.toSet()
        assertEquals(4, states.size)
    }

    @Test
    fun `valueOf returns correct enum`() {
        assertEquals(KConnectionState.IDLE, KConnectionState.valueOf("IDLE"))
        assertEquals(KConnectionState.CONNECTING, KConnectionState.valueOf("CONNECTING"))
        assertEquals(KConnectionState.CONNECTED, KConnectionState.valueOf("CONNECTED"))
        assertEquals(KConnectionState.DISCONNECTED, KConnectionState.valueOf("DISCONNECTED"))
    }

    @Test(expected = IllegalArgumentException::class)
    fun `valueOf throws on invalid name`() {
        KConnectionState.valueOf("NONEXISTENT")
    }

    @Test
    fun `ordinal order is IDLE_CONNECTING_CONNECTED_DISCONNECTED`() {
        assertEquals(0, KConnectionState.IDLE.ordinal)
        assertEquals(1, KConnectionState.CONNECTING.ordinal)
        assertEquals(2, KConnectionState.CONNECTED.ordinal)
        assertEquals(3, KConnectionState.DISCONNECTED.ordinal)
    }

    @Test
    fun `name returns correct string`() {
        assertEquals("IDLE", KConnectionState.IDLE.name)
        assertEquals("CONNECTING", KConnectionState.CONNECTING.name)
        assertEquals("CONNECTED", KConnectionState.CONNECTED.name)
        assertEquals("DISCONNECTED", KConnectionState.DISCONNECTED.name)
    }
}
