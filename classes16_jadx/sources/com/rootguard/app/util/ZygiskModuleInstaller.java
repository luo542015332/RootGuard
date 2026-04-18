package com.rootguard.app.util;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: ZygiskModuleInstaller.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\rH\u0002J\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\"\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\rJ\u0006\u0010\u0010\u001a\u00020\u0007J\u001a\u0010\u0011\u001a\u00020\u00072\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/rootguard/app/util/ZygiskModuleInstaller;", "", "()V", "MODULE_DIR", "", "TAG", "copyAssetFile", "", "context", "Landroid/content/Context;", "assetPath", "destPath", "rootExecutor", "Lkotlin/Function1;", "getModuleVersion", "installModule", "isModuleInstalled", "uninstallModule", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class ZygiskModuleInstaller {
    public static final int $stable = 0;
    public static final ZygiskModuleInstaller INSTANCE = new ZygiskModuleInstaller();
    private static final String MODULE_DIR = "/data/adb/modules/zygisk_pandasu";
    private static final String TAG = "PandaSU-ZygiskInstaller";

    private ZygiskModuleInstaller() {
    }

    public final boolean isModuleInstalled() {
        return new File(MODULE_DIR).exists();
    }

    public final String getModuleVersion() {
        Object element$iv;
        File propFile = new File("/data/adb/modules/zygisk_pandasu/module.prop");
        if (!propFile.exists()) {
            return null;
        }
        try {
            Iterable $this$firstOrNull$iv = FilesKt.readLines$default(propFile, (Charset) null, 1, (Object) null);
            Iterator it = $this$firstOrNull$iv.iterator();
            while (true) {
                if (it.hasNext()) {
                    element$iv = it.next();
                    String it2 = (String) element$iv;
                    if (StringsKt.startsWith$default(it2, "version=", false, 2, (Object) null)) {
                        break;
                    }
                } else {
                    element$iv = null;
                    break;
                }
            }
            String str = (String) element$iv;
            if (str != null) {
                return StringsKt.substringAfter$default(str, "version=", (String) null, 2, (Object) null);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public final boolean installModule(Context context, Function1<? super String, Boolean> rootExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rootExecutor, "rootExecutor");
        Log.i(TAG, "开始安装 Zygisk 模块...");
        boolean isUpdate = isModuleInstalled();
        if (isUpdate) {
            Log.i(TAG, "检测到已安装模块，准备更新...");
        }
        if (!((Boolean) rootExecutor.invoke("mkdir -p /data/adb/modules/zygisk_pandasu/zygisk")).booleanValue()) {
            Log.e(TAG, "创建模块目录失败");
            return false;
        }
        if (!copyAssetFile(context, "zygisk_module/module.prop", "/data/adb/modules/zygisk_pandasu/module.prop", rootExecutor)) {
            Log.e(TAG, "复制 module.prop 失败");
            return false;
        }
        if (!copyAssetFile(context, "zygisk_module/customize.sh", "/data/adb/modules/zygisk_pandasu/customize.sh", rootExecutor)) {
            Log.e(TAG, "复制 customize.sh 失败");
            return false;
        }
        List<String> abis = CollectionsKt.listOf(new String[]{"arm64-v8a", "armeabi-v7a", "x86_64", "x86"});
        for (String abi : abis) {
            String assetPath = "zygisk_module/" + abi + "/libpanda_zygisk.so";
            String destPath = "/data/adb/modules/zygisk_pandasu/zygisk/" + abi + ".so";
            if (!copyAssetFile(context, assetPath, destPath, rootExecutor)) {
                Log.w(TAG, "复制 " + abi + " so 文件失败，可能不存在");
            }
        }
        rootExecutor.invoke("chmod 755 /data/adb/modules/zygisk_pandasu && chmod 755 /data/adb/modules/zygisk_pandasu/zygisk");
        Log.i(TAG, "Zygisk 模块安装完成！");
        return true;
    }

    public final boolean uninstallModule(Function1<? super String, Boolean> rootExecutor) {
        Intrinsics.checkNotNullParameter(rootExecutor, "rootExecutor");
        Log.i(TAG, "开始卸载 Zygisk 模块...");
        boolean result = ((Boolean) rootExecutor.invoke("rm -rf /data/adb/modules/zygisk_pandasu")).booleanValue();
        if (result) {
            Log.i(TAG, "Zygisk 模块已卸载");
        } else {
            Log.e(TAG, "卸载 Zygisk 模块失败");
        }
        return result;
    }

    private final boolean copyAssetFile(Context context, String assetPath, String destPath, Function1<? super String, Boolean> rootExecutor) {
        try {
            File tempFile = new File(context.getCacheDir(), "temp_" + System.currentTimeMillis());
            FileOutputStream open = context.getAssets().open(assetPath);
            try {
                InputStream input = open;
                open = new FileOutputStream(tempFile);
                try {
                    FileOutputStream output = open;
                    Intrinsics.checkNotNull(input);
                    ByteStreamsKt.copyTo$default(input, output, 0, 2, (Object) null);
                    CloseableKt.closeFinally(open, (Throwable) null);
                    CloseableKt.closeFinally(open, (Throwable) null);
                    String copyCmd = "cp " + tempFile.getAbsolutePath() + " " + destPath;
                    boolean result = ((Boolean) rootExecutor.invoke(copyCmd)).booleanValue();
                    tempFile.delete();
                    return result;
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            Log.e(TAG, "复制文件失败: " + assetPath + ", " + e.getMessage());
            return false;
        }
    }
}
