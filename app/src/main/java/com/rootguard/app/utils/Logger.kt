package com.rootguard.app.utils

import android.util.Log
import com.rootguard.app.data.magisk.LogLevel as MagiskLogLevel
import java.text.SimpleDateFormat
import java.util.*

object Logger {
    private const val TAG = "PandaSU"
    private val dateFormat = SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault())
    
    // 本地日志存储
    private val localLogs = mutableListOf<com.rootguard.app.data.magisk.MagiskLog>()
    private val MAX_LOGS = 500
    
    fun d(message: String) {
        Log.d(TAG, message)
        addLog(message, MagiskLogLevel.DEBUG)
    }
    
    fun i(message: String) {
        Log.i(TAG, message)
        addLog(message, MagiskLogLevel.INFO)
    }
    
    fun w(message: String) {
        Log.w(TAG, message)
        addLog(message, MagiskLogLevel.WARNING)
    }
    
    fun e(message: String, throwable: Throwable? = null) {
        Log.e(TAG, message, throwable)
        val fullMessage = if (throwable != null) {
            "$message\n${throwable.stackTraceToString()}"
        } else {
            message
        }
        addLog(fullMessage, MagiskLogLevel.ERROR)
    }
    
    private fun addLog(message: String, level: MagiskLogLevel) {
        synchronized(localLogs) {
            val log = com.rootguard.app.data.magisk.MagiskLog(
                id = System.currentTimeMillis().toString(),
                message = message,
                level = level,
                timestamp = dateFormat.format(Date())
            )
            localLogs.add(log)
            
            // 限制日志数量
            if (localLogs.size > MAX_LOGS) {
                localLogs.removeAt(0)
            }
        }
    }
    
    fun getLocalLogs(): List<com.rootguard.app.data.magisk.MagiskLog> {
        synchronized(localLogs) {
            return localLogs.toList()
        }
    }
    
    fun clearLocalLogs() {
        synchronized(localLogs) {
            localLogs.clear()
        }
    }
}