package com.pandasu.turbo.data

import android.content.Context
import android.content.SharedPreferences

class PreferencesManager(context: Context) {

    private val prefs: SharedPreferences = context.getSharedPreferences("panda_turbo_prefs2", Context.MODE_PRIVATE)

    var autoDndEnabled: Boolean
        get() = prefs.getBoolean("auto_dnd", false)
        set(v) = prefs.edit().putBoolean("auto_dnd", v).apply()

    var autoCleanEnabled: Boolean
        get() = prefs.getBoolean("auto_clean", true)
        set(v) = prefs.edit().putBoolean("auto_clean", v).apply()

    var autoTurboEnabled: Boolean
        get() = prefs.getBoolean("auto_turbo", true)
        set(v) = prefs.edit().putBoolean("auto_turbo", v).apply()

    var currentGamePackage: String?
        get() = prefs.getString("current_game", null)
        set(v) = prefs.edit().putString("current_game", v).apply()

    var language: String
        get() = prefs.getString("language", "auto") ?: "auto"
        set(v) = prefs.edit().putString("language", v).apply()
}