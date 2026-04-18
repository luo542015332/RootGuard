package com.rootguard.app.data.kernelsu;

import com.rootguard.app.utils.Logger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: KernelSUService.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.kernelsu.KernelSUService$getAppInfo$2", f = "KernelSUService.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
final class KernelSUService$getAppInfo$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ KernelSUService this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KernelSUService$getAppInfo$2(String str, KernelSUService kernelSUService, Continuation<? super KernelSUService$getAppInfo$2> continuation) {
        super(2, continuation);
        this.$packageName = str;
        this.this$0 = kernelSUService;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new KernelSUService$getAppInfo$2(this.$packageName, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    public final Object invokeSuspend(Object $result) {
        KernelSUService$getAppInfo$2 kernelSUService$getAppInfo$2;
        Exception e;
        KernelSUService$getAppInfo$2 kernelSUService$getAppInfo$22;
        Object $result2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case KernelSUService.$stable:
                ResultKt.throwOnFailure($result);
                kernelSUService$getAppInfo$2 = this;
                try {
                    String command = "dumpsys package " + kernelSUService$getAppInfo$2.$packageName;
                    kernelSUService$getAppInfo$2.label = 1;
                    Object executeCommand = kernelSUService$getAppInfo$2.this$0.executeCommand(command, (Continuation) kernelSUService$getAppInfo$2);
                    if (executeCommand == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result2 = $result;
                    $result = executeCommand;
                    try {
                        return (String) $result;
                    } catch (Exception e2) {
                        KernelSUService$getAppInfo$2 kernelSUService$getAppInfo$23 = kernelSUService$getAppInfo$2;
                        e = e2;
                        $result = $result2;
                        kernelSUService$getAppInfo$22 = kernelSUService$getAppInfo$23;
                        Logger.INSTANCE.e("Failed to get app info: " + kernelSUService$getAppInfo$22.$packageName, e);
                        return "";
                    }
                } catch (Exception $result3) {
                    e = $result3;
                    kernelSUService$getAppInfo$22 = kernelSUService$getAppInfo$2;
                    Logger.INSTANCE.e("Failed to get app info: " + kernelSUService$getAppInfo$22.$packageName, e);
                    return "";
                }
            case 1:
                kernelSUService$getAppInfo$22 = this;
                try {
                    ResultKt.throwOnFailure($result);
                    kernelSUService$getAppInfo$2 = kernelSUService$getAppInfo$22;
                    $result2 = $result;
                    return (String) $result;
                } catch (Exception e3) {
                    e = e3;
                    Logger.INSTANCE.e("Failed to get app info: " + kernelSUService$getAppInfo$22.$packageName, e);
                    return "";
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
