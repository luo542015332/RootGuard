package com.rootguard.app.domain.usecase

import com.rootguard.app.data.repository.MagiskRepository
import com.rootguard.app.ui.screens.logs.LogEntry
import javax.inject.Inject

class GetLogsUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(): List<LogEntry> {
        return repository.getLogs()
    }
}

class ClearLogsUseCase @Inject constructor(
    private val repository: MagiskRepository
) {
    suspend operator fun invoke(): Boolean {
        return repository.clearLogs()
    }
}