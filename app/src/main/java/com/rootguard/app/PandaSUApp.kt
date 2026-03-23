package com.rootguard.app

import android.app.Application
import com.rootguard.app.utils.Logger
import com.topjohnwu.superuser.Shell
import dagger.hilt.android.HiltAndroidApp

@HiltAndroidApp
class PandaSUApp : Application() {
    override fun onCreate() {
        super.onCreate()
        
        // 初始化 libsu（与 Magisk 相同的方式）
        // 这会预创建一个 Root shell，后续命令执行更快
        Shell.enableVerboseLogging = BuildConfig.DEBUG
        Shell.setDefaultBuilder(Shell.Builder.create()
            .setFlags(Shell.FLAG_REDIRECT_STDERR)
            .setTimeout(30)
        )
        
        Logger.i("🐼 PandaSU (RootGuard) 应用启动")
        Logger.i("日志系统初始化完成")
        Logger.i("libsu Shell 初始化完成")
        Logger.i("应用版本: v1.1.39")
    }
}