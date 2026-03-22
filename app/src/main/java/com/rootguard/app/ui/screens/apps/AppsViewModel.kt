package com.rootguard.app.ui.screens.apps

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.domain.usecase.GetAppsUseCase
import com.rootguard.app.domain.usecase.SetAppRootAccessUseCase
import com.rootguard.app.utils.Logger
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

data class AppsUiState(
    val apps: List<AppItem> = emptyList(),
    val filteredApps: List<AppItem> = emptyList(),
    val searchQuery: String = "",
    val filter: AppFilter = AppFilter.ALL,
    val userAppCount: Int = 0,
    val systemAppCount: Int = 0,
    val grantedCount: Int = 0,
    val deniedCount: Int = 0,
    val promptCount: Int = 0,
    val isLoading: Boolean = false
)

@HiltViewModel
class AppsViewModel @Inject constructor(
    private val getApps: GetAppsUseCase,
    private val setAppRootAccess: SetAppRootAccessUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(AppsUiState())
    val uiState: StateFlow<AppsUiState> = _uiState.asStateFlow()

    init {
        loadApps()
    }

    fun loadApps() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            try {
                val apps = getApps()
                updateApps(apps)
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false) }
            }
        }
    }

    private fun updateApps(apps: List<AppItem>) {
        val userApps = apps.count { !it.isSystemApp }
        val systemApps = apps.count { it.isSystemApp }
        val granted = apps.count { it.rootStatus == RootAccessStatus.GRANTED }
        val denied = apps.count { it.rootStatus == RootAccessStatus.DENIED }
        val prompt = apps.count { it.rootStatus == RootAccessStatus.PROMPT }

        // 记录应用数量统计
        Logger.d("Apps loaded: Total=${apps.size}, User=$userApps, System=$systemApps")
        Logger.d("Root status: Granted=$granted, Denied=$denied, Prompt=$prompt")

        _uiState.update { state ->
            val filtered = applyFilters(apps, state.searchQuery, state.filter)

            state.copy(
                apps = apps,
                filteredApps = filtered,
                userAppCount = userApps,
                systemAppCount = systemApps,
                grantedCount = granted,
                deniedCount = denied,
                promptCount = prompt,
                isLoading = false
            )
        }
    }
    
    private fun applyFilters(apps: List<AppItem>, query: String, filter: AppFilter): List<AppItem> {
        var result = apps

        // Apply search filter
        if (query.isNotBlank()) {
            result = result.filter {
                it.name.contains(query, ignoreCase = true) ||
                it.packageName.contains(query, ignoreCase = true)
            }
        }

        // Apply filter
        result = when (filter) {
            AppFilter.ALL -> result
            AppFilter.SYSTEM -> result.filter { it.isSystemApp }
            AppFilter.USER -> result.filter { !it.isSystemApp }
            AppFilter.GRANTED -> result.filter { it.rootStatus == RootAccessStatus.GRANTED }
            AppFilter.DENIED -> result.filter { it.rootStatus == RootAccessStatus.DENIED }
            AppFilter.PROMPT -> result.filter { it.rootStatus == RootAccessStatus.PROMPT }
        }

        return result
    }

    fun search(query: String) {
        _uiState.update { state ->
            val filtered = applyFilters(state.apps, query, state.filter)
            state.copy(
                searchQuery = query,
                filteredApps = filtered
            )
        }
    }
    
    fun setFilter(filter: AppFilter) {
        _uiState.update { state ->
            val filtered = applyFilters(state.apps, state.searchQuery, filter)
            state.copy(
                filter = filter,
                filteredApps = filtered
            )
        }
    }

    fun setRootAccess(packageName: String, newStatus: RootAccessStatus) {
        viewModelScope.launch {
            val success = setAppRootAccess(packageName, newStatus)
            if (success) {
                val updatedApps = _uiState.value.apps.map { a ->
                    if (a.packageName == packageName) {
                        a.copy(rootStatus = newStatus)
                    } else a
                }
                updateApps(updatedApps)
            }
        }
    }
    
    fun toggleRootAccess(packageName: String) {
        viewModelScope.launch {
            val app = _uiState.value.apps.find { it.packageName == packageName }
            app?.let {
                val newStatus = when (it.rootStatus) {
                    RootAccessStatus.GRANTED -> RootAccessStatus.DENIED
                    RootAccessStatus.DENIED -> RootAccessStatus.GRANTED
                    RootAccessStatus.PROMPT -> RootAccessStatus.GRANTED
                }
                setRootAccess(packageName, newStatus)
            }
        }
    }
}