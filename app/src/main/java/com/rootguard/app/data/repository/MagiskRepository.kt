package com.rootguard.app.data.repository

import com.rootguard.app.data.magisk.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class MagiskRepository @Inject constructor(
    private val magiskProvider: MagiskProvider
) {
    /**
     * 获取 Magisk 版本
     */
    suspend fun getMagiskVersion(): String {
        val version = magiskProvider.getMagiskVersion()
        return if (version.isInstalled) {
            "${version.versionName} (${version.versionCode})"
        } else {
            "未安装"
        }
    }

    /**
     * 检查 Magisk 是否安装
     */
    fun isMagiskInstalled(): Boolean {
        return magiskProvider.isMagiskInstalled()
    }

    /**
     * 获取内核版本
     */
    suspend fun getKernelVersion(): String = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec("su -c uname -r")
            val version = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            version.ifEmpty { System.getProperty("os.version") ?: "Unknown" }
        } catch (e: Exception) {
            System.getProperty("os.version") ?: "Unknown"
        }
    }
}
