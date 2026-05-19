package com.carlife.wireless.service

import android.app.Service
import android.content.Context
import android.content.Intent
import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioPlaybackCaptureConfiguration
import android.media.AudioRecord
import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.media.projection.MediaProjection
import android.os.Binder
import android.os.IBinder
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean

/**
 * 音频服务
 *
 * 负责：
 * - 通过 AudioPlaybackCapture (Android 10+) 或 AudioRecord 采集系统音频
 * - 使用 MediaCodec 进行 AAC 编码
 * - 通过回调将编码后的 AAC 数据传递给上层
 *
 * 注意：AudioPlaybackCapture 需要 MediaProjection 授权
 */
class AudioService : Service() {

    companion object {
        private const val TAG = "AudioService"
        private const val MIME_TYPE = MediaFormat.MIMETYPE_AUDIO_AAC
        private const val CHANNEL_CONFIG = AudioFormat.CHANNEL_IN_STEREO
        private const val AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT
        private const val BIT_RATE = 128_000 // 128 kbps
        private const val AAC_SAMPLE_RATE = 44100 // AAC 标准采样率
    }

    /** 音频数据回调接口 */
    interface AudioCallback {
        /** 收到一帧 AAC 编码数据 */
        fun onAudioData(data: ByteArray)
        /** 音频错误 */
        fun onError(error: String)
    }

    inner class AudioBinder : Binder() {
        fun getService(): AudioService = this@AudioService
    }

    private val binder = AudioBinder()
    private val executor: ExecutorService = Executors.newCachedThreadPool()
    private val isStreaming = AtomicBoolean(false)

    // 音频参数
    private var sampleRate: Int = SettingsManager.SAMPLE_RATE_DEFAULT
    private var channelCount: Int = 2
    private var bitrate: Int = BIT_RATE

    // MediaProjection（AudioPlaybackCapture 需要）
    private var mediaProjection: MediaProjection? = null

    // AudioRecord 采集
    private var audioRecord: AudioRecord? = null
    private var bufferSize: Int = 0

    // MediaCodec AAC 编码器（capture 和 drain 两个线程共享，需通过 encoderLock 同步访问）
    private var encoder: MediaCodec? = null
    private val encoderLock = Any()

    // 工作线程
    private var captureThread: Thread? = null
    private var drainThread: Thread? = null

    // 回调
    private var audioCallback: AudioCallback? = null

    override fun onCreate() {
        super.onCreate()
        LogUtils.i(TAG, "AudioService created")

        sampleRate = SettingsManager.getSampleRate(this)
        LogUtils.i(TAG, "Audio parameters: ${sampleRate}Hz, ${channelCount}ch, ${bitrate / 1000}kbps")
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtils.i(TAG, "AudioService started")
        return START_STICKY
    }

    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "AudioService destroyed")
        stopAudio()
        executor.shutdown()
    }

    /**
     * 设置 MediaProjection 实例（用于 AudioPlaybackCapture）
     * 必须在 startAudio() 之前调用
     */
    fun setMediaProjection(projection: MediaProjection) {
        mediaProjection = projection
        LogUtils.i(TAG, "MediaProjection set for audio capture")
    }

    /**
     * 设置音频数据回调
     */
    fun setAudioCallback(callback: AudioCallback?) {
        this.audioCallback = callback
    }

    /**
     * 启动音频采集和 AAC 编码
     * @return true 启动成功
     */
    fun startAudio(): Boolean {
        if (isStreaming.get()) {
            LogUtils.w(TAG, "Already streaming")
            return true
        }

        try {
            // 1. 创建 AudioRecord（优先使用 AudioPlaybackCapture）
            audioRecord = createAudioRecord()
            if (audioRecord == null) {
                val error = "Failed to create AudioRecord"
                LogUtils.e(TAG, error)
                audioCallback?.onError(error)
                return false
            }

            // 2. 创建 AAC 编码器
            encoder = createEncoder()
            if (encoder == null) {
                val error = "Failed to create AAC encoder"
                LogUtils.e(TAG, error)
                audioCallback?.onError(error)
                return false
            }

            // 3. 启动采集和编码
            audioRecord!!.startRecording()
            encoder!!.start()
            isStreaming.set(true)

            // 4. 启动 PCM 采集 → 编码器输入线程
            captureThread = Thread({ captureAndEncode() }, "AudioCapture").apply {
                isDaemon = true
                start()
            }

            // 5. 启动编码器输出读取线程
            drainThread = Thread({ drainEncoder() }, "AudioEncoder-Drain").apply {
                isDaemon = true
                start()
            }

            LogUtils.i(TAG, "Audio capture started: ${sampleRate}Hz, ${channelCount}ch")
            return true

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to start audio capture")
            audioCallback?.onError("Start failed: ${e.message}")
            stopAudio()
            return false
        }
    }

    /**
     * 停止音频采集和编码
     */
    fun stopAudio() {
        if (!isStreaming.getAndSet(false)) return

        LogUtils.i(TAG, "Stopping audio capture...")

        // 停止 AudioRecord
        try {
            audioRecord?.stop()
        } catch (_: Exception) {}
        try {
            audioRecord?.release()
        } catch (_: Exception) {}
        audioRecord = null

        // 停止编码器
        try {
            encoder?.stop()
        } catch (_: Exception) {}
        try {
            encoder?.release()
        } catch (_: Exception) {}
        encoder = null

        // 等待线程退出
        try {
            captureThread?.join(2000)
        } catch (_: Exception) {}
        captureThread = null
        try {
            drainThread?.join(2000)
        } catch (_: Exception) {}
        drainThread = null

        // 释放 MediaProjection 引用（不 stop，由 ConnectionService 管理生命周期）
        mediaProjection = null

        LogUtils.i(TAG, "Audio capture stopped")
    }

    fun setAudioParameters(sampleRate: Int, channelCount: Int, bitrate: Int) {
        this.sampleRate = sampleRate
        this.channelCount = channelCount
        this.bitrate = bitrate
        LogUtils.i(TAG, "Audio parameters updated: ${sampleRate}Hz, ${channelCount}ch, ${bitrate / 1000}kbps")
    }

    fun isStreaming(): Boolean = isStreaming.get()

    // ==================== AudioRecord 创建 ====================

    private fun createAudioRecord(): AudioRecord? {
        return try {
            // 优先使用 AudioPlaybackCapture（Android 10+，无需录音权限，可录制其他 APP 音频）
            val record = if (mediaProjection != null && android.os.Build.VERSION.SDK_INT >= 29) {
                createPlaybackCaptureRecord()
            } else {
                createLegacyAudioRecord()
            }

            if (record?.state != AudioRecord.STATE_INITIALIZED) {
                LogUtils.e(TAG, "AudioRecord initialization failed")
                record?.release()
                return null
            }

            bufferSize = record.bufferSizeInFrames * channelCount * 2 // 16-bit = 2 bytes/sample
            LogUtils.i(TAG, "AudioRecord created, bufferSize=$bufferSize")
            record

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to create AudioRecord")
            null
        }
    }

    /**
     * 使用 AudioPlaybackCapture API 创建 AudioRecord（Android 10+）
     * 可以录制其他 APP 播放的音频（导航语音、媒体音乐等）
     */
    private fun createPlaybackCaptureRecord(): AudioRecord? {
        val projection = mediaProjection ?: return null

        val config = AudioPlaybackCaptureConfiguration.Builder(projection)
            .addMatchingUsage(AudioAttributes.USAGE_MEDIA)
            .addMatchingUsage(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE)
            .addMatchingUsage(AudioAttributes.USAGE_GAME)
            .excludeUsage(AudioAttributes.USAGE_NOTIFICATION)
            .excludeUsage(AudioAttributes.USAGE_ALARM)
            .build()

        val audioFormat = AudioFormat.Builder()
            .setEncoding(AUDIO_FORMAT)
            .setSampleRate(sampleRate)
            .setChannelMask(CHANNEL_CONFIG)
            .build()

        bufferSize = AudioRecord.getMinBufferSize(sampleRate, CHANNEL_CONFIG, AUDIO_FORMAT)

        val record = AudioRecord.Builder()
            .setAudioPlaybackCaptureConfig(config)
            .setAudioFormat(audioFormat)
            .setBufferSizeInBytes(bufferSize * 2) // 双缓冲
            .build()

        LogUtils.i(TAG, "AudioPlaybackCapture record created")
        return record
    }

    /**
     * 使用传统 AudioRecord 创建（需要 RECORD_AUDIO 权限）
     */
    private fun createLegacyAudioRecord(): AudioRecord? {
        bufferSize = AudioRecord.getMinBufferSize(sampleRate, CHANNEL_CONFIG, AUDIO_FORMAT)

        val record = AudioRecord(
            android.media.MediaRecorder.AudioSource.MIC,
            sampleRate,
            CHANNEL_CONFIG,
            AUDIO_FORMAT,
            bufferSize * 2
        )

        LogUtils.i(TAG, "Legacy AudioRecord created (requires RECORD_AUDIO permission)")
        return record
    }

    // ==================== AAC 编码器创建 ====================

    private fun createEncoder(): MediaCodec? {
        return try {
            // 使用与 AudioRecord 相同的采样率，避免变速变调
            val encodeSampleRate = sampleRate

            val format = MediaFormat.createAudioFormat(MIME_TYPE, encodeSampleRate, channelCount).apply {
                setInteger(MediaFormat.KEY_BIT_RATE, bitrate)
                setInteger(MediaFormat.KEY_AAC_PROFILE, MediaCodecInfo.CodecProfileLevel.AACObjectLC)
                setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, bufferSize)
            }

            val codec = MediaCodec.createEncoderByType(MIME_TYPE)
            codec.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
            LogUtils.i(TAG, "AAC encoder created: ${encodeSampleRate}Hz, ${channelCount}ch, ${bitrate / 1000}kbps")
            codec
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to create AAC encoder")
            null
        }
    }

    // ==================== 采集与编码 ====================

    /**
     * 从 AudioRecord 读取 PCM 数据，送入 MediaCodec 编码
     * 与 drainEncoder() 共享 encoder 实例，通过 encoderLock 同步访问
     */
    private fun captureAndEncode() {
        val pcmBuffer = ByteArray(bufferSize)
        LogUtils.i(TAG, "Audio capture thread started")

        while (isStreaming.get()) {
            try {
                val record = audioRecord ?: break

                val bytesRead = record.read(pcmBuffer, 0, pcmBuffer.size)
                if (bytesRead > 0) {
                    // 送入编码器（加锁防止与 drainEncoder 并发操作 encoder）
                    synchronized(encoderLock) {
                        val enc = encoder ?: return@synchronized
                        val inputIndex = enc.dequeueInputBuffer(10_000)
                        if (inputIndex >= 0) {
                            val inputBuffer = enc.getInputBuffer(inputIndex) ?: return@synchronized
                            inputBuffer.clear()
                            val size = minOf(bytesRead, inputBuffer.remaining())
                            inputBuffer.put(pcmBuffer, 0, size)
                            enc.queueInputBuffer(
                                inputIndex, 0, size,
                                System.nanoTime() / 1000, // 时间戳（微秒）
                                0
                            )
                        }
                    }
                } else if (bytesRead < 0) {
                    LogUtils.e(TAG, "AudioRecord read error: $bytesRead")
                    break
                }
            } catch (e: IllegalStateException) {
                if (isStreaming.get()) {
                    LogUtils.e(TAG, e, "Audio capture error (state)")
                    audioCallback?.onError("Audio capture state error: ${e.message}")
                }
                break
            } catch (e: Exception) {
                if (isStreaming.get()) {
                    LogUtils.e(TAG, e, "Audio capture error")
                    audioCallback?.onError("Audio capture error: ${e.message}")
                }
                break
            }
        }

        LogUtils.i(TAG, "Audio capture thread ended")
    }

    /**
     * 从编码器读取 AAC 数据，通过回调传递
     * 与 captureAndEncode() 共享 encoder 实例，通过 encoderLock 同步访问
     */
    private fun drainEncoder() {
        val bufferInfo = MediaCodec.BufferInfo()
        LogUtils.i(TAG, "Audio encoder drain thread started")

        while (isStreaming.get()) {
            try {
                // 加锁防止与 captureAndEncode 并发操作 encoder
                val index = synchronized(encoderLock) {
                    val enc = encoder ?: return@synchronized -2 // -2 表示 encoder 为 null
                    enc.dequeueOutputBuffer(bufferInfo, 10_000)
                }

                when {
                    index == -2 -> break // encoder 已释放
                    index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                        synchronized(encoderLock) {
                            LogUtils.i(TAG, "AAC encoder output format: ${encoder?.outputFormat}")
                        }
                    }
                    index >= 0 -> {
                        val outputBuffer = synchronized(encoderLock) {
                            encoder?.getOutputBuffer(index)
                        } ?: continue

                        if (bufferInfo.size > 0 && bufferInfo.flags and MediaCodec.BUFFER_FLAG_CODEC_CONFIG == 0) {
                            val data = ByteArray(bufferInfo.size)
                            outputBuffer.get(data)
                            audioCallback?.onAudioData(data)
                        }

                        synchronized(encoderLock) {
                            encoder?.releaseOutputBuffer(index, false)
                        }

                        if (bufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) {
                            LogUtils.w(TAG, "AAC encoder EOS")
                            break
                        }
                    }
                }
            } catch (e: IllegalStateException) {
                if (isStreaming.get()) {
                    LogUtils.e(TAG, e, "AAC drain error (state)")
                    audioCallback?.onError("AAC drain state error: ${e.message}")
                }
                break
            } catch (e: Exception) {
                if (isStreaming.get()) {
                    LogUtils.e(TAG, e, "AAC drain error")
                    audioCallback?.onError("AAC drain error: ${e.message}")
                }
                break
            }
        }

        LogUtils.i(TAG, "Audio encoder drain thread ended")
    }
}
