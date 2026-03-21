package com.rootguard.app.data.api

import com.rootguard.app.data.model.ReleaseInfo
import retrofit2.http.GET

/**
 * GitHub API 接口
 */
interface GitHubApi {
    /**
     * 获取最新 Release 信息
     */
    @GET("repos/luo542015332/RootGuard/releases/latest")
    suspend fun getLatestRelease(): ReleaseInfo
}
