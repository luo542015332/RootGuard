package com.rootguard.app.ui.screens.envscore

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.magisk.RootHider
import com.rootguard.app.utils.Logger
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class EnvScoreDetailViewModel @Inject constructor(
    private val rootHider: RootHider
) : ViewModel() {

    private val _envChecks = MutableStateFlow<List<RootHider.DetectionResult>>(emptyList())
    val envChecks: StateFlow<List<RootHider.DetectionResult>> = _envChecks.asStateFlow()

    private val _moduleStatuses = MutableStateFlow<List<RootHider.ModuleStatus>>(emptyList())
    val moduleStatuses: StateFlow<List<RootHider.ModuleStatus>> = _moduleStatuses.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    init {
        Logger.d("EnvScoreDetailViewModel: 初始化，开始加载数据")
        loadData()
    }

    fun loadData() {
        Logger.d("EnvScoreDetailViewModel: loadData() 被调用")
        viewModelScope.launch {
            _isLoading.value = true
            Logger.d("EnvScoreDetailViewModel: 设置 isLoading = true")
            // 先显示加载动画，让用户感知到刷新过程
            kotlinx.coroutines.delay(400)
            try {
                Logger.d("EnvScoreDetailViewModel: 开始执行环境检测")
                _envChecks.value = rootHider.runEnvironmentCheckDetail()
                Logger.d("EnvScoreDetailViewModel: 检测完成，envChecks = ${_envChecks.value.size}")
                _moduleStatuses.value = rootHider.detectModules()
                Logger.d("EnvScoreDetailViewModel: 模块检测完成，moduleStatuses = ${_moduleStatuses.value.size}")
            } catch (e: Exception) {
                Logger.e("EnvScoreDetailViewModel: 检测异常", e)
                // handle error
            } finally {
                _isLoading.value = false
                Logger.d("EnvScoreDetailViewModel: 设置 isLoading = false")
            }
        }
    }

    // 根据检测结果生成建议
    fun getSuggestions(): List<Pair<String, String>> {
        val suggestions = mutableListOf<Pair<String, String>>()
        val checks = _envChecks.value
        val modules = _moduleStatuses.value

        // 根据检测到的问题生成建议
        checks.forEach { check ->
            when {
                check.item.name.contains("Shamiko") && check.detected -> {
                    suggestions.add("Shamiko" to "安装 Shamiko 模块隐藏 Root 痕迹")
                }
                check.item.name.contains("Tricky") && check.detected -> {
                    suggestions.add("Tricky Store" to "安装 Tricky Store 模块隐藏 Magisk 管理器")
                }
                check.item.name.contains("PlayIntegrityFix") && check.detected -> {
                    suggestions.add("PlayIntegrityFix" to "安装 PlayIntegrityFix 修复 Google 设备完整性")
                }
                check.item.name.contains("su 二进制") && check.detected -> {
                    suggestions.add("隐藏 su 文件" to "使用一键隔离功能隐藏 su 文件")
                }
                check.item.name.contains("Root 应用") && check.detected -> {
                    suggestions.add("隐藏 Root 应用" to "使用 Shamiko 或 HMA 隐藏 Root 应用")
                }
            }
        }

        return suggestions
    }

    // 根据检测结果生成建议安装的模块
    fun getMissingModules(): List<Pair<String, String>> {
        val missing = mutableListOf<Pair<String, String>>()
        val checks = _envChecks.value

        checks.forEach { check ->
            when {
                check.item.name.contains("Shamiko") && check.detected -> {
                    missing.add("Shamiko" to "隐藏 Root/Zygisk 级模块")
                }
                check.item.name.contains("Tricky") && check.detected -> {
                    missing.add("Tricky Store" to "隐藏 Magisk 管理器")
                }
                check.item.name.contains("PlayIntegrityFix") && check.detected -> {
                    missing.add("PlayIntegrityFix" to "Google 设备完整性修复")
                }
            }
        }

        return missing
    }

    // 获取检测到的问题列表
    fun getDetectedProblems(): List<Pair<String, Int>> {
        return _envChecks.value
            .filter { it.detected }
            .map { it.label to it.severity }
    }
}