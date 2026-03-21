package com.rootguard.app.data.repository

import android.content.Context
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class RebootRepository @Inject constructor(
    private val context: Context
) {
    
    /**
     * 正常重启设备
     */
    suspend fun reboot(): Boolean = withContext(Dispatchers.IO) {
        executeRebootCommand("")
    }
    
    /**
     * 重启到 Recovery 模式
     */
    suspend fun rebootToRecovery(): Boolean = withContext(Dispatchers.IO) {
        executeRebootCommand("recovery")
    }
    
    /**
     * 重启到 Bootloader 模式
     */
    suspend fun rebootToBootloader(): Boolean = withContext(Dispatchers.IO) {
        executeRebootCommand("bootloader")
    }
    
    /**
     * 重启到 Download 模式（部分三星设备）
     */
    suspend fun rebootToDownload(): Boolean = withContext(Dispatchers.IO) {
        executeRebootCommand("download")
    }
    
    /**
     * 重启到 EDL 模式（高通设备）
     */
    suspend fun rebootToEdl(): Boolean = withContext(Dispatchers.IO) {
        executeRebootCommand("edl")
    }
    
    /**
     * 关机
     */
    suspend fun shutdown(): Boolean = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec("su -c reboot -p")
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * 软重启（仅重启系统，不重启硬件）
     */
    suspend fun softReboot(): Boolean = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec("su -c setprop ctl.restart zygote")
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * 执行重启命令
     */
    private fun executeRebootCommand(target: String): Boolean {
        return try {
            val command = if (target.isEmpty()) {
                "su -c reboot"
            } else {
                "su -c reboot $target"
            }
            val process = Runtime.getRuntime().exec(command)
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * 获取重启模式列表
     */
    fun getAvailableRebootModes(): List<RebootMode> {
        return listOf(
            RebootMode.NORMAL,
            RebootMode.RECOVERY,
            RebootMode.BOOTLOADER,
            RebootMode.DOWNLOAD,
            RebootMode.EDL
        )
    }
}

enum class RebootMode(
    val title: String,
    val description: String,
    val command: String
) {
    NORMAL(
        "重启",
        "正常重启设备",
        ""
    ),
    RECOVERY(
        "Recovery",
        "进入 Recovery 模式",
        "recovery"
    ),
    BOOTLOADER(
        "Bootloader",
        "进入 Bootloader/Fastboot 模式",
        "bootloader"
    ),
    DOWNLOAD(
        "Download",
        "进入 Download 模式（三星）",
        "download"
    ),
    EDL(
        "EDL",
        "进入 EDL 模式（高通）",
        "edl"
    )
}