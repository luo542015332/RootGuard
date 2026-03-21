package com.rootguard.app.domain.usecase

import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.ui.screens.modules.ModuleItem
import javax.inject.Inject

class GetModulesUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(): List<ModuleItem> {
        return repository.getModules()
    }
}