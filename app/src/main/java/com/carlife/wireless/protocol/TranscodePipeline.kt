package com.carlife.wireless.protocol

import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.os.Build
import android.view.Surface
import com.carlife.wireless.util.LogUtils
import java.nio.ByteBuffer
import java.util.concurrent.LinkedBlockingQueue
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

/**
 * MediaCodec 转码管线
 *
 * H.265 → H.264 转码管线：
 *   输入 H.265 NAL → MediaCodec 解码器 → Surface → MediaCodec 编码器 → H.264 NAL
 *
 * Opus → AAC 转码管线：
 *   输入 Opus 帧 → MediaCodec 解码器 → PCM → MediaCodec 编码器 → AAC 帧
 *
 * 使用方法：
 * 1. 调用 init() 初始化编解码器
 * 2. 调用 transcodeVideoFrame() / transcodeAudioFrame() 进行转码
 * 3. 调用 release() 释放资源
 *
 * 线程安全：所有公共方法均线程安全。
 */
class TranscodePipeline {

    companion object {
        private const val TAG = "TranscodePipeline"

        // 视频参数
        private const val VIDEO_MIME_H265 = MediaFormat.MIMETYPE_VIDEO_HEVC
        private const val VIDEO_MIME_H264 = MediaFormat.MIMETYPE_VIDEO_AVC
        private const val DEFAULT_WIDTH = 800
        private const val DEFAULT_HEIGHT = 480
        private const val DEFAULT_FPS = 30
        private const val DEFAULT_BITRATE = 2_000_000
        private const val I_FRAME_INTERVAL = 2

        // 音频参数
        private const val AUDIO_MIME_OPUS = "audio/opus"
        private const val AUDIO_MIME_AAC = MediaFormat.MIMETYPE_AUDIO_AAC
        private const val DEFAULT_SAMPLE_RATE = 44100
        private const val DEFAULT_CHANNEL_COUNT = 2
        private const val DEFAULT_AUDIO_BITRATE = 128_000

        // 超时
        private const val CODEC_TIMEOUT_US = 10_000L // 10ms
        private const val DRAIN_TIMEOUT_US = 5_000L  // 5ms
    }

    // ==================== 视频转码管线 ====================

    private var videoDecoder: MediaCodec? = null
    private var videoEncoder: MediaCodec? = null
    private var videoInputSurface: Surface? = null
    private var videoOutputSurface: Surface? = null

    @Volatile private var videoDecoderRunning = false
    @Volatile private var videoEncoderRunning = false
    private val videoOutputQueue = LinkedBlockingQueue<ByteArray>(30)
    private val videoReady = AtomicBoolean(false)

    // ==================== 音频转码管线 ====================

    private var audioDecoder: MediaCodec? = null
    private var audioEncoder: MediaCodec? = null

    @Volatile private var audioDecoderRunning = false
    @Volatile private var audioEncoderRunning = false
    private val audioOutputQueue = LinkedBlockingQueue<ByteArray>(60)
    private val audioReady = AtomicBoolean(false)

    // ==================== 初始化 ====================

    /**
     * 初始化 H.265 → H.264 视频转码管线
     *
     * @param width 视频宽度
     * @param height 视频高度
     * @param fps 帧率
     * @param bitrate 码率 (bps)
     * @return true 初始化成功
     */
    fun initVideoTranscoder(
        width: Int = DEFAULT_WIDTH,
        height: Int = DEFAULT_HEIGHT,
        fps: Int = DEFAULT_FPS,
        bitrate: Int = DEFAULT_BITRATE
    ): Boolean {
        if (videoReady.get()) {
            LogUtils.w(TAG, "Video transcoder already initialized")
            return true
        }

        try {
            // 1. 创建 H.265 解码器
            videoDecoder = MediaCodec.createDecoderByType(VIDEO_MIME_H265).apply {
                val decoderFormat = MediaFormat.createVideoFormat(VIDEO_MIME_H265, width, height)
                configure(decoderFormat, null, null, 0)
                videoInputSurface = createInputSurface()
                start()
            }
            videoDecoderRunning = true

            // 2. 创建 H.264 编码器
            videoEncoder = MediaCodec.createEncoderByType(VIDEO_MIME_H264).apply {
                val encoderFormat = MediaFormat.createVideoFormat(VIDEO_MIME_H264, width, height).apply {
                    setInteger(MediaFormat.KEY_BIT_RATE, bitrate)
                    setInteger(MediaFormat.KEY_FRAME_RATE, fps)
                    setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, I_FRAME_INTERVAL)
                    setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface)
                    if (Build.VERSION.SDK_INT >= 29) {
                        setInteger(MediaFormat.KEY_LATENCY, 0)
                    }
                }
                configure(encoderFormat, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                videoOutputSurface = createInputSurface()
                start()
            }
            videoEncoderRunning = true

            // 3. 启动解码输出 → 编码输入 管线
            startVideoDrainThread()

            videoReady.set(true)
            LogUtils.i(TAG, "Video transcoder initialized: ${width}x${height}@${fps}fps, ${bitrate / 1000}kbps")
            return true

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to init video transcoder")
            releaseVideoTranscoder()
            return false
        }
    }

    /**
     * 初始化 Opus → AAC 音频转码管线
     *
     * @param sampleRate 采样率
     * @param channelCount 声道数
     * @param bitrate 码率 (bps)
     * @return true 初始化成功
     */
    fun initAudioTranscoder(
        sampleRate: Int = DEFAULT_SAMPLE_RATE,
        channelCount: Int = DEFAULT_CHANNEL_COUNT,
        bitrate: Int = DEFAULT_AUDIO_BITRATE
    ): Boolean {
        if (audioReady.get()) {
            LogUtils.w(TAG, "Audio transcoder already initialized")
            return true
        }

        try {
            // 1. 创建 Opus 解码器
            audioDecoder = MediaCodec.createDecoderByType(AUDIO_MIME_OPUS).apply {
                val format = MediaFormat.createAudioFormat(AUDIO_MIME_OPUS, sampleRate, channelCount)
                configure(format, null, null, 0)
                start()
            }
            audioDecoderRunning = true

            // 2. 创建 AAC 编码器
            audioEncoder = MediaCodec.createEncoderByType(AUDIO_MIME_AAC).apply {
                val format = MediaFormat.createAudioFormat(AUDIO_MIME_AAC, sampleRate, channelCount).apply {
                    setInteger(MediaFormat.KEY_BIT_RATE, bitrate)
                    setInteger(MediaFormat.KEY_AAC_PROFILE, MediaCodecInfo.CodecProfileLevel.AACObjectLC)
                }
                configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                start()
            }
            audioEncoderRunning = true

            // 3. 启动解码输出 → 编码输入 管线
            startAudioDrainThread()

            audioReady.set(true)
            LogUtils.i(TAG, "Audio transcoder initialized: ${sampleRate}Hz, ${channelCount}ch, ${bitrate / 1000}kbps")
            return true

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to init audio transcoder")
            releaseAudioTranscoder()
            return false
        }
    }

    // ==================== 转码接口 ====================

    /**
     * 转码一帧 H.265 → H.264
     *
     * @param h265Frame H.265 NAL 单元数据
     * @return H.264 NAL 单元数据，转码失败返回 null
     */
    fun transcodeVideoFrame(h265Frame: ByteArray): ByteArray? {
        if (!videoReady.get()) {
            LogUtils.w(TAG, "Video transcoder not ready")
            return null
        }

        try {
            val decoder = videoDecoder ?: return null

            // 送入解码器
            val inputIndex = decoder.dequeueInputBuffer(CODEC_TIMEOUT_US)
            if (inputIndex >= 0) {
                val inputBuffer = decoder.getInputBuffer(inputIndex) ?: return null
                inputBuffer.clear()
                inputBuffer.put(h265Frame)
                decoder.queueInputBuffer(inputIndex, 0, h265Frame.size, System.nanoTime() / 1000, 0)
            }

            // 从编码器输出队列取转码后的数据
            val result = videoOutputQueue.poll(DRAIN_TIMEOUT_US * 2, TimeUnit.MICROSECONDS)
            if (result != null) {
                LogUtils.d(TAG, "Video transcode: ${h265Frame.size}B → ${result.size}B")
            }
            return result

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Video transcode error")
            return null
        }
    }

    /**
     * 转码一帧 Opus → AAC
     *
     * @param opusFrame Opus 编码数据
     * @return AAC 编码数据，转码失败返回 null
     */
    fun transcodeAudioFrame(opusFrame: ByteArray): ByteArray? {
        if (!audioReady.get()) {
            LogUtils.w(TAG, "Audio transcoder not ready")
            return null
        }

        try {
            val decoder = audioDecoder ?: return null

            // 送入解码器
            val inputIndex = decoder.dequeueInputBuffer(CODEC_TIMEOUT_US)
            if (inputIndex >= 0) {
                val inputBuffer = decoder.getInputBuffer(inputIndex) ?: return null
                inputBuffer.clear()
                inputBuffer.put(opusFrame)
                decoder.queueInputBuffer(inputIndex, 0, opusFrame.size, System.nanoTime() / 1000, 0)
            }

            // 从编码器输出队列取转码后的数据
            val result = audioOutputQueue.poll(DRAIN_TIMEOUT_US * 2, TimeUnit.MICROSECONDS)
            if (result != null) {
                LogUtils.d(TAG, "Audio transcode: ${opusFrame.size}B → ${result.size}B")
            }
            return result

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Audio transcode error")
            return null
        }
    }

    // ==================== 状态查询 ====================

    fun isVideoReady(): Boolean = videoReady.get()
    fun isAudioReady(): Boolean = audioReady.get()

    // ==================== 内部实现 ====================

    /**
     * 视频管线：解码器输出 → 编码器输入 → 输出队列
     *
     * H.265 解码器输出到 Surface，H.264 编码器从 Surface 读取。
     * 这里负责从编码器读取输出并放入队列。
     */
    private fun startVideoDrainThread() {
        // 编码器输出线程
        Thread({
            val bufferInfo = MediaCodec.BufferInfo()
            LogUtils.i(TAG, "Video encoder drain thread started")

            while (videoEncoderRunning) {
                try {
                    val enc = videoEncoder ?: break
                    val index = enc.dequeueOutputBuffer(bufferInfo, DRAIN_TIMEOUT_US)

                    when {
                        index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                            LogUtils.d(TAG, "Video encoder output format: ${enc.outputFormat}")
                        }
                        index >= 0 -> {
                            if (bufferInfo.size > 0 && bufferInfo.flags and MediaCodec.BUFFER_FLAG_CODEC_CONFIG == 0) {
                                val outputBuffer = enc.getOutputBuffer(index) ?: continue
                                val data = ByteArray(bufferInfo.size)
                                outputBuffer.get(data)
                                videoOutputQueue.poll() // 丢弃最旧的帧防止队列积压
                                videoOutputQueue.offer(data)
                            }
                            enc.releaseOutputBuffer(index, false)

                            if (bufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) {
                                LogUtils.w(TAG, "Video encoder EOS")
                                break
                            }
                        }
                    }
                } catch (e: IllegalStateException) {
                    if (videoEncoderRunning) LogUtils.e(TAG, e, "Video encoder drain error")
                    break
                } catch (e: Exception) {
                    if (videoEncoderRunning) LogUtils.e(TAG, e, "Video encoder drain error")
                    break
                }
            }
            LogUtils.i(TAG, "Video encoder drain thread ended")
        }, "VideoTranscode-Drain").apply { isDaemon = true; start() }

        // 解码器输出线程（解码 H.265 → 输出到 Surface）
        Thread({
            val bufferInfo = MediaCodec.BufferInfo()
            LogUtils.i(TAG, "Video decoder drain thread started")

            while (videoDecoderRunning) {
                try {
                    val dec = videoDecoder ?: break
                    val index = dec.dequeueOutputBuffer(bufferInfo, DRAIN_TIMEOUT_US)

                    when {
                        index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                            LogUtils.d(TAG, "Video decoder output format: ${dec.outputFormat}")
                        }
                        index >= 0 -> {
                            // 解码完成，释放 buffer 让渲染到 Surface
                            dec.releaseOutputBuffer(index, bufferInfo.size > 0)

                            if (bufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) {
                                break
                            }
                        }
                    }
                } catch (e: IllegalStateException) {
                    if (videoDecoderRunning) LogUtils.e(TAG, e, "Video decoder drain error")
                    break
                } catch (e: Exception) {
                    if (videoDecoderRunning) LogUtils.e(TAG, e, "Video decoder drain error")
                    break
                }
            }
            LogUtils.i(TAG, "Video decoder drain thread ended")
        }, "VideoTranscode-Decode").apply { isDaemon = true; start() }
    }

    /**
     * 音频管线：解码器输出 PCM → 送入编码器 → 输出 AAC
     */
    private fun startAudioDrainThread() {
        // 解码器输出 → 编码器输入 线程
        Thread({
            val bufferInfo = MediaCodec.BufferInfo()
            LogUtils.i(TAG, "Audio pipeline thread started")

            while (audioDecoderRunning || audioEncoderRunning) {
                try {
                    // 从解码器读取 PCM
                    val dec = audioDecoder
                    if (dec != null && audioDecoderRunning) {
                        val decIndex = dec.dequeueOutputBuffer(bufferInfo, DRAIN_TIMEOUT_US)
                        if (decIndex >= 0) {
                            if (bufferInfo.size > 0) {
                                val pcmBuffer = dec.getOutputBuffer(decIndex) ?: continue
                                val pcmData = ByteArray(bufferInfo.size)
                                pcmBuffer.get(pcmData)

                                // 送入编码器
                                val enc = audioEncoder
                                if (enc != null && audioEncoderRunning) {
                                    val encIndex = enc.dequeueInputBuffer(CODEC_TIMEOUT_US)
                                    if (encIndex >= 0) {
                                        val encBuffer = enc.getInputBuffer(encIndex) ?: continue
                                        encBuffer.clear()
                                        encBuffer.put(pcmData)
                                        enc.queueInputBuffer(encIndex, 0, pcmData.size, bufferInfo.presentationTimeUs, 0)
                                    }
                                }
                            }
                            dec.releaseOutputBuffer(decIndex, false)
                        }
                    }

                    // 从编码器读取 AAC
                    val enc = audioEncoder
                    if (enc != null && audioEncoderRunning) {
                        val encIndex = enc.dequeueOutputBuffer(bufferInfo, DRAIN_TIMEOUT_US)
                        if (encIndex >= 0) {
                            if (bufferInfo.size > 0 && bufferInfo.flags and MediaCodec.BUFFER_FLAG_CODEC_CONFIG == 0) {
                                val encBuffer = enc.getOutputBuffer(encIndex) ?: continue
                                val aacData = ByteArray(bufferInfo.size)
                                encBuffer.get(aacData)
                                audioOutputQueue.poll()
                                audioOutputQueue.offer(aacData)
                            }
                            enc.releaseOutputBuffer(encIndex, false)
                        }
                    }
                } catch (e: IllegalStateException) {
                    if (audioDecoderRunning || audioEncoderRunning) {
                        LogUtils.e(TAG, e, "Audio pipeline error")
                    }
                    break
                } catch (e: Exception) {
                    if (audioDecoderRunning || audioEncoderRunning) {
                        LogUtils.e(TAG, e, "Audio pipeline error")
                    }
                    break
                }
            }
            LogUtils.i(TAG, "Audio pipeline thread ended")
        }, "AudioTranscode-Pipeline").apply { isDaemon = true; start() }
    }

    // ==================== 释放资源 ====================

    private fun releaseVideoTranscoder() {
        videoReady.set(false)
        videoDecoderRunning = false
        videoEncoderRunning = false

        try { videoDecoder?.stop() } catch (_: Exception) {}
        try { videoDecoder?.release() } catch (_: Exception) {}
        videoDecoder = null

        try { videoEncoder?.stop() } catch (_: Exception) {}
        try { videoEncoder?.release() } catch (_: Exception) {}
        videoEncoder = null

        try { videoInputSurface?.release() } catch (_: Exception) {}
        videoInputSurface = null
        try { videoOutputSurface?.release() } catch (_: Exception) {}
        videoOutputSurface = null

        videoOutputQueue.clear()
        LogUtils.i(TAG, "Video transcoder released")
    }

    private fun releaseAudioTranscoder() {
        audioReady.set(false)
        audioDecoderRunning = false
        audioEncoderRunning = false

        try { audioDecoder?.stop() } catch (_: Exception) {}
        try { audioDecoder?.release() } catch (_: Exception) {}
        audioDecoder = null

        try { audioEncoder?.stop() } catch (_: Exception) {}
        try { audioEncoder?.release() } catch (_: Exception) {}
        audioEncoder = null

        audioOutputQueue.clear()
        LogUtils.i(TAG, "Audio transcoder released")
    }

    /**
     * 释放所有转码资源
     */
    fun release() {
        releaseVideoTranscoder()
        releaseAudioTranscoder()
        LogUtils.i(TAG, "All transcoders released")
    }
}
