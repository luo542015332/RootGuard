package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.XR
import com.pandasu.turbo.lspoed.TurboService
import java.lang.reflect.Method

/**
 * Zygote hook - hooks ZygoteProcess.start() to detect app launches.
 * Used to trigger mount namespace isolation for target apps.
 */
class ZygoteHook(private val service: TurboService) : IFrameworkHook {
    companion object {
        private const val TAG = "Turbo-ZygoteHook"
    }

    private val hooks = mutableListOf<Any>()

    override fun load() {
        try {
            val zygoteClass = XR.findClass("com.android.internal.os.ZygoteProcess")

            // Find start(String, ...) method
            val startMethod = zygoteClass.declaredMethods.find { m ->
                m.name == "start" &&
                m.parameterTypes.isNotEmpty() &&
                m.parameterTypes[0] == String::class.java
            }

            if (startMethod != null) {
                startMethod.isAccessible = true
                val unhook = XR.hookMethod(startMethod,
                    before = { param ->
                        val processName = XR.paramGetArg(param, 0) as? String ?: return@hookMethod false
                        if (service.shouldHide(processName)) {
                            XR.log("[Turbo-Zygote] Hide: $processName")
                        }
                        false
                    },
                    after = null
                )
                if (unhook != null) hooks.add(unhook)
                XR.log("[Turbo] ZygoteHook loaded")
            } else {
                XR.log("[Turbo] ZygoteProcess.start not found")
            }
        } catch (e: Throwable) {
            XR.logE("ZygoteHook failed: ${e.message}", e)
        }
    }

    override fun unload() {
        hooks.forEach { XR.unhook(it) }
        hooks.clear()
    }
}
