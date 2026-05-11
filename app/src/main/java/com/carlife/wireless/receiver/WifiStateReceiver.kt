package com.carlife.wireless.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.net.wifi.WifiManager
import com.carlife.wireless.service.ConnectionService
import com.carlife.wireless.util.LogUtils

/**
 * WiFi 状态变化 Receiver
 * 监听 WIFI_STATE_CHANGED 和 STATE_CHANGE
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
                        val serviceIntent = Intent(context, ConnectionService::class.java)
                        context?.startForegroundService(serviceIntent)
                    }
                    WifiManager.WIFI_STATE_DISABLED -> {
                        LogUtils.i(TAG, "WiFi disabled")
                        val serviceIntent = Intent(context, ConnectionService::class.java)
                        context?.stopService(serviceIntent)
                        LogUtils.i(TAG, "ConnectionService stopped (WiFi disabled)")
                    }
                    else -> {
                        LogUtils.d(TAG, "WiFi state changed: $wifiState")
                    }
                }
            }
            "android.net.wifi.STATE_CHANGE" -> {
                LogUtils.d(TAG, "WiFi connection state changed")
                val wifiManager = context?.applicationContext?.getSystemService(Context.WIFI_SERVICE) as? WifiManager
                val info = wifiManager?.connectionInfo
                val ssid = info?.ssid?.replace("\"", "") ?: "unknown"
                LogUtils.i(TAG, "WiFi connected to: $ssid")
                if (ssid.startsWith("CarLife_")) {
                    val serviceIntent = Intent(context, ConnectionService::class.java)
                    context?.startForegroundService(serviceIntent)
                    LogUtils.i(TAG, "Auto-started ConnectionService for SSID: $ssid")
                }
            }
        }
    }
}
