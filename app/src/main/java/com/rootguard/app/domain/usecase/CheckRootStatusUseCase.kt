package com.rootguard.app.domain.usecase

import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.ui.screens.home.RootStatus
import com.rootguard.app.ui.screens.home.SystemInfo
import javax.inject.Inject

class CheckRootStatusUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(): RootStatus {
        return repository.checkRootStatus()
    }
}