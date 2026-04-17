package com.pandasu.turbo.util

import org.json.JSONArray
import org.json.JSONObject
import java.io.File

/**
 * 将隔离配置导出为 lsp_config.json，供 LSPosed 模块 (HMAService) 读取。
 *
 * 文件路径: /data/user/0/com.pandasu.turbo/cache/config.dat
 *
 * JSON 格式 (与 LSPosed Manager 兼容):
 * {
 *   "enabledPackages": [
 *     {"packageName": "com.xxx", "isolateStorage": true},
 *     ...
 *   ],
 *   "denyListEnabled": true/false,
 *   "propSpoofEnabled": true/false
 * }
 *
 * HMAService.shouldHide(caller, target) 逻辑:
 *   - enabledPackages 中的 packageName → hiddenPackages
 *   - detectorApps 在 smali 中硬编码
 *   - 当 caller ∈ detectorApps 且 target ∈ hiddenPackages → 隐藏
 */
object LspConfigHelper {

    private const val CONFIG_DIR = "/data/user/0/com.pandasu.turbo/cache"
    private const val CONFIG_PATH = "$CONFIG_DIR/config.dat"

    private var denyListEnabled: Boolean = false
    private var propSpoofEnabled: Boolean = false

    init {
        // 启动时读取已有配置，保留 denyListEnabled / propSpoofEnabled 状态
        loadExistingConfig()
    }

    private fun loadExistingConfig() {
        try {
            val file = File(CONFIG_PATH)
            if (!file.exists()) return
            val content = file.readText()
            if (content.contains("\"denyListEnabled\":true")) {
                denyListEnabled = true
            }
            if (content.contains("\"propSpoofEnabled\":true")) {
                propSpoofEnabled = true
            }
        } catch (_: Throwable) {
            // 读取失败不影响后续写入
        }
    }

    /**
     * 导出全部隔离配置。在 IsolationViewModel.saveIsolationState() 时调用。
     *
     * @param apps 所有已隔离的应用列表（AppInfo.isolated == true 的条目）
     */
    fun exportConfig(apps: List<com.pandasu.turbo.ui.compose.isolation.AppInfo>) {
        try {
            val enabledPackages = JSONArray()
            for (app in apps) {
                if (!app.isolated) continue
                val entry = JSONObject()
                entry.put("packageName", app.packageName)
                entry.put("isolateStorage", app.isolateStorage)
                enabledPackages.put(entry)
            }

            val root = JSONObject()
            root.put("enabledPackages", enabledPackages)
            root.put("denyListEnabled", denyListEnabled)
            root.put("propSpoofEnabled", propSpoofEnabled)

            File(CONFIG_DIR).mkdirs()
            File(CONFIG_PATH).writeText(root.toString())
        } catch (_: Throwable) {
            // 非关键路径，静默失败
        }
    }

    /**
     * 导出单个应用的配置。在 toggleAppIsolation() 时调用。
     */
    fun exportSingleConfig(app: com.pandasu.turbo.ui.compose.isolation.AppInfo) {
        try {
            val entry = JSONObject()
            entry.put("packageName", app.packageName)
            entry.put("isolateStorage", app.isolateStorage)

            val enabledPackages = JSONArray()
            if (app.isolated) {
                enabledPackages.put(entry)
            }

            val root = JSONObject()
            root.put("enabledPackages", enabledPackages)
            root.put("denyListEnabled", denyListEnabled)
            root.put("propSpoofEnabled", propSpoofEnabled)

            File(CONFIG_DIR).mkdirs()
            File(CONFIG_PATH).writeText(root.toString())
        } catch (_: Throwable) {
            // 非关键路径，静默失败
        }
    }

    fun setDenyListEnabled(enabled: Boolean) {
        denyListEnabled = enabled
        // 立即写入空包列表的配置，保持状态持久化
        writeMinimalConfig()
    }

    fun setPropSpoofEnabled(enabled: Boolean) {
        propSpoofEnabled = enabled
        writeMinimalConfig()
    }

    fun isDenyListEnabled(): Boolean = denyListEnabled
    fun isPropSpoofEnabled(): Boolean = propSpoofEnabled

    private fun writeMinimalConfig() {
        try {
            val root = JSONObject()
            root.put("enabledPackages", JSONArray())
            root.put("denyListEnabled", denyListEnabled)
            root.put("propSpoofEnabled", propSpoofEnabled)

            File(CONFIG_DIR).mkdirs()
            File(CONFIG_PATH).writeText(root.toString())
        } catch (_: Throwable) {}
    }
}
