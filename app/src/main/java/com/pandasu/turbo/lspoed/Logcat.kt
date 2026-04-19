package com.pandasu.turbo.lspoed

import android.util.Log

private const val TAG = "PandaTurbo"

fun logI(tag: String, msg: String) {
    Log.i(TAG, "[$tag] $msg")
    TurboService.instance?.addLog("I [$tag] $msg\n")
}

fun logD(tag: String, msg: String) {
    Log.d(TAG, "[$tag] $msg")
    TurboService.instance?.addLog("D [$tag] $msg\n")
}

fun logW(tag: String, msg: String, e: Throwable? = null) {
    Log.w(TAG, "[$tag] $msg", e)
    TurboService.instance?.addLog("W [$tag] $msg${e?.let { " " + it.message } ?: ""}\n")
}

fun logE(tag: String, msg: String, e: Throwable? = null) {
    Log.e(TAG, "[$tag] $msg", e)
    TurboService.instance?.addLog("E [$tag] $msg${e?.let { " " + it.message } ?: ""}\n")
}
