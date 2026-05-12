package com.carlife.wireless.service

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.graphics.Path
import android.os.Handler
import android.os.Looper
import android.view.accessibility.AccessibilityEvent
import com.carlife.wireless.util.LogUtils

/**
 * 无障碍服务 — 触摸事件注入
 *
 * 通过 AccessibilityService.dispatchGesture() 实现触摸注入，
 * 无需 root 权限（Android 7.0+）。
 *
 * 支持完整的触摸手势：
 * - 单点点击（ACTION_DOWN → ACTION_UP）
 * - 滑动手势（ACTION_DOWN → ACTION_MOVE* → ACTION_UP）
 * - 长按手势（ACTION_DOWN → 延迟 → ACTION_UP）
 *
 * 配置方式：
 * 1. 在 AndroidManifest.xml 中声明
 * 2. 在 res/xml/accessibility_service_config.xml 中配置
 * 3. 用户在系统设置 → 无障碍 中手动开启
 *
 * 注入流程：
 * TouchService 持有 CarAccessibilityService 的引用，
 * 调用 injectTouch(action, x, y) 完成触摸注入。
 *
 * 手势构建流程：
 * - ACTION_DOWN: 记录起点，清空路径
 * - ACTION_MOVE: 累积路径点
 * - ACTION_UP: 构建 StrokeDescription 并 dispatchGesture
 */
class CarAccessibilityService : AccessibilityService() {

    companion object {
        private const val TAG = "CarAccessibility"

        /** 单例引用，供 TouchService 使用 */
        @Volatile
        var instance: CarAccessibilityService? = null
            private set

        /** 快速点击持续时间（毫秒） */
        private const val TAP_DURATION_MS = 50L

        /** 滑动持续时间（毫秒） */
        private const val SWIPE_DURATION_MS = 300L

        /** 手势路径最大点数（防止内存溢出） */
        private const val MAX_GESTURE_POINTS = 500

        /** MOVE 采样间隔（毫秒）— 每隔 N 毫秒才记录一个 MOVE 点，降低路径复杂度 */
        private const val MOVE_SAMPLE_INTERVAL_MS = 16L // ~60fps
    }

    // ==================== 手势状态 ====================

    /** 当前手势路径 */
    private var gesturePath: Path? = null

    /** 手势是否正在进行（DOWN 已发送，UP 未到达） */
    private var isGestureActive = false

    /** 手势起始时间 */
    private var gestureStartTime = 0L

    /** 上一个 MOVE 点的时间戳（用于采样降频） */
    private var lastMoveTime = 0L

    /** 手势路径点计数 */
    private var gesturePointCount = 0

    private val mainHandler = Handler(Looper.getMainLooper())

    override fun onServiceConnected() {
        super.onServiceConnected()
        instance = this
        LogUtils.i(TAG, "CarAccessibilityService connected")
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        // 不需要处理无障碍事件，仅用于手势注入
    }

    override fun onInterrupt() {
        LogUtils.w(TAG, "CarAccessibilityService interrupted")
    }

    override fun onDestroy() {
        super.onDestroy()
        instance = null
        cancelActiveGesture()
        LogUtils.i(TAG, "CarAccessibilityService destroyed")
    }

    // ==================== 触摸注入 API ====================

    /**
     * 注入触摸事件（完整手势支持）
     *
     * 手势生命周期：
     * - ACTION_DOWN (0): 开始新手势，记录起点
     * - ACTION_MOVE (2): 累积路径点（采样降频）
     * - ACTION_UP (1): 结束手势，提交 dispatchGesture
     *
     * @param action 事件类型（ACTION_DOWN=0, ACTION_UP=1, ACTION_MOVE=2）
     * @param x 手机屏幕 X 坐标
     * @param y 手机屏幕 Y 坐标
     */
    fun injectTouch(action: Int, x: Float, y: Float) {
        try {
            when (action) {
                0 -> handleTouchDown(x, y)
                1 -> handleTouchUp(x, y)
                2 -> handleTouchMove(x, y)
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Touch injection failed at action=$action, ($x, $y)")
            cancelActiveGesture()
        }
    }

    /**
     * 注入点击手势（便捷方法，供外部直接调用）
     */
    fun injectTap(x: Float, y: Float, durationMs: Long = TAP_DURATION_MS) {
        val path = Path().apply { moveTo(x, y) }
        dispatchGesturePath(path, durationMs, "tap($x, $y)")
    }

    /**
     * 注入滑动手势（便捷方法，供外部直接调用）
     */
    fun injectSwipe(startX: Float, startY: Float, endX: Float, endY: Float, durationMs: Long = SWIPE_DURATION_MS) {
        val path = Path().apply {
            moveTo(startX, startY)
            lineTo(endX, endY)
        }
        dispatchGesturePath(path, durationMs, "swipe($startX,$startY)→($endX,$endY)")
    }

    /**
     * 注入长按手势（便捷方法，供外部直接调用）
     */
    fun injectLongPress(x: Float, y: Float, durationMs: Long = 500L) {
        val path = Path().apply { moveTo(x, y) }
        dispatchGesturePath(path, durationMs, "longpress($x, $y)")
    }

    /**
     * 检查无障碍服务是否已启用
     */
    fun isEnabled(): Boolean = instance != null

    // ==================== 手势内部处理 ====================

    /**
     * 处理 ACTION_DOWN — 开始新手势
     */
    private fun handleTouchDown(x: Float, y: Float) {
        // 如果有未完成的手势，先取消
        cancelActiveGesture()

        gesturePath = Path().apply { moveTo(x, y) }
        isGestureActive = true
        gestureStartTime = System.currentTimeMillis()
        lastMoveTime = gestureStartTime
        gesturePointCount = 1

        LogUtils.d(TAG, "Gesture DOWN: ($x, $y)")
    }

    /**
     * 处理 ACTION_MOVE — 累积路径点
     */
    private fun handleTouchMove(x: Float, y: Float) {
        if (!isGestureActive || gesturePath == null) return

        val now = System.currentTimeMillis()
        // 采样降频：避免过于密集的 MOVE 事件导致路径过于复杂
        if (now - lastMoveTime < MOVE_SAMPLE_INTERVAL_MS) return

        if (gesturePointCount >= MAX_GESTURE_POINTS) {
            LogUtils.w(TAG, "Gesture path too long ($gesturePointCount points), dispatching early")
            handleTouchUp(x, y)
            return
        }

        gesturePath?.lineTo(x, y)
        lastMoveTime = now
        gesturePointCount++
    }

    /**
     * 处理 ACTION_UP — 结束手势并提交
     */
    private fun handleTouchUp(x: Float, y: Float) {
        if (!isGestureActive) {
            // 没有活跃手势，可能是独立的 UP 事件，忽略
            return
        }

        val path = gesturePath ?: return
        val duration = System.currentTimeMillis() - gestureStartTime

        // 添加终点
        path.lineTo(x, y)
        gesturePointCount++

        // 计算手势持续时间
        val gestureDuration = if (duration < TAP_DURATION_MS) TAP_DURATION_MS else duration

        LogUtils.d(TAG, "Gesture UP: ($x, $y), points=$gesturePointCount, duration=${duration}ms")

        // 提交手势
        dispatchGesturePath(path, gestureDuration, "gesture(points=$gesturePointCount)")

        // 重置状态
        resetGestureState()
    }

    /**
     * 取消当前活跃的手势
     */
    private fun cancelActiveGesture() {
        if (isGestureActive) {
            LogUtils.d(TAG, "Cancelling active gesture")
        }
        resetGestureState()
    }

    /**
     * 重置手势状态
     */
    private fun resetGestureState() {
        gesturePath = null
        isGestureActive = false
        gestureStartTime = 0L
        lastMoveTime = 0L
        gesturePointCount = 0
    }

    // ==================== 底层分发 ====================

    /**
     * 通过 dispatchGesture 分发路径手势
     */
    private fun dispatchGesturePath(path: Path, durationMs: Long, description: String) {
        try {
            val stroke = GestureDescription.StrokeDescription(path, 0, durationMs)
            val gesture = GestureDescription.Builder()
                .addStroke(stroke)
                .build()

            dispatchGesture(gesture, object : GestureResultCallback() {
                override fun onCompleted(gestureDescription: GestureDescription) {
                    LogUtils.d(TAG, "Gesture completed: $description")
                }

                override fun onCancelled(gestureDescription: GestureDescription) {
                    LogUtils.w(TAG, "Gesture cancelled: $description")
                }
            }, null)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "dispatchGesture failed: $description")
        }
    }
}
