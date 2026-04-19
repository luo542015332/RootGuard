package com.pandasu.turbo.lspoed

import android.content.pm.IPackageManager
import android.os.ServiceManager
import de.robv.android.xposed.IXposedHookLoadPackage
import de.robv.android.xposed.IXposedHookZygoteInit
import de.robv.android.xposed.XposedBridge
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.callbacks.XC_LoadPackage
import kotlin.concurrent.thread

private const val TAG = "Turbo-XposedEntry"

@Suppress("unused")
class XposedEntry : IXposedHookZygoteInit, IXposedHookLoadPackage {

    override fun initZygote(startupParam: IXposedHookZygoteInit.StartupParam) {
        // EzXHelperInit stores this; we just log it directly
        XposedBridge.log("[$TAG] initZygote: ${startupParam.modulePath}")
    }

    override fun handleLoadPackage(lpparam: XC_LoadPackage.LoadPackageParam) {
        if (lpparam.packageName == Constants.APP_PACKAGE_NAME) {
            logI(TAG, "Loading: ${lpparam.packageName}")
            // Hook PandaTurboApp constructor to mark isHooked
            hookAppClass(lpparam.classLoader)
        } else if (lpparam.packageName == "android") {
            logI(TAG, "Hook android framework")
            hookServiceManager(lpparam.classLoader)
        }
    }

    private fun hookAppClass(classLoader: ClassLoader) {
        runCatching {
            val appClass = classLoader.loadClass("com.pandasu.turbo.PandaTurboApp")
            XposedBridge.hookMethod(
                appClass.getDeclaredConstructor(),
                object : XC_MethodHook() {
                    override fun afterHookedMethod(param: MethodHookParam) {
                        try {
                            val f = appClass.getDeclaredField("isHooked")
                            f.isAccessible = true
                            f.setBoolean(param.thisObject, true)
                            logI(TAG, "isHooked=true")
                        } catch (e: Throwable) {
                            logE(TAG, "set isHooked", e)
                        }
                    }
                }
            )
        }.onFailure { logE(TAG, "hookAppClass", it) }
    }

    private fun hookServiceManager(classLoader: ClassLoader) {
        var hookRef: XC_MethodHook.Unhook? = null
        runCatching {
            // Hook ServiceManager.addService("package", pms)
            val smClass = classLoader.loadClass("android.os.ServiceManager")
            val addServiceMethod = smClass.getDeclaredMethod("addService", String::class.java, android.os.IInterface::class.java)
            hookRef = XposedBridge.hookMethod(addServiceMethod, object : XC_MethodHook() {
                override fun beforeHookedMethod(param: MethodHookParam) {
                    val name = param.args[0] as? String ?: return
                    if (name == "package") {
                        hookRef?.unhook()
                        val pms = param.args[1] as? IPackageManager ?: return
                        logD(TAG, "Got PMS: $pms")
                        thread {
                            runCatching {
                                UserService.register(pms)
                                logI(TAG, "UserService registered")
                            }.onFailure {
                                logE(TAG, "UserService crashed", it)
                            }
                        }
                    }
                }
            })
        }.onFailure { logE(TAG, "hookServiceManager", it) }
    }
}
