package com.pandasu.turbo.util

import android.content.Context
import android.content.Intent
import android.net.Uri
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL
import java.nio.charset.StandardCharsets

/**
 * GitHub 自动更新管理器
 */
object UpdateManager {
    
    // GitHub 仓库信息
    private const val GITHUB_OWNER = "luo542015332"
    private const val GITHUB_REPO = "RootGuard"
    
    /**
     * 检测更新
     * 所有异常在内部捕获，返回 null 表示检测失败（网络问题/解析错误等）
     */
    suspend fun checkUpdate(context: Context): UpdateInfo? = withContext(Dispatchers.IO) {
        try {
            val currentVersion = try {
                context.packageManager.getPackageInfo(context.packageName, 0).versionName ?: "1.0"
            } catch (e: Exception) {
                "1.0"
            }
            
            val url = URL("https://api.github.com/repos/$GITHUB_OWNER/$GITHUB_REPO/releases/latest")
            val conn = url.openConnection() as HttpURLConnection
            conn.requestMethod = "GET"
            conn.setRequestProperty("Accept", "application/vnd.github+json")
            conn.connectTimeout = 10000
            conn.readTimeout = 10000
            
            val reader = BufferedReader(InputStreamReader(conn.inputStream, StandardCharsets.UTF_8))
            val response = reader.readText()
            reader.close()
            
            val json = JSONObject(response)
            
            // 获取 tag_name (版本号，如 v3.2.0)
            val tagName = json.optString("tag_name", "")
            val version = tagName.removePrefix("v")
            
            // 比较版本
            val hasNewVersion = version.isNotEmpty() && isNewerVersion(version, currentVersion)
            
            if (hasNewVersion) {
                // 获取 APK 下载链接
                val assets = json.optJSONArray("assets")
                var downloadUrl = ""
                
                if (assets != null) {
                    for (i in 0 until assets.length()) {
                        val asset = assets.optJSONObject(i)
                        if (asset != null) {
                            val name = asset.optString("name", "")
                            if (name.endsWith(".apk")) {
                                downloadUrl = asset.optString("browser_download_url", "")
                                break
                            }
                        }
                    }
                }
                
                // 如果没找到 APK，使用 release 页面
                if (downloadUrl.isEmpty()) {
                    downloadUrl = json.optString("html_url", "")
                }
                
                UpdateInfo(
                    hasNewVersion = true,
                    version = version,
                    versionCode = 0,
                    updateDescription = json.optString("body", ""),
                    downloadUrl = downloadUrl
                )
            } else {
                UpdateInfo(hasNewVersion = false)
            }
        } catch (e: Exception) {
            // 网络错误、超时、JSON 解析失败等全部吞掉，返回 null
            // 调用方根据 null 判断为检测失败，给出友好提示
            e.printStackTrace()
            null
        }
    }
    
    /**
     * 比较版本号
     */
    private fun isNewerVersion(newVersion: String, currentVersion: String): Boolean {
        val newParts = newVersion.split(".").mapNotNull { it.toIntOrNull() }
        val curParts = currentVersion.split(".").mapNotNull { it.toIntOrNull() }
        
        val maxLen = maxOf(newParts.size, curParts.size)
        
        for (i in 0 until maxLen) {
            val newPart = newParts.getOrElse(i) { 0 }
            val curPart = curParts.getOrElse(i) { 0 }
            
            if (newPart > curPart) return true
            if (newPart < curPart) return false
        }
        
        return false
    }
    
    /**
     * 下载并安装
     */
    fun downloadAndInstall(context: Context, downloadUrl: String) {
        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(downloadUrl))
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        context.startActivity(intent)
    }
}

/**
 * 更新信息
 */
data class UpdateInfo(
    val hasNewVersion: Boolean = false,
    val version: String = "",
    val versionCode: Int = 0,
    val updateDescription: String = "",
    val downloadUrl: String = "",
    val needForceUpdate: Boolean = false
)
