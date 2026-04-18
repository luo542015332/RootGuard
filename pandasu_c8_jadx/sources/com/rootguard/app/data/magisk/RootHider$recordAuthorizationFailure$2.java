package com.rootguard.app.data.magisk;

import android.content.Context;
import android.content.pm.PackageManager;
import com.rootguard.app.util.RootEnvironmentDetector;
import com.rootguard.app.utils.Logger;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Date;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$recordAuthorizationFailure$2", f = "RootHider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$recordAuthorizationFailure$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$recordAuthorizationFailure$2(RootHider rootHider, Continuation<? super RootHider$recordAuthorizationFailure$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$recordAuthorizationFailure$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Context context;
        Context context2;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                try {
                    Logger.INSTANCE.d("记录授权失败事件...");
                    RootEnvironmentDetector.RootMode rootMode = RootEnvironmentDetector.INSTANCE.detectRootMode();
                    String rootManagerName = RootEnvironmentDetector.INSTANCE.getRootManagerName(rootMode);
                    String rootManagerPackage = RootEnvironmentDetector.INSTANCE.getRootManagerPackage(rootMode);
                    Logger.INSTANCE.d("授权失败信息:");
                    Logger.INSTANCE.d("  Root管理器: " + rootManagerName);
                    Logger.INSTANCE.d("  包名: " + rootManagerPackage);
                    Logger.INSTANCE.d("  模式: " + rootMode);
                    context = this.this$0.context;
                    PackageManager pm = context.getPackageManager();
                    boolean z = false;
                    if (rootManagerPackage != null) {
                        try {
                            pm.getPackageInfo(rootManagerPackage, 0);
                            z = true;
                        } catch (Exception e) {
                        }
                    }
                    boolean managerInstalled = z;
                    if (!managerInstalled) {
                        Logger.e$default(Logger.INSTANCE, "Root 管理器未安装或找不到: " + rootManagerPackage, (Throwable) null, 2, (Object) null);
                    }
                    try {
                        long timestamp = System.currentTimeMillis();
                        Date date = new Date();
                        String str = managerInstalled ? "已安装" : "未安装";
                        if (rootManagerPackage == null) {
                            rootManagerPackage = "未知";
                        }
                        String logContent = StringsKt.trimMargin$default("\n                    |授权失败报告\n                    |时间: " + date + "\n                    |Root管理器: " + rootManagerName + " (" + str + ")\n                    |包名: " + rootManagerPackage + "\n                    |模式: " + rootMode + "\n                    |建议: 请打开 " + rootManagerName + "，重新授予 PandaSU Root 权限\n                    |\n                ", (String) null, 1, (Object) null);
                        context2 = this.this$0.context;
                        File file = new File(context2.getFilesDir(), "auth_failure_" + timestamp + ".txt");
                        FilesKt.writeText$default(file, logContent, (Charset) null, 2, (Object) null);
                        Logger.INSTANCE.d("授权失败报告已保存: " + file.getAbsolutePath());
                    } catch (Exception e2) {
                        Logger.INSTANCE.w("无法保存授权失败报告: " + e2.getMessage());
                    }
                } catch (Exception e3) {
                    Logger.INSTANCE.e("记录授权失败事件异常", e3);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
