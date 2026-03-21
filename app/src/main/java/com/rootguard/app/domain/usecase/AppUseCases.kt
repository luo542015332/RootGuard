package com.rootguard.app.domain.usecase

import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.ui.screens.apps.AppItem
import com.rootguard.app.ui.screens.apps.RootAccessStatus
import javax.inject.Inject

class GetAppsUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(): List<AppItem> {
        return repository.getAppsWithRootStatus()
    }
}

class SetAppRootAccessUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(packageName: String, status: RootAccessStatus): Boolean {
        return repository.setAppRootAccess(packageName, status)
    }
}