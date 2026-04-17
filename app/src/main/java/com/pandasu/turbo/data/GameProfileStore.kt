package com.pandasu.turbo.data

import android.content.Context
import android.content.SharedPreferences
import org.json.JSONArray
import org.json.JSONObject

class GameProfileStore(private val context: Context) {

    companion object {
        val GAME_PACKAGES = setOf(
            "com.tencent.tmgp.sgame",
            "com.tencent.ig",
            "com.miHoYo.Yuanshen",
            "com.netease.lztgglobal",
            "com.riotgames.league.wildrift",
            "com.dts.freefireth",
            "com.supercell.clashofclans",
            "com.supercell.brawlstars",
            "com.activision.callofduty.shooter",
            "com.ea.gp.apexlegendsmobilefps",
        )
    }

    private val prefs: SharedPreferences by lazy {
        context.getSharedPreferences("game_profiles", Context.MODE_PRIVATE)
    }

    // 缓存 allProfiles，避免每次 getter 重新解析所有 JSON
    private var _allProfilesCache: List<GameProfile>? = null

    val allProfiles: List<GameProfile>
        get() {
            if (_allProfilesCache == null) {
                _allProfilesCache = prefs.all.keys.mapNotNull { key ->
                    try { getProfile(key) } catch (e: Throwable) { null }
                }
            }
            return _allProfilesCache!!
        }

    fun invalidateCache() {
        _allProfilesCache = null
    }

    fun getProfile(packageName: String): GameProfile? {
        val json = prefs.getString(packageName, null) ?: return null
        return try {
            val o = JSONObject(json)
            GameProfile(
                packageName = o.getString("packageName"),
                displayName = o.optString("displayName", packageName),
                customBrightness = o.optInt("customBrightness", -1),
                customVolume = o.optInt("customVolume", -1),
                autoTurbo = o.optBoolean("autoTurbo", true),
                autoDnd = o.optBoolean("autoDnd", true),
                performanceMode = o.optString("performanceMode", "PERFORMANCE")
            )
        } catch (e: Throwable) { null }
    }

    fun saveProfile(profile: GameProfile): Boolean {
        return try {
            val o = JSONObject().apply {
                put("packageName", profile.packageName)
                put("displayName", profile.displayName)
                put("customBrightness", profile.customBrightness)
                put("customVolume", profile.customVolume)
                put("autoTurbo", profile.autoTurbo)
                put("autoDnd", profile.autoDnd)
                put("performanceMode", profile.performanceMode)
            }
            prefs.edit().putString(profile.packageName, o.toString()).commit()
            invalidateCache()
            true
        } catch (e: Exception) {
            e.printStackTrace()
            false
        }
    }

    fun removeProfile(packageName: String) {
        prefs.edit().remove(packageName).apply()
        invalidateCache()
    }

    fun exportAll(): String {
        val arr = JSONArray()
        prefs.all.forEach { (pkg, _) ->
            getProfile(pkg)?.let { p ->
                arr.put(JSONObject().apply {
                    put("packageName", p.packageName)
                    put("displayName", p.displayName)
                    put("customBrightness", p.customBrightness)
                    put("customVolume", p.customVolume)
                    put("autoTurbo", p.autoTurbo)
                    put("autoDnd", p.autoDnd)
                    put("performanceMode", p.performanceMode)
                })
            }
        }
        return arr.toString(2)
    }

    fun importFrom(json: String): Int {
        return try {
            val arr = JSONArray(json)
            var count = 0
            for (i in 0 until arr.length()) {
                val o = arr.getJSONObject(i)
                val profile = GameProfile(
                    packageName = o.getString("packageName"),
                    displayName = o.optString("displayName", o.getString("packageName")),
                    customBrightness = o.optInt("customBrightness", -1),
                    customVolume = o.optInt("customVolume", -1),
                    autoTurbo = o.optBoolean("autoTurbo", true),
                    autoDnd = o.optBoolean("autoDnd", true),
                    performanceMode = o.optString("performanceMode", "PERFORMANCE")
                )
                saveProfile(profile); count++
            }
            count
        } catch (e: Throwable) { 0 }
    }
}