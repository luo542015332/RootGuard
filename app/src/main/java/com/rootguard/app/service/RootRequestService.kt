package com.rootguard.app.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.graphics.PixelFormat
import android.os.Build
import android.os.IBinder
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import androidx.compose.ui.platform.ComposeView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import androidx.core.app.NotificationCompat
import com.rootguard.app.MainActivity
import com.rootguard.app.R
import com.rootguard.app.ui.dialog.RootRequestFloatingDialog
import com.rootguard.app.ui.theme.RootGuardTheme
import com.rootguard.app.utils.Logger
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 * Root 权限请求处理服务
 * 监听 Magisk 的 Root 请求并显示弹窗
 */
class RootRequestService : Service(), LifecycleOwner, SavedStateRegistryOwner {

    companion object {
        const val CHANNEL_ID = "rootguard_requests"
        const val NOTIFICATION_ID = 2
        const val ACTION_SHOW_DIALOG = "action_show_dialog"
        const val EXTRA_PACKAGE_NAME = "extra_package_name"
        const val EXTRA_APP_NAME = "extra_app_name"
        const val EXTRA_UID = "extra_uid"
        const val EXTRA_PID = "extra_pid"
    }

    private lateinit var lifecycleRegistry: LifecycleRegistry
    private lateinit var savedStateRegistryController: SavedStateRegistryController
    
    private var windowManager: WindowManager? = null
    private var dialogView: View? = null
    private var isDialogShowing = false

    override fun onCreate() {
        super.onCreate()
        lifecycleRegistry = LifecycleRegistry(this)
        savedStateRegistryController = SavedStateRegistryController.create(this)
        savedStateRegistryController.performAttach()
        savedStateRegistryController.performRestore(null)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
        
        createNotificationChannel()
        startForeground(NOTIFICATION_ID, createNotification())
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_SHOW_DIALOG -> {
                val packageName = intent.getStringExtra(EXTRA_PACKAGE_NAME) ?: return START_STICKY
                val appName = intent.getStringExtra(EXTRA_APP_NAME) ?: packageName
                val uid = intent.getIntExtra(EXTRA_UID, -1)
                val pid = intent.getIntExtra(EXTRA_PID, -1)
                
                showRootRequestDialog(packageName, appName, uid, pid)
            }
        }
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        removeDialog()
        super.onDestroy()
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "Root 权限请求",
                NotificationManager.IMPORTANCE_HIGH
            ).apply {
                description = "显示 Root 权限请求通知"
            }
            
            val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            notificationManager.createNotificationChannel(channel)
        }
    }

    private fun createNotification(): Notification {
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_IMMUTABLE
        )

        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("RootGuard")
            .setContentText("正在监听 Root 权限请求")
            .setSmallIcon(R.drawable.ic_notification)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()
    }

    /**
     * 显示 Root 权限请求弹窗
     */
    private fun showRootRequestDialog(packageName: String, appName: String, uid: Int, pid: Int) {
        if (isDialogShowing) {
            removeDialog()
        }

        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager

        val params = WindowManager.LayoutParams(
            WindowManager.LayoutParams.MATCH_PARENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
            } else {
                WindowManager.LayoutParams.TYPE_PHONE
            },
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                    WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or
                    WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.CENTER
        }

        val composeView = ComposeView(this).apply {
            setViewTreeLifecycleOwner(this@RootRequestService)
            setViewTreeSavedStateRegistryOwner(this@RootRequestService)
            
            setContent {
                RootGuardTheme {
                    RootRequestFloatingDialog(
                        appName = appName,
                        packageName = packageName,
                        onGrant = {
                            handleRootResponse(packageName, true, false)
                            removeDialog()
                        },
                        onDeny = {
                            handleRootResponse(packageName, false, false)
                            removeDialog()
                        }
                    )
                }
            }
        }

        dialogView = composeView
        windowManager?.addView(composeView, params)
        isDialogShowing = true
    }

    /**
     * 移除弹窗
     */
    private fun removeDialog() {
        if (dialogView != null && windowManager != null) {
            try {
                windowManager?.removeView(dialogView)
            } catch (e: Exception) {
                // Ignore
            }
            dialogView = null
            isDialogShowing = false
        }
    }

    /**
     * 处理 Root 权限响应
     */
    private fun handleRootResponse(packageName: String, granted: Boolean, remember: Boolean) {
        CoroutineScope(Dispatchers.IO).launch {
            try {
                // 更新 Magisk 数据库中的策略
                val policy = if (granted) 2 else 1
                val process = Runtime.getRuntime().exec(
                    "su -c sqlite3 /data/adb/magisk.db \"UPDATE policies SET policy=$policy WHERE package_name='$packageName'\""
                )
                process.waitFor()
                
                // 发送广播通知请求已处理
                sendBroadcast(Intent("com.rootguard.action.ROOT_RESPONSE").apply {
                    putExtra("package_name", packageName)
                    putExtra("granted", granted)
                })
            } catch (e: Exception) {
                e.printStackTrace()
            }
        }
    }

    // LifecycleOwner implementation
    override val lifecycle: Lifecycle
        get() = lifecycleRegistry

    // SavedStateRegistryOwner implementation
    override val savedStateRegistry: SavedStateRegistry
        get() = savedStateRegistryController.savedStateRegistry
}