package com.rootguard.app.ui.screens.apps

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.domain.usecase.GetAppsUseCase
import com.rootguard.app.domain.usecase.SetAppRootAccessUseCase
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
    val grantedCount: Int = 0,
    val deniedCount: Int = 0,
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

    private fun loadApps() {
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
        val granted = apps.count { it.rootStatus == RootAccessStatus.GRANTED }
        val denied = apps.count { it.rootStatus == RootAccessStatus.DENIED }
        
        _uiState.update { state ->
            val filtered = if (state.searchQuery.isBlank()) {
                apps
            } else {
                apps.filter {
                    it.name.contains(state.searchQuery, ignoreCase = true) ||
                    it.packageName.contains(state.searchQuery, ignoreCase = true)
                }
            }
            
            state.copy(
                apps = apps,
                filteredApps = filtered,
                grantedCount = granted,
                deniedCount = denied,
                isLoading = false
            )
        }
    }

    fun search(query: String) {
        _uiState.update { state ->
            val filtered = if (query.isBlank()) {
                state.apps
            } else {
                state.apps.filter {
                    it.name.contains(query, ignoreCase = true) ||
                    it.packageName.contains(query, ignoreCase = true)
                }
            }
            state.copy(
                searchQuery = query,
                filteredApps = filtered
            )
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
    }
}