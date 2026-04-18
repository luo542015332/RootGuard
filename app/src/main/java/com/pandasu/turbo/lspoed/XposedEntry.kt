package com.pandasu.turbo.lspoed

import de.robv.android.xposed.IXposedHookLoadPackage
import de.robv.android.xposed.callbacks.XC_LoadPackage

/**
 * LSPosed module entry point.
 * XC_LoadPackage is in the callbacks sub-package (matching LSPosed framework.dex).
 * This ensures obfuscateDex can properly remap all type references.
 */
class XposedEntry : IXposedHookLoadPackage {

    companion object {
        private const val TAG = "TurboX"
    }

    override fun handleLoadPackage(lpparam: XC_LoadPackage.LoadPackageParam) {
        try {
            val pkgName: String = lpparam.packageName
            val classLoader: ClassLoader = lpparam.classLoader

            XR.log("TurboX: handleLoadPackage $pkgName")

            // Init native hooks for system_server
            if (pkgName == "android") {
                try {
                    TurboNative.init()
                    XR.log("TurboX: Native init OK")
                } catch (e: Throwable) {
                    XR.logE("TurboX: Native init failed: ${e.message}", e)
                }
            }

            // Delegate to TurboService (it will check if android process internally)
            val service = TurboService.getInstance()
            service.load(lpparam, classLoader)

        } catch (e: Throwable) {
            XR.logE("TurboX: handleLoadPackage failed: ${e.message}", e)
        }
    }
}
