package com.rootguard.app.ui.screens.install

import android.content.Context
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rootguard.app.utils.Logger
import com.topjohnwu.superuser.Shell
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.io.File

data class InstallUiState(
    val selectedFile: String? = null,
    val isInstalling: Boolean = false,
    val installLog: List<String> = emptyList(),
    val errorMessage: String? = null,
    val installStatus: InstallStatus = InstallStatus.IDLE
)

enum class InstallStatus {
    IDLE,
    FILE_SELECTED,
    INSTALLING,
    SUCCESS,
    ERROR
}

class InstallViewModel : ViewModel() {
    private val _uiState = MutableStateFlow(InstallUiState())
    val uiState: StateFlow<InstallUiState> = _uiState.asStateFlow()

    /**
     * 选择文件后调用（从文件选择器返回后）
     */
    fun selectFileFromUri(context: Context, uri: Uri) {
        viewModelScope.launch {
            try {
                val tempFile = File.createTempFile("kernel_", ".img", context.cacheDir)
                context.contentResolver.openInputStream(uri)?.use { input ->
                    tempFile.outputStream().use { output ->
                        input.copyTo(output)
                    }
                }

                val filePath = tempFile.absolutePath
                Logger.d("文件已保存到: $filePath")

                _uiState.update {
                    it.copy(
                        selectedFile = filePath,
                        installStatus = InstallStatus.FILE_SELECTED
                    )
                }
            } catch (e: Exception) {
                Logger.e("文件选择失败", e)
                _uiState.update {
                    it.copy(
                        errorMessage = "文件选择失败: ${e.message}",
                        installStatus = InstallStatus.ERROR
                    )
                }
            }
        }
    }

    /**
     * 从已选择的文件安装
     * ksud boot-patch -b <file> -f
     * 使用 libsu 执行（与 Magisk 相同的方式）
     */
    fun installFromFile() {
        val filePath = _uiState.value.selectedFile
        if (filePath == null) {
            _uiState.update {
                it.copy(
                    errorMessage = "请先选择文件",
                    installStatus = InstallStatus.ERROR
                )
            }
            return
        }

        viewModelScope.launch {
            // 使用 libsu 执行 ksud 命令
            // 注意：需要通过 su -c 执行，因为 ksud 不在默认 PATH 中
            executeInstall(
                command = arrayOf("su", "-c", "ksud boot-patch -b $filePath -f"),
                logPrefix = "从文件安装: $filePath"
            )
        }
    }

    /**
     * 直接安装 — 自动查找当前 boot 镜像并修补刷写
     * ksud boot-patch -f
     * 使用 libsu 执行（与 Magisk 相同的方式）
     */
    fun installDirectly() {
        viewModelScope.launch {
            // 使用 libsu 执行 ksud 命令
            // 注意：需要通过 su -c 执行，因为 ksud 不在默认 PATH 中
            executeInstall(
                command = arrayOf("su", "-c", "ksud boot-patch -f"),
                logPrefix = "直接安装（当前分区）"
            )
        }
    }

    /**
     * 安装到未使用的槽位（OTA 后）
     * ksud boot-patch -u -f
     * 使用 libsu 执行（与 Magisk 相同的方式）
     */
    fun installToOtherSlot() {
        viewModelScope.launch {
            // 使用 libsu 执行 ksud 命令
            // 注意：需要通过 su -c 执行，因为 ksud 不在默认 PATH 中
            executeInstall(
                command = arrayOf("su", "-c", "ksud boot-patch -u -f"),
                logPrefix = "安装到未使用槽位（OTA后）"
            )
        }
    }

    /**
     * 通用安装执行方法（带降级）
     * 优先尝试 ksu，如果失败则尝试 su
     */
    private suspend fun executeInstallWithFallback(
        primaryCommand: Array<String>,
        fallbackCommand: Array<String>,
        logPrefix: String
    ) {
        _uiState.update {
            it.copy(isInstalling = true, installStatus = InstallStatus.INSTALLING, errorMessage = null, installLog = emptyList())
        }

        // 首先尝试 ksu
        try {
            val cmdDisplay = primaryCommand.joinToString(" ")
            Logger.d("$logPrefix (尝试 ksu): $cmdDisplay")
            addLog("正在尝试 ksu 执行: $cmdDisplay")

            val process = Runtime.getRuntime().exec(primaryCommand)

            // 实时读取输出
            val outputThread = Thread {
                process.inputStream.bufferedReader().forEachLine { line ->
                    Logger.d("ksud: $line")
                    addLog(line)
                }
            }
            val errorThread = Thread {
                process.errorStream.bufferedReader().forEachLine { line ->
                    Logger.e("ksud error: $line")
                    addLog("[错误] $line")
                }
            }
            outputThread.start()
            errorThread.start()

            process.waitFor()
            outputThread.join(30000)
            errorThread.join(5000)

            if (process.exitValue() == 0) {
                addLog("安装成功！请重启设备生效")
                _uiState.update {
                    it.copy(installStatus = InstallStatus.SUCCESS, isInstalling = false)
                }
                return
            } else {
                addLog("ksu 执行失败 (exit code: ${process.exitValue()})，尝试 su...")
            }
        } catch (e: Exception) {
            Logger.e("$logPrefix ksu 失败", e)
            addLog("ksu 执行失败: ${e.message}，尝试 su...")
        }

        // 降级到 su
        try {
            val cmdDisplay = fallbackCommand.joinToString(" ")
            Logger.d("$logPrefix (尝试 su): $cmdDisplay")
            addLog("正在尝试 su 执行: $cmdDisplay")

            val process = Runtime.getRuntime().exec(fallbackCommand)

            // 实时读取输出
            val outputThread = Thread {
                process.inputStream.bufferedReader().forEachLine { line ->
                    Logger.d("ksud: $line")
                    addLog(line)
                }
            }
            val errorThread = Thread {
                process.errorStream.bufferedReader().forEachLine { line ->
                    Logger.e("ksud error: $line")
                    addLog("[错误] $line")
                }
            }
            outputThread.start()
            errorThread.start()

            process.waitFor()
            outputThread.join(30000)
            errorThread.join(5000)

            if (process.exitValue() == 0) {
                addLog("安装成功！请重启设备生效")
                _uiState.update {
                    it.copy(installStatus = InstallStatus.SUCCESS, isInstalling = false)
                }
            } else {
                throw Exception("ksud 命令执行失败 (exit code: ${process.exitValue()})")
            }
        } catch (e: Exception) {
            Logger.e("$logPrefix su 也失败", e)
            _uiState.update {
                it.copy(
                    errorMessage = "$logPrefix 失败: ${e.message}",
                    installStatus = InstallStatus.ERROR,
                    isInstalling = false
                )
            }
        }
    }

    /**
     * 通用安装执行方法（使用 libsu，与 Magisk 相同）
     */
    private suspend fun executeInstall(command: Array<String>, logPrefix: String) {
        _uiState.update {
            it.copy(isInstalling = true, installStatus = InstallStatus.INSTALLING, errorMessage = null, installLog = emptyList())
        }

        try {
            val cmdDisplay = command.joinToString(" ")
            Logger.d("$logPrefix: $cmdDisplay")
            addLog("正在执行: $cmdDisplay")

            // 使用 libsu 执行命令（与 Magisk 相同的方式）
            // libsu 会维护一个 Root shell，不需要每次都创建新进程
            // 如果没有 Root 权限，命令执行会自然失败
            val result = Shell.cmd(*command).exec()

            // 输出结果
            result.out.forEach { line ->
                Logger.d("ksud: $line")
                addLog(line)
            }
            result.err.forEach { line ->
                Logger.e("ksud error: $line")
                addLog("[错误] $line")
            }

            if (result.isSuccess) {
                addLog("安装成功！请重启设备生效")
                _uiState.update {
                    it.copy(installStatus = InstallStatus.SUCCESS, isInstalling = false)
                }
            } else {
                throw Exception("ksud 命令执行失败 (exit code: ${result.code})")
            }
        } catch (e: Exception) {
            Logger.e("$logPrefix 失败", e)
            _uiState.update {
                it.copy(
                    errorMessage = "$logPrefix 失败: ${e.message}",
                    installStatus = InstallStatus.ERROR,
                    isInstalling = false
                )
            }
        }
    }

    private fun addLog(message: String) {
        _uiState.update {
            it.copy(installLog = it.installLog + message)
        }
    }

    fun dismissError() {
        _uiState.update { it.copy(errorMessage = null, installStatus = InstallStatus.IDLE, installLog = emptyList()) }
    }

    fun resetStatus() {
        _uiState.update { it.copy(installStatus = InstallStatus.IDLE, isInstalling = false, installLog = emptyList()) }
    }
}
