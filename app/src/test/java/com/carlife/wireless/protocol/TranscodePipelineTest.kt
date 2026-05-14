package com.carlife.wireless.protocol

import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE)
class TranscodePipelineTest {

    // ==================== 初始状态 ====================

    @Test
    fun `video not ready before init`() {
        val pipeline = TranscodePipeline()
        assertFalse(pipeline.isVideoReady())
    }

    @Test
    fun `audio not ready before init`() {
        val pipeline = TranscodePipeline()
        assertFalse(pipeline.isAudioReady())
    }

    // ==================== transcodeVideoFrame 未初始化 ====================

    @Test
    fun `transcodeVideoFrame returns null when not ready`() {
        val pipeline = TranscodePipeline()
        val result = pipeline.transcodeVideoFrame(byteArrayOf(0x01, 0x02))
        assertNull(result)
    }

    // ==================== transcodeAudioFrame 未初始化 ====================

    @Test
    fun `transcodeAudioFrame returns null when not ready`() {
        val pipeline = TranscodePipeline()
        val result = pipeline.transcodeAudioFrame(byteArrayOf(0x01, 0x02))
        assertNull(result)
    }

    // ==================== release 不崩溃 ====================

    @Test
    fun `release does not throw when not initialized`() {
        val pipeline = TranscodePipeline()
        try {
            pipeline.release()
        } catch (e: Exception) {
            fail("release() should not throw on uninitialized pipeline: ${e.message}")
        }
    }

    @Test
    fun `release twice does not throw`() {
        val pipeline = TranscodePipeline()
        try {
            pipeline.release()
            pipeline.release()
        } catch (e: Exception) {
            fail("double release() should not throw: ${e.message}")
        }
    }

    // ==================== 状态一致性 ====================

    @Test
    fun `video and audio states are independent`() {
        val pipeline = TranscodePipeline()
        assertFalse(pipeline.isVideoReady())
        assertFalse(pipeline.isAudioReady())
        // release 后状态不变（本来就没初始化）
        pipeline.release()
        assertFalse(pipeline.isVideoReady())
        assertFalse(pipeline.isAudioReady())
    }

    // ==================== transcodeVideoFrame 空数据 ====================

    @Test
    fun `transcodeVideoFrame with empty data returns null when not ready`() {
        val pipeline = TranscodePipeline()
        assertNull(pipeline.transcodeVideoFrame(byteArrayOf()))
    }

    @Test
    fun `transcodeAudioFrame with empty data returns null when not ready`() {
        val pipeline = TranscodePipeline()
        assertNull(pipeline.transcodeAudioFrame(byteArrayOf()))
    }

    // ==================== transcodeVideoFrame 大数据 ====================

    @Test
    fun `transcodeVideoFrame with large data returns null when not ready`() {
        val pipeline = TranscodePipeline()
        val largeFrame = ByteArray(1024 * 1024) { it.toByte() }
        assertNull(pipeline.transcodeVideoFrame(largeFrame))
    }
}
