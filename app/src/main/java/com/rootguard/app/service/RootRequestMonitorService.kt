package com.rootguard.app.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import androidx.core.app.NotificationCompat
import com.rootguard.app.MainActivity
import com.rootguard.app.R
import com.rootguard.app.utils.Logger
import kotlinx.coroutines.*
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * Root 请求监听器服务
 * 通过监控 logcat 或轮询 Magisk 数据库来检测 Root 请求
 */
class RootRequestMonitorService : Service() {

    companion object {
        const val ACTION_START_MONITORING = "action_start_monitoring"
        const val ACTION_STOP_MONITORING = "action_stop_monitoring"
        const val CHANNEL_ID = "rootguard_monitor"
        const val NOTIFICATION_ID = 1
    }

    private val serviceScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var monitoringJob: Job? = null
    private var isMonitoring = false

    // 已知的 Root 请求包名缓存
    private val knownRequests = mutableSetOf<String>()

    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        startForeground(NOTIFICATION_ID, createNotification())
        Logger.d("RootRequestMonitorService created")
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START_MONITORING -> startMonitoring()
            ACTION_STOP_MONITORING -> stopMonitoring()
        }
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        stopMonitoring()
        serviceScope.cancel()
        super.onDestroy()
    }

    /**
     * 开始监控 Root 请求
     */
    private fun startMonitoring() {
        if (isMonitoring) return
        
        isMonitoring = true
        Logger.d("Starting Root request monitoring")
        
        monitoringJob = serviceScope.launch {
            // 方法1: 通过 logcat 监控 Magisk 日志
            monitorByLogcat()
            
            // 方法2: 轮询 Magisk 数据库（备用）
            // monitorByPolling()
        }
    }

    /**
     * 停止监控
     */
    private fun stopMonitoring() {
        isMonitoring = false
        monitoringJob?.cancel()
        monitoringJob = null
        Logger.d("Stopped Root request monitoring")
    }

    /**
     * 通过 logcat 监控 Magisk 日志
     * 检测包含 "su" 和 "request" 的日志行
     */
    private suspend fun monitorByLogcat() {
        withContext(Dispatchers.IO) {
            try {
                // 使用 logcat 过滤 Magisk 相关日志
                val process = Runtime.getRuntime().exec("su -c logcat -s Magisk -v brief")
                val reader = BufferedReader(InputStreamReader(process.inputStream))
                
                var line: String?
                while (reader.readLine().also { line = it } != null && isMonitoring) {
                    line?.let { logLine ->
                        parseLogLine(logLine)
                    }
                }
            } catch (e: Exception) {
                Logger.e("Logcat monitoring error", e)
                // 如果 logcat 失败，切换到轮询模式
                monitorByPolling()
            }
        }
    }

    /**
     * 通过轮询 Magisk 数据库监控
     * 检测策略为 0（询问）的新条目
     */
    private suspend fun monitorByPolling() {
        withContext(Dispatchers.IO) {
            while (isMonitoring) {
                try {
                    // 查询 Magisk 数据库中策略为 0（询问）的应用
                    val process = Runtime.getRuntime().exec(
                        "su -c sqlite3 /data/adb/magisk.db \"SELECT package_name FROM policies WHERE policy=0\""
                    )
                    
                    val output = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    
                    output.lines().forEach { packageName ->
                        if (packageName.isNotBlank() && !knownRequests.contains(packageName)) {
                            knownRequests.add(packageName)
                            showRootRequestDialog(packageName)
                        }
                    }
                    
                    // 每 500ms 检查一次
                    delay(500)
                } catch (e: Exception) {
                    Logger.e("Polling monitoring error", e)
                    delay(2000) // 出错后等待更长时间
                }
            }
        }
    }

    /**
     * 解析 logcat 日志行
     */
    private fun parseLogLine(line: String) {
        // 检测 Magisk 的 Root 请求日志
        // 示例日志: D/Magisk( 1234): su: request from com.example.app (12345)
        
        if (line.contains("su:") && line.contains("request")) {
            val packageName = extractPackageName(line)
            if (packageName != null && !knownRequests.contains(packageName)) {
                knownRequests.add(packageName)
                showRootRequestDialog(packageName)
            }
        }
    }

    /**
     * 从日志行提取包名
     */
    private fun extractPackageName(logLine: String): String? {
        // 尝试匹配 "from com.package.name" 格式
        val regex = "from\\s+([a-zA-Z0-9._]+)".toRegex()
        return regex.find(logLine)?.groupValues?.get(1)
    }

    /**
     * 显示 Root 请求弹窗
     */
    private fun showRootRequestDialog(packageName: String) {
        // 获取应用名称
        val appName = try {
            val pm = packageManager
            val appInfo = pm.getApplicationInfo(packageName, 0)
            pm.getApplicationLabel(appInfo).toString()
        } catch (e: Exception) {
            packageName
        }

        // 启动 RootRequestService 显示弹窗
        val intent = Intent(this, RootRequestService::class.java).apply {
            action = RootRequestService.ACTION_SHOW_DIALOG
            putExtra(RootRequestService.EXTRA_PACKAGE_NAME, packageName)
            putExtra(RootRequestService.EXTRA_APP_NAME, appName)
        }
        
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            startForegroundService(intent)
        } else {
            startService(intent)
        }
    }

    /**
     * 清除已知的请求记录
     * 在应用授权/拒绝后调用
     */
    fun clearRequest(packageName: String) {
        knownRequests.remove(packageName)
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "Root 监控服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "监控 Root 权限请求"
            }

            val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            notificationManager.createNotificationChannel(channel)
        }
    }

    private fun createNotification(): Notification {
        val pendingIntent = android.app.PendingIntent.getActivity(
            this,
            0,
            Intent(this, MainActivity::class.java),
            android.app.PendingIntent.FLAG_IMMUTABLE
        )

        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("RootGuard")
            .setContentText("正在监控 Root 权限请求")
            .setSmallIcon(R.drawable.ic_notification)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()
    }
}