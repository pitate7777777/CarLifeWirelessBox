package com.carlife.wireless.util

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.Build
import java.net.InetAddress
import java.net.NetworkInterface

/**
 * 网络工具类
 * 提供网络连接状态检测、IP地址获取等功能
 */
object NetworkUtils {

    private const val TAG = "NetworkUtils"

    /**
     * 检查Wi-Fi是否已连接
     * @param context 上下文
     * @return true if Wi-Fi is connected
     */
    fun isWifiConnected(context: Context): Boolean {
        val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val network = connectivityManager.activeNetwork ?: return false
        val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
        return capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)
    }

    /**
     * 获取本地IP地址
     * 同时检查Wi-Fi IP和USB网卡IP（rndis0/usb0）
     * @return IP地址字符串，如果没有则返回null
     */
    fun getLocalIpAddress(): String? {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val networkInterface = interfaces.nextElement()
                val interfaceName = networkInterface.displayName?.lowercase() ?: ""

                // 优先检查USB网络接口
                if (interfaceName.contains("rndis") || interfaceName.contains("usb") ||
                    interfaceName.contains("eth")) {
                    val addresses = networkInterface.inetAddresses
                    while (addresses.hasMoreElements()) {
                        val address = addresses.nextElement()
                        if (!address.isLoopbackAddress && address is java.net.Inet4Address) {
                            return address.hostAddress
                        }
                    }
                }
            }

            // 如果没找到USB网络接口，再检查所有接口（包括Wi-Fi）
            val allInterfaces = NetworkInterface.getNetworkInterfaces()
            while (allInterfaces.hasMoreElements()) {
                val networkInterface = allInterfaces.nextElement()
                val addresses = networkInterface.inetAddresses
                while (addresses.hasMoreElements()) {
                    val address = addresses.nextElement()
                    if (!address.isLoopbackAddress && address is java.net.Inet4Address) {
                        return address.hostAddress
                    }
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }

    /**
     * 检查USB网络共享是否启用
     * @param context 上下文
     * @return true if USB tethering is enabled
     */
    fun isUsbTetheringEnabled(context: Context): Boolean {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val networkInterface = interfaces.nextElement()
                val interfaceName = networkInterface.displayName?.lowercase() ?: ""
                if (interfaceName.contains("rndis") || interfaceName.contains("usb")) {
                    val addresses = networkInterface.inetAddresses
                    while (addresses.hasMoreElements()) {
                        val address = addresses.nextElement()
                        if (!address.isLoopbackAddress && address is java.net.Inet4Address) {
                            return true
                        }
                    }
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return false
    }

    /**
     * Ping指定主机
     * @param host 目标主机地址
     * @param timeout 超时时间（毫秒）
     * @return true if ping successful
     */
    fun ping(host: String, timeout: Int = 3000): Boolean {
        return try {
            val address = InetAddress.getByName(host)
            address.isReachable(timeout)
        } catch (e: Exception) {
            false
        }
    }

    /**
     * 从当前 WiFi 连接中自动获取网关 IP 地址
     *
     * 使用 ConnectivityManager.getLinkProperties() 获取 DHCP 信息中的网关地址。
     * 这是检测热点网关最可靠的方式——无论热点子网是 192.168.43.x、192.168.1.x 还是其他，
     * 都能正确获取到手机热点的网关 IP。
     *
     * @param context 上下文
     * @return 网关 IP 地址，获取失败返回 null
     */
    fun getActiveGatewayIp(context: Context): String? {
        try {
            val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
            val network = cm.activeNetwork ?: return null
            val linkProperties = cm.getLinkProperties(network) ?: return null

            // 从 DHCP 信息中获取网关地址
            for (route in linkProperties.routes) {
                val gateway = route.gateway
                if (gateway != null && !gateway.isLoopbackAddress && gateway is java.net.Inet4Address) {
                    val ip = gateway.hostAddress
                    if (ip != null && ip != "0.0.0.0") {
                        LogUtils.d(TAG, "Active gateway IP: $ip (from ${linkProperties.interfaceName})")
                        return ip
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.w(TAG, "getActiveGatewayIp failed: ${e.message}")
        }
        return null
    }

    /**
     * 获取 WiFi 热点的网关地址（兼容旧逻辑）
     *
     * 优先使用 ConnectivityManager 获取真实网关；
     * 回退到 wlan0 接口推断；
     * 最终回退到默认值 192.168.43.1。
     *
     * @param context 上下文（可选，传入时优先使用系统 API）
     * @return 热点网关 IP 地址
     */
    @JvmStatic
    fun getHotspotGateway(context: Context? = null): String {
        // 方法 1: 系统 API 获取当前活跃网络的网关
        if (context != null) {
            val gateway = getActiveGatewayIp(context)
            if (gateway != null) return gateway
        }

        // 方法 2: 从 wlan0 接口推断
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val networkInterface = interfaces.nextElement()
                val interfaceName = networkInterface.displayName?.lowercase() ?: ""
                if (interfaceName.contains("wlan") || interfaceName.contains("ap")) {
                    val addresses = networkInterface.interfaceAddresses
                    for (addr in addresses) {
                        val address = addr.address
                        if (!address.isLoopbackAddress && address is java.net.Inet4Address) {
                            val ip = address.hostAddress ?: continue
                            val prefix = ip.substringBeforeLast(".")
                            return "$prefix.1"
                        }
                    }
                }
            }
        } catch (_: Exception) {
        }

        // 方法 3: 默认值
        return Constants.IpAddress.HOTSPOT_GATEWAY
    }
}
