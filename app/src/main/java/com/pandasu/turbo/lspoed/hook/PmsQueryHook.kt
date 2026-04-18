package com.pandasu.turbo.lspoed.hook

import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.util.Log
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.XposedBridge
import de.robv.android.xposed.XposedHelpers
import com.pandasu.turbo.lspoed.HMAService

/**
 * Hooks for PackageManager query methods
 * 
 * Two-layer approach:
 * 1. system_server: Hook PMS internal methods (getInstalledPackages, getPackageInfo, queryIntentActivities)
 * 2. App processes: Hook ApplicationPackageManager (client proxy) methods
 * 
 * This ensures detection apps can't find hidden packages regardless of which API they use.
 */
class PmsQueryHook(private val service: HMAService) {

    companion object {
        private const val TAG = "TurboX-PmsQuery"
    }

    /**
     * Hook PMS internal methods in system_server
     */
    fun hookPmsInternal(classLoader: ClassLoader) {
        try {
            hookGetInstalledPackagesInternal(classLoader)
            hookGetPackageInfoInternal(classLoader)
            hookQueryIntentActivitiesInternal(classLoader)
            Log.i(TAG, "PMS internal hooks installed")
        } catch (t: Throwable) {
            Log.e(TAG, "PMS internal hook failed: ${t.message}")
        }
    }

    /**
     * Hook ApplicationPackageManager in app processes
     */
    fun hookPackageManagerProxy(classLoader: ClassLoader, packageName: String) {
        try {
            val appPmClass = XposedHelpers.findClass(
                "android.app.ApplicationPackageManager", 
                classLoader
            )
            
            // getInstalledPackages
            hookMethodSafe(appPmClass, "getInstalledPackages", Int::class.java) { param ->
                filterPackageList(param)
            }
            
            // getInstalledPackagesAsUser (if exists)
            hookMethodSafe(appPmClass, "getInstalledPackagesAsUser", Int::class.java, Int::class.java) { param ->
                filterPackageList(param)
            }
            
            // getPackageInfo
            hookMethodSafe(appPmClass, "getPackageInfo", String::class.java, Int::class.java) { param ->
                val targetPkg = param.args[0] as? String ?: return@hookMethodSafe
                if (service.shouldHide(targetPkg)) {
                    // Return null or throw PackageManager.NameNotFoundException
                    param.result = null
                    Log.d(TAG, "[$packageName] getPackageInfo blocked: $targetPkg")
                }
            }
            
            // queryIntentActivities
            hookMethodSafe(appPmClass, "queryIntentActivities", 
                android.content.Intent::class.java, Int::class.java) { param ->
                filterResolveInfoList(param)
            }
            
            // queryIntentActivitiesAsUser
            hookMethodSafe(appPmClass, "queryIntentActivitiesAsUser", 
                android.content.Intent::class.java, Int::class.java, Int::class.java) { param ->
                filterResolveInfoList(param)
            }
            
            Log.i(TAG, "ApplicationPackageManager hooks installed for $packageName")
            
        } catch (t: Throwable) {
            Log.d(TAG, "App hook failed for $packageName: ${t.message}")
        }
    }

    private fun hookGetInstalledPackagesInternal(classLoader: ClassLoader) {
        try {
            // Try different PMS class names across Android versions
            val pmsClassNames = listOf(
                "com.android.server.pm.PackageManagerService",
                "com.android.server.pm.PackageManagerService\$PackageManagerServiceInjector"
            )
            
            for (className in pmsClassNames) {
                val pmsClass = try {
                    XposedHelpers.findClassIfExists(className, classLoader)
                } catch (_: Throwable) { null } ?: continue
                
                // getInstalledPackages(int, int)
                hookMethodSafe(pmsClass, "getInstalledPackages", Int::class.java, Int::class.java) { param ->
                    filterPackageList(param)
                }
                
                // getInstalledApplications(int, int)
                hookMethodSafe(pmsClass, "getInstalledApplications", Int::class.java, Int::class.java) { param ->
                    filterApplicationInfoList(param)
                }
                
                Log.d(TAG, "Hooked $className for getInstalledPackages/Applications")
            }
        } catch (t: Throwable) {
            Log.e(TAG, "hookGetInstalledPackagesInternal failed: ${t.message}")
        }
    }

    private fun hookGetPackageInfoInternal(classLoader: ClassLoader) {
        try {
            val pmsClass = XposedHelpers.findClassIfExists(
                "com.android.server.pm.PackageManagerService", 
                classLoader
            ) ?: return
            
            // getPackageInfo(String, int, int)
            hookMethodSafe(pmsClass, "getPackageInfo", String::class.java, Int::class.java, Int::class.java) { param ->
                val targetPkg = param.args[0] as? String ?: return@hookMethodSafe
                if (service.shouldHide(targetPkg)) {
                    param.result = null
                    Log.d(TAG, "[system] getPackageInfo blocked: $targetPkg")
                }
            }
            
        } catch (t: Throwable) {
            Log.e(TAG, "hookGetPackageInfoInternal failed: ${t.message}")
        }
    }

    private fun hookQueryIntentActivitiesInternal(classLoader: ClassLoader) {
        try {
            val pmsClass = XposedHelpers.findClassIfExists(
                "com.android.server.pm.PackageManagerService",
                classLoader
            ) ?: return
            
            // queryIntentActivities(Intent, String, int, int)
            hookMethodSafe(pmsClass, "queryIntentActivities", 
                android.content.Intent::class.java, String::class.java, Int::class.java, Int::class.java) { param ->
                filterResolveInfoList(param)
            }
            
            // queryIntentActivitiesAsUser
            hookMethodSafe(pmsClass, "queryIntentActivitiesAsUser", 
                android.content.Intent::class.java, String::class.java, Int::class.java, Int::class.java) { param ->
                filterResolveInfoList(param)
            }
            
        } catch (t: Throwable) {
            Log.e(TAG, "hookQueryIntentActivitiesInternal failed: ${t.message}")
        }
    }

    /**
     * Safely hook a method - returns Unhook if successful, null otherwise
     */
    private fun hookMethodSafe(
        clazz: Class<*>, 
        methodName: String, 
        vararg paramTypes: Class<*>,
        beforeHook: (XC_MethodHook.MethodHookParam) -> Unit
    ) {
        try {
            val method = XposedHelpers.findMethodExact(clazz, methodName, *paramTypes)
            XposedBridge.hookMethod(method, object : XC_MethodHook() {
                override fun beforeHookedMethod(param: MethodHookParam) {
                    try {
                        beforeHook(param)
                    } catch (e: Throwable) {
                        Log.e(TAG, "Hook error in $methodName: ${e.message}")
                    }
                }
            })
        } catch (_: Throwable) {
            // Method not found - skip silently
        }
    }

    /**
     * Filter ParceledListSlice or List<PackageInfo>
     */
    private fun filterPackageList(param: XC_MethodHook.MethodHookParam) {
        val result = param.result ?: return
        val filtered = filterList(result) { item ->
            val pkgName = extractPackageName(item) ?: return@filterList true
            !service.shouldHide(pkgName)
        }
        param.result = filtered
    }

    /**
     * Filter list of ApplicationInfo
     */
    private fun filterApplicationInfoList(param: XC_MethodHook.MethodHookParam) {
        val result = param.result ?: return
        val filtered = filterList(result) { item ->
            val pkgName = extractPackageName(item) ?: return@filterList true
            !service.shouldHide(pkgName)
        }
        param.result = filtered
    }

    /**
     * Filter list of ResolveInfo
     */
    private fun filterResolveInfoList(param: XC_MethodHook.MethodHookParam) {
        val result = param.result ?: return
        val filtered = filterList(result) { item ->
            val pkgName = extractResolveInfoPackageName(item) ?: return@filterList true
            !service.shouldHide(pkgName)
        }
        param.result = filtered
    }

    /**
     * Filter a ParceledListSlice or regular List
     */
    private fun filterList(listObj: Any, predicate: (Any) -> Boolean): Any {
        return try {
            // Try ParceledListSlice (Android 11+)
            val sliceClass = listObj.javaClass
            val getListMethod = sliceClass.getDeclaredMethod("getList")
            getListMethod.isAccessible = true
            val list = getListMethod.invoke(listObj) as? MutableList<*> ?: return listObj
            
            val iterator = list.iterator()
            while (iterator.hasNext()) {
                val item = iterator.next() ?: continue
                if (!predicate(item)) {
                    iterator.remove()
                }
            }
            
            // Create new ParceledListSlice with filtered list
            val constructor = sliceClass.getConstructor(List::class.java)
            constructor.isAccessible = true
            constructor.newInstance(list)
        } catch (_: Throwable) {
            // Not a ParceledListSlice, try regular List
            if (listObj is MutableList<*>) {
                val iterator = listObj.iterator()
                while (iterator.hasNext()) {
                    val item = iterator.next() ?: continue
                    if (!predicate(item)) {
                        iterator.remove()
                    }
                }
                listObj
            } else {
                listObj
            }
        }
    }

    private fun extractPackageName(obj: Any?): String? {
        if (obj == null) return null
        
        // PackageInfo.packageName
        return try {
            val field = obj.javaClass.getDeclaredField("packageName")
            field.isAccessible = true
            field.get(obj) as? String
        } catch (_: Throwable) {
            try {
                // ApplicationInfo.packageName
                val field = obj.javaClass.getDeclaredField("packageName")
                field.isAccessible = true
                field.get(obj) as? String
            } catch (_: Throwable) {
                null
            }
        }
    }

    private fun extractResolveInfoPackageName(obj: Any?): String? {
        if (obj == null) return null
        
        return try {
            // ResolveInfo.activityInfo.applicationInfo.packageName
            val activityInfoField = obj.javaClass.getDeclaredField("activityInfo")
            activityInfoField.isAccessible = true
            val activityInfo = activityInfoField.get(obj) ?: return null
            
            val appInfoField = activityInfo.javaClass.getDeclaredField("applicationInfo")
            appInfoField.isAccessible = true
            val appInfo = appInfoField.get(activityInfo) ?: return null
            
            val pkgNameField = appInfo.javaClass.getDeclaredField("packageName")
            pkgNameField.isAccessible = true
            pkgNameField.get(appInfo) as? String
        } catch (_: Throwable) {
            try {
                // ResolveInfo.serviceInfo.applicationInfo.packageName
                val serviceInfoField = obj.javaClass.getDeclaredField("serviceInfo")
                serviceInfoField.isAccessible = true
                val serviceInfo = serviceInfoField.get(obj) ?: return null
                
                val appInfoField = serviceInfo.javaClass.getDeclaredField("applicationInfo")
                appInfoField.isAccessible = true
                val appInfo = appInfoField.get(serviceInfo) ?: return null
                
                val pkgNameField = appInfo.javaClass.getDeclaredField("packageName")
                pkgNameField.isAccessible = true
                pkgNameField.get(appInfo) as? String
            } catch (_: Throwable) {
                null
            }
        }
    }
}
