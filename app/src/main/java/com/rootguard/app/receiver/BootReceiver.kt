package com.rootguard.app.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.rootguard.app.service.RootMonitorService
import com.rootguard.app.service.RootRequestMonitorService

class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == Intent.ACTION_BOOT_COMPLETED) {
            // 启动 Root 监控服务
            val serviceIntent = Intent(context, RootMonitorService::class.java)
            context.startForegroundService(serviceIntent)
            
            // 启动 Root 请求监控服务
            val monitorIntent = Intent(context, RootRequestMonitorService::class.java).apply {
                action = RootRequestMonitorService.ACTION_START_MONITORING
            }
            context.startForegroundService(monitorIntent)
        }
    }
}