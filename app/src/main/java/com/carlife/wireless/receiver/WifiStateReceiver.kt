package com.carlife.wireless.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.net.wifi.WifiManager
import com.carlife.wireless.util.LogUtils

/**
 * WiFi 状态变化 Receiver
 * 
 * Manifest 中配置：.receiver.WifiStateReceiver
 * 监听：
 * - android.net.wifi.WIFI_STATE_CHANGED
 * - android.net.wifi.STATE_CHANGE
 */
class WifiStateReceiver : BroadcastReceiver() {
    
    companion object {
        private const val TAG = "WifiStateReceiver"
    }
    
    override fun onReceive(context: Context?, intent: Intent?) {
        when (intent?.action) {
            WifiManager.WIFI_STATE_CHANGED_ACTION -> {
                val wifiState = intent.getIntExtra(WifiManager.EXTRA_WIFI_STATE, -1)
                when (wifiState) {
                    WifiManager.WIFI_STATE_ENABLED -> {
                        LogUtils.i(TAG, "WiFi enabled")
                        // TODO: 处理 WiFi 启用
                        // 可选：自动启动 ConnectionService（根据需要）
                        LogUtils.d(TAG, "WiFi 已启用（可选：启动服务）")
                        val serviceIntent = Intent(context, com.carlife.wireless.service.ConnectionService::class.java)
                        context?.startService(serviceIntent)
                    }
                    WifiManager.WIFI_STATE_DISABLED -> {
                        LogUtils.i(TAG, "WiFi disabled")
                        // TODO: 处理 WiFi 禁用
                        // 停止 ConnectionService
                        val serviceIntent = Intent(context, com.carlife.wireless.service.ConnectionService::class.java)
                        context?.stopService(serviceIntent)
                        LogUtils.i(TAG, "ConnectionService stopped (WiFi disabled)")
                    }
                    else -> {
                        LogUtils.d(TAG, "WiFi state changed: $wifiState")
                    }
                }
            }
            "android.net.wifi.STATE_CHANGE" -> {
                LogUtils.d(TAG, "WiFi state changed")
                // TODO: 处理 WiFi 连接状态变化
                // 可在此处检测是否连接到特定 SSID（如 "CarLife_" 前缀）
                // 如果连接，则启动 ConnectionService；如果断开，则停止
                val wifiManager = context?.getSystemService(Context.WIFI_SERVICE) as? WifiManager
                val info = wifiManager?.connectionInfo
                val ssid = info?.ssid?.replace("\"", "") ?: "unknown"
                LogUtils.i(TAG, "WiFi connected to: $ssid")
                // 示例：仅当 SSID 以 "CarLife_" 开头时自动启动服务
                if (ssid.startsWith("CarLife_")) {
                    val serviceIntent = Intent(context, com.carlife.wireless.service.ConnectionService::class.java)
                    context?.startService(serviceIntent)
                    LogUtils.i(TAG, "Auto-started ConnectionService for SSID: $ssid")
                }
            }
        }
    }
}
