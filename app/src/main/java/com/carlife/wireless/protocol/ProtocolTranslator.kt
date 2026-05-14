package com.carlife.wireless.protocol

import com.carlife.wireless.util.LogUtils

/**
 * 协议转换器
 *
 * 将高版本 CarLife 协议转换为旧版 WinCE 车机兼容的协议。
 * 支持视频编解码器转换（H.265 → H.264）和音频编解码器转换（Opus → AAC）。
 *
 * 转码模式：
 * - 当 TranscodePipeline 已初始化时，使用 MediaCodec 硬件转码
 * - 当 TranscodePipeline 未初始化时，直通数据并保留原始编解码器类型
 *
 * 使用方式：
 * ```kotlin
 * // 初始化（可选，需要转码时调用）
 * ProtocolTranslator.initTranscoders()
 *
 * // 转码
 * val (frame, codec) = ProtocolTranslator.translateVideoFrame(h265Data, CODEC_H265)
 *
 * // 释放
 * ProtocolTranslator.release()
 * ```
 */
object ProtocolTranslator {

    private const val TAG = "ProtocolTranslator"
    private const val TARGET_PROTOCOL_MAJOR = 1
    private const val TARGET_PROTOCOL_MINOR = 0
    private const val TARGET_VIDEO_WIDTH = 800
    private const val TARGET_VIDEO_HEIGHT = 480
    private const val TARGET_VIDEO_FRAMERATE = 30

    // 编解码器类型常量
    const val CODEC_H264 = 1
    const val CODEC_H265 = 2
    const val CODEC_AAC = 3
    const val CODEC_OPUS = 4

    /** 转码管线（懒加载，调用 initTranscoders() 后生效） */
    private var transcodePipeline: TranscodePipeline? = null
    private val transcoderInitialized get() = transcodePipeline?.isVideoReady() == true || transcodePipeline?.isAudioReady() == true

    /**
     * 初始化转码管线
     *
     * 调用后 translateVideoFrame/translateAudioFrame 将使用硬件转码。
     * 不调用则保持直通模式（保留原始编解码器类型）。
     *
     * @param enableVideo 是否启用 H.265→H.264 视频转码
     * @param enableAudio 是否启用 Opus→AAC 音频转码
     * @return true 至少一项转码初始化成功
     */
    fun initTranscoders(enableVideo: Boolean = true, enableAudio: Boolean = true): Boolean {
        if (transcodePipeline != null) {
            LogUtils.w(TAG, "Transcoders already initialized")
            return transcoderInitialized
        }

        val pipeline = TranscodePipeline()
        var anySuccess = false

        if (enableVideo) {
            if (pipeline.initVideoTranscoder()) {
                anySuccess = true
            } else {
                LogUtils.w(TAG, "Video transcoder init failed, will use pass-through")
            }
        }

        if (enableAudio) {
            if (pipeline.initAudioTranscoder()) {
                anySuccess = true
            } else {
                LogUtils.w(TAG, "Audio transcoder init failed, will use pass-through")
            }
        }

        transcodePipeline = pipeline
        LogUtils.i(TAG, "Transcoders initialized: video=${pipeline.isVideoReady()}, audio=${pipeline.isAudioReady()}")
        return anySuccess
    }

    fun translateProtocolVersion(major: Int, minor: Int): Pair<Int, Int> {
        LogUtils.d(TAG, "Translating protocol version $major.$minor → $TARGET_PROTOCOL_MAJOR.$TARGET_PROTOCOL_MINOR")
        return Pair(TARGET_PROTOCOL_MAJOR, TARGET_PROTOCOL_MINOR)
    }

    fun translateVideoConfig(width: Int, height: Int, frameRate: Int): Triple<Int, Int, Int> {
        LogUtils.d(TAG, "Translating video config ${width}x${height}@${frameRate}fps → ${TARGET_VIDEO_WIDTH}x${TARGET_VIDEO_HEIGHT}@${TARGET_VIDEO_FRAMERATE}fps")
        return Triple(TARGET_VIDEO_WIDTH, TARGET_VIDEO_HEIGHT, TARGET_VIDEO_FRAMERATE)
    }

    /**
     * 转换视频帧
     *
     * 当 TranscodePipeline 已初始化且输入为 H.265 时：
     * - 使用 MediaCodec 硬件转码 H.265 → H.264
     * - 返回 (h264Data, CODEC_H264)
     *
     * 当 TranscodePipeline 未初始化或输入非 H.265 时：
     * - 直通数据，保留原始编解码器类型
     *
     * @param frame 视频帧数据（NAL 单元）
     * @param codecType 编解码器类型（CODEC_H264/CODEC_H265）
     * @return Pair(转码后数据, 目标编解码器类型)
     */
    fun translateVideoFrame(frame: ByteArray, codecType: Int): Pair<ByteArray, Int> {
        if (codecType != CODEC_H265) {
            return Pair(frame, codecType)
        }

        // 尝试硬件转码
        val pipeline = transcodePipeline
        if (pipeline != null && pipeline.isVideoReady()) {
            val transcoded = pipeline.transcodeVideoFrame(frame)
            if (transcoded != null) {
                LogUtils.d(TAG, "H.265→H.264 transcoded: ${frame.size}B → ${transcoded.size}B")
                return Pair(transcoded, CODEC_H264)
            }
            LogUtils.w(TAG, "H.265→H.264 transcode failed, falling back to pass-through")
        }

        // 直通模式：保留原始编解码器类型
        LogUtils.d(TAG, "H.265 pass-through (no transcoder): ${frame.size}B")
        return Pair(frame, CODEC_H265)
    }

    /**
     * 转换音频帧
     *
     * 当 TranscodePipeline 已初始化且输入为 Opus 时：
     * - 使用 MediaCodec 硬件转码 Opus → AAC
     * - 返回 (aacData, CODEC_AAC)
     *
     * 当 TranscodePipeline 未初始化或输入非 Opus 时：
     * - 直通数据，保留原始编解码器类型
     *
     * @param frame 音频帧数据
     * @param codecType 编解码器类型（CODEC_AAC/CODEC_OPUS）
     * @return Pair(转码后数据, 目标编解码器类型)
     */
    fun translateAudioFrame(frame: ByteArray, codecType: Int): Pair<ByteArray, Int> {
        if (codecType != CODEC_OPUS) {
            return Pair(frame, codecType)
        }

        // 尝试硬件转码
        val pipeline = transcodePipeline
        if (pipeline != null && pipeline.isAudioReady()) {
            val transcoded = pipeline.transcodeAudioFrame(frame)
            if (transcoded != null) {
                LogUtils.d(TAG, "Opus→AAC transcoded: ${frame.size}B → ${transcoded.size}B")
                return Pair(transcoded, CODEC_AAC)
            }
            LogUtils.w(TAG, "Opus→AAC transcode failed, falling back to pass-through")
        }

        // 直通模式：保留原始编解码器类型
        LogUtils.d(TAG, "Opus pass-through (no transcoder): ${frame.size}B")
        return Pair(frame, CODEC_OPUS)
    }

    /**
     * 释放所有转码资源
     */
    fun release() {
        transcodePipeline?.release()
        transcodePipeline = null
        LogUtils.i(TAG, "All codecs released")
    }
}
