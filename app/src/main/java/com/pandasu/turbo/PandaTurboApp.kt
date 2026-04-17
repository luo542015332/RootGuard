package com.pandasu.turbo

import android.util.Log
import androidx.multidex.MultiDexApplication
import com.pandasu.turbo.util.BatterySpoofManager

class PandaTurboApp : MultiDexApplication() {

    override fun onCreate() {
        super.onCreate()
        Log.d("PandaTurbo", "PandaTurboApp onCreate")

        // 注册开机广播 → 自动激活电池伪装绑定
        BatterySpoofManager.registerBootReceiver(this)
    }
}
