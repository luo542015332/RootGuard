package com.rootguard.app.data.kernelsu;

import com.rootguard.app.utils.Logger;
import com.topjohnwu.superuser.Shell;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: KernelSUService.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.kernelsu.KernelSUService$getAllPackages$2", f = "KernelSUService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
final class KernelSUService$getAllPackages$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<String>>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KernelSUService$getAllPackages$2(Continuation<? super KernelSUService$getAllPackages$2> continuation) {
        super(2, continuation);
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new KernelSUService$getAllPackages$2(continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<String>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case KernelSUService.$stable:
                ResultKt.throwOnFailure(obj);
                List packages = new ArrayList();
                try {
                    Logger.INSTANCE.d("Starting to get packages via Root Shell...");
                    Logger.INSTANCE.d("Executing command: pm list packages -a");
                    Shell.Result result = Shell.cmd(new String[]{"pm list packages -a"}).exec();
                    Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
                    if (result.isSuccess()) {
                        List out = result.getOut();
                        Intrinsics.checkNotNullExpressionValue(out, "getOut(...)");
                        String output = CollectionsKt.joinToString$default(out, "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
                        Logger.INSTANCE.d("Command output length: " + output.length());
                        Iterable $this$forEach$iv = StringsKt.lines(output);
                        for (Object element$iv : $this$forEach$iv) {
                            String line = (String) element$iv;
                            if (StringsKt.startsWith$default(line, "package:", false, 2, (Object) null)) {
                                String packageName = StringsKt.trim(StringsKt.substringAfter$default(line, "package:", (String) null, 2, (Object) null)).toString();
                                if (packageName.length() > 0) {
                                    packages.add(packageName);
                                }
                            }
                        }
                        Logger.INSTANCE.d("Found " + packages.size() + " packages via Root Shell");
                    } else {
                        Logger.e$default(Logger.INSTANCE, "Command failed with exit code: " + result.getCode(), (Throwable) null, 2, (Object) null);
                        Logger.e$default(Logger.INSTANCE, "Error output: " + result.getErr(), (Throwable) null, 2, (Object) null);
                    }
                } catch (Exception e) {
                    Logger.INSTANCE.e("Failed to get packages via Root Shell", e);
                }
                return packages;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
