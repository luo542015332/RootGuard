package com.pandasu.turbo.lspoed

import android.util.Log
import java.lang.reflect.*

/**
 * Reflection-based Xposed API bridge.
 * LSPosed provides obfuscated classes at runtime. We use reflection to call them.
 * No compile-time dependency on xposed-api-stub.jar.
 */
@Suppress("UNCHECKED_CAST", "SameParameterValue")
object XR {

    private const val TAG = "TurboX.XR"

    // Class objects (lazy, resolved from context ClassLoader)
    val XC_LoadPackage: Class<*> by lazy { loadClass("de.robv.android.xposed.XC_LoadPackage") }
    val LoadPackageParam: Class<*> by lazy { loadClass("de.robv.android.xposed.XC_LoadPackage\$LoadPackageParam") }
    val XposedBridge: Class<*> by lazy { loadClass("de.robv.android.xposed.XposedBridge") }
    val XposedHelpers: Class<*> by lazy { loadClass("de.robv.android.xposed.XposedHelpers") }
    val XC_MethodHook: Class<*> by lazy { loadClass("de.robv.android.xposed.XC_MethodHook") }
    val MethodHookParam: Class<*> by lazy { loadClass("de.robv.android.xposed.XC_MethodHook\$MethodHookParam") }
    val Unhook: Class<*> by lazy { loadClass("de.robv.android.xposed.XC_MethodHook\$Unhook") }

    // Cached methods
    private val bridgeHookMethod: Method by lazy {
        XposedBridge.getMethod("hookMethod", Member::class.java, XC_MethodHook)
    }
    val bridgeLog: Method by lazy {
        XposedBridge.getMethod("log", String::class.java)
    }
    private val helpersFindClass: Method by lazy {
        XposedHelpers.getMethod("findClass", String::class.java, ClassLoader::class.java)
    }
    private val helpersGetObjectField: Method by lazy {
        XposedHelpers.getMethod("getObjectField", Any::class.java, String::class.java)
    }
    private val helpersSetObjectField: Method by lazy {
        XposedHelpers.getMethod("setObjectField", Any::class.java, String::class.java, Any::class.java)
    }

    // LoadPackageParam fields
    private val fPackageName: Field by lazy { LoadPackageParam.getField("packageName") }
    private val fClassLoader: Field by lazy { LoadPackageParam.getField("classLoader") }
    private val fProcessName: Field by lazy {
        try { LoadPackageParam.getField("processName") }
        catch (_: Throwable) { LoadPackageParam.getDeclaredField("processName").also { it.isAccessible = true } }
    }

    // MethodHookParam fields
    private val fParam: Field by lazy {
        (XC_MethodHook.getDeclaredField("param") ?: throw RuntimeException("param field not found"))
            .also { it.isAccessible = true }
    }
    private val fThisObject: Field by lazy {
        (MethodHookParam.getField("thisObject") ?: throw RuntimeException("thisObject field not found"))
            .also { it.isAccessible = true }
    }
    private val fArgs: Field by lazy {
        (MethodHookParam.getField("args") ?: throw RuntimeException("args field not found"))
            .also { it.isAccessible = true }
    }
    private val fResult: Field by lazy {
        (MethodHookParam.getField("result") ?: throw RuntimeException("result field not found"))
            .also { it.isAccessible = true }
    }
    private val fMethod: Field by lazy {
        (MethodHookParam.getField("method") ?: throw RuntimeException("method field not found"))
            .also { it.isAccessible = true }
    }

    // Unhook.unhook()
    private val unhookMethod: Method by lazy {
        Unhook.getMethod("unhook")
    }

    private fun loadClass(name: String): Class<*> {
        return Class.forName(name, true, Thread.currentThread().contextClassLoader)
    }

    // ===== Logging =====

    fun log(msg: String) {
        try {
            bridgeLog.invoke(null, "[TurboX] $msg")
        } catch (_: Throwable) {
            Log.i(TAG, msg)
        }
    }

    fun logE(msg: String, t: Throwable? = null) {
        try {
            bridgeLog.invoke(null, "[TurboX] [ERR] $msg")
            t?.message?.let { bridgeLog.invoke(null, "[TurboX] $it") }
        } catch (_: Throwable) {
            Log.e(TAG, msg, t)
        }
    }

    // ===== LoadPackageParam helpers =====

    fun getPackageName(param: Any): String = fPackageName.get(param) as String
    fun getClassLoader(param: Any): ClassLoader = fClassLoader.get(param) as ClassLoader
    fun getProcessName(param: Any): String = fProcessName.get(param) as String

    fun setPackageName(param: Any, value: String) { fPackageName.set(param, value) }
    fun setClassLoader(param: Any, value: ClassLoader) { fClassLoader.set(param, value) }

    // ===== MethodHookParam helpers =====

    /** Get 'thisObject' from MethodHookParam */
    fun paramGetThisObject(param: Any): Any? {
        val mhp = fParam.get(param)
        return if (mhp != null) fThisObject.get(mhp) else null
    }

    /** Get 'args' array from MethodHookParam */
    fun paramGetArgs(param: Any): Array<Any?>? {
        val mhp = fParam.get(param) ?: return null
        return fArgs.get(mhp) as? Array<Any?>
    }

    /** Get 'args[i]' */
    fun paramGetArg(param: Any, index: Int): Any? {
        return paramGetArgs(param)?.getOrNull(index)
    }

    /** Get 'result' from MethodHookParam */
    fun paramGetResult(param: Any): Any? {
        val mhp = fParam.get(param) ?: return null
        return try { fResult.get(mhp) } catch (_: Throwable) { null }
    }

    /** Set 'result' on MethodHookParam */
    fun paramSetResult(param: Any, value: Any?) {
        try {
            val mhp = fParam.get(param) ?: return
            fResult.set(mhp, value)
        } catch (_: Throwable) {}
    }

    /** Get 'method' from MethodHookParam */
    fun paramGetMethod(param: Any): Method? {
        val mhp = fParam.get(param) ?: return null
        return try { fMethod.get(mhp) as? Method } catch (_: Throwable) { null }
    }

    /** Call param.result = null (for before hook to suppress) */
    fun paramSetNullResult(param: Any) {
        try {
            val mhp = fParam.get(param) ?: return
            fResult.set(mhp, null)
        } catch (_: Throwable) {}
    }

    // ===== Class loading =====

    fun findClass(className: String, cl: ClassLoader): Class<*> {
        return helpersFindClass.invoke(null, className, cl) as Class<*>
    }

    fun findClass(className: String): Class<*> {
        return findClass(className, Thread.currentThread().contextClassLoader)
    }

    fun getObjectField(obj: Any, fieldName: String): Any? {
        return try { helpersGetObjectField.invoke(null, obj, fieldName) } catch (_: Throwable) { null }
    }

    fun setObjectField(obj: Any, fieldName: String, value: Any?) {
        try { helpersSetObjectField.invoke(null, obj, fieldName, value) } catch (_: Throwable) {}
    }

    // ===== Hook creation =====

    /**
     * Create a XC_MethodHook subclass via Proxy, with before/after lambdas.
     * @param before Called before the original method. Return true to suppress/null result.
     * @param after  Called after the original method.
     */
    fun newHook(before: ((Any) -> Boolean)?, after: ((Any) -> Unit)?): Any {
        val handler = InvocationHandler { _, method, args ->
            try {
                val mhp = if (args != null && args.isNotEmpty()) args[0] else return@InvocationHandler null
                when (method.name) {
                    "beforeHookedMethod" -> {
                        before?.let { fn ->
                            val suppress = fn(mhp)
                            if (suppress) paramSetNullResult(mhp)
                        }
                    }
                    "afterHookedMethod" -> {
                        after?.invoke(mhp)
                    }
                }
            } catch (e: Throwable) {
                logE("Hook callback error: ${e.message}", e)
            }
            null
        }
        return Proxy.newProxyInstance(
            Thread.currentThread().contextClassLoader,
            arrayOf(XC_MethodHook),
            handler
        )
    }

    /**
     * Shorthand: hook a Method with before + after callbacks.
     * @param method java.lang.reflect.Method (from obfuscated class)
     * @param before Returns true to suppress/null the result
     */
    fun hookMethod(method: Method, before: ((Any) -> Boolean)?, after: ((Any) -> Unit)?): Any? {
        return try {
            val hook = newHook(before, after)
            bridgeHookMethod.invoke(null, method, hook)
        } catch (e: Throwable) {
            logE("hookMethod failed: ${method.name}", e)
            null
        }
    }

    /**
     * Hook with only a before callback (returns true to suppress/null result).
     */
    fun hookMethodBefore(method: Method, before: (Any) -> Boolean): Any? {
        return hookMethod(method, before, null)
    }

    /**
     * Hook with only an after callback.
     */
    fun hookMethodAfter(method: Method, after: (Any) -> Unit): Any? {
        return hookMethod(method, null, after)
    }

    /**
     * Find method on a class and hook it.
     */
    fun hookMethod(
        clazz: Class<*>, methodName: String,
        paramTypes: Array<Class<*>>,
        before: ((Any) -> Boolean)?,
        after: ((Any) -> Unit)?
    ): Any? {
        return try {
            val m = clazz.getDeclaredMethod(methodName, *paramTypes)
            m.isAccessible = true
            hookMethod(m, before, after)
        } catch (e: Throwable) {
            logE("hookMethod $clazz.$methodName failed: ${e.message}", e)
            null
        }
    }

    /**
     * Hook using XposedHelpers-style: className + methodName + paramTypes.
     */
    fun hookMethod(
        className: String, methodName: String,
        paramTypes: Array<Class<*>>,
        before: ((Any) -> Boolean)?,
        after: ((Any) -> Unit)?
    ): Any? {
        return try {
            val clazz = findClass(className)
            hookMethod(clazz, methodName, paramTypes, before, after)
        } catch (e: Throwable) {
            logE("hookMethod $className.$methodName failed: ${e.message}", e)
            null
        }
    }

    // ===== Unhook =====

    fun unhook(unhook: Any?) {
        try { unhookMethod.invoke(unhook) } catch (_: Throwable) {}
    }

    // ===== Field helpers =====

    fun getDeclaredField(clazz: Class<*>, name: String): Field? {
        return try {
            clazz.getDeclaredField(name).also { it.isAccessible = true }
        } catch (_: Throwable) { null }
    }

    fun getStaticObjectField(clazz: Class<*>, name: String): Any? {
        return try {
            val f = clazz.getDeclaredField(name)
            f.isAccessible = true
            f.get(null)
        } catch (_: Throwable) { null }
    }
}
