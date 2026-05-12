package com.carlife.wireless.usb

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Build
import android.os.Handler
import android.os.Looper
import com.carlife.wireless.util.LogUtils
import kotlinx.coroutines.*
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import java.net.Inet4Address
import java.net.NetworkInterface

/**
 * USB 网络共享管理器
 *
 * 负责：
 * - 检测 USB 网络共享状态
 * - 获取车机 IP 地址（USB 网络共享后，车机通过 USB 获得 192.168.42.x 网段 IP）
 * - 监听 USB 网络状态变化
 * - 提供 USB 连接状态查询
 *
 * USB 网络共享工作原理：
 * 1. 旧手机开启 USB 网络共享（设置 → 网络共享 → USB 共享网络）
 * 2. 旧手机创建 usb0 网口，IP 固定为 192.168.42.129（Android RNDIS 默认）
 * 3. WinCE 车机通过 USB 识别为网卡，DHCP 获取 192.168.42.x 地址
 * 4. 车机 CarLife 通过 TCP 连接旧手机 IP（192.168.42.129）的 6 个端口
 */
class UsbTetheringManager(private val context: Context) {

    companion object {
        private const val TAG = "UsbTethering"

        /** USB 网络共享默认网段 */
        const val USB_NETWORK_PREFIX = "192.168.42"
        const val USB_LOCAL_IP = "192.168.42.129"

        /** 车机 IP 扫描范围 */
        private const val SCAN_START = 1
        private const val SCAN_END = 254
        private const val SCAN_TIMEOUT_MS = 500

        /** 并行扫描每批数量 */
        private const val SCAN_BATCH_SIZE = 16
    }

    enum class UsbState {
        DISCONNECTED,   // USB 未连接
        CONNECTED,      // USB 已连接但未开启网络共享
        TETHERING,      // USB 网络共享已开启
        CAR_CONNECTED   // 车机已通过 USB 网络连接
    }

    interface UsbStateListener {
        fun onUsbStateChanged(state: UsbState, carIp: String?)
        fun onCarDeviceFound(carIp: String)
    }

    private val handler = Handler(Looper.getMainLooper())
    private var listener: UsbStateListener? = null
    @Volatile private var currentState = UsbState.DISCONNECTED
    @Volatile private var carIp: String? = null
    private var networkCallback: ConnectivityManager.NetworkCallback? = null
    private var usbReceiver: BroadcastReceiver? = null
    private var isMonitoring = false

    // 协程作用域（IO 线程池 + SupervisorJob）
    private var scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    fun setListener(listener: UsbStateListener?) {
        this.listener = listener
    }

    fun getState(): UsbState = currentState
    fun getCarIp(): String? = carIp

    /**
     * 开始监听 USB 网络状态
     */
    fun startMonitoring() {
        if (isMonitoring) return
        isMonitoring = true

        LogUtils.i(TAG, "开始监听 USB 网络状态")

        // 监听网络变化（USB 网络共享会创建新网络接口）
        registerNetworkCallback()

        // 监听 USB 连接状态广播
        registerUsbReceiver()

        // 初始检测
        checkUsbState()
    }

    /**
     * 停止监听
     */
    fun stopMonitoring() {
        if (!isMonitoring) return
        isMonitoring = false

        LogUtils.i(TAG, "停止监听 USB 网络状态")

        // 取消所有协程
        scope.cancel()
        scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

        try {
            networkCallback?.let {
                val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
                cm.unregisterNetworkCallback(it)
            }
        } catch (_: Exception) {}
        networkCallback = null

        try {
            usbReceiver?.let { context.unregisterReceiver(it) }
        } catch (_: Exception) {}
        usbReceiver = null
    }

    /**
     * 检测当前 USB 网络状态
     */
    fun checkUsbState(): UsbState {
        val hasUsbNetwork = hasUsbNetworkInterface()
        val usbIp = getUsbInterfaceIp()

        val newState = when {
            !hasUsbNetwork -> UsbState.DISCONNECTED
            usbIp == null -> UsbState.CONNECTED
            carIp != null -> UsbState.CAR_CONNECTED
            else -> UsbState.TETHERING
        }

        if (newState != currentState) {
            currentState = newState
            LogUtils.i(TAG, "USB 状态变更: $newState, 本机 IP: $usbIp")
            listener?.onUsbStateChanged(newState, carIp)
        }

        return newState
    }

    /**
     * 检测是否有 USB 网络接口（usb0 / rndis0）
     */
    private fun hasUsbNetworkInterface(): Boolean {
        return try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            interfaces?.toList()?.any { intf ->
                intf.name.startsWith("usb") || intf.name.startsWith("rndis") ||
                intf.name.startsWith("ncm")
            } ?: false
        } catch (e: Exception) {
            LogUtils.w(TAG, "检测 USB 网口失败: ${e.message}")
            false
        }
    }

    /**
     * 获取 USB 网络接口的本机 IP
     */
    fun getUsbInterfaceIp(): String? {
        return try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            interfaces?.toList()?.forEach { intf ->
                if (intf.name.startsWith("usb") || intf.name.startsWith("rndis") ||
                    intf.name.startsWith("ncm")) {
                    intf.inetAddresses.toList().forEach { addr ->
                        if (addr is Inet4Address && !addr.isLoopbackAddress) {
                            return addr.hostAddress
                        }
                    }
                }
            }
            null
        } catch (e: Exception) {
            LogUtils.w(TAG, "获取 USB IP 失败: ${e.message}")
            null
        }
    }

    /**
     * 扫描 USB 网络中的车机设备
     * 在 192.168.42.1 ~ 192.168.42.254 范围内扫描开放 CarLife 端口的设备
     *
     * 使用并行扫描（每批 16 个 IP），大幅缩短扫描时间：
     * - 串行扫描: 最坏 254 × 500ms = 127 秒
     * - 并行扫描: 最坏 254/16 × 500ms ≈ 8 秒
     */
    fun scanForCarDevice(callback: (String?) -> Unit) {
        scope.launch {
            LogUtils.i(TAG, "开始扫描 USB 网络中的车机设备...")

            val localIp = getUsbInterfaceIp()
            if (localIp == null) {
                LogUtils.w(TAG, "USB 网络未就绪，跳过扫描")
                withContext(Dispatchers.Main) { callback(null) }
                return@launch
            }

            // 优先扫描常见 IP（车机通常在前几个地址）
            val priorityIps = listOf(1, 2, 100, 129, 10, 20, 50, 150, 200)
            val foundIp = scanBatch(priorityIps.map { "$USB_NETWORK_PREFIX.$it" }.filter { it != localIp })
            if (foundIp != null) {
                reportCarFound(foundIp, callback)
                return@launch
            }

            // 并行扫描剩余 IP（每批 SCAN_BATCH_SIZE 个）
            val remainingIps = (SCAN_START..SCAN_END)
                .map { "$USB_NETWORK_PREFIX.$it" }
                .filter { it != localIp && it !in priorityIps.map { p -> "$USB_NETWORK_PREFIX.$p" } }

            for (batch in remainingIps.chunked(SCAN_BATCH_SIZE)) {
                val found = scanBatch(batch)
                if (found != null) {
                    reportCarFound(found, callback)
                    return@launch
                }
            }

            LogUtils.w(TAG, "未发现车机设备")
            withContext(Dispatchers.Main) { callback(null) }
        }
    }

    /**
     * 并行扫描一批 IP 地址
     * @return 发现的车机 IP，或 null
     */
    private suspend fun scanBatch(ips: List<String>): String? = coroutineScope {
        val results = ips.map { ip ->
            async {
                try {
                    java.net.Socket().use { socket ->
                        socket.connect(java.net.InetSocketAddress(ip, 7200), SCAN_TIMEOUT_MS)
                        ip // 连接成功，返回 IP
                    }
                } catch (_: Exception) {
                    null // 连接失败
                }
            }
        }
        results.awaitAll().firstOrNull { it != null }
    }

    /**
     * 报告发现车机设备
     */
    private suspend fun reportCarFound(ip: String, callback: (String?) -> Unit) {
        LogUtils.i(TAG, "发现车机设备: $ip (CarLife CMD 端口开放)")
        carIp = ip
        currentState = UsbState.CAR_CONNECTED
        withContext(Dispatchers.Main) {
            listener?.onCarDeviceFound(ip)
            listener?.onUsbStateChanged(currentState, ip)
            callback(ip)
        }
    }

    /**
     * 注册网络变化回调
     */
    private fun registerNetworkCallback() {
        val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager

        networkCallback = object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                LogUtils.d(TAG, "网络可用: $network")
                handler.post { checkUsbState() }
            }

            override fun onLost(network: Network) {
                LogUtils.d(TAG, "网络丢失: $network")
                handler.post {
                    carIp = null
                    checkUsbState()
                }
            }

            override fun onCapabilitiesChanged(network: Network, caps: NetworkCapabilities) {
                handler.post { checkUsbState() }
            }
        }

        val request = NetworkRequest.Builder().build()
        try {
            cm.registerNetworkCallback(request, networkCallback!!)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "注册网络回调失败")
        }
    }

    /**
     * 注册 USB 状态广播接收器
     */
    private fun registerUsbReceiver() {
        usbReceiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                when (intent?.action) {
                    "android.hardware.usb.action.USB_STATE" -> {
                        val connected = intent.getBooleanExtra("connected", false)
                        val tethered = intent.getBooleanExtra("tethered", false)
                        LogUtils.d(TAG, "USB 状态广播: connected=$connected, tethered=$tethered")
                        handler.post { checkUsbState() }
                    }
                    "android.net.conn.TETHER_STATE_CHANGED" -> {
                        LogUtils.d(TAG, "Tether 状态变化")
                        handler.post { checkUsbState() }
                    }
                }
            }
        }

        val filter = IntentFilter().apply {
            addAction("android.hardware.usb.action.USB_STATE")
            addAction("android.net.conn.TETHER_STATE_CHANGED")
        }
        try {
            context.registerReceiver(usbReceiver, filter)
        } catch (e: Exception) {
            LogUtils.e(TAG, e, "注册 USB 广播失败")
        }
    }

    /**
     * 检查 USB 网络共享是否已开启
     */
    fun isTetheringActive(): Boolean {
        return hasUsbNetworkInterface() && getUsbInterfaceIp() != null
    }

    /**
     * 获取 USB 网络信息（用于诊断）
     */
    fun getUsbNetworkInfo(): String {
        val sb = StringBuilder()
        sb.appendLine("=== USB 网络信息 ===")
        sb.appendLine("状态: $currentState")
        sb.appendLine("车机 IP: ${carIp ?: "未检测到"}")

        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            interfaces?.toList()?.forEach { intf ->
                if (intf.name.startsWith("usb") || intf.name.startsWith("rndis") ||
                    intf.name.startsWith("ncm")) {
                    sb.appendLine("网口: ${intf.name}, UP=${intf.isUp}")
                    intf.inetAddresses.toList().forEach { addr ->
                        sb.appendLine("  IP: ${addr.hostAddress}")
                    }
                }
            }
        } catch (e: Exception) {
            sb.appendLine("获取网口信息失败: ${e.message}")
        }

        return sb.toString()
    }
}
