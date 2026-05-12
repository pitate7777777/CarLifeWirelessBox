package com.carlife.wireless.util

import android.content.Context
import android.net.ConnectivityManager
import android.net.DhcpInfo
import android.net.NetworkCapabilities
import android.net.wifi.WifiManager
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
     * 获取 WiFi 网关 IP 地址（即热点拥有者 / 手机 B 的 IP）
     *
     * 当本机连接到手机 B 的 WiFi 热点时，网关地址就是手机 B 的 IP。
     * 例如：手机 B 开启热点，网关通常为 192.168.43.1
     *
     * @return 网关 IP 地址字符串，如果未连接 WiFi 则返回 null
     */
    fun getWifiGatewayIp(context: Context): String? {
        try {
            // 方法1：通过 WifiManager.getDhcpInfo() 获取网关（兼容性最好）
            val wifiManager = context.applicationContext.getSystemService(Context.WIFI_SERVICE) as? WifiManager
            if (wifiManager != null && wifiManager.isWifiEnabled) {
                val dhcpInfo: DhcpInfo? = dhcpInfo
                if (dhcpInfo != null && dhcpInfo.gateway != 0) {
                    val gatewayIp = intToIp(dhcpInfo.gateway)
                    LogUtils.d(TAG, "WiFi gateway (DhcpInfo): $gatewayIp")
                    return gatewayIp
                }
            }

            // 方法2：通过 ConnectivityManager.getLinkProperties() 获取网关（API 21+）
            val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as? ConnectivityManager
            if (cm != null) {
                val network = cm.activeNetwork
                val caps = if (network != null) cm.getNetworkCapabilities(network) else null
                if (caps != null && caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)) {
                    val linkProperties = cm.getLinkProperties(network)
                    if (linkProperties != null) {
                        for (route in linkProperties.routes) {
                            if (route.isDefaultRoute && route.gateway != null) {
                                val gatewayIp = route.gateway?.hostAddress
                                if (gatewayIp != null && gatewayIp.contains(".")) {
                                    LogUtils.d(TAG, "WiFi gateway (LinkProperties): $gatewayIp")
                                    return gatewayIp
                                }
                            }
                        }
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.w(TAG, "获取 WiFi 网关失败: ${e.message}")
        }
        return null
    }

    /**
     * 将 int 格式的 IP 地址转换为字符串
     * DhcpInfo 中的 IP 以 Little-Endian 整数存储
     */
    private fun intToIp(ipInt: Int): String {
        return "${ipInt and 0xFF}.${ipInt shr 8 and 0xFF}.${ipInt shr 16 and 0xFF}.${ipInt shr 24 and 0xFF}"
    }

    /**
     * 获取本地IP地址
     * 优先检查USB网卡IP（rndis0/usb0），再检查Wi-Fi等其他接口
     * @return IP地址字符串，如果没有则返回null
     */
    fun getLocalIpAddress(): String? {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val networkInterface = interfaces.nextElement()
                // 跳过未启用的接口
                if (!networkInterface.isUp) continue
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
                if (!networkInterface.isUp) continue
                val addresses = networkInterface.inetAddresses
                while (addresses.hasMoreElements()) {
                    val address = addresses.nextElement()
                    if (!address.isLoopbackAddress && address is java.net.Inet4Address) {
                        return address.hostAddress
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.w(TAG, "获取本地 IP 失败: ${e.message}")
        }
        return null
    }

    /**
     * 检查USB网络共享是否启用
     * 检测 usb/rndis/ncm 接口是否 UP 且有 IPv4 地址
     * @param context 上下文
     * @return true if USB tethering is enabled
     */
    fun isUsbTetheringEnabled(context: Context): Boolean {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val networkInterface = interfaces.nextElement()
                if (!networkInterface.isUp) continue
                val interfaceName = networkInterface.displayName?.lowercase() ?: ""
                if (interfaceName.contains("rndis") || interfaceName.contains("usb") ||
                    interfaceName.contains("ncm")) {
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
            LogUtils.w(TAG, "检查 USB 共享状态失败: ${e.message}")
        }
        return false
    }

    /**
     * 获取当前连接模式和对应的本机 IP
     * 用于判断是 WiFi 热点模式还是 USB 网络共享模式
     *
     * @return Pair<连接模式, 本机IP> 模式: "wifi" / "usb" / "unknown"
     */
    fun getConnectionModeAndIp(context: Context): Pair<String, String?> {
        // 优先检查 USB 网络
        val usbIp = getUsbNetworkIp()
        if (usbIp != null) return Pair("usb", usbIp)

        // 再检查 WiFi
        if (isWifiConnected(context)) {
            val wifiIp = getLocalIpAddress()
            return Pair("wifi", wifiIp)
        }

        return Pair("unknown", null)
    }

    /**
     * 获取 USB 网络接口的 IP 地址
     */
    fun getUsbNetworkIp(): String? {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val networkInterface = interfaces.nextElement()
                if (!networkInterface.isUp) continue
                val interfaceName = networkInterface.displayName?.lowercase() ?: ""
                if (interfaceName.contains("rndis") || interfaceName.contains("usb") ||
                    interfaceName.contains("ncm")) {
                    val addresses = networkInterface.inetAddresses
                    while (addresses.hasMoreElements()) {
                        val address = addresses.nextElement()
                        if (!address.isLoopbackAddress && address is java.net.Inet4Address) {
                            return address.hostAddress
                        }
                    }
                }
            }
        } catch (e: Exception) {
            LogUtils.w(TAG, "获取 USB IP 失败: ${e.message}")
        }
        return null
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
}
