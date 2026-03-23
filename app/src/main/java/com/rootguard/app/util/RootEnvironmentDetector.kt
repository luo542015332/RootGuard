package com.rootguard.app.util

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import com.rootguard.app.utils.Logger
import java.io.File

/**
 * Root 环境检测工具
 * 检测设备上的 Root 方案类型
 */
object RootEnvironmentDetector {
    
    /**
     * Root 方案类型
     */
    enum class RootMode {
        KERNELSU,      // KernelSU
        MAGISK,        // Magisk
        STANDALONE,    // PandaSU 独立模式（未来实现）
        UNKNOWN        // 未知/无 Root
    }
    
    /**
     * 检测当前 Root 方案类型
     */
    fun detectRootMode(): RootMode {
        return when {
            // 检测 KernelSU
            isKernelSUAvailable() -> RootMode.KERNELSU
            
            // 检测 Magisk
            isMagiskAvailable() -> RootMode.MAGISK
            
            // 检测 PandaSU 独立模式（未来实现）
            isPandaSUStandalone() -> RootMode.STANDALONE
            
            // 如果没有检测到管理器但有 Root 权限，使用独立模式
            hasRootPermission() -> {
                Logger.d("No root manager detected but has root permission, using standalone mode")
                RootMode.STANDALONE
            }
            
            // 未检测到 Root 环境
            else -> RootMode.UNKNOWN
        }
    }
    
    /**
     * 检测 KernelSU 是否可用
     */
    private fun isKernelSUAvailable(): Boolean {
        return try {
            // 检查 KernelSU 数据库
            val dbExists = File("/data/adb/kernelsu.db").exists()
            
            // 检查 KernelSU 守护进程
            val daemonRunning = try {
                val process = Runtime.getRuntime().exec("pidof ksud")
                process.inputStream.bufferedReader().readText().isNotBlank()
            } catch (e: Exception) {
                false
            }
            
            Logger.d("KernelSU check: db=$dbExists, daemon=$daemonRunning")
            dbExists || daemonRunning
        } catch (e: Exception) {
            Logger.e("Failed to check KernelSU", e)
            false
        }
    }
    
    /**
     * 检测 Magisk 是否可用
     */
    private fun isMagiskAvailable(): Boolean {
        return try {
            // 检查 Magisk 数据库
            val dbExists = File("/data/adb/magisk.db").exists()
            
            // 检查 Magisk 守护进程
            val daemonRunning = try {
                val process = Runtime.getRuntime().exec("pidof magiskd")
                process.inputStream.bufferedReader().readText().isNotBlank()
            } catch (e: Exception) {
                false
            }
            
            Logger.d("Magisk check: db=$dbExists, daemon=$daemonRunning")
            dbExists || daemonRunning
        } catch (e: Exception) {
            Logger.e("Failed to check Magisk", e)
            false
        }
    }
    
    /**
     * 检测 PandaSU 独立模式（未来实现）
     */
    private fun isPandaSUStandalone(): Boolean {
        return try {
            // 检查 PandaSU 独立数据库
            File("/data/pandasu/pandasu.db").exists()
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * 检查 PandaSU 是否已获得 Root 权限
     */
    fun hasRootPermission(): Boolean {
        return try {
            val process = Runtime.getRuntime().exec("su -c id")
            val output = process.inputStream.bufferedReader().readText()
            val exitCode = process.waitFor()
            
            val hasPermission = exitCode == 0 && output.contains("uid=0")
            Logger.d("Root permission check: hasPermission=$hasPermission")
            hasPermission
        } catch (e: Exception) {
            Logger.e("Failed to check root permission", e)
            false
        }
    }
    
    /**
     * 获取 Root 管理器的包名
     */
    fun getRootManagerPackage(rootMode: RootMode): String? {
        return when (rootMode) {
            RootMode.KERNELSU -> {
                // KernelSU 有多个版本
                listOf(
                    "me.weishu.kernelsu",           // Weishu 版本
                    "io.github.a13e300.ksuwebui"    // 其他版本
                ).firstOrNull { pkg ->
                    try {
                        // 检查包是否存在
                        Runtime.getRuntime().exec("pm path $pkg").waitFor() == 0
                    } catch (e: Exception) {
                        false
                    }
                }
            }
            RootMode.MAGISK -> "com.topjohnwu.magisk"
            else -> null
        }
    }
    
    /**
     * 获取 Root 管理器的名称
     */
    fun getRootManagerName(rootMode: RootMode): String {
        return when (rootMode) {
            RootMode.KERNELSU -> "KernelSU"
            RootMode.MAGISK -> "Magisk"
            RootMode.STANDALONE -> "PandaSU（独立模式）"
            RootMode.UNKNOWN -> "未知"
        }
    }
    
    /**
     * 打开 Root 管理器应用
     */
    fun openRootManager(context: Context, rootMode: RootMode): Boolean {
        val packageName = getRootManagerPackage(rootMode) ?: return false
        
        return try {
            val intent = context.packageManager.getLaunchIntentForPackage(packageName)
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                context.startActivity(intent)
                Logger.d("Opened root manager: $packageName")
                true
            } else {
                Logger.e("Root manager not found: $packageName")
                false
            }
        } catch (e: Exception) {
            Logger.e("Failed to open root manager", e)
            false
        }
    }
    
    /**
     * 获取授权状态描述
     */
    fun getAuthorizationStatus(context: Context): AuthorizationStatus {
        val rootMode = detectRootMode()
        val hasPermission = hasRootPermission()
        
        return when {
            rootMode == RootMode.UNKNOWN -> {
                AuthorizationStatus(
                    rootMode = rootMode,
                    hasPermission = false,
                    message = "未检测到 Root 环境\n请先安装 KernelSU 或 Magisk",
                    canOpenManager = false
                )
            }
            hasPermission -> {
                AuthorizationStatus(
                    rootMode = rootMode,
                    hasPermission = true,
                    message = "已获得 Root 权限\nPandaSU 可以正常工作",
                    canOpenManager = true
                )
            }
            else -> {
                val managerName = getRootManagerName(rootMode)
                AuthorizationStatus(
                    rootMode = rootMode,
                    hasPermission = false,
                    message = "检测到 $managerName，但 PandaSU 未获得授权\n" +
                              "请在 $managerName 管理器中授予 PandaSU Root 权限",
                    canOpenManager = true
                )
            }
        }
    }
    
    /**
     * 授权状态数据类
     */
    data class AuthorizationStatus(
        val rootMode: RootMode,
        val hasPermission: Boolean,
        val message: String,
        val canOpenManager: Boolean
    )
}
