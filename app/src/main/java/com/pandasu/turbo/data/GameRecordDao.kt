package com.pandasu.turbo.data

import android.content.ContentValues
import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

class GameRecordDao private constructor(context: Context) {

    private val dbHelper = GameDatabaseHelper(context)

    fun insert(record: GameRecord): Long {
        val db = dbHelper.writableDatabase
        val cv = ContentValues().apply {
            put("packageName", record.packageName)
            put("gameName", record.gameName)
            put("timestamp", record.timestamp)
            put("durationMs", record.durationMs)
            put("avgFps", record.avgFps)
            put("maxFps", record.maxFps)
            put("minFps", record.minFps)
            put("avgTemp", record.avgTemp)
            put("maxTemp", record.maxTemp)
            put("turboEnabled", if (record.turboEnabled) 1 else 0)
        }
        return db.insert("game_records", null, cv)
    }

    fun queryAll(limit: Int = 100): List<GameRecord> {
        val db = dbHelper.readableDatabase
        val cursor = db.query("game_records", null, null, null, null, null, "timestamp DESC", limit.toString())
        return cursor.use { c -> generateSequence { if (c.moveToNext()) cursorToRecord(c) else null }.toList() }
    }

    fun queryByPackage(packageName: String, limit: Int = 50): List<GameRecord> {
        val db = dbHelper.readableDatabase
        val cursor = db.query("game_records", null, "packageName = ?", arrayOf(packageName), null, null, "timestamp DESC", limit.toString())
        return cursor.use { c -> generateSequence { if (c.moveToNext()) cursorToRecord(c) else null }.toList() }
    }

    fun deleteOld(daysOld: Int = 30): Int {
        val cutoff = System.currentTimeMillis() - daysOld * 86400000L
        val db = dbHelper.writableDatabase
        return db.delete("game_records", "timestamp < ?", arrayOf(cutoff.toString()))
    }

    fun getStats(packageName: String? = null): RecordStats {
        val db = dbHelper.readableDatabase
        val where = if (packageName != null) "WHERE packageName = ?" else ""
        val args = if (packageName != null) arrayOf(packageName) else null
        val cursor = db.rawQuery(
            "SELECT COUNT(*), AVG(avgFps), AVG(avgTemp) FROM game_records $where",
            args
        )
        return cursor.use { c ->
            if (c.moveToNext()) RecordStats(
                sessionCount = c.getInt(0),
                avgFps = c.getFloat(1),
                avgTemp = c.getFloat(2)
            ) else RecordStats()
        }
    }

    private fun cursorToRecord(c: Cursor): GameRecord {
        return GameRecord(
            id = c.getLong(c.getColumnIndexOrThrow("id")),
            packageName = c.getString(c.getColumnIndexOrThrow("packageName")),
            gameName = c.getString(c.getColumnIndexOrThrow("gameName")),
            timestamp = c.getLong(c.getColumnIndexOrThrow("timestamp")),
            durationMs = c.getLong(c.getColumnIndexOrThrow("durationMs")),
            avgFps = c.getFloat(c.getColumnIndexOrThrow("avgFps")),
            maxFps = c.getFloat(c.getColumnIndexOrThrow("maxFps")),
            minFps = c.getFloat(c.getColumnIndexOrThrow("minFps")),
            avgTemp = c.getFloat(c.getColumnIndexOrThrow("avgTemp")),
            maxTemp = c.getFloat(c.getColumnIndexOrThrow("maxTemp")),
            turboEnabled = c.getInt(c.getColumnIndexOrThrow("turboEnabled")) == 1
        )
    }

    companion object {
        @Volatile private var INSTANCE: GameRecordDao? = null
        fun getInstance(context: Context): GameRecordDao = INSTANCE ?: synchronized(this) {
            INSTANCE ?: GameRecordDao(context.applicationContext).also {
                INSTANCE = it
                // SQLiteOpenHelper 内部会延迟初始化，实际数据库连接在首次调用 getReadableDatabase/getWritableDatabase 时建立
                // SQLiteDatabase 本身是线程安全的（内部有锁），多线程并发读写是安全的
            }
        }
    }

    data class RecordStats(
        val sessionCount: Int = 0,
        val avgFps: Float = 0f,
        val avgTemp: Float = 0f
    )
}

class GameDatabaseHelper(context: Context) : SQLiteOpenHelper(context, "panda_turbo.db", null, 2) {
    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL("""
            CREATE TABLE game_records (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                packageName TEXT NOT NULL,
                gameName TEXT NOT NULL,
                timestamp INTEGER NOT NULL,
                durationMs INTEGER DEFAULT 0,
                avgFps REAL DEFAULT 0,
                maxFps REAL DEFAULT 0,
                minFps REAL DEFAULT 0,
                avgTemp REAL DEFAULT 0,
                maxTemp REAL DEFAULT 0,
                turboEnabled INTEGER DEFAULT 0
            )
        """.trimIndent())
        db.execSQL("CREATE INDEX idx_package ON game_records(packageName)")
        db.execSQL("CREATE INDEX idx_timestamp ON game_records(timestamp)")
    }

    override fun onUpgrade(db: SQLiteDatabase, old: Int, new: Int) {
        if (old < 2) {
            try { db.execSQL("ALTER TABLE game_records ADD COLUMN avgFps REAL DEFAULT 0") } catch (e: Throwable) { }
            try { db.execSQL("ALTER TABLE game_records ADD COLUMN avgTemp REAL DEFAULT 0") } catch (e: Throwable) { }
        }
    }
}