package com.rootguard.app.data.remote

import com.rootguard.app.data.api.GitHubApi
import com.rootguard.app.data.model.ReleaseInfo
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import javax.inject.Inject
import javax.inject.Singleton

/**
 * 更新管理器 - 负责检查更新和下载 APK
 */
@Singleton
class UpdateManager @Inject constructor(
    private val gitHubApi: GitHubApi
) {
    /**
     * 检查是否有新版本
     * @param currentVersion 当前版本号
     * @return 如果有新版本返回 ReleaseInfo，否则返回 null
     */
    suspend fun checkForUpdates(currentVersion: String): ReleaseInfo? {
        return withContext(Dispatchers.IO) {
            try {
                val latestRelease = gitHubApi.getLatestRelease()
                val latestVersion = latestRelease.getVersionName()

                if (isNewerVersion(latestVersion, currentVersion)) {
                    latestRelease
                } else {
                    null
                }
            } catch (e: Exception) {
                e.printStackTrace()
                null
            }
        }
    }

    /**
     * 下载 APK 文件
     * @param url 下载链接
     * @param outputFile 输出文件
     * @param onProgress 进度回调 (0-100)
     */
    suspend fun downloadApk(
        url: String,
        outputFile: File,
        onProgress: (Int) -> Unit = {}
    ): Result<Unit> = withContext(Dispatchers.IO) {
        try {
            val connection = java.net.URL(url).openConnection()
            connection.connect()
            val fileLength = connection.contentLengthLong

            val input = connection.getInputStream()
            val output = FileOutputStream(outputFile)

            val data = ByteArray(4096)
            var total: Long = 0
            var count: Int

            while (input.read(data).also { count = it } != -1) {
                total += count
                output.write(data, 0, count)

                // 计算进度
                if (fileLength > 0) {
                    val progress = ((total * 100) / fileLength).toInt()
                    onProgress(progress)
                }
            }

            output.flush()
            output.close()
            input.close()

            Result.success(Unit)
        } catch (e: Exception) {
            e.printStackTrace()
            Result.failure(e)
        }
    }

    /**
     * 比较版本号
     * @param newVersion 新版本号 (如 "1.3.0")
     * @param currentVersion 当前版本号 (如 "1.2.0")
     * @return 如果新版本更新返回 true
     */
    private fun isNewerVersion(newVersion: String, currentVersion: String): Boolean {
        val newParts = newVersion.split(".")
        val currentParts = currentVersion.split(".")

        for (i in 0 until maxOf(newParts.size, currentParts.size)) {
            val new = newParts.getOrNull(i)?.toIntOrNull() ?: 0
            val current = currentParts.getOrNull(i)?.toIntOrNull() ?: 0

            if (new > current) return true
            if (new < current) return false
        }

        return false
    }
}
