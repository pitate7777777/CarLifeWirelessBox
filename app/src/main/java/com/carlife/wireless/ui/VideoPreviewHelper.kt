package com.carlife.wireless.ui

import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.os.Handler
import android.os.Looper
import android.view.Surface
import android.view.SurfaceView
import android.view.View
import android.widget.TextView
import com.carlife.wireless.util.LogUtils
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger

/**
 * 视频预览解码器
 *
 * 接收 H.264 NAL 数据，通过 MediaCodec 硬件解码后渲染到 SurfaceView。
 * 用于在手机本地预览手机 B 的投屏画面。
 *
 * 使用方式：
 * 1. bind(surfaceView, placeholder, fpsLabel) 绑定 UI
 * 2. feedFrame(data) 喂入 H.264 帧数据
 * 3. release() 释放资源
 */
class VideoPreviewHelper {

    companion object {
        private const val TAG = "VideoPreview"
        private const val MIME_TYPE = MediaFormat.MIMETYPE_VIDEO_AVC
        // 预览用较低分辨率，减少解码开销
        private const val DEFAULT_WIDTH = 1280
        private const val DEFAULT_HEIGHT = 720
        // FPS 统计间隔
        private const val FPS_INTERVAL_MS = 2000L
    }

    private var decoder: MediaCodec? = null
    private var surface: Surface? = null
    private var isConfigured = AtomicBoolean(false)
    private var isReleased = AtomicBoolean(false)

    // UI 引用
    private var surfaceView: SurfaceView? = null
    private var placeholder: TextView? = null
    private var fpsLabel: TextView? = null

    // FPS 统计
    private val frameCount = AtomicInteger(0)
    private var lastFpsTime = 0L
    private val fpsHandler = Handler(Looper.getMainLooper())
    private val fpsRunnable = object : Runnable {
        override fun run() {
            val now = System.currentTimeMillis()
            val elapsed = now - lastFpsTime
            if (elapsed > 0) {
                val count = frameCount.getAndSet(0)
                val fps = count * 1000f / elapsed
                fpsLabel?.text = String.format("%.1f fps", fps)
                lastFpsTime = now
            }
            if (!isReleased.get()) {
                fpsHandler.postDelayed(this, FPS_INTERVAL_MS)
            }
        }
    }

    // 解码线程
    private var drainThread: Thread? = null
    private val frameQueue = ArrayDeque<ByteArray>(30) // 最多缓存 30 帧

    /**
     * 绑定 UI 组件
     */
    fun bind(
        surfaceView: SurfaceView,
        placeholder: TextView,
        fpsLabel: TextView
    ) {
        this.surfaceView = surfaceView
        this.placeholder = placeholder
        this.fpsLabel = fpsLabel

        // 监听 Surface 创建
        surfaceView.holder.addCallback(object : android.view.SurfaceHolder.Callback {
            override fun surfaceCreated(holder: android.view.SurfaceHolder) {
                LogUtils.d(TAG, "Surface created")
                surface = holder.surface
                initDecoder()
            }

            override fun surfaceChanged(holder: android.view.SurfaceHolder, format: Int, width: Int, height: Int) {
                LogUtils.d(TAG, "Surface changed: ${width}x${height}")
            }

            override fun surfaceDestroyed(holder: android.view.SurfaceHolder) {
                LogUtils.d(TAG, "Surface destroyed")
                releaseDecoder()
                surface = null
            }
        })
    }

    /**
     * 开始接收帧（显示预览窗口，隐藏遮罩）
     */
    fun startPreview() {
        placeholder?.visibility = View.GONE
        surfaceView?.visibility = View.VISIBLE
        lastFpsTime = System.currentTimeMillis()
        fpsHandler.postDelayed(fpsRunnable, FPS_INTERVAL_MS)
        LogUtils.i(TAG, "Preview started")
    }

    /**
     * 停止预览（显示遮罩）
     */
    fun stopPreview() {
        placeholder?.visibility = View.VISIBLE
        fpsLabel?.text = "-- fps"
        fpsHandler.removeCallbacks(fpsRunnable)
        frameCount.set(0)
        LogUtils.i(TAG, "Preview stopped")
    }

    /**
     * 喂入一帧 H.264 数据
     * 可以从任意线程调用
     */
    fun feedFrame(data: ByteArray) {
        if (isReleased.get() || !isConfigured.get()) return

        try {
            val dec = decoder ?: return

            // 将帧数据入队并尝试送入解码器（整体加锁避免竞态）
            synchronized(frameQueue) {
                if (frameQueue.size >= 30) {
                    frameQueue.removeFirst() // 丢弃最旧的帧
                }
                frameQueue.addLast(data)

                // 尝试送入解码器
                val inputIndex = dec.dequeueInputBuffer(0) // 非阻塞
                if (inputIndex >= 0) {
                    val inputBuffer = dec.getInputBuffer(inputIndex) ?: return
                    inputBuffer.clear()

                    val frame = frameQueue.removeFirstOrNull() ?: return
                    val size = minOf(frame.size, inputBuffer.remaining())
                    inputBuffer.put(frame, 0, size)
                    dec.queueInputBuffer(inputIndex, 0, size, 0, 0)
                }
            }

            // 读取解码输出并渲染
            drainOutput()

        } catch (e: IllegalStateException) {
            // 解码器状态异常，可能是格式变化
            LogUtils.w(TAG, "Decode error: ${e.message}")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Feed frame error")
        }
    }

    /**
     * 释放所有资源
     */
    fun release() {
        if (isReleased.getAndSet(true)) return

        fpsHandler.removeCallbacks(fpsRunnable)
        releaseDecoder()

        surface?.release()
        surface = null

        synchronized(frameQueue) {
            frameQueue.clear()
        }

        surfaceView = null
        placeholder = null
        fpsLabel = null

        LogUtils.i(TAG, "Released")
    }

    // ==================== 解码器管理 ====================

    private fun initDecoder() {
        if (isReleased.get() || surface == null) return

        try {
            decoder = MediaCodec.createDecoderByType(MIME_TYPE)
            val format = MediaFormat.createVideoFormat(MIME_TYPE, DEFAULT_WIDTH, DEFAULT_HEIGHT)
            decoder!!.configure(format, surface, null, 0)
            decoder!!.start()
            isConfigured.set(true)

            // 启动输出读取线程
            drainThread = Thread({
                while (!isReleased.get() && isConfigured.get()) {
                    try {
                        drainOutput()
                        Thread.sleep(5) // ~200 次/秒的检查频率
                    } catch (_: InterruptedException) {
                        break
                    } catch (_: Exception) {}
                }
            }, "Preview-Drain").apply {
                isDaemon = true
                start()
            }

            LogUtils.i(TAG, "H.264 decoder initialized")
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Failed to init decoder")
            isConfigured.set(false)
        }
    }

    private fun releaseDecoder() {
        isConfigured.set(false)

        drainThread?.interrupt()
        try { drainThread?.join(1000) } catch (_: Exception) {}
        drainThread = null

        try { decoder?.stop() } catch (_: Exception) {}
        try { decoder?.release() } catch (_: Exception) {}
        decoder = null
    }

    /**
     * 从解码器读取解码后的帧并渲染到 Surface
     */
    private fun drainOutput() {
        val dec = decoder ?: return
        val bufferInfo = MediaCodec.BufferInfo()

        while (true) {
            val index = dec.dequeueOutputBuffer(bufferInfo, 0)
            when {
                index >= 0 -> {
                    // 渲染到 Surface
                    dec.releaseOutputBuffer(index, true)
                    frameCount.incrementAndGet()
                }
                index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                    LogUtils.d(TAG, "Decoder format: ${dec.outputFormat}")
                }
                else -> break // 没有更多输出
            }
        }
    }
}
