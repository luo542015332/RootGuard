package com.rootguard.app.data.kernelsu;

import android.content.Context;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: KernelSUService.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0086@¢\u0006\u0002\u0010\bJ\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0086@¢\u0006\u0002\u0010\u000bJ\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0086@¢\u0006\u0002\u0010\bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0006H\u0086@¢\u0006\u0002\u0010\bJ\u000e\u0010\u0010\u001a\u00020\u000fH\u0086@¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/rootguard/app/data/kernelsu/KernelSUService;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "executeCommand", "", "command", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllPackages", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAppInfo", "packageName", "isPackageInstalled", "", "isRootAvailable", "Companion", "app_debug"}, k = 1, mv = {1, 9, KernelSUService.$stable}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class KernelSUService {
    private static final String TAG = "KernelSUService";
    private final Context context;
    public static final int $stable = 8;

    public KernelSUService(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final Object isRootAvailable(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new KernelSUService$isRootAvailable$2(null), continuation);
    }

    public final Object getAllPackages(Continuation<? super List<String>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new KernelSUService$getAllPackages$2(null), continuation);
    }

    public final Object executeCommand(String command, Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new KernelSUService$executeCommand$2(command, null), continuation);
    }

    public final Object isPackageInstalled(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new KernelSUService$isPackageInstalled$2(packageName, this, null), continuation);
    }

    public final Object getAppInfo(String packageName, Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new KernelSUService$getAppInfo$2(packageName, this, null), continuation);
    }
}
