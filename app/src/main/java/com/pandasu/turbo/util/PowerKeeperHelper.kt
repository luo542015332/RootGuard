package com.pandasu.turbo.util

import android.content.ContentValues
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.util.Log
import java.io.File

/**
 * MIUI / HyperOS PowerKeeper 温控引擎
 *
 * 通过修改 com.miui.powerkeeper 数据库中的温控参数实现多档位切换。
 * 不依赖 sqlite3 命令行工具（优先方案），使用 Android 内置 SQLite API。
 */
object PowerKeeperHelper {

    private const val TAG = "PowerKeeperHelper"
    private const val PK_PKG = "com.miui.powerkeeper"
    private const val PK_DB_DIR = "/data/user/0/$PK_PKG/databases"
    private const val SQL_TMP = "/data/local/tmp/pk_thermal.sql"

    private val ALL_KEYS = setOf(
        "enable", "key_thermal_enable", "exit_foreground_app_enable",
        "kill_some_back_pro_enable", "kill_all_back_pro_enable",
        "xo_temp_threshold", "xo_temp_thresholdclr",
        "allowed_kill_some_back_pro_battery_temp_threshold",
        "allowed_kill_all_back_pro_battery_temp_threshold",
        "allowed_show_dialog_temp_threshhold",
        "allowed_show_benchmark_dialog_temp_threshhold",
        "allowed_kill_battery_temp_threshhold",
        "key_temp_threshold", "key_temp_threshold_xo_thermal",
        "key_temp_threshold_bl_thermal", "txpower",
        "thermal_IECtest_config_enable", "thermal_sptm_config_enable"
    )

    enum class ThermalMode(
        val label: String,
        val desc: String,
        val icon: String,
        val color: Int,
        val warning: String?,
        val params: Map<String, String>
    ) {
        DEFAULT("默认", "恢复 MIUI 原始温控", "🔧", 0xFF607D8B.toInt(), null, emptyMap()),
        COOL("清爽酷凉", "较早降频，保护硬件", "❄️", 0xFF42A5F5.toInt(), null, mapOf(
            "enable" to "false", "key_thermal_enable" to "false",
            "exit_foreground_app_enable" to "false",
            "kill_some_back_pro_enable" to "false", "kill_all_back_pro_enable" to "false",
            "xo_temp_threshold" to "68", "xo_temp_thresholdclr" to "55",
            "allowed_kill_some_back_pro_battery_temp_threshold" to "42",
            "allowed_kill_all_back_pro_battery_temp_threshold" to "45",
            "allowed_show_dialog_temp_threshhold" to "42",
            "allowed_show_benchmark_dialog_temp_threshhold" to "40",
            "allowed_kill_battery_temp_threshhold" to "45",
            "key_temp_threshold" to "50", "key_temp_threshold_xo_thermal" to "55",
            "key_temp_threshold_bl_thermal" to "68",
            "txpower" to "false",
            "thermal_IECtest_config_enable" to "false",
            "thermal_sptm_config_enable" to "false"
        )),
        PERFORMANCE("性能优先", "推迟降频，适合游戏", "🚀", 0xFFFFA726.toInt(), null, mapOf(
            "enable" to "false", "key_thermal_enable" to "false",
            "exit_foreground_app_enable" to "false",
            "kill_some_back_pro_enable" to "false", "kill_all_back_pro_enable" to "false",
            "xo_temp_threshold" to "80", "xo_temp_thresholdclr" to "68",
            "allowed_kill_some_back_pro_battery_temp_threshold" to "53",
            "allowed_kill_all_back_pro_battery_temp_threshold" to "55",
            "allowed_show_dialog_temp_threshhold" to "53",
            "allowed_show_benchmark_dialog_temp_threshhold" to "50",
            "allowed_kill_battery_temp_threshhold" to "55",
            "key_temp_threshold" to "60", "key_temp_threshold_xo_thermal" to "68",
            "key_temp_threshold_bl_thermal" to "80",
            "txpower" to "false",
            "thermal_IECtest_config_enable" to "false",
            "thermal_sptm_config_enable" to "false"
        )),
        EXTREME("极致性能", "几乎不降频，高温持续输出", "🔥", 0xFFFF5722.toInt(),
            "高温可能缩短硬件寿命", mapOf(
            "enable" to "false", "key_thermal_enable" to "false",
            "exit_foreground_app_enable" to "false",
            "kill_some_back_pro_enable" to "false", "kill_all_back_pro_enable" to "false",
            "xo_temp_threshold" to "95", "xo_temp_thresholdclr" to "85",
            "allowed_kill_some_back_pro_battery_temp_threshold" to "60",
            "allowed_kill_all_back_pro_battery_temp_threshold" to "65",
            "allowed_show_dialog_temp_threshhold" to "60",
            "allowed_show_benchmark_dialog_temp_threshhold" to "55",
            "allowed_kill_battery_temp_threshhold" to "65",
            "key_temp_threshold" to "85", "key_temp_threshold_xo_thermal" to "85",
            "key_temp_threshold_bl_thermal" to "95",
            "txpower" to "false",
            "thermal_IECtest_config_enable" to "false",
            "thermal_sptm_config_enable" to "false"
        )),
        DANGEROUS("丧心病狂", "完全禁用温控，无任何保护", "💀", 0xFFD32F2F.toInt(),
            "⚠️ 极高温度可能永久损坏硬件！", mapOf(
            "enable" to "false", "key_thermal_enable" to "false",
            "exit_foreground_app_enable" to "false",
            "kill_some_back_pro_enable" to "false", "kill_all_back_pro_enable" to "false",
            "xo_temp_threshold" to "999", "xo_temp_thresholdclr" to "999",
            "allowed_kill_some_back_pro_battery_temp_threshold" to "999",
            "allowed_kill_all_back_pro_battery_temp_threshold" to "999",
            "allowed_show_dialog_temp_threshhold" to "999",
            "allowed_show_benchmark_dialog_temp_threshhold" to "999",
            "allowed_kill_battery_temp_threshhold" to "999",
            "key_temp_threshold" to "999", "key_temp_threshold_xo_thermal" to "999",
            "key_temp_threshold_bl_thermal" to "999",
            "txpower" to "false",
            "thermal_IECtest_config_enable" to "false",
            "thermal_sptm_config_enable" to "false"
        ))
    }

    data class ApplyResult(val ok: Boolean, val msg: String, val mode: ThermalMode? = null)

    fun isSupported(): Boolean {
        val isMiui = try {
            val p = Runtime.getRuntime().exec(arrayOf("getprop", "ro.miui.ui.version.name"))
            val out = p.inputStream.bufferedReader().readText().trim()
            p.waitFor()
            Log.d(TAG, "isSupported: miui version = $out")
            out.isNotEmpty()
        } catch (e: Exception) {
            Log.e(TAG, "isSupported: getprop failed", e)
            false
        }
        if (!isMiui) {
            Log.w(TAG, "isSupported: not MIUI")
            return false
        }
        val (code, output) = suExec("ls '$PK_DB_DIR'")
        Log.d(TAG, "isSupported: ls $PK_DB_DIR -> code=$code, output=$output")
        val supported = code == 0
        Log.d(TAG, "isSupported: returning $supported")
        return supported
    }

    fun discoverDatabase(): String? {
        val (code, output) = suExec("ls '$PK_DB_DIR/'")
        if (code != 0 || output.isBlank()) return null
        return output.lines()
            .map { it.trim() }
            .filter { it.endsWith(".db") && !it.endsWith("-journal") && !it.endsWith("-wal") && !it.endsWith("-shm") }
            .firstOrNull { it.contains("powerkeeper", ignoreCase = true) || it.contains("thermal", ignoreCase = true) }
            ?: output.lines().map { it.trim() }.firstOrNull { it.endsWith(".db") }
    }

    fun detectCurrentMode(): ThermalMode? {
        val dbName = discoverDatabase() ?: return null
        val dbPath = "$PK_DB_DIR/$dbName"
        val (code, output) = suExec("sqlite3 '$dbPath' \"SELECT value FROM misc WHERE name='xo_temp_threshold'\" 2>/dev/null")
        if (code != 0 || output.isBlank()) return null
        val threshold = output.trim().toIntOrNull() ?: return null
        return when {
            threshold >= 999 -> ThermalMode.DANGEROUS
            threshold >= 90  -> ThermalMode.EXTREME
            threshold >= 75  -> ThermalMode.PERFORMANCE
            threshold >= 60  -> ThermalMode.COOL
            else             -> ThermalMode.DEFAULT
        }
    }

    fun applyMode(context: Context, mode: ThermalMode, callback: (ApplyResult) -> Unit) {
        Thread {
            val result = applyModeInternal(context, mode)
            android.os.Handler(android.os.Looper.getMainLooper()).post { callback(result) }
        }.start()
    }

    private fun applyModeInternal(context: Context, mode: ThermalMode): ApplyResult {
        Log.d(TAG, "applyModeInternal: mode=$mode")
        if (!isSupported()) {
            Log.w(TAG, "isSupported() returned false")
            return ApplyResult(false, "当前设备不支持（非 MIUI/HyperOS）")
        }

        Log.d(TAG, "force-stop $PK_PKG")
        suExec("am force-stop $PK_PKG")
        Thread.sleep(500)

        val dbName = discoverDatabase()
        Log.d(TAG, "discoverDatabase: $dbName")

        if (dbName != null) {
            Log.d(TAG, "trying sqlite3 method...")
            val r = trySqlite3(mode, dbName)
            Log.d(TAG, "trySqlite3 result: ok=${r.ok}, msg=${r.msg}")
            if (r.ok) return r
        }

        Log.d(TAG, "falling back to copy method...")
        return if (dbName != null) applyModeCopy(context, mode, dbName) else applyModeCreate(context, mode)
    }

    private fun trySqlite3(mode: ThermalMode, dbName: String): ApplyResult {
        val dbPath = "$PK_DB_DIR/$dbName"
        Log.d(TAG, "trySqlite3: dbPath=$dbPath")
        val (whichCode, whichOut) = suExec("which sqlite3 2>/dev/null || ls /system/bin/sqlite3 /system/xbin/sqlite3 2>/dev/null")
        Log.d(TAG, "sqlite3 check: code=$whichCode, output=$whichOut")
        if (whichCode != 0) return ApplyResult(false, "sqlite3 不可用")

        val sql = if (mode == ThermalMode.DEFAULT) {
            ALL_KEYS.joinToString("; ") { "DELETE FROM misc WHERE name='$it'" }
        } else {
            mode.params.map { (k, v) -> "INSERT OR REPLACE INTO misc (name, value) VALUES ('$k', '$v')" }.joinToString("; ")
        }

        val cmd = "cat > '$SQL_TMP' << 'SQLEOF'\n$sql\nSQLEOF\nsqlite3 '$dbPath' < '$SQL_TMP'\nrm -f '$SQL_TMP'"
        val (code, err) = suExec(cmd)
        if (code != 0) return ApplyResult(false, "数据库写入失败: $err")

        manageServices(mode)
        suExec("am force-stop $PK_PKG")
        return ApplyResult(true, "${mode.icon} ${mode.label}模式已应用", mode)
    }

    private fun applyModeCopy(context: Context, mode: ThermalMode, dbName: String): ApplyResult {
        val dbPath = "$PK_DB_DIR/$dbName"
        val tempDbName = "pk_copy_temp"
        val tempFile = context.getDatabasePath(tempDbName)
        Log.d(TAG, "applyModeCopy: dbPath=$dbPath, tempFile=$tempFile")

        return try {
            val (cpCode, cpErr) = suExec("cp -f '$dbPath' '${tempFile.absolutePath}' && chmod 666 '${tempFile.absolutePath}'")
            Log.d(TAG, "copy db: code=$cpCode, err=$cpErr")
            if (cpCode != 0) return ApplyResult(false, "复制数据库失败: $cpErr")

            val db = SQLiteDatabase.openDatabase(tempFile.absolutePath, null, SQLiteDatabase.OPEN_READWRITE)
            Log.d(TAG, "database opened, version=${db.version}")

            // 检查表结构
            val cursor = db.rawQuery("SELECT name FROM sqlite_master WHERE type='table'", null)
            val tables = mutableListOf<String>()
            while (cursor.moveToNext()) { tables.add(cursor.getString(0)) }
            cursor.close()
            Log.d(TAG, "tables in db: $tables")

            db.execSQL("CREATE TABLE IF NOT EXISTS misc (name TEXT PRIMARY KEY, value TEXT)")

            if (mode == ThermalMode.DEFAULT) {
                ALL_KEYS.forEach { db.delete("misc", "name = ?", arrayOf(it)) }
                Log.d(TAG, "DEFAULT mode: deleted ${ALL_KEYS.size} keys")
            } else {
                var inserted = 0
                for ((k, v) in mode.params) {
                    val cv = ContentValues().apply { put("name", k); put("value", v) }
                    db.insertWithOnConflict("misc", null, cv, SQLiteDatabase.CONFLICT_REPLACE)
                    inserted++
                }
                Log.d(TAG, "${mode.name} mode: inserted $inserted params")
            }
            db.close()
            Log.d(TAG, "database closed")

            val (code, err) = suExec("cp -f '${tempFile.absolutePath}' '$dbPath' && chmod 0660 '$dbPath' && chown system:system '$dbPath'")
            Log.d(TAG, "write back: code=$code, err=$err")
            context.deleteDatabase(tempDbName)

            if (code != 0) return ApplyResult(false, "写回数据库失败: $err")
            manageServices(mode)
            suExec("am force-stop $PK_PKG")
            Log.d(TAG, "applyModeCopy SUCCESS: ${mode.label}")
            ApplyResult(true, "${mode.icon} ${mode.label}模式已应用", mode)
        } catch (e: Exception) {
            Log.e(TAG, "applyModeCopy failed", e)
            context.deleteDatabase(tempDbName)
            ApplyResult(false, "操作异常: ${e.message}")
        }
    }

    private fun applyModeCreate(context: Context, mode: ThermalMode): ApplyResult {
        if (mode == ThermalMode.DEFAULT) {
            suExec("am force-stop $PK_PKG")
            return ApplyResult(true, "已恢复默认", ThermalMode.DEFAULT)
        }
        val tempDbName = "pk_create_temp"
        return try {
            val db = context.openOrCreateDatabase(tempDbName, Context.MODE_PRIVATE, null)
            db.execSQL("CREATE TABLE IF NOT EXISTS misc (name TEXT PRIMARY KEY, value TEXT)")
            for ((k, v) in mode.params) {
                val cv = ContentValues().apply { put("name", k); put("value", v) }
                db.insertWithOnConflict("misc", null, cv, SQLiteDatabase.CONFLICT_REPLACE)
            }
            db.close()

            suExec("mkdir -p '$PK_DB_DIR'")
            val tempPath = context.getDatabasePath(tempDbName).absolutePath
            val targetPath = "$PK_DB_DIR/powerkeeper.db"
            val (code, err) = suExec("cp -f '$tempPath' '$targetPath' && chmod 0660 '$targetPath' && chown system:system '$targetPath'")
            context.deleteDatabase(tempDbName)

            if (code != 0) return ApplyResult(false, "创建数据库失败: $err")
            manageServices(mode)
            suExec("am force-stop $PK_PKG")
            ApplyResult(true, "${mode.icon} ${mode.label}模式已应用", mode)
        } catch (e: Exception) {
            Log.e(TAG, "applyModeCreate failed", e)
            context.deleteDatabase(tempDbName)
            ApplyResult(false, "操作异常: ${e.message}")
        }
    }

    private fun manageServices(mode: ThermalMode) {
        when (mode) {
            ThermalMode.EXTREME, ThermalMode.DANGEROUS -> {
                // 禁用温控：设置系统属性 + 停止服务
                suExec("setprop persist.sys.thermal.disable 1")
                suExec("setprop persist.thermal.mode disabled")
                suExec("stop mi_thermald; stop thermal-engine")
                // 尝试停止 thermal-hal（可能需要重启生效）
                suExec("stop vendor.thermal-hal")
                Log.d(TAG, "thermal disabled: setprop + stop services")
            }
            ThermalMode.DEFAULT, ThermalMode.COOL -> {
                // 恢复温控
                suExec("setprop persist.sys.thermal.disable 0")
                suExec("setprop persist.thermal.mode ''")
                suExec("start mi_thermald; start thermal-engine")
                suExec("start vendor.thermal-hal")
                Log.d(TAG, "thermal enabled: setprop + start services")
            }
            else -> {}
        }
    }

    private fun suExec(command: String): Pair<Int, String> {
        return try {
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs(command))
            val stdout = p.inputStream.bufferedReader().readText()
            val stderr = p.errorStream.bufferedReader().readText()
            val exit = p.waitFor()
            Pair(exit, (stdout + if (stderr.isNotBlank()) "\n$stderr" else "").trim())
        } catch (e: Exception) {
            Pair(-1, e.message ?: "exec failed")
        }
    }
}
