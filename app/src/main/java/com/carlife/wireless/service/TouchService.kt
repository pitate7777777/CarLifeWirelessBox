package com.carlife.wireless.service

import android.accessibilityservice.AccessibilityService
import android.app.Service
import android.content.Context
import android.content.Intent
import android.graphics.Path
import android.os.Binder
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.util.DisplayMetrics
import android.view.Surface
import android.view.WindowManager
import android.view.OrientationEventListener
import android.view.accessibility.AccessibilityNodeInfo
import com.carlife.wireless.util.LogUtils
import com.carlife.wireless.util.SettingsManager
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean

/**
 * 触摸服务
 *
 * 负责：
 * - 接收车机发来的触摸事件（通过 CarLife CTRL 通道协议）
 * - 坐标转换（车机分辨率 → 手机分辨率）
 * - 通过 AccessibilityService 注入触摸事件到手机
 *
 * 触摸事件类型（CarLife 协议 MSG_TOUCH_*）：
 * - 0x00068001: TOUCH_ACTION (action, x, y)
 * - 0x00068002: TOUCH_ACTION_DOWN
 * - 0x00068003: TOUCH_ACTION_UP
 * - 0x00068004: TOUCH_ACTION_MOVE
 * - 0x00068005: TOUCH_SINGLE_CLICK
 * - 0x00068006: TOUCH_DOUBLE_CLICK
 * - 0x00068007: TOUCH_LONG_PRESS
 * - 0x00068008: TOUCH_CAR_HARD_KEY_CODE
 */
class TouchService : Service() {

    companion object {
        private const val TAG = "TouchService"

        // CarLife 触摸事件类型
        const val TOUCH_ACTION = 0x00068001
        const val TOUCH_ACTION_DOWN = 0x00068002
        const val TOUCH_ACTION_UP = 0x00068003
        const val TOUCH_ACTION_MOVE = 0x00068004
        const val TOUCH_SINGLE_CLICK = 0x00068005
        const val TOUCH_DOUBLE_CLICK = 0x00068006
        const val TOUCH_LONG_PRESS = 0x00068007
        const val TOUCH_CAR_HARD_KEY_CODE = 0x00068008

        // Android MotionEvent actions
        private const val ACTION_DOWN = 0
        private const val ACTION_UP = 1
        private const val ACTION_MOVE = 2

        // 默认车机分辨率
        private const val DEFAULT_CAR_WIDTH = 800
        private const val DEFAULT_CAR_HEIGHT = 480

        // 长按判定阈值（毫秒）
        private const val LONG_PRESS_THRESHOLD_MS = 500L
    }

    /** 触摸事件注入器接口 */
    interface TouchInjector {
        /** 注入触摸事件 */
        fun injectTouch(action: Int, x: Float, y: Float)
        /** 是否已连接 */
        fun isConnected(): Boolean
    }

    inner class TouchBinder : Binder() {
        fun getService(): TouchService = this@TouchService
    }

    private val binder = TouchBinder()
    private val executor: ExecutorService = Executors.newCachedThreadPool()
    private val isActive = AtomicBoolean(false)
    private val mainHandler = Handler(Looper.getMainLooper())

    // 缓存 WindowManager，避免每次触摸事件都 getSystemService
    private lateinit var windowManager: WindowManager
    @Volatile private var currentRotation: Int = Surface.ROTATION_0

    // 屏幕尺寸（手机侧，用于坐标转换）
    private var screenWidth: Int = 1920
    private var screenHeight: Int = 1080

    // 车机显示尺寸
    private var carDisplayWidth: Int = DEFAULT_CAR_WIDTH
    private var carDisplayHeight: Int = DEFAULT_CAR_HEIGHT

    // 竖屏模式下的坐标变换因子（参考 CarProjection）
    private var portraitGestureFactorW: Float = 1.0f
    private var portraitGestureFactorH: Float = 1.0f
    private var landscapeGestureFactorW: Float = 1.0f
    private var landscapeGestureFactorH: Float = 1.0f
    private var portraitLeftX: Float = 0f // 竖屏时画面左侧偏移

    // 触摸注入器（由 AccessibilityService 提供）
    private var touchInjector: TouchInjector? = null

    // 屏幕方向监听器
    private var orientationListener: OrientationEventListener? = null

    // 长按检测
    private var touchDownTime: Long = 0L
    private var lastTouchX: Float = 0f
    private var lastTouchY: Float = 0f

    override fun onCreate() {
        super.onCreate()
        LogUtils.i(TAG, "TouchService created")

        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager

        // 读取分辨率配置
        val resolution = SettingsManager.getResolution(this)
        carDisplayWidth = resolution.first
        carDisplayHeight = resolution.second

        // 获取手机真实屏幕尺寸
        refreshScreenSize()

        // 监听屏幕方向变化，避免每次触摸事件都查询 rotation
        currentRotation = @Suppress("DEPRECATION") windowManager.defaultDisplay.rotation
        orientationListener = object : OrientationEventListener(this) {
            override fun onOrientationChanged(orientation: Int) {
                val newRotation = @Suppress("DEPRECATION") windowManager.defaultDisplay.rotation
                if (newRotation != currentRotation) {
                    currentRotation = newRotation
                    refreshScreenSize()
                    LogUtils.i(TAG, "屏幕方向变更: rotation=$newRotation")
                }
            }
        }.apply { enable() }

        LogUtils.i(TAG, "Screen: ${screenWidth}x${screenHeight}, Car: ${carDisplayWidth}x${carDisplayHeight}")
    }

    /**
     * 刷新手机屏幕尺寸并重算坐标变换因子
     * 参考 CarProjection 的 refreshSize() 逻辑
     */
    private fun refreshScreenSize() {
        val metrics = DisplayMetrics()
        @Suppress("DEPRECATION")
        windowManager.defaultDisplay.getRealMetrics(metrics)
        screenWidth = metrics.widthPixels
        screenHeight = metrics.heightPixels

        // 允许用户在设置中覆盖手机分辨率
        val prefs = getSharedPreferences("carlife_settings", MODE_PRIVATE)
        screenWidth = prefs.getFloat("mobile_w", screenWidth.toFloat()).toInt()
        screenHeight = prefs.getFloat("mobile_h", screenHeight.toFloat()).toInt()

        // 横屏因子：手机分辨率 / 车机投屏分辨率
        landscapeGestureFactorW = screenWidth.toFloat() / carDisplayWidth
        landscapeGestureFactorH = screenHeight.toFloat() / carDisplayHeight

        // 竖屏因子：手机竖屏时，车机画面旋转 90° 映射
        // 竖屏手机宽 = 手机高，竖屏手机高 = 手机宽
        // 车机竖屏实际投屏宽度 = 车机宽 * 车机高 / 手机高（保持比例）
        val portraitCarWidth = carDisplayWidth.toFloat() * carDisplayHeight / screenWidth
        portraitGestureFactorW = screenHeight.toFloat() / portraitCarWidth
        portraitGestureFactorH = screenWidth.toFloat() / carDisplayHeight
        portraitLeftX = (carDisplayWidth - portraitCarWidth) / 2f

        LogUtils.i(TAG, "refreshSize: mobile=${screenWidth}x${screenHeight}, car=${carDisplayWidth}x${carDisplayHeight}")
        LogUtils.i(TAG, "  landscape factor: W=$landscapeGestureFactorW, H=$landscapeGestureFactorH")
        LogUtils.i(TAG, "  portrait factor: W=$portraitGestureFactorW, H=$portraitGestureFactorH, leftX=$portraitLeftX")
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtils.i(TAG, "TouchService started")
        return START_STICKY
    }

    override fun onDestroy() {
        super.onDestroy()
        LogUtils.i(TAG, "TouchService destroyed")
        orientationListener?.disable()
        orientationListener = null
        stopTouchListener()
        executor.shutdown()
    }

    /**
     * 设置触摸注入器（由 CarAccessibilityService 提供）
     */
    fun setTouchInjector(injector: TouchInjector?) {
        this.touchInjector = injector
        LogUtils.i(TAG, "TouchInjector ${if (injector != null) "set" else "cleared"}")
    }

    /**
     * 设置车机显示分辨率
     */
    fun setCarDisplaySize(width: Int, height: Int) {
        carDisplayWidth = width
        carDisplayHeight = height
        refreshScreenSize()
        LogUtils.i(TAG, "Car display size: ${width}x${height}")
    }

    /**
     * 设置手机屏幕分辨率
     */
    fun setScreenSize(width: Int, height: Int) {
        screenWidth = width
        screenHeight = height
        refreshScreenSize()
        LogUtils.i(TAG, "Screen size: ${width}x${height}")
    }

    /**
     * 启动触摸事件监听
     */
    fun startTouchListener(): Boolean {
        isActive.set(true)
        LogUtils.i(TAG, "Touch listener started")
        return true
    }

    /**
     * 停止触摸事件监听
     */
    fun stopTouchListener() {
        isActive.set(false)
        LogUtils.i(TAG, "Touch listener stopped")
    }

    fun isActive(): Boolean = isActive.get()

    // ==================== CarLife 触摸事件处理 ====================

    /**
     * 处理来自 CarLife CTRL 通道的触摸事件
     *
     * @param messageType 消息类型（TOUCH_ACTION_DOWN 等）
     * @param payload 载荷数据（Protobuf 或原始字节）
     */
    fun onTouchEvent(messageType: Int, payload: ByteArray) {
        if (!isActive.get()) return

        try {
            when (messageType) {
                TOUCH_ACTION -> handleTouchAction(payload)
                TOUCH_ACTION_DOWN -> handleTouchDown(payload)
                TOUCH_ACTION_UP -> handleTouchUp(payload)
                TOUCH_ACTION_MOVE -> handleTouchMove(payload)
                TOUCH_SINGLE_CLICK -> handleClick(payload)
                TOUCH_DOUBLE_CLICK -> handleDoubleClick(payload)
                TOUCH_LONG_PRESS -> handleLongPress(payload)
                TOUCH_CAR_HARD_KEY_CODE -> handleHardKey(payload)
                else -> LogUtils.d(TAG, "Unknown touch message: 0x${Integer.toHexString(messageType)}")
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "Error processing touch event")
        }
    }

    /**
     * 处理 TOUCH_ACTION（通用触摸，包含 action/x/y）
     * 载荷格式：[action(4B)][x(4B)][y(4B)] — Big-Endian int32
     */
    private fun handleTouchAction(payload: ByteArray) {
        if (payload.size < 12) return

        val action = bytesToInt(payload, 0)
        val carX = bytesToInt(payload, 4).toFloat()
        val carY = bytesToInt(payload, 8).toFloat()

        val (phoneX, phoneY) = convertCoordinates(carX, carY)

        when (action) {
            ACTION_DOWN -> {
                touchDownTime = System.currentTimeMillis()
                lastTouchX = phoneX
                lastTouchY = phoneY
                injectTouch(ACTION_DOWN, phoneX, phoneY)
            }
            ACTION_UP -> {
                injectTouch(ACTION_UP, phoneX, phoneY)
            }
            ACTION_MOVE -> {
                injectTouch(ACTION_MOVE, phoneX, phoneY)
            }
        }
    }

    /**
     * 处理 TOUCH_ACTION_DOWN
     * 载荷格式：[x(4B)][y(4B)]
     */
    private fun handleTouchDown(payload: ByteArray) {
        if (payload.size < 8) return

        val carX = bytesToInt(payload, 0).toFloat()
        val carY = bytesToInt(payload, 4).toFloat()
        val (phoneX, phoneY) = convertCoordinates(carX, carY)

        touchDownTime = System.currentTimeMillis()
        lastTouchX = phoneX
        lastTouchY = phoneY

        injectTouch(ACTION_DOWN, phoneX, phoneY)
        LogUtils.d(TAG, "Touch DOWN: car($carX,$carY) → phone($phoneX,$phoneY)")
    }

    /**
     * 处理 TOUCH_ACTION_UP
     * 载荷格式：[x(4B)][y(4B)]
     */
    private fun handleTouchUp(payload: ByteArray) {
        if (payload.size < 8) return

        val carX = bytesToInt(payload, 0).toFloat()
        val carY = bytesToInt(payload, 4).toFloat()
        val (phoneX, phoneY) = convertCoordinates(carX, carY)

        injectTouch(ACTION_UP, phoneX, phoneY)
        LogUtils.d(TAG, "Touch UP: car($carX,$carY) → phone($phoneX,$phoneY)")
    }

    /**
     * 处理 TOUCH_ACTION_MOVE
     * 载荷格式：[x(4B)][y(4B)]
     */
    private fun handleTouchMove(payload: ByteArray) {
        if (payload.size < 8) return

        val carX = bytesToInt(payload, 0).toFloat()
        val carY = bytesToInt(payload, 4).toFloat()
        val (phoneX, phoneY) = convertCoordinates(carX, carY)

        injectTouch(ACTION_MOVE, phoneX, phoneY)
    }

    /**
     * 处理 TOUCH_SINGLE_CLICK
     * 载荷格式：[x(4B)][y(4B)]
     */
    private fun handleClick(payload: ByteArray) {
        if (payload.size < 8) return

        val carX = bytesToInt(payload, 0).toFloat()
        val carY = bytesToInt(payload, 4).toFloat()
        val (phoneX, phoneY) = convertCoordinates(carX, carY)

        // 模拟 DOWN → UP
        injectTouch(ACTION_DOWN, phoneX, phoneY)
        mainHandler.postDelayed({
            injectTouch(ACTION_UP, phoneX, phoneY)
        }, 50)

        LogUtils.d(TAG, "Single click: car($carX,$carY) → phone($phoneX,$phoneY)")
    }

    /**
     * 处理 TOUCH_DOUBLE_CLICK
     * 载荷格式：[x(4B)][y(4B)]
     */
    private fun handleDoubleClick(payload: ByteArray) {
        if (payload.size < 8) return

        val carX = bytesToInt(payload, 0).toFloat()
        val carY = bytesToInt(payload, 4).toFloat()
        val (phoneX, phoneY) = convertCoordinates(carX, carY)

        // 模拟两次快速点击
        injectTouch(ACTION_DOWN, phoneX, phoneY)
        mainHandler.postDelayed({
            injectTouch(ACTION_UP, phoneX, phoneY)
            mainHandler.postDelayed({
                injectTouch(ACTION_DOWN, phoneX, phoneY)
                mainHandler.postDelayed({
                    injectTouch(ACTION_UP, phoneX, phoneY)
                }, 50)
            }, 100)
        }, 50)

        LogUtils.d(TAG, "Double click: car($carX,$carY) → phone($phoneX,$phoneY)")
    }

    /**
     * 处理 TOUCH_LONG_PRESS
     * 载荷格式：[x(4B)][y(4B)]
     */
    private fun handleLongPress(payload: ByteArray) {
        if (payload.size < 8) return

        val carX = bytesToInt(payload, 0).toFloat()
        val carY = bytesToInt(payload, 4).toFloat()
        val (phoneX, phoneY) = convertCoordinates(carX, carY)

        // 长按：DOWN → 等待 → UP
        injectTouch(ACTION_DOWN, phoneX, phoneY)
        mainHandler.postDelayed({
            injectTouch(ACTION_UP, phoneX, phoneY)
        }, LONG_PRESS_THRESHOLD_MS)

        LogUtils.d(TAG, "Long press: car($carX,$carY) → phone($phoneX,$phoneY)")
    }

    /**
     * 处理硬按键事件
     * 载荷格式：[keycode(4B)]
     */
    private fun handleHardKey(payload: ByteArray) {
        if (payload.size < 4) return
        val keycode = bytesToInt(payload, 0)
        LogUtils.i(TAG, "Hard key: $keycode (not implemented)")
        // 硬按键需要系统级权限，暂不实现
    }

    // ==================== 坐标转换 ====================

    /**
     * 车机坐标 → 手机坐标
     *
     * 根据手机当前屏幕方向（横屏/竖屏）选择不同的映射算法。
     * 竖屏时车机画面居中显示，两侧有黑边，需要减去偏移量。
     * 参考 CarProjection 的 genarateGesture() 逻辑。
     */
    private fun convertCoordinates(carX: Float, carY: Float): Pair<Float, Float> {
        // 使用缓存的 rotation（由 OrientationEventListener 更新），避免每次触摸都查询
        val rotation = currentRotation

        val phoneX: Float
        val phoneY: Float

        when (rotation) {
            Surface.ROTATION_0, Surface.ROTATION_180 -> {
                // 竖屏模式：车机画面旋转 90° 映射到手机
                // 需要减去画面左侧偏移
                phoneX = (carX - portraitLeftX) * portraitGestureFactorW
                phoneY = carY * portraitGestureFactorH
            }
            Surface.ROTATION_90, Surface.ROTATION_270 -> {
                // 横屏模式：直接映射
                phoneX = carX * landscapeGestureFactorW
                phoneY = carY * landscapeGestureFactorH
            }
            else -> {
                phoneX = carX * screenWidth / carDisplayWidth
                phoneY = carY * screenHeight / carDisplayHeight
            }
        }

        // 边界保护
        val maxX = if (rotation == Surface.ROTATION_0 || rotation == Surface.ROTATION_180) screenHeight.toFloat() else screenWidth.toFloat()
        val maxY = if (rotation == Surface.ROTATION_0 || rotation == Surface.ROTATION_180) screenWidth.toFloat() else screenHeight.toFloat()

        return Pair(
            phoneX.coerceIn(0f, maxX - 1),
            phoneY.coerceIn(0f, maxY - 1)
        )
    }

    // ==================== 触摸注入 ====================

    /**
     * 注入触摸事件
     * 优先使用 AccessibilityService，回退到 shell 命令（需 root）
     */
    private fun injectTouch(action: Int, x: Float, y: Float) {
        val injector = touchInjector
        if (injector != null && injector.isConnected()) {
            injector.injectTouch(action, x, y)
        } else {
            // 回退方案：通过 shell 命令注入（需要 root）
            injectViaShell(action, x, y)
        }
    }

    /**
     * 通过 shell 命令注入触摸（需要 root 权限）
     */
    private fun injectViaShell(action: Int, x: Float, y: Float) {
        try {
            val command = when (action) {
                ACTION_DOWN, ACTION_UP -> "input touchscreen tap ${x.toInt()} ${y.toInt()}"
                ACTION_MOVE -> null // MOVE 通过 tap 无法模拟，忽略
                else -> null
            }
            if (command != null) {
                executor.submit {
                    try {
                        Runtime.getRuntime().exec(arrayOf("sh", "-c", command))
                    } catch (e: Exception) {
                        LogUtils.w(TAG, "Shell inject failed: ${e.message}")
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.w(TAG, "Shell inject error: ${e.message}")
        }
    }

    // ==================== 工具方法 ====================

    private fun bytesToInt(bytes: ByteArray, offset: Int): Int {
        return ((bytes[offset].toInt() and 0xFF) shl 24) or
                ((bytes[offset + 1].toInt() and 0xFF) shl 16) or
                ((bytes[offset + 2].toInt() and 0xFF) shl 8) or
                (bytes[offset + 3].toInt() and 0xFF)
    }
}
