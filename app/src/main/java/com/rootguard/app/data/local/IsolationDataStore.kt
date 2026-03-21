package com.rootguard.app.data.local

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.*
import androidx.datastore.preferences.preferencesDataStore
import com.rootguard.app.data.model.IsolationConfig
import com.rootguard.app.utils.Logger
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import javax.inject.Inject
import javax.inject.Singleton

private val Context.isolationDataStore: DataStore<Preferences> by preferencesDataStore(name = "isolation_config")

/**
 * 隔离配置数据存储
 * 管理应用隔离配置的持久化存储
 */
@Singleton
class IsolationDataStore @Inject constructor(
    @ApplicationContext private val context: Context
) {
    private val dataStore = context.isolationDataStore
    private val json = Json { ignoreUnknownKeys = true }
    
    companion object {
        private val ISOLATION_CONFIGS_KEY = stringSetPreferencesKey("isolation_configs")
        private val GLOBAL_ISOLATION_ENABLED_KEY = booleanPreferencesKey("global_isolation_enabled")
        private val DEFAULT_ISOLATION_LEVEL_KEY = stringPreferencesKey("default_isolation_level")
    }
    
    /**
     * 获取所有隔离配置
     */
    val isolationConfigs: Flow<List<IsolationConfig>> = dataStore.data.map { preferences ->
        try {
            val configStrings = preferences[ISOLATION_CONFIGS_KEY] ?: emptySet()
            configStrings.mapNotNull { jsonString ->
                try {
                    json.decodeFromString<IsolationConfig>(jsonString)
                } catch (e: Exception) {
                    Logger.e("Failed to parse isolation config", e)
                    null
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to load isolation configs", e)
            emptyList()
        }
    }
    
    /**
     * 获取特定应用的隔离配置
     */
    fun getConfigForApp(packageName: String): Flow<IsolationConfig?> = dataStore.data.map { preferences ->
        try {
            val configStrings = preferences[ISOLATION_CONFIGS_KEY] ?: emptySet()
            configStrings.mapNotNull { jsonString ->
                try {
                    json.decodeFromString<IsolationConfig>(jsonString)
                } catch (e: Exception) {
                    null
                }
            }.find { it.packageName == packageName }
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * 保存隔离配置
     */
    suspend fun saveIsolationConfig(config: IsolationConfig) {
        dataStore.edit { preferences ->
            try {
                val currentConfigs = preferences[ISOLATION_CONFIGS_KEY] ?: emptySet()
                val configList = currentConfigs.mapNotNull { jsonString ->
                    try {
                        json.decodeFromString<IsolationConfig>(jsonString)
                    } catch (e: Exception) {
                        null
                    }
                }.toMutableList()
                
                // 移除已存在的配置
                configList.removeAll { it.packageName == config.packageName }
                // 添加新配置
                configList.add(config)
                
                // 保存回 DataStore
                preferences[ISOLATION_CONFIGS_KEY] = configList.map { 
                    json.encodeToString(it) 
                }.toSet()
                
                Logger.d("Saved isolation config for ${config.packageName}")
            } catch (e: Exception) {
                Logger.e("Failed to save isolation config", e)
            }
        }
    }
    
    /**
     * 删除隔离配置
     */
    suspend fun removeIsolationConfig(packageName: String) {
        dataStore.edit { preferences ->
            try {
                val currentConfigs = preferences[ISOLATION_CONFIGS_KEY] ?: emptySet()
                val configList = currentConfigs.mapNotNull { jsonString ->
                    try {
                        json.decodeFromString<IsolationConfig>(jsonString)
                    } catch (e: Exception) {
                        null
                    }
                }.toMutableList()
                
                configList.removeAll { it.packageName == packageName }
                
                preferences[ISOLATION_CONFIGS_KEY] = configList.map { 
                    json.encodeToString(it) 
                }.toSet()
                
                Logger.d("Removed isolation config for $packageName")
            } catch (e: Exception) {
                Logger.e("Failed to remove isolation config", e)
            }
        }
    }
    
    /**
     * 全局隔离开关
     */
    val globalIsolationEnabled: Flow<Boolean> = dataStore.data.map { preferences ->
        preferences[GLOBAL_ISOLATION_ENABLED_KEY] ?: true
    }
    
    suspend fun setGlobalIsolationEnabled(enabled: Boolean) {
        dataStore.edit { preferences ->
            preferences[GLOBAL_ISOLATION_ENABLED_KEY] = enabled
        }
    }
    
    /**
     * 清除所有配置
     */
    suspend fun clearAllConfigs() {
        dataStore.edit { preferences ->
            preferences.remove(ISOLATION_CONFIGS_KEY)
        }
    }
}
