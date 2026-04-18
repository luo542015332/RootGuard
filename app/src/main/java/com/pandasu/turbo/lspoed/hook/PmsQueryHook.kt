package com.pandasu.turbo.lspoed.hook

import android.content.Intent
import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

/**
 * PMS query hook - filters package listings for hidden apps.
 * System_server layer: hooks PMS internal methods.
 * App layer: hooks ApplicationPackageManager proxy methods.
 */
class PmsQueryHook(private val service: TurboService) {
    companion object { private const val TAG = "TurboX-PmsQuery" }

    fun hookPmsInternal(classLoader: ClassLoader) {
        var n = 0
        try {
            val pmsClass = XR.findClass("com.android.server.pm.PackageManagerService", classLoader)
            n += hookMethod(pmsClass, "getInstalledPackages", Int::class.java, Int::class.java) { p -> filterList(p) }
            n += hookMethod(pmsClass, "getInstalledPackages", Int::class.java, Int::class.java, Int::class.java) { p -> filterList(p) }
            n += hookMethod(pmsClass, "getInstalledApplications", Int::class.java, Int::class.java) { p -> filterList(p) }
            n += hookMethod(pmsClass, "getPackageInfo", String::class.java, Int::class.java, Int::class.java) { p ->
                val pkg = XR.paramGetArg(p, 0) as? String ?: return@hookMethod
                if (service.shouldHide(pkg)) XR.paramSetResult(p, null)
            }
            n += hookMethod(pmsClass, "getApplicationInfo", String::class.java, Int::class.java, Int::class.java) { p ->
                val pkg = XR.paramGetArg(p, 0) as? String ?: return@hookMethod
                if (service.shouldHide(pkg)) XR.paramSetResult(p, null)
            }
            n += hookMethod(pmsClass, "queryIntentActivities",
                Intent::class.java, String::class.java, Int::class.java, Int::class.java) { p -> filterResolveList(p) }
            n += hookMethod(pmsClass, "queryIntentActivitiesAsUser",
                Intent::class.java, String::class.java, Int::class.java, Int::class.java) { p -> filterResolveList(p) }
            XR.log("[Turbo] PMS hooks: $n methods")
        } catch (e: Throwable) {
            XR.logE("PMS internal hook failed: ${e.message}", e)
        }
    }

    fun hookPackageManagerProxy(classLoader: ClassLoader, packageName: String) {
        try {
            val apmClass = XR.findClass("android.app.ApplicationPackageManager", classLoader)
            var n = 0
            n += hookMethod(apmClass, "getInstalledPackages", Int::class.java) { p -> filterList(p) }
            n += hookMethod(apmClass, "getInstalledPackages", Int::class.java, Int::class.java) { p -> filterList(p) }
            n += hookMethod(apmClass, "getInstalledPackagesAsUser", Int::class.java, Int::class.java) { p -> filterList(p) }
            n += hookMethod(apmClass, "getPackageInfo", String::class.java, Int::class.java) { p ->
                val pkg = XR.paramGetArg(p, 0) as? String ?: return@hookMethod
                if (service.shouldHide(pkg)) XR.paramSetResult(p, null)
            }
            n += hookMethod(apmClass, "queryIntentActivities", Intent::class.java, Int::class.java) { p -> filterResolveList(p) }
            n += hookMethod(apmClass, "queryIntentActivities", Intent::class.java, Int::class.java, Int::class.java) { p -> filterResolveList(p) }
            if (n > 0) XR.log("[Turbo] APM hooks for $packageName: $n methods")
        } catch (e: Throwable) {
            Log.d(TAG, "App hook failed for $packageName: ${e.message}")
        }
    }

    /**
     * Generic method hook helper. Calls filterFn before the original runs.
     */
    private fun hookMethod(
        clazz: Class<*>, methodName: String, vararg paramTypes: Class<*>,
        filterFn: (Any) -> Unit
    ): Int {
        return try {
            val m = clazz.getDeclaredMethod(methodName, *paramTypes)
            m.isAccessible = true
            XR.hookMethod(m,
                before = { p ->
                    try { filterFn(p) } catch (e: Throwable) { Log.e(TAG, "hook error: ${e.message}") }
                    false
                },
                after = null
            )
            1
        } catch (e: Throwable) { 0 }
    }

    private fun filterList(param: Any) {
        val result = XR.paramGetResult(param) ?: return
        val filtered = filterListItems(result)
        XR.paramSetResult(param, filtered)
    }

    private fun filterListItems(obj: Any): Any {
        return try {
            // Try ParceledListSlice.getList()
            val sliceMethods = obj.javaClass.declaredMethods
            val getList = sliceMethods.find { it.name == "getList" } ?: throw Throwable("no getList")
            getList.isAccessible = true
            val list = getList.invoke(obj) as? MutableList<*> ?: return obj

            val iter = list.iterator()
            while (iter.hasNext()) {
                val item = iter.next() ?: continue
                val pkgName = extractPackageName(item) ?: continue
                if (service.shouldHide(pkgName)) {
                    iter.remove()
                    Log.d(TAG, "Filtered: $pkgName")
                }
            }
            // Rebuild ParceledListSlice
            try {
                val ctor = obj.javaClass.getConstructor(List::class.java)
                ctor.isAccessible = true
                ctor.newInstance(list)
            } catch (_: Throwable) { list }
        } catch (_: Throwable) {
            // Regular List
            if (obj is MutableList<*>) {
                val iter = obj.iterator()
                while (iter.hasNext()) {
                    val item = iter.next() ?: continue
                    val pkgName = extractPackageName(item) ?: continue
                    if (service.shouldHide(pkgName)) iter.remove()
                }
            }
            obj
        }
    }

    private fun filterResolveList(param: Any) {
        val result = XR.paramGetResult(param) ?: return
        val filtered = filterResolveItems(result)
        XR.paramSetResult(param, filtered)
    }

    private fun filterResolveItems(obj: Any): Any {
        return try {
            val listMethods = obj.javaClass.declaredMethods
            val getList = listMethods.find { it.name == "getList" } ?: throw Throwable("no getList")
            getList.isAccessible = true
            val list = getList.invoke(obj) as? MutableList<*> ?: return obj

            val iter = list.iterator()
            while (iter.hasNext()) {
                val item = iter.next() ?: continue
                val pkgName = extractResolveInfoPackage(item) ?: continue
                if (service.shouldHide(pkgName)) {
                    iter.remove()
                    Log.d(TAG, "ResolveInfo filtered: $pkgName")
                }
            }
            try {
                val ctor = obj.javaClass.getConstructor(List::class.java)
                ctor.isAccessible = true
                ctor.newInstance(list)
            } catch (_: Throwable) { list }
        } catch (_: Throwable) {
            if (obj is MutableList<*>) {
                val iter = obj.iterator()
                while (iter.hasNext()) {
                    val item = iter.next() ?: continue
                    val pkgName = extractResolveInfoPackage(item) ?: continue
                    if (service.shouldHide(pkgName)) iter.remove()
                }
            }
            obj
        }
    }

    private fun extractPackageName(obj: Any?): String? {
        if (obj == null) return null
        return XR.getDeclaredField(obj.javaClass, "packageName")?.let {
            try { it.get(obj) as? String } catch (_: Throwable) { null }
        }
    }

    private fun extractResolveInfoPackage(obj: Any?): String? {
        if (obj == null) return null
        try {
            val actInfo = XR.getDeclaredField(obj.javaClass, "activityInfo")?.let {
                try { it.get(obj) } catch (_: Throwable) { null }
            } ?: return null
            val appInfo = XR.getDeclaredField(actInfo.javaClass, "applicationInfo")?.let {
                try { it.get(actInfo) } catch (_: Throwable) { null }
            } ?: return null
            val pkgNameField = XR.getDeclaredField(appInfo.javaClass, "packageName")
            return pkgNameField?.let {
                try { it.get(appInfo) as? String } catch (_: Throwable) { null }
            }
        } catch (_: Throwable) { return null }
    }
}
