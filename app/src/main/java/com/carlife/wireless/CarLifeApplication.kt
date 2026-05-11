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

        /** 主线程 Handler（用于切回 UI 线程） */
        val mainHandler = Handler(Looper.getMainLooper())
    }

    override fun onCreate() {
        super.onCreate()
        LogUtils.i(TAG, "CarLifeApplication onCreate")

        // 初始化日志工具（保存日志到文件）
        LogUtils.init(this, saveToFile = true)
        LogUtils.i(TAG, "日志已初始化，将保存到本地文件")

        initNetwork()
        initDatabase()
        initCrashHandler()
    }

    /** 初始化网络模块（OkHttp / Retrofit 占位） */
    private fun initNetwork() {
        LogUtils.d(TAG, "initNetwork: OkHttp/Retrofit 初始化（占位）")
        // TODO: 实际项目中在此处初始化 OkHttpClient、Retrofit 实例
    }

    /** 初始化数据库（Room 占位） */
    private fun initDatabase() {
        LogUtils.d(TAG, "initDatabase: Room 初始化（占位）")
        // TODO: 实际项目中在此处初始化 Room.databaseBuilder(...)
    }

    /** 初始化崩溃处理 */
    private fun initCrashHandler() {
        LogUtils.d(TAG, "initCrashHandler: 设置全局异常处理器")
        Thread.setDefaultUncaughtExceptionHandler { _, throwable ->
            LogUtils.e(TAG, throwable, "未捕获异常: ${throwable.message}")
            // 可在此处上报崩溃信息，然后重启或退出
            exitProcess(1)
        }
    }
}
