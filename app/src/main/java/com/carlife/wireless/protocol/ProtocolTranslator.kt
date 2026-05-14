package com.carlife.wireless.protocol

import com.carlife.wireless.util.LogUtils

/**
 * 协议转换器
 *
 * 将高版本 CarLife 协议转换为旧版 WinCE 车机兼容的协议。
 * 支持视频编解码器转换（H.265 → H.264）和音频编解码器转换（Opus → AAC）。
 *
 * TODO: 实际编解码转换需要 MediaCodec API 实现
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

    fun translateProtocolVersion(major: Int, minor: Int): Pair<Int, Int> {
        LogUtils.d(TAG, "Translating protocol version $major.$minor → $TARGET_PROTOCOL_MAJOR.$TARGET_PROTOCOL_MINOR")
        return Pair(TARGET_PROTOCOL_MAJOR, TARGET_PROTOCOL_MINOR)
    }

    fun translateVideoConfig(width: Int, height: Int, frameRate: Int): Triple<Int, Int, Int> {
        LogUtils.d(TAG, "Translating video config ${width}x${height}@${frameRate}fps → ${TARGET_VIDEO_WIDTH}x${TARGET_VIDEO_HEIGHT}@${TARGET_VIDEO_FRAMERATE}fps")
        return Triple(TARGET_VIDEO_WIDTH, TARGET_VIDEO_HEIGHT, TARGET_VIDEO_FRAMERATE)
    }

    /**
     * 转换视频帧（直通模式）
     *
     * 当前实现：直接透传数据，不做实际编解码转换。
     * H.265 → H.264 转换需要 MediaCodec 解码+重编码，开销较大，
     * 当前场景下手机 B (CarWith) 直接输出 H.264，无需转换。
     *
     * 如需支持 H.265 输入源，需实现：
     * 1. MediaCodec 解码器（H.265）→ Surface
     * 2. MediaCodec 编码器（H.264）← Surface
     * 3. 异步管线管理
     */
    fun translateVideoFrame(frame: ByteArray, codecType: Int): Pair<ByteArray, Int> {
        return if (codecType == CODEC_H265) {
            // H.265 数据未实际转码，必须保留原始编解码器类型，
            // 否则接收方会用 H.264 解码器解析 H.265 数据导致花屏/崩溃
            LogUtils.d(TAG, "H.265 input detected, pass-through (no transcoding)")
            Pair(frame, CODEC_H265)
        } else {
            Pair(frame, codecType)
        }
    }

    /**
     * 转换音频帧（直通模式）
     *
     * 当前实现：直接透传数据，不做实际编解码转换。
     * Opus → AAC 转换需要 MediaCodec 解码+重编码。
     * 当前场景下 AudioService 直接输出 AAC，无需转换。
     *
     * 如需支持 Opus 输入源，需实现：
     * 1. MediaCodec 解码器（Opus）→ PCM
     * 2. MediaCodec 编码器（AAC）← PCM
     * 3. 采样率/声道数重采样
     */
    fun translateAudioFrame(frame: ByteArray, codecType: Int): Pair<ByteArray, Int> {
        return if (codecType == CODEC_OPUS) {
            // Opus 数据未实际转码，必须保留原始编解码器类型，
            // 否则接收方会用 AAC 解码器解析 Opus 数据导致噪音/崩溃
            LogUtils.d(TAG, "Opus input detected, pass-through (no transcoding)")
            Pair(frame, CODEC_OPUS)
        } else {
            Pair(frame, codecType)
        }
    }

    fun release() {
        LogUtils.i(TAG, "All codecs released (no-op, stub)")
    }
}
