package com.rootguard.app.data.model

import com.google.gson.annotations.SerializedName

/**
 * GitHub Release 信息
 */
data class ReleaseInfo(
    @SerializedName("tag_name")
    val tagName: String,

    @SerializedName("name")
    val name: String,

    @SerializedName("body")
    val body: String?,

    @SerializedName("html_url")
    val htmlUrl: String,

    @SerializedName("published_at")
    val publishedAt: String?,

    @SerializedName("assets")
    val assets: List<Asset>?
) {
    /**
     * 获取版本号
     */
    fun getVersionName(): String = tagName.removePrefix("v")

    /**
     * 获取 APK 下载链接
     */
    fun getApkDownloadUrl(): String? {
        return assets?.firstOrNull { it.name.endsWith(".apk") }?.browserDownloadUrl
    }

    /**
     * 获取 APK 文件大小
     */
    fun getApkSize(): Long {
        return assets?.firstOrNull { it.name.endsWith(".apk") }?.size ?: 0L
    }
}

/**
 * Release 资产
 */
data class Asset(
    @SerializedName("name")
    val name: String,

    @SerializedName("size")
    val size: Long,

    @SerializedName("browser_download_url")
    val browserDownloadUrl: String
)
