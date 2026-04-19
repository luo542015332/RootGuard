package com.pandasu.turbo.lspoed

object Constants {
    const val APP_PACKAGE_NAME = "com.pandasu.turbo"
    const val UID_SYSTEM = 1000
    
    // GMS/GSF 包名（用于 shouldHide 特殊处理）
    const val GMS_PACKAGE_NAME = "com.google.android.gms"
    const val GSF_PACKAGE_NAME = "com.google.android.gsf"
    
    // ContentProvider 权限
    const val PROVIDER_AUTHORITY = "com.pandasu.turbo.provider"
    
    // Binder 通信
    const val DESCRIPTOR = "com.pandasu.turbo.lspoed.ITurboService"
    const val ACTION_GET_BINDER = 1
    const val TRANSACTION = 1598351557 // ITurboService transaction code
    
    // 系统属性
    const val ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY = "persist.sys.isolated_storage"
    const val ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY = "persist.sys.vold.isolated_storage"
    
    val packagesShouldNotHide = listOf("android", "com.android.systemui", APP_PACKAGE_NAME)
}
