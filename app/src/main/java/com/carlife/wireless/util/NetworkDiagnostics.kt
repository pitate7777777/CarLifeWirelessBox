package com.carlife.wireless.util

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.wifi.WifiManager
import java.net.InetSocketAddress
import java.net.NetworkInterface
import java.net.Socket

/**
 * 网络诊断工具
 *
 * 快速定位 CarWith 无线连接问题，检查项：
 * 1. WiFi 连接状态
 * 2. 热点连接检测（是否连接到手机 B）
 * 3. 手机 B IP 可达性（Ping）
 * 4. CarWith 端口监听状态（7240/8240/9240 等 6 个端口）
 * 5. 网络接口信息
 *
 * 使用方式：
 * ```kotlin
 * val report = NetworkDiagnostics.runDiagnostics(context, "192.168.43.1")
 * LogUtils.i(TAG, report.toText())
 * ```
 */
object NetworkDiagnostics {

    private const val TAG = "NetworkDiagnostics"

    // CarWith 无线连接模式监听的端口
    private val CARWITH_PORTS = listOf(
        7240 to "CMD",
        8240 to "VIDEO",
        9240 to "MEDIA",
        9241 to "TTS",
        9242 to "VR",
        9340 to "CTRL"
    )

    /**
     * 诊断结果数据类
     */
    data class DiagResult(
        val timestamp: Long = System.currentTimeMillis(),
        val wifiConnected: Boolean,
        val wifiSsid: String?,
        val hotspotConnected: Boolean,
        val phoneBIp: String,
        val pingReachable: Boolean,
        val portResults: List<PortCheckResult>,
        val localIp: String?,
        val networkInterfaces: List<NetInterfaceInfo>,
        val suggestions: List<String>
    ) {
        val allPortsOpen: Boolean get() = portResults.all { it.isOpen }
        val openPortCount: Int get() = portResults.count { it.isOpen }

        /**
         * 生成可读的诊断报告
         */
        fun toText(): String {
            val sb = StringBuilder()
            sb.appendLine("═══════════════════════════════════════")
            sb.appendLine("       📡 网络诊断报告")
            sb.appendLine("═══════════════════════════════════════")
            sb.appendLine()

            // WiFi 状态（本机 → 手机 B 热点）
            sb.appendLine("📶 WiFi 连接（本机 → 手机 B 热点）")
            sb.appendLine("  连接状态: ${if (wifiConnected) "✅ 已连接" else "❌ 未连接"}")
            if (wifiSsid != null) sb.appendLine("  网络名称: $wifiSsid")
            sb.appendLine()

            // 手机 B 检测
            sb.appendLine("📱 手机 B（CarWith 发射端）")
            sb.appendLine("  IP 地址: $phoneBIp")
            sb.appendLine("  热点连接: ${if (hotspotConnected) "✅ 已连接" else "❌ 未连接"}")
            sb.appendLine("  Ping 测试: ${if (pingReachable) "✅ 可达" else "❌ 不可达"}")
            sb.appendLine()

            // CarWith 端口检测（手机 B 上的服务）
            sb.appendLine("🔌 CarWith 端口（手机 B 上的服务）")
            sb.appendLine("  目标: $phoneBIp")
            for (result in portResults) {
                val icon = if (result.isOpen) "✅" else "❌"
                val latency = if (result.latencyMs >= 0) " (${result.latencyMs}ms)" else ""
                sb.appendLine("  ${result.port} (${result.name}): $icon ${if (result.isOpen) "已监听" else "未监听"}$latency")
            }
            sb.appendLine("  汇总: ${openPortCount}/${portResults.size} 端口已监听")
            sb.appendLine()

            // 本机网络信息
            sb.appendLine("📦 本机（转接盒）")
            sb.appendLine("  本地 IP: ${localIp ?: "未知"}")
            for (info in networkInterfaces) {
                sb.appendLine("  ${info.name}: ${info.ip} (${info.type})")
            }
            sb.appendLine()

            // 诊断建议
            if (suggestions.isNotEmpty()) {
                sb.appendLine("💡 诊断建议")
                for ((i, suggestion) in suggestions.withIndex()) {
                    sb.appendLine("  ${i + 1}. $suggestion")
                }
                sb.appendLine()
            }

            // 最终结论
            sb.appendLine("📋 结论")
            when {
                !wifiConnected -> sb.appendLine("  ❌ WiFi 未连接，请先连接到手机 B 的热点")
                !hotspotConnected -> sb.appendLine("  ❌ 未检测到热点连接，请确认已连接到手机 B 的 WiFi 热点")
                !pingReachable -> sb.appendLine("  ❌ 手机 B 不可达，请检查热点连接和 IP 地址")
                !allPortsOpen -> {
                    val closedPorts = portResults.filter { !it.isOpen }
                    sb.appendLine("  ⚠️ CarWith 尚未监听全部端口")
                    sb.appendLine("     未监听: ${closedPorts.joinToString(", ") { "${it.port}(${it.name})" }}")
                    sb.appendLine("     → 请在手机 B 上打开 CarWith → 点击「CarLife 连接」→ 选择「无线连接」")
                }
                else -> sb.appendLine("  ✅ 一切就绪！CarWith 已进入无线连接模式，可以开始连接")
            }

            sb.appendLine()
            sb.appendLine("═══════════════════════════════════════")
            return sb.toString()
        }

        /**
         * 生成简短的状态摘要（用于 UI 显示）
         */
        fun toSummary(): String {
            return when {
                !wifiConnected -> "❌ WiFi 未连接"
                !hotspotConnected -> "❌ 未连接到手机B热点"
                !pingReachable -> "❌ 手机B不可达 ($phoneBIp)"
                !allPortsOpen -> "⚠️ CarWith未就绪 (${openPortCount}/${portResults.size}端口)"
                else -> "✅ 就绪，可以连接"
            }
        }
    }

    data class PortCheckResult(
        val port: Int,
        val name: String,
        val isOpen: Boolean,
        val latencyMs: Long = -1
    )

    data class NetInterfaceInfo(
        val name: String,
        val ip: String,
        val type: String
    )

    /**
     * 执行完整网络诊断
     *
     * @param context Android 上下文
     * @param phoneBIp 手机 B 的 IP 地址
     * @param connectTimeoutMs 端口连接超时（毫秒）
     * @return 诊断结果
     */
    fun runDiagnostics(
        context: Context,
        phoneBIp: String = Constants.IpAddress.USB_TETHERING_LOCAL,
        connectTimeoutMs: Int = 2000
    ): DiagResult {
        LogUtils.i(TAG, "Starting network diagnostics for $phoneBIp...")

        // 1. WiFi 状态
        val wifiInfo = getWifiInfo(context)
        val wifiConnected = wifiInfo.first
        val wifiSsid = wifiInfo.second

        // 2. 热点连接检测
        val hotspotConnected = isHotspotConnected(context, phoneBIp)

        // 3. Ping 测试
        val pingReachable = if (hotspotConnected) pingHost(phoneBIp) else false

        // 4. 端口检测
        val portResults = if (pingReachable) {
            checkAllPorts(phoneBIp, connectTimeoutMs)
        } else {
            CARWITH_PORTS.map { (port, name) ->
                PortCheckResult(port, name, isOpen = false)
            }
        }

        // 5. 网络接口信息
        val interfaces = getNetworkInterfaces()

        // 6. 本机 IP
        val localIp = interfaces.firstOrNull { it.type == "WiFi" }?.ip
            ?: interfaces.firstOrNull { it.ip.contains(".") }?.ip

        // 7. 生成建议
        val suggestions = generateSuggestions(
            wifiConnected, hotspotConnected, pingReachable, portResults, phoneBIp
        )

        val result = DiagResult(
            wifiConnected = wifiConnected,
            wifiSsid = wifiSsid,
            hotspotConnected = hotspotConnected,
            phoneBIp = phoneBIp,
            pingReachable = pingReachable,
            portResults = portResults,
            localIp = localIp,
            networkInterfaces = interfaces,
            suggestions = suggestions
        )

        LogUtils.i(TAG, "Diagnostics complete: ${result.toSummary()}")
        return result
    }

    /**
     * 仅检测 CarWith 端口是否已监听（快速检测）
     * 适用于连接前的快速预检
     */
    fun checkCarWithPorts(
        phoneBIp: String,
        timeoutMs: Int = 1500
    ): List<PortCheckResult> {
        return CARWITH_PORTS.map { (port, name) ->
            checkPort(phoneBIp, port, name, timeoutMs)
        }
    }

    /**
     * 检测单个端口
     */
    fun checkPort(host: String, port: Int, name: String = "PORT", timeoutMs: Int = 1500): PortCheckResult {
        val startTime = System.currentTimeMillis()
        return try {
            Socket().use { socket ->
                socket.connect(InetSocketAddress(host, port), timeoutMs)
                val latency = System.currentTimeMillis() - startTime
                LogUtils.d(TAG, "Port $port ($name): OPEN (${latency}ms)")
                PortCheckResult(port, name, isOpen = true, latencyMs = latency)
            }
        } catch (e: Exception) {
            val latency = System.currentTimeMillis() - startTime
            LogUtils.d(TAG, "Port $port ($name): CLOSED (${latency}ms, ${e.message})")
            PortCheckResult(port, name, isOpen = false, latencyMs = latency)
        }
    }

    /**
     * 检测所有 CarWith 端口
     */
    private fun checkAllPorts(phoneBIp: String, timeoutMs: Int): List<PortCheckResult> {
        return CARWITH_PORTS.map { (port, name) ->
            checkPort(phoneBIp, port, name, timeoutMs)
        }
    }

    /**
     * 获取 WiFi 连接状态和 SSID
     */
    private fun getWifiInfo(context: Context): Pair<Boolean, String?> {
        return try {
            val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
            val network = connectivityManager.activeNetwork
            val capabilities = network?.let { connectivityManager.getNetworkCapabilities(it) }
            val isWifi = capabilities?.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) == true

            var ssid: String? = null
            if (isWifi) {
                try {
                    val wifiManager = context.applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
                    @Suppress("DEPRECATION")
                    val wifiInfo = wifiManager.connectionInfo
                    ssid = wifiInfo?.ssid?.removeSurrounding("\"")
                } catch (_: Exception) {}
            }

            Pair(isWifi, ssid)
        } catch (e: Exception) {
            LogUtils.e(TAG, "getWifiInfo failed: ${e.message}")
            Pair(false, null)
        }
    }

    /**
     * 检测是否连接到手机 B 的热点
     * 通过检查默认路由是否指向手机 B 来判断
     */
    private fun isHotspotConnected(context: Context, phoneBIp: String): Boolean {
        return try {
            // 方法1: 检查本机 IP 是否在同一子网
            val localIp = NetworkUtils.getLocalIpAddress()
            if (localIp != null) {
                val localPrefix = localIp.substringBeforeLast(".")
                val phonePrefix = phoneBIp.substringBeforeLast(".")
                if (localPrefix == phonePrefix) return true
            }

            // 方法2: 检查是否有活跃的非 VPN 网络
            val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
            val network = connectivityManager.activeNetwork
            val capabilities = network?.let { connectivityManager.getNetworkCapabilities(it) }
            capabilities?.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) == true
        } catch (e: Exception) {
            LogUtils.e(TAG, "isHotspotConnected failed: ${e.message}")
            false
        }
    }

    /**
     * Ping 主机
     */
    private fun pingHost(host: String): Boolean {
        return try {
            val address = java.net.InetAddress.getByName(host)
            address.isReachable(3000)
        } catch (e: Exception) {
            LogUtils.e(TAG, "pingHost $host failed: ${e.message}")
            false
        }
    }

    /**
     * 获取本机网络接口信息
     */
    private fun getNetworkInterfaces(): List<NetInterfaceInfo> {
        val result = mutableListOf<NetInterfaceInfo>()
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val intf = interfaces.nextElement()
                if (intf.isLoopback || !intf.isUp) continue

                val addresses = intf.inetAddresses
                while (addresses.hasMoreElements()) {
                    val addr = addresses.nextElement()
                    if (addr is java.net.Inet4Address && !addr.isLoopbackAddress) {
                        val type = when {
                            intf.displayName.contains("wlan", ignoreCase = true) -> "WiFi"
                            intf.displayName.contains("rndis", ignoreCase = true) ||
                            intf.displayName.contains("usb", ignoreCase = true) -> "USB"
                            intf.displayName.contains("eth", ignoreCase = true) -> "以太网"
                            else -> "其他"
                        }
                        result.add(NetInterfaceInfo(intf.displayName, addr.hostAddress ?: "?", type))
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.e(TAG, "getNetworkInterfaces failed: ${e.message}")
        }
        return result
    }

    /**
     * 根据诊断结果生成建议
     */
    private fun generateSuggestions(
        wifiConnected: Boolean,
        hotspotConnected: Boolean,
        pingReachable: Boolean,
        portResults: List<PortCheckResult>,
        phoneBIp: String
    ): List<String> {
        val suggestions = mutableListOf<String>()

        if (!wifiConnected) {
            suggestions.add("请打开 WiFi 并连接到手机 B 的热点")
            suggestions.add("手机 B 的热点名称通常在「设置 → 个人热点」中查看")
            return suggestions
        }

        if (!hotspotConnected) {
            suggestions.add("请确认已连接到手机 B 的 WiFi 热点")
            suggestions.add("检查手机 B 的热点是否已开启")
            suggestions.add("如果 IP 不对，可在「设置」中修改手机 B 的 IP 地址（当前: $phoneBIp）")
            return suggestions
        }

        if (!pingReachable) {
            suggestions.add("手机 B ($phoneBIp) 不可达，请检查：")
            suggestions.add("  - 手机 B 热点是否正常工作")
            suggestions.add("  - 两台设备是否在同一子网")
            suggestions.add("  - 手机 B 是否开启了防火墙")
            return suggestions
        }

        val closedPorts = portResults.filter { !it.isOpen }
        if (closedPorts.isNotEmpty()) {
            suggestions.add("⚠️ CarWith 尚未进入无线连接模式！")
            suggestions.add("请在手机 B 上执行以下操作：")
            suggestions.add("  1. 打开 CarWith APP")
            suggestions.add("  2. 点击「CarLife 连接」")
            suggestions.add("  3. 选择「无线连接」")
            suggestions.add("  4. 等待 CarWith 显示「等待连接」状态")
            suggestions.add("未监听端口: ${closedPorts.joinToString(", ") { "${it.port}(${it.name})" }}")
        }

        if (suggestions.isEmpty()) {
            suggestions.add("所有检查通过，CarWith 已就绪，可以开始连接")
        }

        return suggestions
    }
}
