package com.pandasu.turbo

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.AccessibilityServiceInfo
import android.content.Intent
import android.content.pm.PackageManager
import android.content.pm.ServiceInfo
import android.os.Build
import android.util.Log
import android.view.accessibility.AccessibilityEvent

class GameAccessibilityService : AccessibilityService() {

    companion object {
        private const val TAG = "GameAccess"
        var isGameRunning = false
            private set
        var currentGamePackage: String? = null
            private set
    }

    private lateinit var gameManager: GameManager

    override fun onServiceConnected() {
        super.onServiceConnected()
        Log.d(TAG, "无障碍服务已连接")
        gameManager = GameManager(this)

        serviceInfo = AccessibilityServiceInfo().apply {
            eventTypes = AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED or
                    AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED
            feedbackType = AccessibilityServiceInfo.FEEDBACK_GENERIC
            notificationTimeout = 200
            flags = AccessibilityServiceInfo.FLAG_INCLUDE_NOT_IMPORTANT_VIEWS
        }
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent) {
        if (event.eventType != AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED) return

        val packageName = event.packageName?.toString() ?: return
        // 排除系统 UI 和自身应用包名
        if (packageName == "com.android.systemui" || packageName == this.packageName) return

        val isGame = isGamePackage(packageName)

        if (isGame && !isGameRunning) {
            Log.i(TAG, "检测到游戏启动: $packageName")
            isGameRunning = true
            currentGamePackage = packageName
            onGameStarted(packageName)
        } else if (!isGame && isGameRunning) {
            Log.i(TAG, "游戏退出: $currentGamePackage")
            isGameRunning = false
            currentGamePackage = null
            onGameStopped()
        }
    }

    private fun onGameStarted(packageName: String) {
        try {
            val profileStore = com.pandasu.turbo.data.GameProfileStore(this)
            val profile = profileStore.getProfile(packageName)
            
            Log.i(TAG, "========================================")
            Log.i(TAG, "🎮 检测到游戏: $packageName")
            Log.i(TAG, "========================================")
            
            if (profile != null) {
                Log.i(TAG, "📋 已加载配置:")
                Log.i(TAG, "   名称: ${profile.displayName}")
                Log.i(TAG, "   性能模式: ${profile.performanceMode}")
                Log.i(TAG, "   帧率: ${when(profile.customFps) {-1 -> "跟随系统"; 60 -> "60帧"; 90 -> "90帧"; 120 -> "120帧"; else -> "跟随系统"}}")
                Log.i(TAG, "   CPU Boost: ${if(profile.cpuBoost) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   GPU 加速: ${if(profile.gpuBoost) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   WakeLock: ${if(profile.wakelockBoost) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   自动勿扰: ${if(profile.autoDnd) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   保持常亮: ${if(profile.keepScreenOn) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   屏蔽通知: ${if(profile.blockNotifications) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   屏蔽来电: ${if(profile.blockCalls) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   锁定旋转: ${if(profile.autoLockRotation) "✅开启" else "❌关闭"}")
                Log.i(TAG, "   清理后台: ${if(profile.killBackground) "✅开启" else "❌关闭"}")
                Log.i(TAG, "========================================")
            } else {
                Log.i(TAG, "📋 无自定义配置，使用默认设置")
                Log.i(TAG, "========================================")
            }

            // 应用配置
            if (profile?.killBackground != false) {
                val cleaned = gameManager.cleanBackgroundApps()
                Log.i(TAG, "🧹 已清理后台应用: $cleaned 个")
            }

            if (profile?.autoDnd != false) {
                gameManager.setDoNotDisturb(true)
                Log.i(TAG, "🔕 已开启勿扰模式")
            }

            if (profile?.keepScreenOn != false) {
                Log.i(TAG, "💡 保持常亮: 已设置")
            }

            // 启动性能监控服务
            val intent = Intent(this, PerformanceMonitorService::class.java)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent)
            } else {
                startService(intent)
            }

            Log.i(TAG, "✅ 游戏优化完成")
        } catch (e: Exception) {
            Log.e(TAG, "❌ 优化失败: ${e.message}")
        }
    }

    private fun onGameStopped() {
        try {
            gameManager.setDoNotDisturb(false)
            stopService(Intent(this, PerformanceMonitorService::class.java))
        } catch (e: Exception) { }
    }

    private fun isGamePackage(packageName: String): Boolean {
        return GameManager.GAME_PACKAGES.any { packageName.startsWith(it) } ||
                packageName.contains("game") ||
                packageName.contains("Game")
    }

    override fun onInterrupt() {
        Log.w(TAG, "无障碍服务中断")
    }
}