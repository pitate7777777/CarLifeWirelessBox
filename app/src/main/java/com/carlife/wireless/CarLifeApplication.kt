package com.carlife.wireless

import android.app.Application
import android.os.Handler
import android.os.Looper
import com.carlife.wireless.util.LogUtils
import java.util.concurrent.Executors
import kotlin.system.exitProcess

/**
 * 应用入口类
 * 初始化全局资源、异常处理
 */
class CarLifeApplication : Application() {

    companion object {
        private const val TAG = "CarLifeApplication"

        /** 后台线程池（网络请求、文件 IO） */
        val backgroundExecutor = Executors.newFixedThreadPool(4)

        /** 主线程 Handler */
        val mainHandler = Handler(Looper.getMainLooper())
    }

    override fun onCreate() {
        super.onCreate()
        LogUtils.i(TAG, "CarLifeApplication onCreate")

        LogUtils.init(this, saveToFile = true)

        // 从设置中恢复日志开关状态
        val consoleLogEnabled = com.carlife.wireless.util.SettingsManager.isConsoleLogEnabled(this)
        val fileLogEnabled = com.carlife.wireless.util.SettingsManager.isFileLogEnabled(this)
        LogUtils.setConsoleLogEnabled(consoleLogEnabled)
        LogUtils.setSaveToFile(fileLogEnabled)
        LogUtils.i(TAG, "日志已初始化: 控制台=$consoleLogEnabled, 文件=$fileLogEnabled")

        initCrashHandler()
    }

    /** 初始化崩溃处理 */
    private fun initCrashHandler() {
        LogUtils.d(TAG, "initCrashHandler: 设置全局异常处理器")
        Thread.setDefaultUncaughtExceptionHandler { _, throwable ->
            LogUtils.e(TAG, throwable, "未捕获异常: ${throwable.message}")
            // 不调用 exitProcess，让系统自然处理（可弹出"应用已停止"对话框）
        }
    }
}
