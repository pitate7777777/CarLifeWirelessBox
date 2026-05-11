package com.carlife.wireless.service

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.graphics.Path
import android.util.Log
import android.view.accessibility.AccessibilityEvent
import com.carlife.wireless.util.LogUtils

/**
 * 无障碍服务 — 触摸事件注入
 *
 * 通过 AccessibilityService.dispatchGesture() 实现触摸注入，
 * 无需 root 权限（Android 7.0+）。
 *
 * 配置方式：
 * 1. 在 AndroidManifest.xml 中声明
 * 2. 在 res/xml/accessibility_service_config.xml 中配置
 * 3. 用户在系统设置 → 无障碍 中手动开启
 *
 * 注入流程：
 * TouchService 持有 CarAccessibilityService 的引用，
 * 调用 injectTouch() → dispatchGesture() 完成触摸注入。
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
    }

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
        LogUtils.i(TAG, "CarAccessibilityService destroyed")
    }

    /**
     * 注入触摸事件
     *
     * @param action 事件类型（ACTION_DOWN=0, ACTION_UP=1, ACTION_MOVE=2）
     * @param x 手机屏幕 X 坐标
     * @param y 手机屏幕 Y 坐标
     */
    fun injectTouch(action: Int, x: Float, y: Float) {
        try {
            when (action) {
                0 -> injectTap(x, y, TAP_DURATION_MS) // DOWN → 短按
                1 -> {} // UP — 在 tap 中已包含
                2 -> {} // MOVE — 需要手势序列，暂不处理单独的 MOVE
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Touch injection failed")
        }
    }

    /**
     * 注入点击手势
     */
    private fun injectTap(x: Float, y: Float, durationMs: Long) {
        val path = Path().apply {
            moveTo(x, y)
        }

        val stroke = GestureDescription.StrokeDescription(path, 0, durationMs)
        val gesture = GestureDescription.Builder()
            .addStroke(stroke)
            .build()

        dispatchGesture(gesture, object : GestureResultCallback() {
            override fun onCompleted(gestureDescription: GestureDescription) {
                LogUtils.d(TAG, "Gesture completed at ($x, $y)")
            }

            override fun onCancelled(gestureDescription: GestureDescription) {
                LogUtils.w(TAG, "Gesture cancelled at ($x, $y)")
            }
        }, null)
    }

    /**
     * 注入滑动手势
     *
     * @param startX 起始 X
     * @param startY 起始 Y
     * @param endX 结束 X
     * @param endY 结束 Y
     * @param durationMs 滑动持续时间
     */
    fun injectSwipe(startX: Float, startY: Float, endX: Float, endY: Float, durationMs: Long = SWIPE_DURATION_MS) {
        val path = Path().apply {
            moveTo(startX, startY)
            lineTo(endX, endY)
        }

        val stroke = GestureDescription.StrokeDescription(path, 0, durationMs)
        val gesture = GestureDescription.Builder()
            .addStroke(stroke)
            .build()

        dispatchGesture(gesture, object : GestureResultCallback() {
            override fun onCompleted(gestureDescription: GestureDescription) {
                LogUtils.d(TAG, "Swipe completed: ($startX,$startY) → ($endX,$endY)")
            }

            override fun onCancelled(gestureDescription: GestureDescription) {
                LogUtils.w(TAG, "Swipe cancelled")
            }
        }, null)
    }

    /**
     * 注入长按手势
     */
    fun injectLongPress(x: Float, y: Float, durationMs: Long = 500L) {
        injectTap(x, y, durationMs)
    }

    /**
     * 检查无障碍服务是否已启用
     */
    fun isEnabled(): Boolean = instance != null
}
