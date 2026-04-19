package com.pandasu.turbo.lspoed.hook

import android.app.IApplicationThread
import android.content.pm.ApplicationInfo
import android.os.Build
import android.os.SystemProperties
import androidx.annotation.RequiresApi
import de.robv.android.xposed.XposedBridge
import de.robv.android.xposed.XC_MethodHook
import com.pandasu.turbo.lspoed.*
import java.lang.reflect.Method

@RequiresApi(Build.VERSION_CODES.R)
class PlatformCompatHook(private val service: TurboService) : IFrameworkHook {

    companion object {
        private const val TAG = "PlatformCompatHook"
        private const val CHANGE_ID_FORCE_MOUNT_DATA = 143937733L  // PACKAGE_FLAG_FORCE_DATA_APP_DATA_ISOLATION

        private val sAppDataIsolationEnabled: Boolean
            get() = SystemProperties.getBoolean(Constants.ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY, true)
    }

    private var hook: XC_MethodHook.Unhook? = null

    override fun load() {
        if (!service.config.forceMountData) return
        logI(TAG, "Load hook (forceMountData=${service.config.forceMountData})")
        logI(TAG, "App data isolation: $sAppDataIsolationEnabled")

        runCatching {
            val clazz = Class.forName("com.android.server.compat.PlatformCompat")
            val method: Method = clazz.getDeclaredMethod("isChangeEnabled", Long::class.java, IApplicationThread::class.java, String::class.java, Int::class.java, ApplicationInfo::class.java)

            hook = XposedBridge.hookMethod(method, object : XC_MethodHook() {
                override fun beforeHookedMethod(param: MethodHookParam) {
                    runCatching {
                        val changeId = param.args[0] as Long
                        if (changeId != CHANGE_ID_FORCE_MOUNT_DATA) return@beforeHookedMethod

                        val appInfo = param.args[4] as ApplicationInfo
                        val apps = Utils.binderLocalScope {
                            service.pms.getPackagesForUid(appInfo.uid)
                        } ?: return@beforeHookedMethod

                        for (pkg in apps) {
                            if (service.isHookEnabled(pkg)) {
                                if (sAppDataIsolationEnabled) param.result = true
                                logI(TAG, "forceMountData uid=${appInfo.uid} pkg=$pkg")
                                return@beforeHookedMethod
                            }
                        }
                    }.onFailure {
                        logE(TAG, "Fatal error, unload", it)
                        unload()
                    }
                }
            })
            logI(TAG, "Hooked PlatformCompat.isChangeEnabled")
        }.onFailure {
            logE(TAG, "Failed to hook PlatformCompat", it)
        }
    }

    override fun unload() {
        hook?.unhook()
        hook = null
    }

    override fun onConfigChanged() {
        if (service.config.forceMountData) {
            if (hook == null) load()
        } else {
            if (hook != null) unload()
        }
    }
}
