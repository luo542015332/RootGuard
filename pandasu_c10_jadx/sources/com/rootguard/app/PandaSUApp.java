package com.rootguard.app;

import com.rootguard.app.util.ZygiskModuleInstaller;
import com.rootguard.app.utils.Logger;
import com.topjohnwu.superuser.Shell;
import dagger.hilt.android.HiltAndroidApp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PandaSUApp.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/rootguard/app/PandaSUApp;", "Landroid/app/Application;", "()V", "checkAndInstallZygiskModule", "", "onCreate", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@HiltAndroidApp
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class PandaSUApp extends Hilt_PandaSUApp {
    public static final int $stable = 0;

    @Override // com.rootguard.app.Hilt_PandaSUApp, android.app.Application
    public void onCreate() {
        super.onCreate();
        Shell.enableVerboseLogging = BuildConfig.DEBUG;
        Shell.setDefaultBuilder(Shell.Builder.create().setFlags(8).setTimeout(30L));
        Logger.INSTANCE.i("🐼 PandaSU (RootGuard) 应用启动");
        Logger.INSTANCE.i("日志系统初始化完成");
        Logger.INSTANCE.i("libsu Shell 初始化完成");
        Logger.INSTANCE.i("应用版本: v1.1.39");
        checkAndInstallZygiskModule();
    }

    private final void checkAndInstallZygiskModule() {
        new Thread(new Runnable() { // from class: com.rootguard.app.PandaSUApp$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PandaSUApp.checkAndInstallZygiskModule$lambda$0(PandaSUApp.this);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkAndInstallZygiskModule$lambda$0(PandaSUApp this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            Shell.Result result = Shell.cmd(new String[]{"ls /data/adb/modules"}).exec();
            Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
            boolean isMagiskAvailable = result.isSuccess();
            if (!isMagiskAvailable) {
                Logger.INSTANCE.w("⚠️ Magisk 未检测到，无法安装 Zygisk 模块");
                return;
            }
            if (!ZygiskModuleInstaller.INSTANCE.isModuleInstalled()) {
                Logger.INSTANCE.i("📦 正在安装 Zygisk 模块...");
                Function1 rootExecutor = new Function1<String, Boolean>() { // from class: com.rootguard.app.PandaSUApp$checkAndInstallZygiskModule$1$rootExecutor$1
                    public final Boolean invoke(String cmd) {
                        Intrinsics.checkNotNullParameter(cmd, "cmd");
                        return Boolean.valueOf(Shell.cmd(new String[]{cmd}).exec().isSuccess());
                    }
                };
                boolean success = ZygiskModuleInstaller.INSTANCE.installModule(this$0, rootExecutor);
                if (success) {
                    Logger.INSTANCE.i("✅ Zygisk 模块安装成功！请重启手机以激活模块");
                    return;
                } else {
                    Logger.e$default(Logger.INSTANCE, "❌ Zygisk 模块安装失败", (Throwable) null, 2, (Object) null);
                    return;
                }
            }
            String version = ZygiskModuleInstaller.INSTANCE.getModuleVersion();
            Logger.INSTANCE.i("✅ Zygisk 模块已安装 (v" + version + ")");
        } catch (Exception e) {
            Logger.e$default(Logger.INSTANCE, "❌ 检查 Zygisk 模块时出错: " + e.getMessage(), (Throwable) null, 2, (Object) null);
        }
    }
}
