package com.carlife.wireless.network

import android.content.Context
import android.net.ConnectivityManager
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import com.carlife.wireless.util.LogUtils
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicReference

/**
 * 动态比特率调节器
 *
 * 根据 Wi-Fi 信号强度自动调节视频码率，避免弱信号时卡顿。
 *
 * 信号强度等级：
 * - 极好 (RSSI >= -50): 使用最高码率
 * - 良好 (-65 <= RSSI < -50): 使用 80% 码率
 * - 一般 (-75 <= RSSI < -65): 使用 60% 码率
 * - 较差 (-85 <= RSSI < -75): 使用 40% 码率
 * - 极差 (RSSI < -85): 使用 25% 码率
 *
 * 调节策略：
 * - 每 3 秒检测一次信号强度
 * - 信号变差时立即降码率（快速响应）
 * - 信号变好时延迟 10 秒升码率（避免频繁抖动）
 */
class DynamicBitrate(private val context: Context) {

    companion object {
        private const val TAG = "DynamicBitrate"
        private const val CHECK_INTERVAL_MS = 3000L
        private const val UPGRADE_DELAY_MS = 10_000L

        // 信号强度等级阈值 (dBm)
        private const val RSSI_EXCELLENT = -50
        private const val RSSI_GOOD = -65
        private const val RSSI_FAIR = -75
        private const val RSSI_WEAK = -85

        // 各等级对应的码率系数
        private const val FACTOR_EXCELLENT = 1.0f
        private const val FACTOR_GOOD = 0.8f
        private const val FACTOR_FAIR = 0.6f
        private const val FACTOR_WEAK = 0.4f
        private const val FACTOR_TERRIBLE = 0.25f
    }

    enum class SignalLevel(val label: String, val factor: Float) {
        EXCELLENT("极好", FACTOR_EXCELLENT),
        GOOD("良好", FACTOR_GOOD),
        FAIR("一般", FACTOR_FAIR),
        WEAK("较差", FACTOR_WEAK),
        TERRIBLE("极差", FACTOR_TERRIBLE),
        DISCONNECTED("未连接", 0f)
    }

    interface BitrateChangeListener {
        fun onBitrateChanged(newBitrateKbps: Int, signalLevel: SignalLevel, rssi: Int)
    }

    /** 后台线程，避免检测和回调阻塞主线程 */
    private val handlerThread = HandlerThread("DynamicBitrate").apply { start() }
    private val handler = Handler(handlerThread.looper)
    private var listener: BitrateChangeListener? = null
    private var isRunning = false

    // 基础码率（用户设置的最大码率，bps）
    private val baseBitrate = AtomicInteger(2_000_000)
    // 当前实际使用的码率（bps）
    private val currentBitrate = AtomicInteger(2_000_000)
    // 当前信号等级
    private val currentLevel = AtomicReference(SignalLevel.DISCONNECTED)
    // 待升级的目标等级（用于延迟升级）
    private val pendingUpgradeLevel = AtomicReference<SignalLevel?>(null)

    private var checkRunnable: Runnable? = null
    private var upgradeRunnable: Runnable? = null

    fun setListener(listener: BitrateChangeListener?) {
        this.listener = listener
    }

    fun setBaseBitrate(bitrateBps: Int) {
        baseBitrate.set(bitrateBps)
        LogUtils.i(TAG, "基础码率设置为: ${bitrateBps / 1000}kbps")
    }

    fun start() {
        if (isRunning) return
        isRunning = true
        LogUtils.i(TAG, "动态码率调节启动")
        scheduleCheck()
    }

    fun stop() {
        isRunning = false
        checkRunnable?.let { handler.removeCallbacks(it) }
        upgradeRunnable?.let { handler.removeCallbacks(it) }
        checkRunnable = null
        upgradeRunnable = null
        pendingUpgradeLevel.set(null)
        handlerThread.quitSafely()
        LogUtils.i(TAG, "动态码率调节停止")
    }

    fun getCurrentBitrate(): Int = currentBitrate.get()
    fun getCurrentBitrateKbps(): Int = currentBitrate.get() / 1000
    fun getCurrentLevel(): SignalLevel = currentLevel.get()

    /**
     * 获取当前 Wi-Fi RSSI
     * API 31+ 使用 NetworkCapabilities.getSignalStrength()
     * 低版本回退到 WifiManager.connectionInfo.rssi
     */
    fun getWifiRssi(): Int {
        return try {
            if (Build.VERSION.SDK_INT >= 31) {
                val cm = context.applicationContext.getSystemService(Context.CONNECTIVITY_SERVICE) as android.net.ConnectivityManager
                val network = cm.activeNetwork
                val caps = network?.let { cm.getNetworkCapabilities(it) }
                caps?.signalStrength ?: -100
            } else {
                val wifiManager = context.applicationContext.getSystemService(Context.WIFI_SERVICE) as android.net.wifi.WifiManager
                @Suppress("DEPRECATION")
                wifiManager.connectionInfo.rssi
            }
        } catch (e: Exception) {
            LogUtils.w(TAG, "获取 RSSI 失败: ${e.message}")
            -100
        }
    }

    /**
     * 获取当前信号等级
     */
    fun getSignalLevel(rssi: Int): SignalLevel {
        return when {
            rssi >= RSSI_EXCELLENT -> SignalLevel.EXCELLENT
            rssi >= RSSI_GOOD -> SignalLevel.GOOD
            rssi >= RSSI_FAIR -> SignalLevel.FAIR
            rssi >= RSSI_WEAK -> SignalLevel.WEAK
            rssi > -100 -> SignalLevel.TERRIBLE
            else -> SignalLevel.DISCONNECTED
        }
    }

    /**
     * 调度下一次检测
     */
    private fun scheduleCheck() {
        if (!isRunning) return
        checkRunnable = Runnable { checkAndUpdate() }
        handler.postDelayed(checkRunnable!!, CHECK_INTERVAL_MS)
    }

    /**
     * 检测信号并更新码率
     */
    private fun checkAndUpdate() {
        if (!isRunning) return

        val rssi = getWifiRssi()
        val newLevel = getSignalLevel(rssi)
        val oldLevel = currentLevel.get()

        if (newLevel != oldLevel) {
            val base = baseBitrate.get()

            if (isDowngrade(newLevel, oldLevel)) {
                // 信号变差 → 立即降码率
                cancelPendingUpgrade()
                val newBitrate = (base * newLevel.factor).toInt()
                applyBitrate(newBitrate, newLevel, rssi)
                LogUtils.w(TAG, "信号下降: ${oldLevel.label} → ${newLevel.label} (RSSI=$rssi), 码率: ${newBitrate / 1000}kbps")
            } else {
                // 信号变好 → 延迟升级（避免抖动）
                scheduleUpgrade(newLevel, rssi)
                LogUtils.d(TAG, "信号改善: ${oldLevel.label} → ${newLevel.label} (RSSI=$rssi), 延迟 ${UPGRADE_DELAY_MS}ms 升级")
            }
        }

        scheduleCheck()
    }

    /**
     * 判断是否是降级
     */
    private fun isDowngrade(new: SignalLevel, old: SignalLevel): Boolean {
        val order = SignalLevel.entries.toList()
        return order.indexOf(new) > order.indexOf(old)
    }

    /**
     * 调度延迟升级
     */
    private fun scheduleUpgrade(level: SignalLevel, rssi: Int) {
        pendingUpgradeLevel.set(level)
        upgradeRunnable?.let { handler.removeCallbacks(it) }
        upgradeRunnable = Runnable {
            if (isRunning && pendingUpgradeLevel.get() == level) {
                val base = baseBitrate.get()
                val newBitrate = (base * level.factor).toInt()
                applyBitrate(newBitrate, level, rssi)
                LogUtils.i(TAG, "延迟升级完成: → ${level.label} (RSSI=$rssi), 码率: ${newBitrate / 1000}kbps")
                pendingUpgradeLevel.set(null)
            }
        }
        handler.postDelayed(upgradeRunnable!!, UPGRADE_DELAY_MS)
    }

    /**
     * 取消待执行的升级
     */
    private fun cancelPendingUpgrade() {
        upgradeRunnable?.let { handler.removeCallbacks(it) }
        upgradeRunnable = null
        pendingUpgradeLevel.set(null)
    }

    /**
     * 应用新码率
     */
    private fun applyBitrate(bitrateBps: Int, level: SignalLevel, rssi: Int) {
        currentBitrate.set(bitrateBps)
        currentLevel.set(level)
        listener?.onBitrateChanged(bitrateBps / 1000, level, rssi)
    }

    /**
     * 获取当前状态描述（用于 UI 显示）
     */
    fun getStatusText(): String {
        val level = currentLevel.get()
        val rssi = getWifiRssi()
        val current = currentBitrate.get() / 1000
        val base = baseBitrate.get() / 1000
        return "信号: ${level.label} (RSSI=$rssi)\n" +
               "码率: ${current}kbps / ${base}kbps\n" +
               "比例: ${(level.factor * 100).toInt()}%"
    }
}
