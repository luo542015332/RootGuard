package com.pandasu.turbo.util

import android.content.Context
import android.net.Uri
import android.util.Log
import com.pandasu.turbo.data.GameProfileStore
import java.io.BufferedReader
import java.io.InputStreamReader

object ImportExportUtil {

    private const val TAG = "ImportExport"

    fun exportRules(context: Context): String {
        val profileStore = GameProfileStore(context)
        return profileStore.exportAll()
    }

    fun exportToUri(context: Context, uri: Uri): Boolean {
        return try {
            val content = exportRules(context)
            context.contentResolver.openOutputStream(uri)?.use { os ->
                os.write(content.toByteArray(Charsets.UTF_8))
            }
            true
        } catch (e: Throwable) {
            Log.e(TAG, "导出失败: ${e.message}")
            false
        }
    }

    fun importFromUri(context: Context, uri: Uri): Int {
        return try {
            val content = context.contentResolver.openInputStream(uri)?.use { istream ->
                BufferedReader(InputStreamReader(istream)).readText()
            } ?: return 0
            GameProfileStore(context).importFrom(content)
        } catch (e: Throwable) {
            Log.e(TAG, "导入失败: ${e.message}")
            0
        }
    }

    fun exportRecordsAsCsv(context: Context): String {
        val dao = com.pandasu.turbo.data.GameRecordDao.getInstance(context)
        val records = dao.queryAll(500)
        val sb = StringBuilder()
        sb.append("ID,Package,Game,Date,Duration(min),AvgFPS,MaxFPS,MinFPS,AvgTemp,MaxTemp,Turbo\n")
        records.forEach { r ->
            val date = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault())
                .format(java.util.Date(r.timestamp))
            sb.append("${r.id},${r.packageName},${r.gameName},${date},${r.durationMs / 60000},${r.avgFps},${r.maxFps},${r.minFps},${r.avgTemp},${r.maxTemp},${if(r.turboEnabled) "Yes" else "No"}\n")
        }
        return sb.toString()
    }
}