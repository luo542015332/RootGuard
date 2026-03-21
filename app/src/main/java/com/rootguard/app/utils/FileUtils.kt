package com.rootguard.app.utils

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import java.io.File
import java.io.FileOutputStream

object FileUtils {
    
    /**
     * 从 URI 获取文件名
     */
    fun getFileName(context: Context, uri: Uri): String? {
        var result: String? = null
        if (uri.scheme == "content") {
            context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val index = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    if (index >= 0) {
                        result = cursor.getString(index)
                    }
                }
            }
        }
        if (result == null) {
            result = uri.path
            val cut = result?.lastIndexOf('/')
            if (cut != -1) {
                result = result?.substring(cut!! + 1)
            }
        }
        return result
    }
    
    /**
     * 从 URI 获取文件大小
     */
    fun getFileSize(context: Context, uri: Uri): Long {
        var size: Long = 0
        if (uri.scheme == "content") {
            context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val index = cursor.getColumnIndex(OpenableColumns.SIZE)
                    if (index >= 0) {
                        size = cursor.getLong(index)
                    }
                }
            }
        }
        return size
    }
    
    /**
     * 将 URI 复制到指定文件
     */
    fun copyUriToFile(context: Context, uri: Uri, destFile: File): Boolean {
        return try {
            context.contentResolver.openInputStream(uri)?.use { input ->
                FileOutputStream(destFile).use { output ->
                    input.copyTo(output)
                }
            }
            true
        } catch (e: Exception) {
            Logger.e("Failed to copy URI to file", e)
            false
        }
    }
    
    /**
     * 格式化文件大小
     */
    fun formatFileSize(size: Long): String {
        if (size <= 0) return "0 B"
        val units = arrayOf("B", "KB", "MB", "GB", "TB")
        val digitGroups = (Math.log10(size.toDouble()) / Math.log10(1024.0)).toInt()
        return String.format("%.1f %s", size / Math.pow(1024.0, digitGroups.toDouble()), units[digitGroups])
    }
    
    /**
     * 获取文件扩展名
     */
    fun getExtension(fileName: String): String {
        val lastDot = fileName.lastIndexOf('.')
        return if (lastDot > 0) {
            fileName.substring(lastDot + 1).lowercase()
        } else {
            ""
        }
    }
    
    /**
     * 检查是否为有效的 Magisk 模块文件名
     */
    fun isValidModuleFileName(fileName: String): Boolean {
        val ext = getExtension(fileName)
        return ext == "zip"
    }
}