package com.rootguard.app.data.magisk;

import android.content.pm.ApplicationInfo;
import com.rootguard.app.utils.Logger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$setAppPolicy$2", f = "MagiskProvider.kt", i = {}, l = {981}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class MagiskProvider$setAppPolicy$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $packageName;
    final /* synthetic */ int $policy;
    int label;
    final /* synthetic */ MagiskProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagiskProvider$setAppPolicy$2(MagiskProvider magiskProvider, String str, int i, Continuation<? super MagiskProvider$setAppPolicy$2> continuation) {
        super(2, continuation);
        this.this$0 = magiskProvider;
        this.$packageName = str;
        this.$policy = i;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$setAppPolicy$2(this.this$0, this.$packageName, this.$policy, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [int] */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.rootguard.app.data.magisk.MagiskProvider$setAppPolicy$2] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    public final Object invokeSuspend(Object obj) {
        Object detectRootType;
        Object obj2;
        Object obj3;
        Exception exc;
        boolean z;
        String str;
        boolean z2;
        boolean z3;
        String str2 = "uid_policy";
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        MagiskProvider$setAppPolicy$2 magiskProvider$setAppPolicy$2 = this.label;
        try {
            switch (magiskProvider$setAppPolicy$2) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    MagiskProvider$setAppPolicy$2 magiskProvider$setAppPolicy$22 = this;
                    magiskProvider$setAppPolicy$22.label = 1;
                    detectRootType = magiskProvider$setAppPolicy$22.this$0.detectRootType((Continuation) magiskProvider$setAppPolicy$22);
                    if (detectRootType != coroutine_suspended) {
                        obj2 = obj;
                        obj3 = detectRootType;
                        magiskProvider$setAppPolicy$2 = magiskProvider$setAppPolicy$22;
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    magiskProvider$setAppPolicy$2 = this;
                    obj3 = obj;
                    ResultKt.throwOnFailure(obj3);
                    obj2 = obj3;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            try {
                String str3 = (String) obj3;
                Logger.INSTANCE.d("Setting app policy for " + magiskProvider$setAppPolicy$2.$packageName + ", policy: " + magiskProvider$setAppPolicy$2.$policy + ", root type: " + str3);
                if (Intrinsics.areEqual(str3, MagiskProvider.ROOT_TYPE_KERNELSU)) {
                    try {
                        Process exec = Runtime.getRuntime().exec(new String[]{"su", "-c", "pm", "path", "me.weishu.kernelsu"});
                        exec.waitFor();
                        exc = exec.exitValue() == 0 ? 1 : null;
                    } catch (Exception e) {
                        Logger.INSTANCE.w("Failed to check Weishu KernelSU: " + e.getMessage());
                        exc = null;
                    }
                    Exception exc2 = exc;
                    try {
                        Process exec2 = Runtime.getRuntime().exec(new String[]{"su", "-c", "pm", "path", "com.tiann.kernelsu"});
                        exec2.waitFor();
                        z = exec2.exitValue() == 0;
                    } catch (Exception e2) {
                        Logger.INSTANCE.w("Failed to check Tiann KernelSU: " + e2.getMessage());
                        z = false;
                    }
                    str = "/data/data/me.weishu.kernelsu/databases/app.db";
                    if (exc2 != null) {
                        Logger.INSTANCE.d("Using Weishu KernelSU manager: /data/data/me.weishu.kernelsu/databases/app.db");
                    } else if (z) {
                        Logger.INSTANCE.d("Using Tiann KernelSU manager: /data/data/com.tiann.kernelsu/databases/kernelsu.db");
                        str = "/data/data/com.tiann.kernelsu/databases/kernelsu.db";
                    } else {
                        Logger.INSTANCE.w("No KernelSU manager found, defaulting to Weishu");
                    }
                } else {
                    boolean areEqual = Intrinsics.areEqual(str3, MagiskProvider.ROOT_TYPE_MAGISK);
                    str = MagiskProvider.MAGISK_DB;
                    if (!areEqual) {
                        Logger.INSTANCE.w("Unknown root type, trying Magisk DB");
                    }
                }
                String str4 = str;
                if (Intrinsics.areEqual(str3, MagiskProvider.ROOT_TYPE_KERNELSU)) {
                    try {
                        ApplicationInfo applicationInfo = magiskProvider$setAppPolicy$2.this$0.getContext().getPackageManager().getApplicationInfo(magiskProvider$setAppPolicy$2.$packageName, 0);
                        Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
                        int i = applicationInfo.uid;
                        Process exec3 = Runtime.getRuntime().exec(new String[]{"su", "-c", "sqlite3", str4, ".tables"});
                        InputStream inputStream = exec3.getInputStream();
                        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                        Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                        String obj4 = StringsKt.trim(TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192))).toString();
                        exec3.waitFor();
                        if (StringsKt.contains$default(obj4, "rules", false, 2, (Object) null)) {
                            str2 = "rules";
                        } else if (!StringsKt.contains$default(obj4, "uid_policy", false, 2, (Object) null)) {
                            Logger.INSTANCE.w("Unknown KernelSU database structure");
                            return Boxing.boxBoolean(false);
                        }
                        Process exec4 = Runtime.getRuntime().exec(new String[]{"su", "-c", "sqlite3", str4, "REPLACE INTO " + str2 + " (uid, policy) VALUES (" + i + ", " + magiskProvider$setAppPolicy$2.$policy + ")"});
                        exec4.waitFor();
                        z2 = exec4.exitValue() == 0;
                        if (z2) {
                            Logger.INSTANCE.d("Set KernelSU policy for " + magiskProvider$setAppPolicy$2.$packageName + " (uid=" + i + "): " + magiskProvider$setAppPolicy$2.$policy);
                        }
                    } catch (Exception e3) {
                        Logger.INSTANCE.e("Failed to get uid for " + magiskProvider$setAppPolicy$2.$packageName, e3);
                        z2 = false;
                    }
                    z3 = z2;
                } else if (Intrinsics.areEqual(str3, MagiskProvider.ROOT_TYPE_MAGISK)) {
                    Process exec5 = Runtime.getRuntime().exec(new String[]{"su", "-c", "sqlite3", str4, "UPDATE policies SET policy=" + magiskProvider$setAppPolicy$2.$policy + " WHERE package_name='" + magiskProvider$setAppPolicy$2.$packageName + "'"});
                    exec5.waitFor();
                    if (exec5.exitValue() != 0) {
                        Process exec6 = Runtime.getRuntime().exec(new String[]{"su", "-c", "sqlite3", str4, "INSERT INTO policies (package_name, policy, logging, notification) VALUES ('" + magiskProvider$setAppPolicy$2.$packageName + "', " + magiskProvider$setAppPolicy$2.$policy + ", 1, 1)"});
                        exec6.waitFor();
                        z3 = exec6.exitValue() == 0;
                    } else {
                        z3 = true;
                    }
                } else {
                    Logger.INSTANCE.w("Unknown root type, cannot set app policy");
                    z3 = false;
                }
                return Boxing.boxBoolean(z3);
            } catch (Exception e4) {
                e = e4;
                Logger.INSTANCE.e("Failed to set app policy: " + magiskProvider$setAppPolicy$2.$packageName, e);
                return Boxing.boxBoolean(false);
            }
        } catch (Exception e5) {
            e = e5;
        }
    }
}
