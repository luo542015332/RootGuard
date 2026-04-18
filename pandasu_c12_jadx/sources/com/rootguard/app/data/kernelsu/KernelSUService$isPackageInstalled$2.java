package com.rootguard.app.data.kernelsu;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: KernelSUService.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.kernelsu.KernelSUService$isPackageInstalled$2", f = "KernelSUService.kt", i = {}, l = {110}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
final class KernelSUService$isPackageInstalled$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ KernelSUService this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KernelSUService$isPackageInstalled$2(String str, KernelSUService kernelSUService, Continuation<? super KernelSUService$isPackageInstalled$2> continuation) {
        super(2, continuation);
        this.$packageName = str;
        this.this$0 = kernelSUService;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new KernelSUService$isPackageInstalled$2(this.$packageName, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0064, code lost:
    
        if (kotlin.text.StringsKt.contains$default(r10, "Error:", false, 2, (java.lang.Object) null) == false) goto L25;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057 A[Catch: Exception -> 0x006a, TRY_LEAVE, TryCatch #1 {Exception -> 0x006a, blocks: (B:11:0x0047, B:15:0x0057), top: B:10:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 1
            r3 = 0
            switch(r1) {
                case 0: goto L1d;
                case 1: goto L13;
                default: goto Lb;
            }
        Lb:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L13:
            r0 = r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L1a
            r1 = r0
            r0 = r10
            goto L47
        L1a:
            r1 = move-exception
            goto L74
        L1d:
            kotlin.ResultKt.throwOnFailure(r10)
            r1 = r9
            java.lang.String r4 = r1.$packageName     // Catch: java.lang.Exception -> L70
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L70
            r5.<init>()     // Catch: java.lang.Exception -> L70
            java.lang.String r6 = "pm path "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch: java.lang.Exception -> L70
            java.lang.StringBuilder r4 = r5.append(r4)     // Catch: java.lang.Exception -> L70
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L70
            com.rootguard.app.data.kernelsu.KernelSUService r5 = r1.this$0     // Catch: java.lang.Exception -> L70
            r6 = r1
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6     // Catch: java.lang.Exception -> L70
            r1.label = r2     // Catch: java.lang.Exception -> L70
            java.lang.Object r5 = r5.executeCommand(r4, r6)     // Catch: java.lang.Exception -> L70
            if (r5 != r0) goto L45
            return r0
        L45:
            r0 = r10
            r10 = r5
        L47:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Exception -> L6a
            r4 = r10
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.Exception -> L6a
            int r4 = r4.length()     // Catch: java.lang.Exception -> L6a
            if (r4 <= 0) goto L54
            r4 = r2
            goto L55
        L54:
            r4 = r3
        L55:
            if (r4 == 0) goto L67
            r4 = r10
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.Exception -> L6a
            java.lang.String r5 = "Error:"
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.Exception -> L6a
            r6 = 2
            r7 = 0
            boolean r4 = kotlin.text.StringsKt.contains$default(r4, r5, r3, r6, r7)     // Catch: java.lang.Exception -> L6a
            if (r4 != 0) goto L67
            goto L68
        L67:
            r2 = r3
        L68:
            r3 = r2
            goto L93
        L6a:
            r10 = move-exception
            r8 = r1
            r1 = r10
            r10 = r0
            r0 = r8
            goto L74
        L70:
            r0 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
        L74:
            com.rootguard.app.utils.Logger r2 = com.rootguard.app.utils.Logger.INSTANCE
            java.lang.String r4 = r0.$packageName
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to check package: "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r4 = r5.append(r4)
            java.lang.String r4 = r4.toString()
            r5 = r1
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            r2.e(r4, r5)
            r1 = r0
            r0 = r10
        L93:
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.kernelsu.KernelSUService$isPackageInstalled$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
