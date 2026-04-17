package com.pandasu.turbo

import android.content.Intent
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import android.widget.Toast

class TurboTileService : TileService() {

    private val gameManager: GameManager by lazy { GameManager(this) }

    override fun onTileAdded() {
        super.onTileAdded()
        updateTile()
    }

    override fun onStartListening() {
        super.onStartListening()
        updateTile()
    }

    override fun onClick() {
        super.onClick()

        if (gameManager.isTurboEnabled()) {
            gameManager.disableTurbo()
            Toast.makeText(this, "🐼 Turbo 已关闭", Toast.LENGTH_SHORT).show()
        } else {
            gameManager.oneKeyTurbo()
            Toast.makeText(this, "⚡ Turbo 已开启", Toast.LENGTH_SHORT).show()
        }

        updateTile()
    }

    private fun updateTile() {
        qsTile?.apply {
            state = if (gameManager.isTurboEnabled()) Tile.STATE_ACTIVE else Tile.STATE_INACTIVE
            label = if (gameManager.isTurboEnabled()) "⚡ Turbo ON" else "🐼 PandaTurbo"
            updateTile()
        }
    }
}