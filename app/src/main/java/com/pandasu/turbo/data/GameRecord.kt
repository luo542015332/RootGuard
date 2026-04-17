package com.pandasu.turbo.data

data class GameRecord(
    val id: Long = 0,
    val packageName: String,
    val gameName: String,
    val timestamp: Long = System.currentTimeMillis(),
    val durationMs: Long = 0,
    val avgFps: Float = 0f,
    val maxFps: Float = 0f,
    val minFps: Float = 0f,
    val avgTemp: Float = 0f,
    val maxTemp: Float = 0f,
    val turboEnabled: Boolean = false
)