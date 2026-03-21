package com.rootguard.app.domain.usecase

import com.rootguard.app.data.repository.RebootRepository
import javax.inject.Inject

class RebootUseCase @Inject constructor(
    private val repository: RebootRepository
) {
    suspend operator fun invoke(): Boolean {
        return repository.reboot()
    }
}

class RebootToRecoveryUseCase @Inject constructor(
    private val repository: RebootRepository
) {
    suspend operator fun invoke(): Boolean {
        return repository.rebootToRecovery()
    }
}

class RebootToBootloaderUseCase @Inject constructor(
    private val repository: RebootRepository
) {
    suspend operator fun invoke(): Boolean {
        return repository.rebootToBootloader()
    }
}

class ShutdownUseCase @Inject constructor(
    private val repository: RebootRepository
) {
    suspend operator fun invoke(): Boolean {
        return repository.shutdown()
    }
}

class SoftRebootUseCase @Inject constructor(
    private val repository: RebootRepository
) {
    suspend operator fun invoke(): Boolean {
        return repository.softReboot()
    }
}