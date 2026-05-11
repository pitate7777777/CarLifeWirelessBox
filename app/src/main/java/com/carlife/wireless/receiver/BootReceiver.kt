package com.carlife.wireless.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.carlife.wireless.util.LogUtils

/**
 * 开机启动 Receiver
 * 
 * Manifest 中配置：.receiver.BootReceiver
 * 监听：android.intent.action.BOOT_COMPLETED
 */
class BootReceiver : BroadcastReceiver() {
    
    companion object {
        private const val TAG = "BootReceiver"
    }
    
    override fun onReceive(context: Context?, intent: Intent?) {
        if (intent?.action == Intent.ACTION_BOOT_COMPLETED) {
            LogUtils.i(TAG, "Boot completed, starting CarLife service...")
            
            // 启动 ConnectionService（MD 角色，监听 TCP 端口）
            val serviceIntent = Intent(context, com.carlife.wireless.service.ConnectionService::class.java)
            context?.startService(serviceIntent)
            LogUtils.i(TAG, "ConnectionService started on boot")
        }
    }
}
