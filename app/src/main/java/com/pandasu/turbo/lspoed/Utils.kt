package com.pandasu.turbo.lspoed

import android.content.pm.ApplicationInfo
import android.content.pm.IPackageManager
import android.content.pm.PackageInfo
import android.os.Binder
import android.os.Build
import java.io.File

object Utils {

    fun generateRandomString(length: Int): String {
        val leftLimit = 97
        val rightLimit = 122
        val buffer = StringBuilder(length)
        for (i in 0 until length) {
            val randomLimitedInt = leftLimit + (kotlin.random.Random.nextFloat() * (rightLimit - leftLimit + 1)).toInt()
            buffer.append(randomLimitedInt.toChar())
        }
        return buffer.toString()
    }

    /**
     * 签名验证 - PandaTurbo 是自己的项目，不需要验证签名
     * HMA 用 Magic.magicNumbers 验证自己的签名，我们跳过此步骤
     */
    fun verifyAppSignature(path: String): Boolean {
        return File(path).exists()
    }

    fun <T> binderLocalScope(block: () -> T): T {
        val identity = Binder.clearCallingIdentity()
        val result = block()
        Binder.restoreCallingIdentity(identity)
        return result
    }

    /**
     * 反射获取 PackageSettings.name 字段（包名）
     * SDK 33+ 字段名是 mName，SDK 32- 是 name
     */
    fun getPackageNameFromPackageSettings(packageSettings: Any): String? {
        val fieldName = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) "mName" else "name"
        return runCatching {
            packageSettings.javaClass.getDeclaredField(fieldName).apply { setAccessible(true) }.get(packageSettings) as? String
        }.getOrNull()
    }

    fun getInstalledApplicationsCompat(pms: IPackageManager, flags: Long, userId: Int): List<ApplicationInfo> {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            pms.getInstalledApplications(flags, userId)
        } else {
            @Suppress("DEPRECATION")
            pms.getInstalledApplications(flags.toInt(), userId)
        }.list
    }

    fun getPackageUidCompat(pms: IPackageManager, packageName: String, flags: Long, userId: Int): Int {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            pms.getPackageUid(packageName, flags, userId)
        } else {
            @Suppress("DEPRECATION")
            pms.getPackageUid(packageName, flags.toInt(), userId)
        }
    }

    fun getPackageInfoCompat(pms: IPackageManager, packageName: String, flags: Long, userId: Int): PackageInfo {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            pms.getPackageInfo(packageName, flags, userId)
        } else {
            @Suppress("DEPRECATION")
            pms.getPackageInfo(packageName, flags.toInt(), userId)
        }
    }

    /**
     * 原生反射查找方法，等价于 EzXHelper findMethod
     */
    fun findMethod(clazz: Class<*>, name: String, vararg paramTypes: Class<*>): java.lang.reflect.Method {
        return clazz.getDeclaredMethod(name, *paramTypes)
    }

    /**
     * 原生反射查找方法，失败返回 null
     */
    fun findMethodOrNull(clazz: Class<*>, name: String, vararg paramTypes: Class<*>): java.lang.reflect.Method? {
        return runCatching { clazz.getDeclaredMethod(name, *paramTypes) }.getOrNull()
    }
}
