package com.carlife.wireless.ui

import android.content.Context
import android.util.AttributeSet
import android.view.MotionEvent
import android.widget.ScrollView

/**
 * 解决嵌套 ScrollView 滚动冲突的自定义 ScrollView
 *
 * 问题：MainActivity 根布局是 ScrollView，连接日志区域内又嵌套了一个 ScrollView。
 * 外层 ScrollView 会拦截触摸事件，导致内层日志区域无法滚动。
 *
 * 解决：在 onInterceptTouchEvent 中请求父控件不要拦截事件，
 * 让内层 ScrollView 优先处理滚动。
 */
class NestedLogScrollView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : ScrollView(context, attrs, defStyleAttr) {

    override fun onInterceptTouchEvent(ev: MotionEvent): Boolean {
        when (ev.actionMasked) {
            MotionEvent.ACTION_DOWN, MotionEvent.ACTION_POINTER_DOWN -> {
                // 手指按下时，请求父控件不要拦截触摸事件
                parent?.requestDisallowInterceptTouchEvent(true)
            }
            MotionEvent.ACTION_UP, MotionEvent.ACTION_POINTER_UP, MotionEvent.ACTION_CANCEL -> {
                // 手指抬起时，恢复父控件的拦截权
                parent?.requestDisallowInterceptTouchEvent(false)
            }
        }
        return super.onInterceptTouchEvent(ev)
    }
}
