package com.rootguard.app.utils

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import com.rootguard.app.data.model.*
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
     * 扫描所有已安装的应用
     */
    suspend fun scanInstalledApps(): List<AppInfo> = withContext(Dispatchers.IO) {
        val pm = context.packageManager
        val packages = pm.getInstalledApplications(PackageManager.GET_META_DATA)

        packages.map { appInfo ->
            val packageName = appInfo.packageName
            val appName = appInfo.loadLabel(pm).toString()

            AppInfo(
                packageName = packageName,
                appName = appName,
                category = categorizeApp(packageName, appName),
                isSystemApp = isSystemApp(appInfo)
            )
        }.filter { appInfo ->
            // 排除系统应用
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
        val sandboxLevel = when (preset) {
            OneClickIsolationPreset.CONSERVATIVE -> when (appInfo.category) {
                AppCategory.FINANCE -> SandboxLevel.STRICT
                else -> SandboxLevel.STRICT
            }
            OneClickIsolationPreset.BALANCED -> when (appInfo.category) {
                AppCategory.FINANCE -> SandboxLevel.STRICT
                AppCategory.GAME -> SandboxLevel.MODERATE
                AppCategory.SOCIAL -> SandboxLevel.PERMISSIVE
                else -> SandboxLevel.PERMISSIVE
            }
            OneClickIsolationPreset.AGGRESSIVE -> when (appInfo.category) {
                AppCategory.FINANCE -> SandboxLevel.STRICT
                else -> SandboxLevel.MODERATE
            }
            OneClickIsolationPreset.LENIENT -> when (appInfo.category) {
                AppCategory.FINANCE -> SandboxLevel.MODERATE
                else -> SandboxLevel.PERMISSIVE
            }
        }

        val sandboxRule = SandboxRule(
            packageName = appInfo.packageName,
            level = sandboxLevel,
            commandWhitelist = generateCommandWhitelist(appInfo.category, sandboxLevel),
            commandBlacklist = generateCommandBlacklist(appInfo.category, sandboxLevel),
            pathWhitelist = generatePathWhitelist(appInfo.category, sandboxLevel, appInfo.packageName),
            pathBlacklist = generatePathBlacklist(appInfo.category, sandboxLevel)
        )

        return IsolationConfig(
            packageName = appInfo.packageName,
            appName = appInfo.appName,
            isEnabled = true,
            hideMagisk = when (appInfo.category) {
                AppCategory.FINANCE -> true
                AppCategory.GAME -> true
                else -> preset != OneClickIsolationPreset.LENIENT
            },
            hideSuBinary = when (appInfo.category) {
                AppCategory.FINANCE -> true
                else -> preset != OneClickIsolationPreset.LENIENT
            },
            hideBusybox = appInfo.category == AppCategory.FINANCE,
            hideXposed = preset != OneClickIsolationPreset.LENIENT,
            hideMagiskApp = appInfo.category == AppCategory.FINANCE,
            isolateStorage = appInfo.category == AppCategory.FINANCE,
            disableRootAccess = appInfo.category == AppCategory.FINANCE,
            customProps = generateCustomProps(appInfo.category, preset),
            sandboxRule = sandboxRule
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
        return when (category) {
            AppCategory.FINANCE -> mapOf(
                "ro.build.tags" to "release-keys",
                "ro.build.selinux" to "enforcing",
                "ro.debuggable" to "0",
                "ro.secure" to "1"
            )
            AppCategory.GAME -> mapOf(
                "ro.debuggable" to "0"
            )
            else -> emptyMap()
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
