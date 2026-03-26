package com.rootguard.app.util

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
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
     * 打开 Root 管理器应用（增强版）
     * 支持处理更新后的授权问题
     */
    fun openRootManager(context: Context, rootMode: RootMode): Boolean {
        val packageName = getRootManagerPackage(rootMode) ?: return false
        
        return try {
            // 检查包是否存在
            try {
                context.packageManager.getPackageInfo(packageName, 0)
            } catch (e: Exception) {
                Logger.e("Root manager not installed: $packageName")
                // 尝试跳转到应用商店安装
                try {
                    val marketIntent = Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=$packageName"))
                    marketIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    context.startActivity(marketIntent)
                    Logger.d("Redirected to market for: $packageName")
                    return true
                } catch (e2: Exception) {
                    Logger.e("Failed to open market", e2)
                    return false
                }
            }
            
            val intent = context.packageManager.getLaunchIntentForPackage(packageName)
            if (intent != null) {
                // 添加额外的意图标志，尝试直接跳转到权限管理页面
                when (rootMode) {
                    RootMode.KERNELSU -> {
                        // KernelSU: 尝试直接跳转到超级用户列表
                        try {
                            val kernelSuIntent = Intent()
                            kernelSuIntent.setClassName(packageName, "me.weishu.kernelsu.ui.superuser.SuperUserActivity")
                            kernelSuIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            context.startActivity(kernelSuIntent)
                            Logger.d("Opened KernelSU SuperUserActivity directly")
                            return true
                        } catch (e: Exception) {
                            Logger.d("Cannot open KernelSU SuperUserActivity directly, fallback to main activity")
                        }
                    }
                    RootMode.MAGISK -> {
                        // Magisk: 尝试跳转到超级用户页面
                        try {
                            val magiskIntent = Intent()
                            magiskIntent.setClassName(packageName, "com.topjohnwu.magisk.ui.superuser.SuperUserFragment")
                            magiskIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            context.startActivity(magiskIntent)
                            Logger.d("Opened Magisk SuperUserFragment directly")
                            return true
                        } catch (e: Exception) {
                            Logger.d("Cannot open Magisk SuperUserFragment directly, fallback to main activity")
                        }
                    }
                    else -> {
                        // 其他模式使用默认启动方式
                    }
                }
                
                // 回退到标准的启动方式
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
     * 修复授权问题
     * 当检测到授权失败时，提供修复建议和操作
     */
    fun fixAuthorizationIssue(context: Context): Boolean {
        val rootMode = detectRootMode()
        
        return when (rootMode) {
            RootMode.KERNELSU, RootMode.MAGISK -> {
                // 打开 Root 管理器
                val success = openRootManager(context, rootMode)
                
                if (success) {
                    Logger.d("Opened root manager for authorization fix")
                    
                    // 在应用内显示修复指南
                    showAuthorizationFixGuide(context, rootMode)
                }
                
                success
            }
            else -> {
                Logger.d("Cannot fix authorization for root mode: $rootMode")
                false
            }
        }
    }
    
    /**
     * 显示授权修复指南
     */
    private fun showAuthorizationFixGuide(context: Context, rootMode: RootMode) {
        val managerName = getRootManagerName(rootMode)
        val steps = when (rootMode) {
            RootMode.KERNELSU -> listOf(
                "1. 打开 KernelSU 应用",
                "2. 点击「超级用户」选项",
                "3. 找到 PandaSU 应用",
                "4. 点击开关，授予 Root 权限",
                "5. 返回 PandaSU，点击重新检测"
            )
            RootMode.MAGISK -> listOf(
                "1. 打开 Magisk 应用",
                "2. 点击「超级用户」选项",
                "3. 找到 PandaSU 应用",
                "4. 点击开关，授予 Root 权限",
                "5. 返回 PandaSU，点击重新检测"
            )
            else -> emptyList()
        }
        
        if (steps.isNotEmpty()) {
            // 这里可以显示一个对话框或通知
            val notificationTitle = "PandaSU 授权修复指南"
            val notificationText = "请按以下步骤在 $managerName 中授予权限：\n${steps.joinToString("\n")}"
            
            Logger.i("Authorization fix guide: $notificationText")
            
            // 可以在这里添加显示通知的代码
            // createNotification(context, notificationTitle, notificationText)
        }
    }
    
    /**
     * 检测 LSPosed 模块是否激活
     */
    fun isLSPosedModuleActive(): Boolean {
        return try {
            // 检查 LSPosed 服务是否运行
            val process = Runtime.getRuntime().exec("getprop persist.lspd.core.active")
            val output = process.inputStream.bufferedReader().readText().trim()
            val exitCode = process.waitFor()
            
            val isActive = output == "true" || exitCode == 0
            Logger.d("LSPosed module active check: $isActive (output=$output)")
            isActive
        } catch (e: Exception) {
            Logger.e("Failed to check LSPosed module", e)
            false
        }
    }
    
    /**
     * 获取授权状态描述（增强版）
     * 支持检测更新后的授权失败问题
     */
    fun getAuthorizationStatus(context: Context): AuthorizationStatus {
        val rootMode = detectRootMode()
        val hasPermission = hasRootPermission()
        val lsposedActive = isLSPosedModuleActive()
        
        // 检查 Root 管理器的具体状态
        val managerPackage = getRootManagerPackage(rootMode)
        val managerName = getRootManagerName(rootMode)
        val isManagerInstalled = managerPackage?.let { 
            try {
                context.packageManager.getPackageInfo(it, 0)
                true
            } catch (e: Exception) {
                false
            }
        } ?: false
        
        // 检查是否是因为 Root 管理器更新导致的授权失败
        val isUpdatedFailure = checkUpdateRelatedFailure(rootMode, hasPermission, managerPackage, context)
        
        return when {
            // 优先检测 Root 权限
            hasPermission -> {
                AuthorizationStatus(
                    rootMode = rootMode,
                    hasPermission = true,
                    message = "已获得 Root 权限\nPandaSU 可以正常工作",
                    canOpenManager = true,
                    managerPackage = managerPackage,
                    managerName = managerName,
                    isManagerInstalled = isManagerInstalled
                )
            }
            // LSPosed 模块激活
            lsposedActive -> {
                AuthorizationStatus(
                    rootMode = RootMode.STANDALONE,
                    hasPermission = true, // LSPosed 模式下视为有权限
                    message = "LSPosed 模块已激活\nPandaSU 可以正常工作",
                    canOpenManager = false,
                    isLSPosedMode = true,
                    managerPackage = managerPackage,
                    managerName = managerName,
                    isManagerInstalled = isManagerInstalled
                )
            }
            rootMode == RootMode.UNKNOWN -> {
                AuthorizationStatus(
                    rootMode = rootMode,
                    hasPermission = false,
                    message = "未检测到 Root 环境\n请安装 KernelSU/Magisk 或激活 LSPosed 模块",
                    canOpenManager = false,
                    managerPackage = managerPackage,
                    managerName = managerName,
                    isManagerInstalled = isManagerInstalled
                )
            }
            else -> {
                // 检查 Root 管理器是否安装了
                if (!isManagerInstalled) {
                    AuthorizationStatus(
                        rootMode = rootMode,
                        hasPermission = false,
                        message = "检测到 $managerName，但管理器应用未安装\n" +
                                  "请重新安装 $managerName",
                        canOpenManager = false,
                        managerPackage = managerPackage,
                        managerName = managerName,
                        isManagerInstalled = false
                    )
                } else {
                    // 检查是否因为更新导致授权丢失
                    val specialMessage = if (isUpdatedFailure) {
                        "\n⚠️  检测到 Root 管理器更新后的授权失败\n" +
                        "请在 ${managerName} 中重新授予 PandaSU Root 权限"
                    } else if (rootMode == RootMode.KERNELSU || rootMode == RootMode.MAGISK) {
                        "\n💡 提示：如果 ${managerName} 刚更新过，请重新授予 PandaSU Root 权限"
                    } else {
                        ""
                    }
                    
                    AuthorizationStatus(
                        rootMode = rootMode,
                        hasPermission = false,
                        message = "检测到 ${managerName}，但 PandaSU 未获得授权\n" +
                                  "请在 ${managerName} 管理器中授予 PandaSU Root 权限" + specialMessage,
                        canOpenManager = true,
                        managerPackage = managerPackage,
                        managerName = managerName,
                        isManagerInstalled = true,
                        isUpdateFailure = isUpdatedFailure
                    )
                }
            }
        }
    }
    
    /**
     * 检查是否为 Root 管理器更新相关的授权失败
     */
    private fun checkUpdateRelatedFailure(rootMode: RootMode, hasPermission: Boolean, 
                                         managerPackage: String?, context: Context): Boolean {
        // 只在没有权限且检测到Root管理器时进行检查
        if (hasPermission || rootMode == RootMode.UNKNOWN || managerPackage == null) {
            return false
        }
        
        try {
            val pm = context.packageManager
            val packageInfo = pm.getPackageInfo(managerPackage, 0)
            
            // 检查应用是否是新安装的（安装时间在最近24小时内）
            val installTime = packageInfo.firstInstallTime
            val currentTime = System.currentTimeMillis()
            val oneDayMillis = 24 * 60 * 60 * 1000
            
            // 如果安装时间在最近24小时内，很可能是更新后
            val isRecentlyInstalled = (currentTime - installTime) < oneDayMillis
            
            if (isRecentlyInstalled) {
                Logger.d("Root 管理器 $managerPackage 最近安装/更新 (安装时间: $installTime)")
                return true
            }
            
            // 还可以检查上次更新时间
            val lastUpdateTime = packageInfo.lastUpdateTime
            val isRecentlyUpdated = (currentTime - lastUpdateTime) < oneDayMillis
            
            if (isRecentlyUpdated) {
                Logger.d("Root 管理器 $managerPackage 最近更新 (更新时间: $lastUpdateTime)")
                return true
            }
            
        } catch (e: Exception) {
            Logger.e("检查 Root 管理器更新状态失败", e)
        }
        
        return false
    }
    
    /**
     * 授权状态数据类（增强版）
     */
    data class AuthorizationStatus(
        val rootMode: RootMode,
        val hasPermission: Boolean,
        val message: String,
        val canOpenManager: Boolean,
        val isLSPosedMode: Boolean = false,
        val managerPackage: String? = null,
        val managerName: String? = null,
        val isManagerInstalled: Boolean = false,
        val isUpdateFailure: Boolean = false
    )
}
