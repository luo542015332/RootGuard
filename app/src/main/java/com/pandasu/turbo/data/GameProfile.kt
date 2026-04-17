package com.pandasu.turbo.data

data class GameProfile(
    val packageName: String,
    val displayName: String,
    
    // 显示设置
    val customBrightness: Int = -1,    // 自定义亮度 (-1=自动)
    val customVolume: Int = -1,         // 自定义音量 (-1=自动)
    val customFps: Int = -1,           // 自定义帧率 (-1=跟随系统, 30/60/90/120)
    val autoLockRotation: Boolean = false, // 锁定屏幕旋转
    
    // 性能设置
    val performanceMode: String = "PERFORMANCE", // PERFORMANCE/BALANCED/BATTERY
    val cpuBoost: Boolean = true,       // CPU 性能模式
    val gpuBoost: Boolean = true,      // GPU 加速
    
    // 自动设置
    val autoTurbo: Boolean = true,      // 自动开启 Turbo
    val autoDnd: Boolean = true,        // 自动开启勿扰
    val keepScreenOn: Boolean = true,   // 保持屏幕常亮
    val blockNotifications: Boolean = true, // 屏蔽通知
    val blockCalls: Boolean = false,     // 屏蔽来电
    val killBackground: Boolean = false, // 自动清理后台
    val wakelockBoost: Boolean = true   // WakeLock 保活
)

// 一键配置预设
object GamePreset {
    // 性能模式 - 帧率拉满，后台全清
    fun performance(pkg: String, name: String) = GameProfile(
        packageName = pkg,
        displayName = name,
        customFps = 120,
        performanceMode = "PERFORMANCE",
        cpuBoost = true,
        gpuBoost = true,
        autoTurbo = true,
        autoDnd = true,
        keepScreenOn = true,
        blockNotifications = true,
        blockCalls = true,
        killBackground = true,
        wakelockBoost = true,
        autoLockRotation = false
    )
    
    // 均衡模式 - 默认设置
    fun balanced(pkg: String, name: String) = GameProfile(
        packageName = pkg,
        displayName = name,
        customFps = 60,
        performanceMode = "BALANCED",
        cpuBoost = true,
        gpuBoost = true,
        autoTurbo = true,
        autoDnd = true,
        keepScreenOn = true,
        blockNotifications = true,
        blockCalls = false,
        killBackground = false,
        wakelockBoost = true,
        autoLockRotation = false
    )
    
    // 省电模式 - 降低帧率，减少资源
    fun battery(pkg: String, name: String) = GameProfile(
        packageName = pkg,
        displayName = name,
        customFps = 30,
        performanceMode = "BATTERY",
        cpuBoost = false,
        gpuBoost = false,
        autoTurbo = false,
        autoDnd = true,
        keepScreenOn = false,
        blockNotifications = true,
        blockCalls = false,
        killBackground = false,
        wakelockBoost = false,
        autoLockRotation = false
    )
    
    // 定制模式 - 用户自定义
    fun custom(pkg: String, name: String) = GameProfile(
        packageName = pkg,
        displayName = name
    )
}