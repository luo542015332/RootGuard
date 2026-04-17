package com.pandasu.turbo.util

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.wifi.WifiManager
import android.os.Build
import kotlinx.coroutines.*
import java.net.Inet4Address
import java.net.InetAddress
import java.net.NetworkInterface
import java.net.URL
import java.text.DecimalFormat

/**
 * 网络工具
 */
object NetworkUtil {

    data class WifiInfo(
        val ssid: String,
        val bssid: String,
        val rssi: Int,
        val linkSpeed: Int,
        val frequency: Int,
        val ipAddress: String,
        val macAddress: String,
        val channel: Int
    ) {
        val signalLevel: String get() = when {
            rssi >= -50 -> "极强"
            rssi >= -60 -> "强"
            rssi >= -70 -> "中"
            rssi >= -80 -> "弱"
            else -> "极弱"
        }
        val frequencyBand: String get() = if (frequency > 4000) "5 GHz" else "2.4 GHz"
        val channelStr: String get() = channel.toString()
    }

    data class NetworkInfo(
        val type: String,
        val isConnected: Boolean,
        val localIp: String?,
        val publicIp: String?,
        val dns1: String?,
        val dns2: String?
    )

    // 获取 WiFi 详情
    @Suppress("DEPRECATION")
    fun getWifiInfo(context: Context): WifiInfo? {
        val wm = context.applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
        val info = wm.connectionInfo ?: return null

        val ssid = info.ssid?.removeSurrounding("\"") ?: "Unknown"
        val freq = info.frequency
        val channel = when {
            freq in 2412..2484 -> (freq - 2412) / 5 + 1
            freq in 5170..5825 -> (freq - 5170) / 5 + 34
            else -> 0
        }

        val ipInt = info.ipAddress
        val ipStr = String.format(
            "%d.%d.%d.%d",
            ipInt and 0xff, ipInt shr 8 and 0xff,
            ipInt shr 16 and 0xff, ipInt shr 24 and 0xff
        )

        return WifiInfo(
            ssid = ssid,
            bssid = info.bssid ?: "N/A",
            rssi = info.rssi,
            linkSpeed = info.linkSpeed,
            frequency = freq,
            ipAddress = ipStr,
            macAddress = info.macAddress ?: "N/A",
            channel = channel
        )
    }

    // 获取本机 IP（所有网卡）
    fun getLocalIpAddresses(): Map<String, String> {
        val result = mutableMapOf<String, String>()
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val iface = interfaces.nextElement()
                if (iface.isLoopback || !iface.isUp) continue
                val addrs = iface.inetAddresses
                while (addrs.hasMoreElements()) {
                    val addr = addrs.nextElement()
                    if (addr is Inet4Address) {
                        result[iface.name] = addr.hostAddress ?: continue
                    }
                }
            }
        } catch (e: Exception) { }
        return result
    }

    // 获取 DNS（通过 getprop）
    fun getDnsInfo(callback: (String?, String?) -> Unit) {
        ShizukuHelper.execCommand(
            "getprop net.dns1; getprop net.dns2",
            callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    val lines = stdout.trim().split("\n")
                    callback(lines.getOrNull(0)?.trim(), lines.getOrNull(1)?.trim())
                }
                override fun onError(msg: String) { callback(null, null) }
            }
        )
    }

    // 获取公网 IP（异步）
    fun getPublicIp(callback: (String?) -> Unit) {
        CoroutineScope(Dispatchers.IO).launch {
            val ip = try {
                URL("https://api.ipify.org").readText(Charsets.UTF_8).trim()
            } catch (e: Exception) {
                try {
                    URL("https://ifconfig.me/ip").readText(Charsets.UTF_8).trim()
                } catch (e2: Exception) { null }
            }
            withContext(Dispatchers.Main) { callback(ip) }
        }
    }

    // 5G 开关（需要 Shizuku）
    fun set5gEnabled(enabled: Boolean, callback: (Boolean) -> Unit) {
        // Android 12+ 可以用 settings put global preferred_network_mode
        val mode = if (enabled) "38" else "9"  // 38=NR+LTE, 9=LTE only
        ShizukuHelper.execCommand(
            "settings put global preferred_network_mode $mode",
            callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    callback(exitCode == 0)
                }
                override fun onError(msg: String) { callback(false) }
            }
        )
    }

    // 隐藏通知图标（状态栏）
    fun hideNotificationIcon(packageName: String, callback: (Boolean) -> Unit) {
        ShizukuHelper.execCommand(
            "cmd notification allow_listener $packageName 2>/dev/null || " +
            "settings put secure enabled_notification_listeners '' 2>/dev/null || true",
            callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) { callback(true) }
                override fun onError(msg: String) { callback(false) }
            }
        )
    }

    // 网络测速（简单 ping 延迟测试）
    fun pingTest(host: String = "8.8.8.8", count: Int = 4, callback: (String) -> Unit) {
        ShizukuHelper.execCommand(
            "ping -c $count -W 2 $host",
            callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    callback(stdout.ifEmpty { stderr })
                }
                override fun onError(msg: String) { callback("Ping 失败: $msg") }
            }
        )
    }

    // 下载速度测试（简单版）
    fun speedTest(callback: (String) -> Unit) {
        CoroutineScope(Dispatchers.IO).launch {
            val result = try {
                val url = URL("https://speed.cloudflare.com/__down?bytes=1000000")
                val startTime = System.currentTimeMillis()
                val bytes = url.openStream().use { it.readBytes() }
                val elapsed = System.currentTimeMillis() - startTime
                val speedMbps = (bytes.size * 8.0 / elapsed / 1000).let {
                    DecimalFormat("#.##").format(it)
                }
                "下载速度: $speedMbps Mbps (${bytes.size / 1024} KB in ${elapsed}ms)"
            } catch (e: Exception) {
                "测速失败: ${e.message}"
            }
            withContext(Dispatchers.Main) { callback(result) }
        }
    }

    // 获取网络连接类型
    fun getConnectionType(context: Context): String {
        val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val network = cm.activeNetwork ?: return "无网络"
        val caps = cm.getNetworkCapabilities(network) ?: return "未知"
        return when {
            caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) -> "WiFi"
            caps.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR) -> "移动数据"
            caps.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET) -> "以太网"
            else -> "其他"
        }
    }
}
