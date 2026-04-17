package com.pandasu.turbo.userservice

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.os.RemoteException
import android.util.Log
import com.pandasu.turbo.IRemoteProcess
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * Shizuku UserService implementation for executing shell commands.
 * This service runs with ADB/shell privileges via Shizuku.
 *
 * Manifest 声明：
 *   <service
 *     android:name=".userservice.RemoteProcessService"
 *     android:exported="false"
 *     android:permission="rikka.shizuku.SHIZUKU_SERVICE" />
 */
class RemoteProcessService : Service() {

    private val binder = object : IRemoteProcess.Stub() {
        override fun execute(command: String): String {
            Log.d(TAG, "Executing: $command")
            try {
                val process = Runtime.getRuntime().exec(arrayOf("sh", "-c", command))
                val stdout = process.inputStream.bufferedReader().readText()
                val stderr = process.errorStream.bufferedReader().readText()
                val exitCode = process.waitFor()
                return "$exitCode|$stdout|$stderr"
            } catch (e: Exception) {
                Log.e(TAG, "Execute failed: ${e.message}")
                return "-1||${e.message}"
            }
        }

        override fun destroy() {
            Log.d(TAG, "RemoteProcessService destroy called")
            stopSelf()
        }
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onCreate() {
        super.onCreate()
        Log.d(TAG, "RemoteProcessService created")
    }

    override fun onDestroy() {
        super.onDestroy()
        Log.d(TAG, "RemoteProcessService destroyed")
    }

    companion object {
        private const val TAG = "RemoteProcessService"
    }
}
