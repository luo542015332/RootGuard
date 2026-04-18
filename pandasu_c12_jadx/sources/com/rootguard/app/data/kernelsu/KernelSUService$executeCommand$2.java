package com.rootguard.app.data.kernelsu;

import com.rootguard.app.utils.Logger;
import com.topjohnwu.superuser.Shell;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KernelSUService.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.kernelsu.KernelSUService$executeCommand$2", f = "KernelSUService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class KernelSUService$executeCommand$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    final /* synthetic */ String $command;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KernelSUService$executeCommand$2(String str, Continuation<? super KernelSUService$executeCommand$2> continuation) {
        super(2, continuation);
        this.$command = str;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new KernelSUService$executeCommand$2(this.$command, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        String str = "";
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case KernelSUService.$stable:
                ResultKt.throwOnFailure(obj);
                try {
                    Logger.INSTANCE.d("Executing command via Root Shell: " + this.$command);
                    Shell.Result result = Shell.cmd(new String[]{this.$command}).exec();
                    Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
                    if (result.isSuccess()) {
                        Logger.INSTANCE.d("Command exit code: " + result.getCode());
                        List out = result.getOut();
                        Intrinsics.checkNotNullExpressionValue(out, "getOut(...)");
                        str = CollectionsKt.joinToString$default(out, "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
                    } else {
                        String errorMsg = "Command failed with exit code: " + result.getCode();
                        Logger.INSTANCE.w(errorMsg);
                        List err = result.getErr();
                        Intrinsics.checkNotNullExpressionValue(err, "getErr(...)");
                        if (true ^ err.isEmpty()) {
                            Logger logger = Logger.INSTANCE;
                            List err2 = result.getErr();
                            Intrinsics.checkNotNullExpressionValue(err2, "getErr(...)");
                            logger.w("Command error output: " + CollectionsKt.joinToString$default(err2, "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
                        }
                    }
                } catch (Exception e) {
                    Logger.INSTANCE.e("Failed to execute command: " + this.$command, e);
                }
                return str;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
