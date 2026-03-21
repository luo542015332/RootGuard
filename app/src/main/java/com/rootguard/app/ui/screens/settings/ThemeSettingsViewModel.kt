package com.rootguard.app.ui.screens.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.data.local.SettingsDataStore
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

data class ThemeSettingsUiState(
    val currentThemeId: String = "classic",
    val isDarkMode: Boolean = false,
    val useDynamicColors: Boolean = false
)

@HiltViewModel
class ThemeSettingsViewModel @Inject constructor(
    private val settingsDataStore: SettingsDataStore
) : ViewModel() {

    private val _uiState = MutableStateFlow(ThemeSettingsUiState())
    val uiState: StateFlow<ThemeSettingsUiState> = _uiState.asStateFlow()

    init {
        loadSettings()
    }

    private fun loadSettings() {
        viewModelScope.launch {
            // 收集当前主题设置
            launch {
                settingsDataStore.darkMode.collect { darkMode ->
                    _uiState.update { it.copy(isDarkMode = darkMode) }
                }
            }
            
            launch {
                settingsDataStore.dynamicColors.collect { dynamicColors ->
                    _uiState.update { it.copy(useDynamicColors = dynamicColors) }
                }
            }
            
            // 从 DataStore 读取当前主题 ID
            launch {
                settingsDataStore.currentTheme.collect { themeId ->
                    _uiState.update { it.copy(currentThemeId = themeId) }
                }
            }
        }
    }

    fun setTheme(themeId: String) {
        _uiState.update { it.copy(currentThemeId = themeId) }
        viewModelScope.launch {
            settingsDataStore.setCurrentTheme(themeId)
        }
    }

    fun toggleDarkMode() {
        val newValue = !_uiState.value.isDarkMode
        _uiState.update { it.copy(isDarkMode = newValue) }
        viewModelScope.launch {
            settingsDataStore.setDarkMode(newValue)
        }
    }

    fun toggleDynamicColors() {
        val newValue = !_uiState.value.useDynamicColors
        _uiState.update { it.copy(useDynamicColors = newValue) }
        viewModelScope.launch {
            settingsDataStore.setDynamicColors(newValue)
        }
    }
}