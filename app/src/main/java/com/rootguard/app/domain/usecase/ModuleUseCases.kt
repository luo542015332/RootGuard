package com.rootguard.app.domain.usecase

import com.rootguard.app.data.repository.MagiskRepository
import javax.inject.Inject

class ToggleModuleUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(moduleId: String, enable: Boolean): Boolean {
        return repository.toggleModule(moduleId, enable)
    }
}

class UninstallModuleUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(moduleId: String): Boolean {
        return repository.uninstallModule(moduleId)
    }
}

class InstallModuleUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(zipPath: String): Boolean {
        return repository.installModule(zipPath)
    }
}