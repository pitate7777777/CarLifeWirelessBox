package com.carlife.wireless.protocol

import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE)
class ProtocolTranslatorTest {

    // ==================== Codec constants ====================

    @Test
    fun `codec H264 is 1`() {
        assertEquals(1, ProtocolTranslator.CODEC_H264)
    }

    @Test
    fun `codec H265 is 2`() {
        assertEquals(2, ProtocolTranslator.CODEC_H265)
    }

    @Test
    fun `codec AAC is 3`() {
        assertEquals(3, ProtocolTranslator.CODEC_AAC)
    }

    @Test
    fun `codec OPUS is 4`() {
        assertEquals(4, ProtocolTranslator.CODEC_OPUS)
    }

    // ==================== translateProtocolVersion ====================

    @Test
    fun `translateProtocolVersion returns target 1_0`() {
        val (major, minor) = ProtocolTranslator.translateProtocolVersion(7, 2)
        assertEquals(1, major)
        assertEquals(0, minor)
    }

    @Test
    fun `translateProtocolVersion for any input returns 1_0`() {
        val (major, minor) = ProtocolTranslator.translateProtocolVersion(99, 99)
        assertEquals(1, major)
        assertEquals(0, minor)
    }

    @Test
    fun `translateProtocolVersion for 0_0 returns 1_0`() {
        val (major, minor) = ProtocolTranslator.translateProtocolVersion(0, 0)
        assertEquals(1, major)
        assertEquals(0, minor)
    }

    // ==================== translateVideoConfig ====================

    @Test
    fun `translateVideoConfig returns 800x480 at 30fps`() {
        val (width, height, fps) = ProtocolTranslator.translateVideoConfig(1920, 1080, 60)
        assertEquals(800, width)
        assertEquals(480, height)
        assertEquals(30, fps)
    }

    @Test
    fun `translateVideoConfig for any input returns target config`() {
        val (width, height, fps) = ProtocolTranslator.translateVideoConfig(100, 100, 10)
        assertEquals(800, width)
        assertEquals(480, height)
        assertEquals(30, fps)
    }

    @Test
    fun `translateVideoConfig for matching input still returns target`() {
        val (width, height, fps) = ProtocolTranslator.translateVideoConfig(800, 480, 30)
        assertEquals(800, width)
        assertEquals(480, height)
        assertEquals(30, fps)
    }

    // ==================== translateVideoFrame ====================

    @Test
    fun `translateVideoFrame H265 passes through as H265`() {
        val frame = byteArrayOf(0x00, 0x00, 0x01, 0x65)
        val (resultFrame, codecType) = ProtocolTranslator.translateVideoFrame(frame, ProtocolTranslator.CODEC_H265)
        assertArrayEquals(frame, resultFrame)
        assertEquals(ProtocolTranslator.CODEC_H265, codecType)
    }

    @Test
    fun `translateVideoFrame H264 stays H264`() {
        val frame = byteArrayOf(0x00, 0x00, 0x01, 0x65)
        val (resultFrame, codecType) = ProtocolTranslator.translateVideoFrame(frame, ProtocolTranslator.CODEC_H264)
        assertArrayEquals(frame, resultFrame)
        assertEquals(ProtocolTranslator.CODEC_H264, codecType)
    }

    @Test
    fun `translateVideoFrame preserves frame data`() {
        val frame = ByteArray(1024) { it.toByte() }
        val (resultFrame, _) = ProtocolTranslator.translateVideoFrame(frame, ProtocolTranslator.CODEC_H265)
        assertArrayEquals(frame, resultFrame)
    }

    @Test
    fun `translateVideoFrame unknown codec passes through`() {
        val frame = byteArrayOf(0x01, 0x02)
        val (resultFrame, codecType) = ProtocolTranslator.translateVideoFrame(frame, 99)
        assertArrayEquals(frame, resultFrame)
        assertEquals(99, codecType)
    }

    @Test
    fun `translateVideoFrame empty frame`() {
        val frame = byteArrayOf()
        val (resultFrame, codecType) = ProtocolTranslator.translateVideoFrame(frame, ProtocolTranslator.CODEC_H265)
        assertEquals(0, resultFrame.size)
        assertEquals(ProtocolTranslator.CODEC_H265, codecType)
    }

    // ==================== translateAudioFrame ====================

    @Test
    fun `translateAudioFrame OPUS passes through as OPUS`() {
        val frame = byteArrayOf(0x01, 0x02, 0x03)
        val (resultFrame, codecType) = ProtocolTranslator.translateAudioFrame(frame, ProtocolTranslator.CODEC_OPUS)
        assertArrayEquals(frame, resultFrame)
        assertEquals(ProtocolTranslator.CODEC_OPUS, codecType)
    }

    @Test
    fun `translateAudioFrame AAC stays AAC`() {
        val frame = byteArrayOf(0x01, 0x02, 0x03)
        val (resultFrame, codecType) = ProtocolTranslator.translateAudioFrame(frame, ProtocolTranslator.CODEC_AAC)
        assertArrayEquals(frame, resultFrame)
        assertEquals(ProtocolTranslator.CODEC_AAC, codecType)
    }

    @Test
    fun `translateAudioFrame preserves frame data`() {
        val frame = ByteArray(512) { (it % 256).toByte() }
        val (resultFrame, _) = ProtocolTranslator.translateAudioFrame(frame, ProtocolTranslator.CODEC_OPUS)
        assertArrayEquals(frame, resultFrame)
    }

    @Test
    fun `translateAudioFrame unknown codec passes through`() {
        val frame = byteArrayOf(0x01)
        val (resultFrame, codecType) = ProtocolTranslator.translateAudioFrame(frame, 99)
        assertArrayEquals(frame, resultFrame)
        assertEquals(99, codecType)
    }
}
