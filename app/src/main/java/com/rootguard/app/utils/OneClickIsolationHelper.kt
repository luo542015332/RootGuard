package com.rootguard.app.utils

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import com.rootguard.app.data.model.*
import com.topjohnwu.superuser.Shell
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * 一键智能隔离助手
 * 自动扫描应用并生成隔离规则
 */
@Singleton
class OneClickIsolationHelper @Inject constructor(
    @ApplicationContext private val context: Context
) {

    /**
     * 扫描结果
     */
    data class ScanResult(
        val totalApps: Int,
        val rootApps: Int,
        val categorizedApps: Map<AppCategory, Int>
    )

    /**
     * 检查设备是否有 Root 权限
     */
    private suspend fun checkRootPermission(): Boolean = withContext(Dispatchers.IO) {
        try {
            Logger.d("OneClick: 检查Root权限...")
            // 使用 Shell.cmd() 检查 Root 权限（兼容 KernelSU 和 Magisk）
            val result = Shell.cmd("id").exec()
            val hasRoot = result.isSuccess && result.out.any { it.contains("uid=0") }
            Logger.d("OneClick: Root权限检查结果: $hasRoot, 输出: ${result.out}")
            return@withContext hasRoot
        } catch (e: Exception) {
            Logger.e("OneClick: Root权限检查失败", e)
            return@withContext false
        }
    }
    
    /**
     * 尝试使用有限的方法获取应用列表（无Root权限时）
     */
    private suspend fun tryLimitedMethods(pm: PackageManager): List<AppInfo> = withContext(Dispatchers.IO) {
        Logger.d("OneClick: 尝试有限方法获取应用列表")
        
        try {
            // 方法1: 直接使用 PackageManager API
            val packages = pm.getInstalledPackages(PackageManager.GET_META_DATA)
            Logger.d("OneClick: 有限方法1 - 获取到 ${packages.size} 个包")
            
            val apps = packages.mapNotNull { pkgInfo ->
                try {
                    val appInfo = pkgInfo.applicationInfo
                    if (appInfo != null) {
                        val appName = appInfo.loadLabel(pm).toString()
                        val category = categorizeApp(pkgInfo.packageName, appName)
                        val isSystem = isSystemApp(appInfo)
                    
                        AppInfo(
                            packageName = pkgInfo.packageName,
                            appName = appName,
                            category = category,
                            isSystemApp = isSystem
                        )
                    } else {
                        null
                    }
                } catch (e: Exception) {
                    null
                }
            }.filter { !it.isSystemApp }
            
            Logger.d("OneClick: 有限方法过滤后用户应用数量: ${apps.size}")
            return@withContext apps
        } catch (e: Exception) {
            Logger.e("OneClick: 有限方法失败", e)
            return@withContext emptyList()
        }
    }
    
    /**
     * 扫描所有已安装的应用
     * 优先使用 su 权限通过 pm list packages -a 获取完整列表（绕过 HyperOS 限制）
     */
    suspend fun scanInstalledApps(): List<AppInfo> = withContext(Dispatchers.IO) {
        val pm = context.packageManager
        
        // 先检查 Root 权限
        val hasRoot = checkRootPermission()
        Logger.d("OneClick: 设备Root权限状态: $hasRoot")
        
        if (!hasRoot) {
            Logger.w("OneClick: 设备没有Root权限，一键隔离功能受限")
            return@withContext tryLimitedMethods(pm)
        }

        // 方法1: 通过 Shell.cmd() 执行 pm list packages -a（兼容 KernelSU 和 Magisk）
        try {
            Logger.d("OneClick: 尝试方法1 - Shell.cmd pm list packages -a")
            
            // 使用 libsu 的 Shell.cmd()，兼容 KernelSU
            val result = Shell.cmd("pm list packages -a").exec()
            
            Logger.d("OneClick: Shell命令退出码: ${result.code}")
            if (!result.isSuccess) {
                Logger.e("OneClick: Shell命令失败，错误: ${result.err}")
            }
            
            val output = result.out.joinToString("\n")
            Logger.d("OneClick: Shell命令输出行数: ${result.out.size}")
            
            val packageNames = output.lines()
                .filter { it.startsWith("package:") }
                .map { it.removePrefix("package:").trim() }
                .filter { it.isNotBlank() }

            Logger.d("OneClick: 方法1 获取到 ${packageNames.size} 个包名")
            
            if (packageNames.isNotEmpty()) {
                Logger.d("OneClick: 方法1 开始解析应用信息")
                val apps = packageNames.mapNotNull { pkgName ->
                    try {
                        val appInfo = pm.getApplicationInfo(pkgName, 0)
                        val appName = appInfo.loadLabel(pm).toString()
                        val category = categorizeApp(pkgName, appName)
                        val isSystem = isSystemApp(appInfo)
                        Logger.d("OneClick: 解析应用: $appName ($pkgName), 类别: $category, 系统应用: $isSystem, 路径: ${appInfo.sourceDir}")
                        
                        AppInfo(
                            packageName = pkgName,
                            appName = appName,
                            category = category,
                            isSystemApp = isSystem
                        )
                    } catch (e: Exception) {
                        Logger.e("OneClick: 无法获取应用信息 $pkgName", e)
                        null
                    }
                }
                
                Logger.d("OneClick: 方法1 解析完成，得到 ${apps.size} 个应用信息")
                
                val userApps = apps.filter { !it.isSystemApp }
                Logger.d("OneClick: 方法1 用户应用数量: ${userApps.size}")
                
                if (userApps.isNotEmpty()) {
                    Logger.d("OneClick: 使用方法1 返回 ${userApps.size} 个用户应用")
                    return@withContext userApps
                } else {
                    Logger.d("OneClick: 方法1 没有找到用户应用")
                }
            }
        } catch (e: Exception) {
            Logger.e("Shell.cmd pm list packages failed", e)
        }

        // 方法2: 不带 su 的 pm list packages
        try {
            val process = Runtime.getRuntime().exec("pm list packages")
            val output = process.inputStream.bufferedReader().readText()
            val packageNames = output.lines()
                .filter { it.startsWith("package:") }
                .map { it.removePrefix("package:").trim() }
                .filter { it.isNotBlank() }

            if (packageNames.isNotEmpty()) {
                Logger.d("OneClick: found ${packageNames.size} packages via pm command")
                val apps = packageNames.mapNotNull { pkgName ->
                    try {
                        val appInfo = pm.getApplicationInfo(pkgName, 0)
                        AppInfo(
                            packageName = pkgName,
                            appName = appInfo.loadLabel(pm).toString(),
                            category = categorizeApp(pkgName, appInfo.loadLabel(pm).toString()),
                            isSystemApp = isSystemApp(appInfo)
                        )
                    } catch (e: Exception) {
                        null
                    }
                }.filter { !it.isSystemApp }

                if (apps.isNotEmpty()) {
                    return@withContext apps
                }
            }
        } catch (e: Exception) {
            Logger.e("pm list packages failed", e)
        }

        // 方法3: 回退到 PackageManager API
        Logger.d("OneClick: falling back to PackageManager API")
        val packages = pm.getInstalledApplications(PackageManager.GET_META_DATA)

        packages.map { appInfo ->
            val packageName = appInfo.packageName
            val appName = appInfo.loadLabel(pm).toString()

            AppInfo(
                packageName = packageName,
                appName = appName,
                category = categorizeApp(packageName, appName),
                isSystemApp = isSystemApp(appInfo)
            ).also {
                Logger.d("OneClick scan: ${it.packageName} sys=${it.isSystemApp}")
            }
        }.filter { appInfo ->
            !appInfo.isSystemApp
        }
    }

    /**
     * 判断是否为系统应用（修复 HyperOS/MIUI 兼容性）
     */
    private fun isSystemApp(appInfo: ApplicationInfo): Boolean {
        val sourceDir = appInfo.sourceDir ?: ""
        val packageName = appInfo.packageName

        // 方法1：检查包名前缀 - 小米/HyperOS、Android 核心应用
        val isSystemAppByPackageName = packageName.startsWith("com.miui.") ||
                                      packageName.startsWith("com.xiaomi.") ||
                                      packageName.startsWith("com.android.") ||
                                      packageName.startsWith("android.") ||
                                      packageName.startsWith("com.google.android.") ||
                                      packageName.startsWith("com.qualcomm.") ||
                                      packageName.startsWith("com.mediatek.") ||
                                      packageName.startsWith("com.sprd.")

        // 如果是小米/Android 核心应用，直接返回 true（即使安装在 /data/app/ 下）
        if (isSystemAppByPackageName) {
            return true
        }

        // 方法2：检查安装路径
        // 用户应用的标准路径
        if (sourceDir.startsWith("/data/app/")) {
            return false
        }

        // 系统应用安装在 /system/、/vendor/、/product/、/apex/ 等目录下
        val isSystemPath = sourceDir.startsWith("/system/") ||
                          sourceDir.startsWith("/vendor/") ||
                          sourceDir.startsWith("/product/") ||
                          sourceDir.startsWith("/apex/") ||
                          sourceDir.startsWith("/oem/") ||
                          sourceDir.startsWith("/system_ext/") ||
                          sourceDir.startsWith("/system_root/") ||
                          sourceDir.startsWith("/data/app-private/") ||
                          sourceDir.startsWith("/data/app-asec/")

        return isSystemPath
    }

    /**
     * 扫描所有已安装应用（包含系统应用，不自动过滤）
     * 用于应用列表展示
     */
    suspend fun scanAllApps(): List<AppInfo> = withContext(Dispatchers.IO) {
        val pm = context.packageManager
        
        Logger.d("开始扫描所有应用")
        
        // 方法1: 尝试使用多个 pm list packages 命令变体
        val pmCommands = listOf(
            "pm list packages -a",      // 所有包
            "pm list packages -3",       // 仅第三方应用
            "pm list packages -i",       // 已安装应用
            "pm list packages"           // 基本列表
        )
        
        for (command in pmCommands) {
            try {
                Logger.d("尝试命令: su -c '$command'")
                val process = Runtime.getRuntime().exec(arrayOf("su", "-c", command))
                val output = process.inputStream.bufferedReader().readText()
                val error = process.errorStream.bufferedReader().readText()
                process.waitFor()
                
                if (process.exitValue() != 0) {
                    Logger.e("命令执行失败: $command, 错误: $error")
                    continue
                }
                
                val packageNames = output.lines()
                    .filter { it.startsWith("package:") }
                    .map { it.removePrefix("package:").trim() }
                    .filter { it.isNotBlank() }

                if (packageNames.isNotEmpty()) {
                    Logger.d("命令 '$command' 获取到 ${packageNames.size} 个包名")
                    val apps = packageNames.mapNotNull { pkgName ->
                        try {
                            val appInfo = pm.getApplicationInfo(pkgName, 0)
                            AppInfo(
                                packageName = pkgName,
                                appName = appInfo.loadLabel(pm).toString(),
                                category = categorizeApp(pkgName, appInfo.loadLabel(pm).toString()),
                                isSystemApp = isSystemApp(appInfo)
                            )
                        } catch (e: Exception) {
                            null
                        }
                    }
                    if (apps.isNotEmpty()) {
                        Logger.d("成功获取到 ${apps.size} 个应用信息")
                        return@withContext apps
                    }
                }
            } catch (e: Exception) {
                Logger.e("命令 '$command' 执行异常", e)
            }
        }
        
        Logger.d("所有 su 命令方法失败，尝试使用 PackageManager API")
        
        // 方法2: 尝试不同的 PackageManager flags
        val flagsList = listOf(
            PackageManager.GET_META_DATA,
            PackageManager.MATCH_ALL,
            PackageManager.MATCH_UNINSTALLED_PACKAGES,
            0
        )
        
        for (flags in flagsList) {
            try {
                Logger.d("尝试 PackageManager API flags: $flags")
                val packages = pm.getInstalledApplications(flags)
                if (packages.isNotEmpty()) {
                    val apps = packages.map { appInfo ->
                        val packageName = appInfo.packageName
                        val appName = appInfo.loadLabel(pm).toString()
                        AppInfo(
                            packageName = packageName,
                            appName = appName,
                            category = categorizeApp(packageName, appName),
                            isSystemApp = isSystemApp(appInfo)
                        )
                    }
                    Logger.d("PackageManager API 获取到 ${apps.size} 个应用")
                    return@withContext apps
                }
            } catch (e: Exception) {
                Logger.e("PackageManager API flags $flags 失败", e)
            }
        }
        
        Logger.e("所有应用列表获取方法都失败")
        emptyList()
    }

    /**
     * 扫描 Root 相关应用
     */
    suspend fun scanRootApps(): List<AppInfo> = withContext(Dispatchers.IO) {
        val allApps = scanInstalledApps()

        // Root 应用关键词
        val rootKeywords = listOf(
            "magisk", "superuser", "su", "root", "adbd",
            "busybox", "xposed", "edxposed", "lsposed"
        )

        allApps.filter { app ->
            rootKeywords.any { keyword ->
                app.packageName.contains(keyword, ignoreCase = true) ||
                app.appName.contains(keyword, ignoreCase = true)
            }
        }
    }

    /**
     * 应用分类（基于关键词）
     */
    private fun categorizeApp(packageName: String, appName: String): AppCategory {
        val combined = "$packageName $appName".lowercase()

        return when {
            // 金融类应用（最严格）
            financeKeywords.any { it in combined } -> AppCategory.FINANCE

            // 游戏类应用
            gameKeywords.any { it in combined } -> AppCategory.GAME

            // 社交类应用
            socialKeywords.any { it in combined } -> AppCategory.SOCIAL

            // 视频影音类应用
            videoKeywords.any { it in combined } -> AppCategory.UTILITY

            // 电商购物类应用
            shoppingKeywords.any { it in combined } -> AppCategory.UTILITY

            // 阅读教育类应用
            educationKeywords.any { it in combined } -> AppCategory.UTILITY

            // 系统工具类（跳过）
            systemToolKeywords.any { it in combined } -> AppCategory.SYSTEM_TOOL

            // 实用工具类
            utilityKeywords.any { it in combined } -> AppCategory.UTILITY

            // 其他所有用户应用都标记为社交类，进行基础隔离
            else -> AppCategory.SOCIAL
        }
    }

    /**
     * 生成隔离配置
     * @param appInfo 应用信息
     * @param preset 预设策略
     * @return 隔离配置
     */
    fun generateIsolationConfig(appInfo: AppInfo, preset: OneClickIsolationPreset): IsolationConfig {
        val isSensitive = appInfo.category in listOf(AppCategory.FINANCE, AppCategory.GAME)
        val isFinance = appInfo.category == AppCategory.FINANCE
        val all = true; val sensitive = isSensitive; val finance = isFinance; val off = false

        /*
         * 🔓 基础隔离: 金融/游戏全开, 其他仅隐藏su+magisk
         * ⚖️ 中等隔离: 金融/游戏全开, 其他隐藏su+magisk+xposed
         * 🔒 最高隔离: 全部全开
         */
        val (hideMagisk, hideSu, hideBusybox, hideXposed) = when (preset) {
            OneClickIsolationPreset.CONSERVATIVE -> arrayOf(all, all, off, off)
            OneClickIsolationPreset.BALANCED   -> arrayOf(all, all, off, all)
            OneClickIsolationPreset.AGGRESSIVE -> arrayOf(all, all, all, all)
        }

        val (hideMagiskApp, isolateStorage, disableRoot) = when (preset) {
            OneClickIsolationPreset.CONSERVATIVE -> arrayOf(finance, finance, finance)
            OneClickIsolationPreset.BALANCED   -> arrayOf(sensitive, sensitive, sensitive)
            OneClickIsolationPreset.AGGRESSIVE -> arrayOf(all, all, all)
        }

        val sandboxLevel = when (preset) {
            OneClickIsolationPreset.CONSERVATIVE -> if (isFinance) SandboxLevel.STRICT else SandboxLevel.PERMISSIVE
            OneClickIsolationPreset.BALANCED   -> if (isSensitive) SandboxLevel.MODERATE else SandboxLevel.PERMISSIVE
            OneClickIsolationPreset.AGGRESSIVE -> SandboxLevel.STRICT
        }

        return IsolationConfig(
            packageName = appInfo.packageName, appName = appInfo.appName, isEnabled = true,
            hideMagisk = hideMagisk, hideSuBinary = hideSu, hideBusybox = hideBusybox,
            hideXposed = hideXposed, hideMagiskApp = hideMagiskApp,
            isolateStorage = isolateStorage, disableRootAccess = disableRoot,
            customProps = generateCustomProps(appInfo.category, preset),
            sandboxRule = SandboxRule(
                packageName = appInfo.packageName, level = sandboxLevel,
                commandWhitelist = generateCommandWhitelist(appInfo.category, sandboxLevel),
                commandBlacklist = generateCommandBlacklist(appInfo.category, sandboxLevel),
                pathWhitelist = generatePathWhitelist(appInfo.category, sandboxLevel, appInfo.packageName),
                pathBlacklist = generatePathBlacklist(appInfo.category, sandboxLevel)
            )
        )
    }

    /**
     * 生成命令白名单
     */
    private fun generateCommandWhitelist(category: AppCategory, level: SandboxLevel): List<String> {
        return if (level == SandboxLevel.STRICT) {
            when (category) {
                AppCategory.FINANCE -> listOf(
                    "su -c 'pm list packages'",
                    "su -c 'dumpsys package'"
                )
                else -> emptyList()
            }
        } else {
            emptyList()
        }
    }

    /**
     * 生成命令黑名单
     */
    private fun generateCommandBlacklist(category: AppCategory, level: SandboxLevel): List<String> {
        return when (level) {
            SandboxLevel.STRICT -> listOf(
                "su -c 'rm -rf'",
                "su -c 'mount -o remount'",
                "su -c 'chmod 777'",
                "su -c 'chown root'"
            )
            SandboxLevel.MODERATE -> listOf(
                "su -c 'rm -rf /data'",
                "su -c 'rm -rf /system'",
                "su -c 'format'"
            )
            SandboxLevel.PERMISSIVE -> listOf(
                "su -c 'rm -rf /'",
                "su -c 'format'",
                "su -c 'mkfs'"
            )
            SandboxLevel.DISABLED -> emptyList()
        }
    }

    /**
     * 生成路径白名单
     */
    private fun generatePathWhitelist(
        category: AppCategory,
        level: SandboxLevel,
        packageName: String
    ): List<String> {
        return if (level == SandboxLevel.STRICT) {
            listOf(
                "/data/data/$packageName",
                "/sdcard",
                "/sdcard/Android/data/$packageName"
            )
        } else {
            emptyList()
        }
    }

    /**
     * 生成路径黑名单
     */
    private fun generatePathBlacklist(category: AppCategory, level: SandboxLevel): List<String> {
        return when (level) {
            SandboxLevel.STRICT -> listOf(
                "/system/bin",
                "/system/xbin",
                "/system/app",
                "/system/priv-app",
                "/data/adb",
                "/data/adb/magisk"
            )
            SandboxLevel.MODERATE -> listOf(
                "/system/bin",
                "/system/xbin",
                "/data/adb/magisk"
            )
            SandboxLevel.PERMISSIVE -> listOf(
                "/data/adb"
            )
            SandboxLevel.DISABLED -> emptyList()
        }
    }

    /**
     * 生成自定义系统属性
     */
    private fun generateCustomProps(category: AppCategory, preset: OneClickIsolationPreset): Map<String, String> {
        val fullProps = mapOf("ro.build.tags" to "release-keys", "ro.build.selinux" to "enforcing", "ro.debuggable" to "0", "ro.secure" to "1")
        val basicProps = mapOf("ro.debuggable" to "0", "ro.secure" to "1")
        val isSensitive = category in listOf(AppCategory.FINANCE, AppCategory.GAME)
        return when (preset) {
            OneClickIsolationPreset.AGGRESSIVE -> if (isSensitive) fullProps else basicProps
            OneClickIsolationPreset.BALANCED -> basicProps
            OneClickIsolationPreset.CONSERVATIVE -> if (category == AppCategory.FINANCE) fullProps else emptyMap()
        }
    }

    companion object {
        // 金融类应用关键词
        private val financeKeywords = listOf(
            "bank", "alipay", "wechat", "pay", "finance", "wallet", "money", "credit", "debit",
            "银行", "支付宝", "支付", "金融", "证券", "钱包", "理财", "账单", "转账", "余额",
            "fund", "stock", "trading", "exchange", "investment", "储蓄", "loan",
            "基金", "股票", "交易", "证券", "理财", "投资", "贷款", "保险"
        )

        // 社交类应用关键词
        private val socialKeywords = listOf(
            "chat", "message", "social", "messenger", "communicate", "talk", "video", "call",
            "聊天", "社交", "消息", "通讯", "通话", "视频", "语音",
            "qq", "weixin", "telegram", "whatsapp", "discord", "facebook", "instagram", "tiktok",
            "抖音", "快手", "微博", "小红书", "b站", "bilibili", "豆瓣", "知乎"
        )

        // 游戏类应用关键词
        private val gameKeywords = listOf(
            "game", "play", "arcade", "racing", "puzzle", "rpg", "fps", "moba", "battle",
            "游戏", "娱乐", "竞技", "休闲", "对战", "角色扮演", "射击",
            "minecraft", "pubg", "honor of kings", "王者荣耀", "原神", "英雄联盟", "穿越火线",
            "和平精英", "阴阳师", "崩坏", "第五人格", "明日方舟", "剑网3"
        )

        // 系统工具类应用关键词
        private val systemKeywords = listOf(
            "system", "tool", "manager", "explorer", "file", "admin", "setup", "config",
            "系统", "工具", "管理", "文件", "资源管理器", "设置", "配置",
            "task", "process", "cleaner", "optimizer", "booster", "security",
            "任务", "进程", "清理", "优化", "加速", "安全", "杀毒"
        )

        // 实用工具类应用关键词
        private val utilityKeywords = listOf(
            "calculator", "calendar", "clock", "weather", "converter", "compass",
            "计算器", "日历", "时钟", "天气", "转换器", "指南针",
            "note", "memo", "camera", "photo", "scanner", "editor",
            "笔记", "备忘", "相机", "照片", "扫描", "编辑器", "文档"
        )

        // 电商购物类关键词
        private val shoppingKeywords = listOf(
            "shop", "store", "buy", "cart", "mall", "market", "order", "delivery",
            "商店", "购物", "买", "购物车", "商城", "订单", "配送",
            "淘宝", "天猫", "京东", "拼多多", "唯品会", "苏宁", "国美"
        )

        // 视频影音类关键词
        private val videoKeywords = listOf(
            "video", "player", "music", "audio", "stream", "tv", "radio", "media",
            "视频", "播放器", "音乐", "音频", "直播", "电视", "电台", "媒体",
            "爱奇艺", "优酷", "腾讯视频", "芒果tv", "bilibili", "网易云音乐", "qq音乐"
        )

        // 阅读教育类关键词
        private val educationKeywords = listOf(
            "book", "read", "learn", "education", "study", "course", "tutorial", "dictionary",
            "书", "阅读", "学习", "教育", "课程", "教程", "字典",
            "微信读书", "掌阅", "得到", "知乎", "作业帮", "学习通"
        )

        private val systemToolKeywords = systemKeywords + listOf("root", "magisk", "superuser")
    }

    /**
     * 应用信息
     */
    data class AppInfo(
        val packageName: String,
        val appName: String,
        val category: AppCategory,
        val isSystemApp: Boolean
    )
}
