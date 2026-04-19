package com.pandasu.turbo.lspoed

import android.os.Binder
import android.os.Build

object Utils {
    private const val UID_SYSTEM = 1000
    
    fun <T> binderLocalScope(block: () -> T): T {
        val identity = Binder.clearCallingIdentity()
        try { return block() } finally { Binder.restoreCallingIdentity(identity) }
    }
    
    fun getPackageNameFromPackageSettings(ps: Any): String? {
        return try {
            val fieldName = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) "mName" else "name"
            val field = ps.javaClass.getDeclaredField(fieldName)
            field.isAccessible = true
            field.get(ps) as? String
        } catch (_: Throwable) { null }
    }
    
    val packagesShouldNotHide = setOf(
        "android", "android.media", "android.uid.system", "android.uid.shell",
        "android.uid.systemui", "com.android.permissioncontroller",
        "com.android.providers.downloads", "com.android.providers.downloads.ui",
        "com.android.providers.media", "com.android.providers.media.module",
        "com.android.providers.settings", "com.google.android.webview",
        "com.google.android.providers.media.module", "com.pandasu.turbo"
    )
}
