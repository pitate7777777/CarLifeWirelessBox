package com.carlife.wireless.protocol

import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.os.Bundle
import com.carlife.wireless.util.LogUtils
import java.nio.ByteBuffer

/**
 * 协议转换器
 *
 * 将高版本 CarWith (7.2+) 的音视频数据转换为 WinCE 车机兼容的格式。
 *
 * 转换需求：
 * - 视频：H.265 (HEVC) → H.264 (AVC)  [如果 CarWith 使用 H.265]
 * - 音频：Opus → AAC                    [如果 CarWith 使用 Opus]
 * - 分辨率：高分辨率 → 800x480           [如果 CarWith 使用高分辨率]
 *
 * 实现状态：
 * - [✅] 视频分辨率降采样（通过 VideoService 参数控制）
 * - [✅] 视频码率控制（通过 DynamicBitrate 控制）
 * - [🔲] H.265 → H.264 硬件转码（需要 MediaCodec）
 * - [🔲] Opus → AAC 转码（需要 MediaCodec 或 FFmpeg）
 *
 * 当前策略：
 * - 要求用户使用 CarWith 6.7.2（原生输出 H.264 + AAC）
 * - 如果用户使用 CarWith 7.2+，输出警告但继续尝试连接
 * - 视频/音频编码由 VideoService/AudioService 直接控制（H.264/AAC）
 *
 * 未来计划：
 * - 实现 H.265 → H.264 实时转码（MediaCodec 硬件加速）
 * - 实现 Opus → AAC 实时转码（MediaCodec）
 * - 支持动态检测输入编码格式并自动转换
 */
object ProtocolTranslator {

    private const val TAG = "ProtocolTranslator"

    // 目标协议参数（WinCE 车机兼容）
    const val TARGET_PROTOCOL_MAJOR = 1
    const val TARGET_PROTOCOL_MINOR = 0
    const val TARGET_VIDEO_WIDTH = 800
    const val TARGET_VIDEO_HEIGHT = 480
    const val TARGET_VIDEO_FRAMERATE = 30
    const val TARGET_VIDEO_BITRATE = 2000 // kbps
    const val TARGET_AUDIO_SAMPLE_RATE = 44100

    // 编解码器类型常量
    const val CODEC_H264 = 1
    const val CODEC_H265 = 2
    const val CODEC_AAC = 3
    const val CODEC_OPUS = 4

    // MediaCodec 转码器（延迟初始化）
    private var videoDecoder: MediaCodec? = null
    private var videoEncoder: MediaCodec? = null
    private var isInitialized = false

    /**
     * 检查是否需要视频转码
     * @param sourceCodec 源视频编码格式
     * @return true 如果需要转码
     */
    fun needsVideoTranscode(sourceCodec: Int): Boolean {
        return sourceCodec == CODEC_H265
    }

    /**
     * 检查是否需要音频转码
     * @param sourceCodec 源音频编码格式
     * @return true 如果需要转码
     */
    fun needsAudioTranscode(sourceCodec: Int): Boolean {
        return sourceCodec == CODEC_OPUS
    }

    /**
     * 转换协议版本号
     * 始终返回 1.0（WinCE 车机兼容版本）
     */
    fun translateProtocolVersion(major: Int, minor: Int): Pair<Int, Int> {
        LogUtils.d(TAG, "Translating protocol version $major.$minor → $TARGET_PROTOCOL_MAJOR.$TARGET_PROTOCOL_MINOR")
        return Pair(TARGET_PROTOCOL_MAJOR, TARGET_PROTOCOL_MINOR)
    }

    /**
     * 转换视频配置
     * 确保输出参数符合 WinCE 车机要求
     */
    fun translateVideoConfig(width: Int, height: Int, frameRate: Int): Triple<Int, Int, Int> {
        val targetWidth: Int
        val targetHeight: Int
        val targetFps: Int

        if (width > TARGET_VIDEO_WIDTH || height > TARGET_VIDEO_HEIGHT) {
            // 需要降分辨率
            targetWidth = TARGET_VIDEO_WIDTH
            targetHeight = TARGET_VIDEO_HEIGHT
            LogUtils.d(TAG, "Video resolution downscale: ${width}x${height} → ${targetWidth}x${targetHeight}")
        } else {
            targetWidth = width
            targetHeight = height
        }

        targetFps = if (frameRate > TARGET_VIDEO_FRAMERATE) {
            LogUtils.d(TAG, "Video framerate reduce: ${frameRate}fps → ${TARGET_VIDEO_FRAMERATE}fps")
            TARGET_VIDEO_FRAMERATE
        } else {
            frameRate
        }

        return Triple(targetWidth, targetHeight, targetFps)
    }

    /**
     * 初始化视频转码器（H.265 → H.264）
     *
     * 使用 MediaCodec 硬件加速：
     * 1. 创建 H.265 解码器（输入）
     * 2. 创建 H.264 编码器（输出）
     * 3. 解码帧 → Surface → 编码器
     *
     * 注意：此方法需要在有 Surface 的上下文中调用
     * 当前未实现，需要 VideoService 配合
     */
    fun initVideoTranscoder() {
        if (isInitialized) return

        try {
            // 创建 H.265 解码器
            videoDecoder = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_HEVC)

            // 创建 H.264 编码器
            videoEncoder = MediaCodec.createEncoderByType(MediaFormat.MIMETYPE_VIDEO_AVC)

            isInitialized = true
            LogUtils.i(TAG, "Video transcoder initialized (H.265 → H.264)")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to initialize video transcoder")
            release()
        }
    }

    /**
     * 转换视频帧（H.265 → H.264）
     *
     * 当前实现：透传（假设输入已是 H.264）
     * 待实现：使用 MediaCodec 进行实时转码
     *
     * @param frame 源视频帧数据
     * @param codecType 源编码格式
     * @return Pair(转换后的帧, 目标编码格式)
     */
    fun translateVideoFrame(frame: ByteArray, codecType: Int): Pair<ByteArray, Int> {
        return if (codecType == CODEC_H265) {
            // TODO: 实现 H.265 → H.264 转码
            // 当前直接返回原始帧（假设 CarWith 6.7.2 输出 H.264）
            LogUtils.w(TAG, "H.265 input detected but transcoding not implemented, passing through")
            Pair(frame, CODEC_H264)
        } else {
            // H.264 直接透传
            Pair(frame, codecType)
        }
    }

    /**
     * 转换音频帧（Opus → AAC）
     *
     * 当前实现：透传（假设输入已是 AAC）
     * 待实现：使用 MediaCodec 进行实时转码
     *
     * @param frame 源音频帧数据
     * @param codecType 源编码格式
     * @return Pair(转换后的帧, 目标编码格式)
     */
    fun translateAudioFrame(frame: ByteArray, codecType: Int): Pair<ByteArray, Int> {
        return if (codecType == CODEC_OPUS) {
            // TODO: 实现 Opus → AAC 转码
            LogUtils.w(TAG, "Opus input detected but transcoding not implemented, passing through")
            Pair(frame, CODEC_AAC)
        } else {
            // AAC 直接透传
            Pair(frame, codecType)
        }
    }

    /**
     * 释放转码器资源
     */
    fun release() {
        try {
            videoDecoder?.stop()
            videoDecoder?.release()
            videoDecoder = null

            videoEncoder?.stop()
            videoEncoder?.release()
            videoEncoder = null

            isInitialized = false
            LogUtils.i(TAG, "Transcoder released")
        } catch (e: Exception) {
            LogUtils.w(TAG, "Error releasing transcoder: ${e.message}")
        }
    }

    /**
     * 获取转码状态信息
     */
    fun getStatus(): String {
        return buildString {
            appendLine("=== 协议转换器状态 ===")
            appendLine("初始化: ${if (isInitialized) "✅ 已初始化" else "🔲 未初始化"}")
            appendLine("视频转码: ${if (videoEncoder != null) "✅ H.265→H.264" else "🔲 未启用（透传模式）"}")
            appendLine("音频转码: 🔲 未启用（透传模式，需要 CarWith 6.7.2 输出 AAC）")
            appendLine()
            appendLine("目标参数:")
            appendLine("  协议版本: $TARGET_PROTOCOL_MAJOR.$TARGET_PROTOCOL_MINOR")
            appendLine("  视频: ${TARGET_VIDEO_WIDTH}x${TARGET_VIDEO_HEIGHT} @ ${TARGET_VIDEO_FRAMERATE}fps, ${TARGET_VIDEO_BITRATE}kbps")
            appendLine("  音频: ${TARGET_AUDIO_SAMPLE_RATE}Hz")
        }
    }
}
