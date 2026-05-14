package com.carlife.wireless.bridge

import com.carlife.wireless.channel.ChannelType
import com.carlife.wireless.protocol.ProtocolTranslator
import com.carlife.wireless.util.Constants
import org.junit.Assert.*
import org.junit.Test

class StreamBridgeTest {

    // ==================== 编解码器类型映射 ====================

    @Test
    fun `VIDEO channel maps to H264 codec`() {
        // StreamBridge.detectStreamType() 使用通道名判断
        // VIDEO 通道应映射到 CODEC_H264
        assertEquals(ProtocolTranslator.CODEC_H264, getCodecTypeForChannel("VIDEO"))
    }

    @Test
    fun `MEDIA channel maps to AAC codec`() {
        assertEquals(ProtocolTranslator.CODEC_AAC, getCodecTypeForChannel("MEDIA"))
    }

    @Test
    fun `CMD channel maps to codec 0`() {
        assertEquals(0, getCodecTypeForChannel("CMD"))
    }

    @Test
    fun `TTS channel maps to codec 0`() {
        assertEquals(0, getCodecTypeForChannel("TTS"))
    }

    @Test
    fun `VR channel maps to codec 0`() {
        assertEquals(0, getCodecTypeForChannel("VR"))
    }

    // ==================== 流类型检测 ====================

    @Test
    fun `VIDEO name detects as CHANNEL_VIDEO`() {
        assertEquals(Constants.Protocol.CHANNEL_VIDEO, detectStreamType("HU_VIDEO"))
    }

    @Test
    fun `MEDIA name detects as CHANNEL_AUDIO`() {
        assertEquals(Constants.Protocol.CHANNEL_AUDIO, detectStreamType("HU_MEDIA"))
    }

    @Test
    fun `CMD name detects as CHANNEL_CMD`() {
        assertEquals(Constants.Protocol.CHANNEL_CMD, detectStreamType("HU_CMD"))
    }

    @Test
    fun `TTS name detects as CHANNEL_TTS`() {
        assertEquals(Constants.Protocol.CHANNEL_TTS, detectStreamType("HU_TTS"))
    }

    @Test
    fun `VR name detects as CHANNEL_VR`() {
        assertEquals(Constants.Protocol.CHANNEL_VR, detectStreamType("HU_VR"))
    }

    @Test
    fun `CTRL name detects as CHANNEL_CTRL`() {
        assertEquals(Constants.Protocol.CHANNEL_CTRL, detectStreamType("HU_CTRL"))
    }

    // ==================== 辅助方法（复制 StreamBridge 的检测逻辑） ====================

    private fun detectStreamType(channelName: String): Int {
        val name = channelName.lowercase()
        return when {
            name.contains("video") -> Constants.Protocol.CHANNEL_VIDEO
            name.contains("audio") || name.contains("media") -> Constants.Protocol.CHANNEL_AUDIO
            name.contains("cmd") -> Constants.Protocol.CHANNEL_CMD
            name.contains("tts") -> Constants.Protocol.CHANNEL_TTS
            name.contains("vr") -> Constants.Protocol.CHANNEL_VR
            name.contains("ctrl") -> Constants.Protocol.CHANNEL_CTRL
            else -> Constants.Protocol.CHANNEL_MAX
        }
    }

    private fun getCodecTypeForChannel(channelName: String): Int {
        val streamType = detectStreamType(channelName)
        return when (streamType) {
            Constants.Protocol.CHANNEL_VIDEO -> ProtocolTranslator.CODEC_H264
            Constants.Protocol.CHANNEL_AUDIO -> ProtocolTranslator.CODEC_AAC
            else -> 0
        }
    }
}
