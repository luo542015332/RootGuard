package com.pandasu.turbo.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.pandasu.turbo.GameManager
import com.pandasu.turbo.data.GameProfileStore

class GameEventReceiver : BroadcastReceiver() {

    companion object {
        private const val TAG = "GameEventReceiver"
        const val ACTION_GAME_STARTED = "com.pandasu.turbo.GAME_STARTED"
        const val ACTION_GAME_STOPPED = "com.pandasu.turbo.GAME_STOPPED"
        const val EXTRA_PACKAGE = "package"
    }

    override fun onReceive(ctx: Context, intent: Intent) {
        val pkg = intent.getStringExtra(EXTRA_PACKAGE) ?: return
        val gameManager = GameManager(ctx)
        val profileStore = GameProfileStore(ctx)
        val profile = profileStore.getProfile(pkg)

        when (intent.action) {
            ACTION_GAME_STARTED -> {
                Log.d(TAG, "游戏启动: $pkg")
                if (profile?.autoTurbo == true) {
                    gameManager.oneKeyTurbo()
                    Log.d(TAG, "自动开启 Turbo")
                }
                if (profile?.autoDnd == true) {
                    gameManager.setDoNotDisturb(true)
                    Log.d(TAG, "自动开启勿扰")
                }
                profile?.customBrightness?.takeIf { it >= 0 }?.let {
                    gameManager.setBrightness(it)
                }
            }
            ACTION_GAME_STOPPED -> {
                Log.d(TAG, "游戏退出: $pkg")
                if (profile?.autoDnd == true) {
                    gameManager.setDoNotDisturb(false)
                    Log.d(TAG, "关闭勿扰")
                }
            }
        }
    }
}