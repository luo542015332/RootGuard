package com.rootguard.app

import android.app.Application
import com.rootguard.app.utils.Logger
import dagger.hilt.android.HiltAndroidApp

@HiltAndroidApp
class PandaSUApp : Application() {
    override fun onCreate() {
        super.onCreate()
        Logger.i("🐼 PandaSU (RootGuard) 应用启动")
        Logger.i("日志系统初始化完成")
        Logger.i("应用版本: v1.1.39")
    }
}