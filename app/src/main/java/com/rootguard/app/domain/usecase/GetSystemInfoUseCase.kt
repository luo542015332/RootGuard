package com.rootguard.app.domain.usecase

import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.ui.screens.home.SystemInfo
import javax.inject.Inject

class GetSystemInfoUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(): SystemInfo {
        return repository.getSystemInfo()
    }
}