package com.rootguard.app.ui.screens.home

data class HomeUiState(
    val rootStatus: RootStatus = RootStatus.UNKNOWN,
    val systemInfo: SystemInfo = SystemInfo(),
    val isLoading: Boolean = false
)

enum class RootStatus {
    ROOTED,
    NOT_ROOTED,
    UNKNOWN
}

data class SystemInfo(
    val androidVersion: String = "Unknown",
    val apiLevel: String = "Unknown",
    val deviceModel: String = "Unknown",
    val securityPatch: String = "Unknown",
    val selinuxStatus: String = "Unknown",
    val kernelVersion: String = "Unknown",
    val systemFingerprint: String = "Unknown"
)