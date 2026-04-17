package com.pandasu.turbo.ui.compose.isolation

import android.content.Context
import android.content.SharedPreferences
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.pandasu.turbo.util.LspConfigHelper
import com.pandasu.turbo.util.ShizukuHelper
import org.json.JSONObject

// ─── 持久化 ───────────────────────────────────────────────────────────────────

private object IsolationPrefs {
    private const val PREFS_NAME = "isolation_prefs"
    private const val KEY_ISOLATED_APPS = "isolated_apps" // JSON: { "pkg1": {...config}, ... }

    private var prefs: SharedPreferences? = null

    fun init(context: Context) {
        prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
    }

    fun loadIsolationApps(): Map<String, AppInfo> {
        val json = prefs?.getString(KEY_ISOLATED_APPS, null) ?: return emptyMap()
        return try {
            val obj = JSONObject(json)
            val map = mutableMapOf<String, AppInfo>()
            obj.keys().forEach { key ->
                val node = obj.getJSONObject(key)
                map[key] = AppInfo(
                    name = node.optString("name", key),
                    packageName = key,
                    isolated = node.optBoolean("isolated", true),
                    level = node.optInt("level", 1),
                    isSystem = node.optBoolean("isSystem", false),
                    strictLevel = node.optInt("strictLevel", 0),
                    hideMagisk = node.optBoolean("hideMagisk", false),
                    hideSuBinary = node.optBoolean("hideSuBinary", false),
                    hideBusybox = node.optBoolean("hideBusybox", false),
                    hideXposed = node.optBoolean("hideXposed", false),
                    hideMagiskApp = node.optBoolean("hideMagiskApp", false),
                    isolateStorage = node.optBoolean("isolateStorage", false),
                    disableRootAccess = node.optBoolean("disableRootAccess", false),
                    propSpoofEnabled = node.optBoolean("propSpoofEnabled", false),
                    enableAppDataIsolation = node.optBoolean("enableAppDataIsolation", false),
                    enablePmsHook = node.optBoolean("enablePmsHook", false),
                    enablePlatformCompatHook = node.optBoolean("enablePlatformCompatHook", false)
                )
            }
            map
        } catch (_: Exception) {
            emptyMap()
        }
    }

    fun saveIsolationApps(apps: List<AppInfo>) {
        val obj = JSONObject()
        apps.filter { it.isolated }.forEach { app ->
            val node = JSONObject()
            node.put("name", app.name)
            node.put("isolated", app.isolated)
            node.put("level", app.level)
            node.put("strictLevel", app.strictLevel)
            node.put("isSystem", app.isSystem)
            node.put("hideMagisk", app.hideMagisk)
            node.put("hideSuBinary", app.hideSuBinary)
            node.put("hideBusybox", app.hideBusybox)
            node.put("hideXposed", app.hideXposed)
            node.put("hideMagiskApp", app.hideMagiskApp)
            node.put("isolateStorage", app.isolateStorage)
            node.put("disableRootAccess", app.disableRootAccess)
            node.put("propSpoofEnabled", app.propSpoofEnabled)
            node.put("enableAppDataIsolation", app.enableAppDataIsolation)
            node.put("enablePmsHook", app.enablePmsHook)
            node.put("enablePlatformCompatHook", app.enablePlatformCompatHook)
            obj.put(app.packageName, node)
        }
        prefs?.edit()?.putString(KEY_ISOLATED_APPS, obj.toString())?.apply()
    }
}

// ─── UI State ─────────────────────────────────────────────────────────────────

data class IsolationUiState(
    val isLoading: Boolean = true,
    val isModuleEnabled: Boolean = false,
    val hasRootPermission: Boolean = false,
    val activeTab: AppFilterTab = AppFilterTab.ALL,
    val searchQuery: String = "",
    val selectedPreset: OneClickIsolationPreset = OneClickIsolationPreset.CONSERVATIVE,
    val oneClickProgress: OneClickProgress = OneClickProgress(),
    val successMessage: String? = null,
    val errorMessage: String? = null,
    // 公开：过滤后的用户/系统
    val userApps: List<AppInfo> = emptyList(),
    val systemApps: List<AppInfo> = emptyList(),
    // 全部（含隔离）
    val allApps: List<AppInfo> = emptyList()
)

// ─── ViewModel ─────────────────────────────────────────────────────────────────

class IsolationViewModel : ViewModel() {

    private val _uiState = MutableStateFlow(IsolationUiState())
    val uiState: StateFlow<IsolationUiState> = _uiState.asStateFlow()

    // 原始列表（不暴露在 UI State 中）
    private var _allAppsList: List<AppInfo> = emptyList()

    // 真实的 Application Context，由 Compose 层注入
    private var appContext: android.content.Context? = null

    fun attachContext(context: android.content.Context) {
        appContext = context.applicationContext
        IsolationPrefs.init(appContext!!)
        loadAppList()
    }

    // ─── 生命周期 ─────────────────────────────────────────────────────────────

    init {
        // 不在这里加载，等 attachContext 之后在 Compose 层调用 loadSettings()
    }

    // ─── 加载设置 ─────────────────────────────────────────────────────────────

    fun loadSettings() {
        viewModelScope.launch {
            _uiState.value = _uiState.value.copy(isLoading = true)
            try {
                // 检测 LSP 模块是否启用（通过 API 检查自身是否在模块作用域运行）
                val moduleEnabled = try {
                    Class.forName("dalvik.system.BaseDexClassLoader")
                    true // 能访问系统类即认为模块环境正常
                } catch (e: Throwable) {
                    false
                }

                // 检测 Root
                val hasRoot = checkRootPermission()

                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    isModuleEnabled = moduleEnabled,
                    hasRootPermission = hasRoot
                )
            } catch (e: Throwable) {
                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    errorMessage = "初始化失败: ${e.message}"
                )
            }
        }
    }

    private fun checkRootPermission(): Boolean {
        return try {
            val process = Runtime.getRuntime().exec(ShizukuHelper.suArgs("id"))
            val completed = process.waitFor(3, java.util.concurrent.TimeUnit.SECONDS)
            if (!completed) {
                process.destroyForcibly()
                return false
            }
            val output = process.inputStream.bufferedReader().readText()
            process.exitValue() == 0 && output.contains("uid=0")
        } catch (e: Throwable) {
            false
        }
    }

    // ─── 加载应用列表 ─────────────────────────────────────────────────────────

    private fun loadAppList() {
        viewModelScope.launch {
            try {
                val apps = withContext(Dispatchers.IO) {
                    loadInstalledApps()
                }
                updateAppLists(apps)
            } catch (e: Throwable) {
                _uiState.value = _uiState.value.copy(
                    errorMessage = "加载应用列表失败: ${e.message}"
                )
            }
        }
    }

    private fun loadInstalledApps(): List<AppInfo> {
        val ctx = appContext ?: return emptyList()
        val pm = ctx.packageManager
        val savedApps = IsolationPrefs.loadIsolationApps()

        val packages = try {
            pm.getInstalledPackages(PackageManager.GET_META_DATA)
        } catch (e: Throwable) {
            emptyList()
        }

        return packages.mapNotNull { raw ->
            try {
                val pkgName = raw.packageName
                val appInfo = raw.applicationInfo
                val appName = appInfo?.let {
                    try { it.loadLabel(pm).toString() } catch (e: Throwable) { null }
                } ?: pkgName.substringAfterLast(".")
                val flags = appInfo?.flags ?: 0
                val isSystem = (flags and ApplicationInfo.FLAG_SYSTEM) != 0
                // 优先用持久化的完整配置
                val saved = savedApps[pkgName]
                if (saved != null) {
                    saved.copy(isSystem = isSystem)
                } else {
                    AppInfo(
                        name = appName,
                        packageName = pkgName,
                        isolated = false,
                        level = 1,
                        strictLevel = saved?.strictLevel ?: 0,
                        isSystem = isSystem
                    )
                }
            } catch (e: Throwable) {
                null
            }
        }
    }

    private fun updateAppLists(apps: List<AppInfo>) {
        _allAppsList = apps
        val userApps = apps.filter { !it.isSystem }
        val systemApps = apps.filter { it.isSystem }
        _uiState.value = _uiState.value.copy(
            allApps = apps,
            userApps = userApps,
            systemApps = systemApps,
            isLoading = false
        )
    }

    // ─── Tab 切换 ─────────────────────────────────────────────────────────────

    fun setActiveTab(tab: AppFilterTab) {
        _uiState.value = _uiState.value.copy(activeTab = tab)
    }

    fun setSearchQuery(query: String) {
        _uiState.value = _uiState.value.copy(searchQuery = query)
    }

    // ─── 预设选择 ─────────────────────────────────────────────────────────────

    fun setOneClickPreset(preset: OneClickIsolationPreset) {
        _uiState.value = _uiState.value.copy(selectedPreset = preset)
    }

    // smali SandboxLevel ordinal: STRICT=0, MODERATE=1, PERMISSIVE=2, DISABLED=3
    // 保守=3开关→MODERATE(1)，均衡=6开关→PERMISSIVE(2)，严格=11开关→STRICT(0)
    // 注意：AGGRESSIVE 时 strictLevel=0 不要和 DISABLED(也是3) 混淆
    // DISABLED=3 是在 SPMode.SANDBOX=3 的语境下，SAND=0/1/2，SPOFF=3
    // STRICT=0 故不能设置为 3
    private fun levelForPreset(preset: OneClickIsolationPreset): Int {
        return when (preset) {
            OneClickIsolationPreset.CONSERVATIVE -> 1  // 3开关
            OneClickIsolationPreset.BALANCED -> 2       // 6开关
            OneClickIsolationPreset.AGGRESSIVE -> 0
        }
    }

    // 三个预设都隔离全部用户 App，区别仅在于开启的开关数量
    // 激进=11个全部开启，均衡=6个，保守=3个
    private data class PresetConfig(
        val hideMagisk: Boolean,
        val hideSuBinary: Boolean,
        val hideBusybox: Boolean,
        val hideXposed: Boolean,
        val hideMagiskApp: Boolean,
        val isolateStorage: Boolean,
        val disableRootAccess: Boolean,
        val propSpoofEnabled: Boolean,
        val enableAppDataIsolation: Boolean,
        val enablePmsHook: Boolean,
        val enablePlatformCompatHook: Boolean
    )

    private fun buildConfigForPreset(preset: OneClickIsolationPreset): PresetConfig {
        return when (preset) {
            // 保守：3个开关
            // hideMagisk + hideSuBinary + hideXposed
            OneClickIsolationPreset.CONSERVATIVE -> PresetConfig(
                hideMagisk = true,
                hideSuBinary = true,
                hideBusybox = false,
                hideXposed = true,
                hideMagiskApp = false,
                isolateStorage = false,
                disableRootAccess = false,
                propSpoofEnabled = false,
                enableAppDataIsolation = false,
                enablePmsHook = false,
                enablePlatformCompatHook = false
            )
            // 均衡：6个开关
            // hideMagisk + hideSuBinary + hideXposed + hideMagiskApp + enablePmsHook + disableRootAccess
            OneClickIsolationPreset.BALANCED -> PresetConfig(
                hideMagisk = true,
                hideSuBinary = true,
                hideBusybox = false,
                hideXposed = true,
                hideMagiskApp = true,
                isolateStorage = false,
                disableRootAccess = true,
                propSpoofEnabled = false,
                enableAppDataIsolation = false,
                enablePmsHook = true,
                enablePlatformCompatHook = false
            )
            // 激进：11个开关全部开启
            OneClickIsolationPreset.AGGRESSIVE -> PresetConfig(
                hideMagisk = true,
                hideSuBinary = true,
                hideBusybox = true,
                hideXposed = true,
                hideMagiskApp = true,
                isolateStorage = true,
                disableRootAccess = true,
                propSpoofEnabled = true,
                enableAppDataIsolation = true,
                enablePmsHook = true,
                enablePlatformCompatHook = true
            )
        }
    }

    // ─── 一键隔离 ─────────────────────────────────────────────────────────────

    fun startOneClickIsolation() {
        if (_allAppsList.isEmpty()) {
            _uiState.value = _uiState.value.copy(errorMessage = "未检测到任何应用，请等待列表加载")
            return
        }
        viewModelScope.launch {
            val currentPreset = _uiState.value.selectedPreset
            val total = _allAppsList.size
            val resultApps = _allAppsList.toMutableList()
            var isolated = 0

            _uiState.value = _uiState.value.copy(
                oneClickProgress = OneClickProgress(isRunning = true, current = 0, total = total),
                successMessage = null,
                errorMessage = null
            )

            val targetLevel = levelForPreset(currentPreset)
            val presetConfig = buildConfigForPreset(currentPreset)

            for (i in resultApps.indices) {
                val app = resultApps[i]
                if (!app.isSystem) {
                    resultApps[i] = app.copy(
                        isolated = true,
                        level = targetLevel,
                        strictLevel = when (currentPreset) {
                            OneClickIsolationPreset.CONSERVATIVE -> 1
                            OneClickIsolationPreset.BALANCED -> 2
                            OneClickIsolationPreset.AGGRESSIVE -> 0
                        },
                        hideMagisk = presetConfig.hideMagisk,
                        hideSuBinary = presetConfig.hideSuBinary,
                        hideBusybox = presetConfig.hideBusybox,
                        hideXposed = presetConfig.hideXposed,
                        hideMagiskApp = presetConfig.hideMagiskApp,
                        isolateStorage = presetConfig.isolateStorage,
                        disableRootAccess = presetConfig.disableRootAccess,
                        propSpoofEnabled = presetConfig.propSpoofEnabled,
                        enableAppDataIsolation = presetConfig.enableAppDataIsolation,
                        enablePmsHook = presetConfig.enablePmsHook,
                        enablePlatformCompatHook = presetConfig.enablePlatformCompatHook
                    )
                    isolated++
                }
                _uiState.value = _uiState.value.copy(
                    oneClickProgress = OneClickProgress(
                        isRunning = true,
                        current = i + 1,
                        total = total,
                        currentAppName = app.name
                    )
                )
                delay(30)
            }

            updateAppLists(resultApps)
            saveIsolationState(resultApps)

            val presetLabel = when (currentPreset) {
                OneClickIsolationPreset.CONSERVATIVE -> "保守"
                OneClickIsolationPreset.BALANCED -> "激进"
                OneClickIsolationPreset.AGGRESSIVE -> "严格"
            }

            _uiState.value = _uiState.value.copy(
                oneClickProgress = OneClickProgress(),
                successMessage = "一键隔离完成！已隔离 $isolated 个应用（$presetLabel）"
            )
        }
    }

    fun dismissProgress() {
        _uiState.value = _uiState.value.copy(
            oneClickProgress = OneClickProgress(),
            successMessage = null
        )
    }

    // ─── 单独应用隔离切换 ─────────────────────────────────────────────────────

    fun toggleAppIsolation(app: AppInfo) {
        val apps = _allAppsList.toMutableList()
        val index = apps.indexOfFirst { it.packageName == app.packageName }
        if (index >= 0) {
            val current = apps[index]
            val newIsolated = !current.isolated
            val newStrictLevel = if (newIsolated) {
                // STRICT=0, MODERATE=1, PERMISSIVE=2
                when (_uiState.value.selectedPreset) {
                    OneClickIsolationPreset.CONSERVATIVE -> 1
                    OneClickIsolationPreset.BALANCED -> 2
                    OneClickIsolationPreset.AGGRESSIVE -> 0  // 激进=严格隔离
                }
            } else {
                0
            }
            apps[index] = current.copy(isolated = newIsolated, level = if (newIsolated) levelForPreset(_uiState.value.selectedPreset) else 1, strictLevel = newStrictLevel)
            updateAppLists(apps)
            saveIsolationState(apps)
        }
    }

    // ─── 更新单个应用配置 ─────────────────────────────────────────────────────

    fun updateAppConfig(updatedApp: AppInfo) {
        val apps = _allAppsList.toMutableList()
        val index = apps.indexOfFirst { it.packageName == updatedApp.packageName }
        if (index >= 0) {
            apps[index] = updatedApp
            updateAppLists(apps)
            saveIsolationState(apps)
        }
    }

    // ─── 清除消息 ─────────────────────────────────────────────────────────────

    fun clearMessages() {
        _uiState.value = _uiState.value.copy(
            successMessage = null,
            errorMessage = null
        )
    }

    // ─── 持久化 ──────────────────────────────────────────────────────────────

    private fun saveIsolationState(apps: List<AppInfo>) {
        IsolationPrefs.saveIsolationApps(apps)
        // 同步到 lsp_config.json，供 LSPosed 模块 (HMAService) 读取
        LspConfigHelper.exportConfig(apps)
    }
}
