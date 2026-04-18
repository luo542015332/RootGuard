package com.rootguard.app.data.kernelsu;

import com.rootguard.app.utils.Logger;
import com.topjohnwu.superuser.Shell;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: KernelSUService.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.kernelsu.KernelSUService$isRootAvailable$2", f = "KernelSUService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
final class KernelSUService$isRootAvailable$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KernelSUService$isRootAvailable$2(Continuation<? super KernelSUService$isRootAvailable$2> continuation) {
        super(2, continuation);
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new KernelSUService$isRootAvailable$2(continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        boolean available;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case KernelSUService.$stable:
                ResultKt.throwOnFailure(obj);
                try {
                    Shell.Result result = Shell.cmd(new String[]{"su -c id"}).exec();
                    Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
                    available = result.isSuccess();
                    Logger.INSTANCE.d("Root available: " + (available));
                } catch (Exception e) {
                    Logger.INSTANCE.e("Failed to check root availability", e);
                    available = false;
                }
                return Boxing.boxBoolean(available);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
