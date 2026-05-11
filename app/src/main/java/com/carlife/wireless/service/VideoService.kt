package com.carlife.wireless.service

import android.app.Service
import android.content.Context
import android.content.Intent
import android.hardware.display.DisplayManager
import android.hardware.display.VirtualDisplay
import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.os.Binder
import android.os.IBinder
import android.util.DisplayMetrics
import android.view.WindowManager
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean

/**
 * 视频服务
 *
 * 负责：
 * - 通过 MediaProjection 采集屏幕内容
 * - 使用 MediaCodec 进行 H.264 硬件编码
 * - 通过回调将编码后的 H.264 帧传递给上层（StreamBridge / MdRole）
 *
 * 使用方式：
 * 1. 外部获取 MediaProjection 实例后调用 setMediaProjection()
 * 2. 调用 startVideo() 开始采集编码
 * 3. 通过 FrameCallback 接收编码后的 H.264 帧
 */
class VideoService : Service() {

    companion object {
        private const val TAG = "VideoService"
        private const val MIME_TYPE = MediaFormat.MIMETYPE_VIDEO_AVC // H.264
        private const val I_FRAME_INTERVAL = 2 // 秒
    }

    /** 视频帧回调接口 */
    interface FrameCallback {
        /** 收到一帧 H.264 编码数据（NAL 单元） */
        fun onFrame(frame: ByteArray, isKeyFrame: Boolean)
        /** 编码器错误 */
        fun onError(error: String)
    }

    inner class VideoBinder : Binder() {
        fun getService(): VideoService = this@VideoService
    }

    private val binder = VideoBinder()
    private val executor: ExecutorService = Executors.newCachedThreadPool()
    private val isStreaming = AtomicBoolean(false)

    // 视频编码参数
    private var videoWidth: Int = 1280
    private var videoHeight: Int = 720
    private var videoBitrate: Int = 4_000_000 // 4 Mbps
    private var videoFramerate: Int = 30
    private var displayDpi: Int = 320

    // MediaProjection & VirtualDisplay
    private var mediaProjection: MediaProjection? = null
    private var virtualDisplay: VirtualDisplay? = null

    // MediaCodec 编码器
    private var encoder: MediaCodec? = null
    private var drainThread: Thread? = null

    // 帧回调
    private var frameCallback: FrameCallback? = null

    // SPS/PPS 缓存（关键帧前需要拼接）
    private var cachedSps: ByteArray? = null
    private var cachedPps: ByteArray? = null

    override fun onCreate() {
        super.onCreate()
        LogUtils.i(TAG, "VideoService created")

        // 从 SettingsManager 读取视频参数
        val resolution = SettingsManager.getResolution(this)
        videoWidth = resolution.first
        videoHeight = resolution.second
        videoBitrate = SettingsManager.getBitrate(this)
        videoFramerate = SettingsManager.getFramerate(this)

        // 获取屏幕 DPI
        val wm = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        val metrics = DisplayMetrics()
        @Suppress("DEPRECATION")
        wm.defaultDisplay.getMetrics(metrics)
        displayDpi = metrics.densityDpi

        LogUtils.i(TAG, "Video parameters: ${videoWidth}x${videoHeight}, " +
                "${videoBitrate / 1_000_000}Mbps, ${videoFramerate}fps, dpi=$displayDpi")
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtils.i(TAG, "VideoService started")
        return START_STICKY
    }

    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "VideoService destroyed")
        stopVideo()
        executor.shutdown()
    }

    /**
     * 设置 MediaProjection 实例
     * 必须在 startVideo() 之前调用
     */
    fun setMediaProjection(projection: MediaProjection) {
        mediaProjection = projection
        LogUtils.i(TAG, "MediaProjection set")

        // 监听 MediaProjection 停止事件
        projection.registerCallback(object : MediaProjection.Callback() {
            override fun onStop() {
                LogUtils.w(TAG, "MediaProjection stopped externally")
                stopVideo()
            }
        }, null)
    }

    /**
     * 设置视频帧回调
     */
    fun setFrameCallback(callback: FrameCallback?) {
        this.frameCallback = callback
    }

    /**
     * 启动屏幕采集和 H.264 编码
     * @return true 启动成功
     */
    fun startVideo(): Boolean {
        if (isStreaming.get()) {
            LogUtils.w(TAG, "Already streaming")
            return true
        }

        val projection = mediaProjection
        if (projection == null) {
            val error = "MediaProjection not set, call setMediaProjection() first"
            LogUtils.e(TAG, error)
            frameCallback?.onError(error)
            return false
        }

        try {
            // 1. 创建 MediaCodec H.264 编码器
            encoder = createEncoder()
            if (encoder == null) {
                val error = "Failed to create H.264 encoder"
                LogUtils.e(TAG, error)
                frameCallback?.onError(error)
                return false
            }

            // 2. 创建 VirtualDisplay，将屏幕内容输出到编码器的输入 Surface
            val inputSurface = encoder!!.createInputSurface()
            virtualDisplay = projection.createVirtualDisplay(
                "CarLife-ScreenCapture",
                videoWidth, videoHeight, displayDpi,
                DisplayManager.VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR,
                inputSurface,
                null, null
            )

            // 3. 启动编码器
            encoder!!.start()
            isStreaming.set(true)

            // 4. 启动编码输出读取线程
            drainThread = Thread({ drainEncoder() }, "VideoEncoder-Drain").apply {
                isDaemon = true
                start()
            }

            LogUtils.i(TAG, "Video capture started: ${videoWidth}x${videoHeight} @ ${videoFramerate}fps")
            return true

        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to start video capture")
            frameCallback?.onError("Start failed: ${e.message}")
            stopVideo()
            return false
        }
    }

    /**
     * 停止屏幕采集和编码
     */
    fun stopVideo() {
        if (!isStreaming.getAndSet(false)) return

        LogUtils.i(TAG, "Stopping video capture...")

        // 停止 VirtualDisplay
        try {
            virtualDisplay?.release()
        } catch (_: Exception) {}
        virtualDisplay = null

        // 停止编码器
        try {
            encoder?.stop()
        } catch (_: Exception) {}
        try {
            encoder?.release()
        } catch (_: Exception) {}
        encoder = null

        // 等待 drain 线程退出
        try {
            drainThread?.join(2000)
        } catch (_: Exception) {}
        drainThread = null

        // 释放 MediaProjection 引用（不 stop，由 ConnectionService 管理生命周期）
        mediaProjection = null

        cachedSps = null
        cachedPps = null

        LogUtils.i(TAG, "Video capture stopped")
    }

    /**
     * 设置视频参数（下次 startVideo 生效）
     */
    fun setVideoParameters(width: Int, height: Int, bitrate: Int, framerate: Int) {
        videoWidth = width
        videoHeight = height
        videoBitrate = bitrate
        videoFramerate = framerate
        LogUtils.i(TAG, "Video parameters updated: ${width}x${height}, $bitrate bps, $framerate fps")
    }

    fun isStreaming(): Boolean = isStreaming.get()

    // ==================== 编码器创建 ====================

    private fun createEncoder(): MediaCodec? {
        return try {
            val format = MediaFormat.createVideoFormat(MIME_TYPE, videoWidth, videoHeight).apply {
                setInteger(MediaFormat.KEY_BIT_RATE, videoBitrate)
                setInteger(MediaFormat.KEY_FRAME_RATE, videoFramerate)
                setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, I_FRAME_INTERVAL)
                setInteger(
                    MediaFormat.KEY_COLOR_FORMAT,
                    MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface
                )
                // CBR 模式保持码率稳定
                setInteger(MediaFormat.KEY_BITRATE_MODE, MediaCodecInfo.EncoderCapabilities.BITRATE_MODE_CBR)
                // Baseline profile 兼容性最好
                setInteger(MediaFormat.KEY_PROFILE, MediaCodecInfo.CodecProfileLevel.AVCProfileBaseline)
                setInteger(MediaFormat.KEY_LEVEL, MediaCodecInfo.CodecProfileLevel.AVCLevel31)
            }

            val codec = MediaCodec.createEncoderByType(MIME_TYPE)
            codec.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
            LogUtils.i(TAG, "H.264 encoder created: ${videoWidth}x${videoHeight}")
            codec
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to create encoder")
            null
        }
    }

    // ==================== 编码输出读取 ====================

    /**
     * 持续从编码器读取编码后的 H.264 数据
     * 运行在独立线程
     */
    private fun drainEncoder() {
        val bufferInfo = MediaCodec.BufferInfo()
        LogUtils.i(TAG, "Encoder drain thread started")

        while (isStreaming.get()) {
            try {
                val enc = encoder ?: break
                val index = enc.dequeueOutputBuffer(bufferInfo, 10_000) // 10ms 超时

                when {
                    index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                        val newFormat = enc.outputFormat
                        LogUtils.i(TAG, "Encoder output format changed: $newFormat")
                        // 提取 SPS/PPS
                        extractSpsPps(newFormat)
                    }
                    index >= 0 -> {
                        val outputBuffer = enc.getOutputBuffer(index) ?: continue

                        if (bufferInfo.size > 0) {
                            val data = ByteArray(bufferInfo.size)
                            outputBuffer.get(data)

                            val isKeyFrame = (bufferInfo.flags and MediaCodec.BUFFER_FLAG_KEY_FRAME) != 0

                            // 如果是关键帧，检查是否需要拼接 SPS/PPS
                            val frameData = if (isKeyFrame) {
                                prependSpsPps(data)
                            } else {
                                data
                            }

                            frameCallback?.onFrame(frameData, isKeyFrame)
                        }

                        enc.releaseOutputBuffer(index, false)

                        // 流结束标志
                        if (bufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) {
                            LogUtils.w(TAG, "Encoder EOS reached")
                            break
                        }
                    }
                }
            } catch (e: IllegalStateException) {
                if (isStreaming.get()) {
                    LogUtils.e(TAG, e, "Encoder drain error (state error)")
                }
                break
            } catch (e: Exception) {
                if (isStreaming.get()) {
                    LogUtils.e(TAG, e, "Encoder drain error")
                }
                break
            }
        }

        LogUtils.i(TAG, "Encoder drain thread ended")
    }

    /**
     * 从 MediaFormat 中提取 SPS 和 PPS
     */
    private fun extractSpsPps(format: MediaFormat) {
        try {
            val sps = format.getByteBuffer("csd-0")
            val pps = format.getByteBuffer("csd-1")
            if (sps != null) {
                cachedSps = ByteArray(sps.remaining()).also { sps.get(it) }
                LogUtils.d(TAG, "SPS cached: ${cachedSps!!.size} bytes")
            }
            if (pps != null) {
                cachedPps = ByteArray(pps.remaining()).also { pps.get(it) }
                LogUtils.d(TAG, "PPS cached: ${cachedPps!!.size} bytes")
            }
        } catch (e: Exception) {
            LogUtils.w(TAG, "Failed to extract SPS/PPS: ${e.message}")
        }
    }

    /**
     * 在关键帧前拼接 SPS/PPS（解码器需要这些信息来初始化）
     */
    private fun prependSpsPps(frameData: ByteArray): ByteArray {
        val sps = cachedSps
        val pps = cachedPps
        if (sps == null || pps == null) return frameData

        val combined = ByteArray(sps.size + pps.size + frameData.size)
        System.arraycopy(sps, 0, combined, 0, sps.size)
        System.arraycopy(pps, 0, combined, sps.size, pps.size)
        System.arraycopy(frameData, 0, combined, sps.size + pps.size, frameData.size)
        return combined
    }
}
