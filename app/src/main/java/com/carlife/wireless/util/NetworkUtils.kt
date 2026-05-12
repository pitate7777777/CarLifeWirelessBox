package com.carlife.wireless.util

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import java.net.InetAddress
import java.net.NetworkInterface

/**
 * 网络工具类
 * 提供网络连接状态检测、IP地址获取等功能
 */
object NetworkUtils {
    
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
     * 获取 WiFi 热点的网关地址
     * Android 热点默认子网为 192.168.43.0/24，网关为 192.168.43.1
     * 也尝试从 wlan0 接口的实际配置中读取网关
     * @return 热点网关 IP 地址，默认返回 192.168.43.1
     */
    fun getHotspotGateway(): String {
        try {
            // 尝试从 wlan0 接口获取网关（热点通常使用 wlan0）
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
                            // 热点网关通常是子网中 .1 的地址
                            val prefix = ip.substringBeforeLast(".")
                            return "$prefix.1"
                        }
                    }
                }
            }
        } catch (_: Exception) {
        }
        return Constants.IpAddress.HOTSPOT_GATEWAY
    }
}
