package com.carlife.wireless.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.carlife.wireless.service.ConnectionService
import com.carlife.wireless.util.LogUtils

/**
 * 开机启动 Receiver
 * 监听 android.intent.action.BOOT_COMPLETED
 */
class BootReceiver : BroadcastReceiver() {

    companion object {
        private const val TAG = "BootReceiver"
    }

    override fun onReceive(context: Context?, intent: Intent?) {
        if (intent?.action == Intent.ACTION_BOOT_COMPLETED) {
            LogUtils.i(TAG, "Boot completed, starting CarLife service...")
            val serviceIntent = Intent(context, ConnectionService::class.java)
            // Android 8.0+ 需要 startForegroundService
            context?.startForegroundService(serviceIntent)
            LogUtils.i(TAG, "ConnectionService started on boot")
        }
    }
}
