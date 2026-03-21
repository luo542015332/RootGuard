package com.rootguard.app.data.local

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "settings")

@Singleton
class SettingsDataStore @Inject constructor(
    private val context: Context
) {
    private val dataStore = context.dataStore
    
    companion object {
        val DARK_MODE = booleanPreferencesKey("dark_mode")
        val DYNAMIC_COLORS = booleanPreferencesKey("dynamic_colors")
        val AUTO_DENY_UNKNOWN = booleanPreferencesKey("auto_deny_unknown")
        val SHOW_NOTIFICATIONS = booleanPreferencesKey("show_notifications")
        val SHOW_FLOATING_DIALOG = booleanPreferencesKey("show_floating_dialog")
        val CURRENT_THEME = stringPreferencesKey("current_theme")
        val CHECK_MODULE_UPDATES = booleanPreferencesKey("check_module_updates")
        val TRADITIONAL_SU_SUPPORT = booleanPreferencesKey("traditional_su_support")
        val KERNEL_UNMOUNT_MODULES = booleanPreferencesKey("kernel_unmount_modules")
        val DEFAULT_UNMOUNT_MODULES = booleanPreferencesKey("default_unmount_modules")
        val WEBVIEW_DEBUGGING = booleanPreferencesKey("webview_debugging")
    }
    
    val darkMode: Flow<Boolean> = dataStore.data
        .map { it[DARK_MODE] ?: false }
    
    val dynamicColors: Flow<Boolean> = dataStore.data
        .map { it[DYNAMIC_COLORS] ?: true }
    
    val autoDenyUnknown: Flow<Boolean> = dataStore.data
        .map { it[AUTO_DENY_UNKNOWN] ?: false }
    
    val showNotifications: Flow<Boolean> = dataStore.data
        .map { it[SHOW_NOTIFICATIONS] ?: true }
    
    val showFloatingDialog: Flow<Boolean> = dataStore.data
        .map { it[SHOW_FLOATING_DIALOG] ?: true }
    
    suspend fun setDarkMode(enabled: Boolean) {
        dataStore.edit { it[DARK_MODE] = enabled }
    }
    
    suspend fun setDynamicColors(enabled: Boolean) {
        dataStore.edit { it[DYNAMIC_COLORS] = enabled }
    }
    
    suspend fun setAutoDenyUnknown(enabled: Boolean) {
        dataStore.edit { it[AUTO_DENY_UNKNOWN] = enabled }
    }
    
    suspend fun setShowNotifications(enabled: Boolean) {
        dataStore.edit { it[SHOW_NOTIFICATIONS] = enabled }
    }
    
    suspend fun setShowFloatingDialog(enabled: Boolean) {
        dataStore.edit { it[SHOW_FLOATING_DIALOG] = enabled }
    }
    
    // 当前主题
    val currentTheme: Flow<String> = dataStore.data
        .map { it[CURRENT_THEME] ?: "classic" }
    
    suspend fun setCurrentTheme(themeId: String) {
        dataStore.edit { it[CURRENT_THEME] = themeId }
    }
    
    // 模块更新检查
    val checkModuleUpdates: Flow<Boolean> = dataStore.data
        .map { it[CHECK_MODULE_UPDATES] ?: true }
    
    suspend fun setCheckModuleUpdates(enabled: Boolean) {
        dataStore.edit { it[CHECK_MODULE_UPDATES] = enabled }
    }
    
    // 传统 su 命令支持
    val traditionalSuSupport: Flow<Boolean> = dataStore.data
        .map { it[TRADITIONAL_SU_SUPPORT] ?: true }
    
    suspend fun setTraditionalSuSupport(enabled: Boolean) {
        dataStore.edit { it[TRADITIONAL_SU_SUPPORT] = enabled }
    }
    
    // 内核处理卸载模块
    val kernelUnmountModules: Flow<Boolean> = dataStore.data
        .map { it[KERNEL_UNMOUNT_MODULES] ?: false }
    
    suspend fun setKernelUnmountModules(enabled: Boolean) {
        dataStore.edit { it[KERNEL_UNMOUNT_MODULES] = enabled }
    }
    
    // 默认卸载模块
    val defaultUnmountModules: Flow<Boolean> = dataStore.data
        .map { it[DEFAULT_UNMOUNT_MODULES] ?: false }
    
    suspend fun setDefaultUnmountModules(enabled: Boolean) {
        dataStore.edit { it[DEFAULT_UNMOUNT_MODULES] = enabled }
    }
    
    // WebView 调试
    val webViewDebugging: Flow<Boolean> = dataStore.data
        .map { it[WEBVIEW_DEBUGGING] ?: false }
    
    suspend fun setWebViewDebugging(enabled: Boolean) {
        dataStore.edit { it[WEBVIEW_DEBUGGING] = enabled }
    }
}