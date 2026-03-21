package com.rootguard.app.utils

import java.io.File
import java.util.zip.ZipFile

object ModuleUtils {
    
    /**
     * 解析 Magisk 模块 zip 文件，获取 module.prop 内容
     */
    fun parseModuleZip(zipFile: File): ModuleInfo? {
        return try {
            ZipFile(zipFile).use { zip ->
                val entry = zip.entries().asSequence()
                    .find { it.name == "module.prop" || it.name.endsWith("/module.prop") }
                
                entry?.let {
                    zip.getInputStream(it).bufferedReader().use { reader ->
                        val content = reader.readText()
                        parseModuleProp(content)
                    }
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to parse module zip", e)
            null
        }
    }
    
    /**
     * 解析 module.prop 内容
     */
    fun parseModuleProp(content: String): ModuleInfo {
        val props = content.lines()
            .filter { it.contains("=") && !it.startsWith("#") }
            .associate { 
                val parts = it.split("=", limit = 2)
                parts[0].trim() to (parts.getOrNull(1)?.trim() ?: "")
            }
        
        return ModuleInfo(
            id = props["id"] ?: "",
            name = props["name"] ?: "Unknown Module",
            version = props["version"] ?: "Unknown",
            versionCode = props["versionCode"]?.toIntOrNull() ?: 0,
            author = props["author"] ?: "Unknown",
            description = props["description"] ?: "",
            updateJson = props["updateJson"] ?: ""
        )
    }
    
    /**
     * 验证是否为有效的 Magisk 模块
     */
    fun isValidMagiskModule(zipFile: File): Boolean {
        return try {
            ZipFile(zipFile).use { zip ->
                zip.entries().asSequence().any { entry ->
                    entry.name == "module.prop" || entry.name.endsWith("/module.prop")
                }
            }
        } catch (e: Exception) {
            false
        }
    }
}

data class ModuleInfo(
    val id: String,
    val name: String,
    val version: String,
    val versionCode: Int,
    val author: String,
    val description: String,
    val updateJson: String
)