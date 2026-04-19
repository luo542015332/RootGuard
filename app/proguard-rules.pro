# ============================================================
# PandaTurbo ProGuard Rules - LSPosed Module Optimization
# Keep only what the hook code needs at runtime
# ============================================================

# --- Xposed Hook 层（运行在 system_server）---
-keep,allowobfuscation class com.pandasu.turbo.lspoed.** { *; }

# Xposed 入口类名不能混淆（xposed_init 通过全限定名找到）
-keep class com.pandasu.turbo.lspoed.XposedEntry { *; }

# AIDL Stub（Binder IPC）
-keep class com.pandasu.turbo.lspoed.ITurboService* { *; }

# --- Hook 依赖的第三方库 ---

# EzXHelper（Xposed 辅助库）
-keep class com.github.kyuubiran.ezxhelper.** { *; }

# Hidden API Compat（反射桥接）
-keep class rikka.hidden.compat.** { *; }
-keep class rikka.hidden.internal.** { *; }

# Kotlin Serialization（JsonConfig 使用）
-keep class kotlinx.serialization.** { *; }
-keepattributes *Annotation*
-dontwarn kotlinx.serialization.**

# --- App 层（hook 通过反射访问，类名必须保留）---

# PandaTurboApp（XposedEntry 通过反射设置 isHooked 字段）
-keep class com.pandasu.turbo.PandaTurboApp { *; }
-keepclassmembers class com.pandasu.turbo.PandaTurboApp {
    boolean isHooked;
}

# ServiceProvider（ContentProvider，系统通过类名实例化）
-keep class com.pandasu.turbo.service.ServiceProvider { *; }

# --- Kotlin 基础（反射/协程需要）---
-keep class kotlin.Metadata { *; }
-keepclassmembers class * {
    <init>(...);
}
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod
-keepattributes Exceptions

# --- 通用 ---
-dontwarn de.robv.android.xposed.**
-keepattributes SourceFile,LineNumberTable