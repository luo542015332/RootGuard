package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$isPandaSUZygiskModuleEnabled$2", f = "RootHider.kt", i = {0}, l = {1183}, m = "invokeSuspend", n = {"moduleSoPath"}, s = {"L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$isPandaSUZygiskModuleEnabled$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$isPandaSUZygiskModuleEnabled$2(RootHider rootHider, Continuation<? super RootHider$isPandaSUZygiskModuleEnabled$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$isPandaSUZygiskModuleEnabled$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0087  */
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
                case 0: goto L22;
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
            java.lang.Object r1 = r0.L$0
            java.lang.String r1 = (java.lang.String) r1
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L1f
            r4 = r1
            r1 = r0
            r0 = r10
            goto L71
        L1f:
            r1 = move-exception
            goto Lb0
        L22:
            kotlin.ResultKt.throwOnFailure(r10)
            r1 = r9
            com.rootguard.app.data.magisk.RootHider r4 = r1.this$0     // Catch: java.lang.Exception -> Lae
            java.lang.String r4 = com.rootguard.app.data.magisk.RootHider.access$getPANDASU_ZYGISK_MODULE_ID$p(r4)     // Catch: java.lang.Exception -> Lae
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lae
            r5.<init>()     // Catch: java.lang.Exception -> Lae
            java.lang.String r6 = "/data/adb/modules/"
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch: java.lang.Exception -> Lae
            java.lang.StringBuilder r4 = r5.append(r4)     // Catch: java.lang.Exception -> Lae
            java.lang.String r5 = "/zygisk/arm64-v8a.so"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> Lae
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> Lae
            com.rootguard.app.data.magisk.RootHider r5 = r1.this$0     // Catch: java.lang.Exception -> Lae
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lae
            r6.<init>()     // Catch: java.lang.Exception -> Lae
            java.lang.String r7 = "[ -f \""
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> Lae
            java.lang.StringBuilder r6 = r6.append(r4)     // Catch: java.lang.Exception -> Lae
            java.lang.String r7 = "\" ] && echo \"EXISTS\" || echo \"NOT_EXISTS\""
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> Lae
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> Lae
            r7 = r1
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7     // Catch: java.lang.Exception -> Lae
            r1.L$0 = r4     // Catch: java.lang.Exception -> Lae
            r1.label = r2     // Catch: java.lang.Exception -> Lae
            java.lang.Object r5 = com.rootguard.app.data.magisk.RootHider.access$runSuCommandOutput(r5, r6, r7)     // Catch: java.lang.Exception -> Lae
            if (r5 != r0) goto L6f
            return r0
        L6f:
            r0 = r10
            r10 = r5
        L71:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Exception -> Laa
            r5 = r10
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.Exception -> Laa
            java.lang.String r6 = "EXISTS"
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6     // Catch: java.lang.Exception -> Laa
            r7 = 2
            r8 = 0
            boolean r5 = kotlin.text.StringsKt.contains$default(r5, r6, r3, r7, r8)     // Catch: java.lang.Exception -> Laa
            r10 = r5
            com.rootguard.app.utils.Logger r5 = com.rootguard.app.utils.Logger.INSTANCE     // Catch: java.lang.Exception -> Laa
            if (r10 == 0) goto L87
            r6 = r2
            goto L88
        L87:
            r6 = r3
        L88:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Laa
            r7.<init>()     // Catch: java.lang.Exception -> Laa
            java.lang.String r8 = "PandaSU Zygisk 模块检测: "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Exception -> Laa
            java.lang.StringBuilder r4 = r7.append(r4)     // Catch: java.lang.Exception -> Laa
            java.lang.String r7 = " = "
            java.lang.StringBuilder r4 = r4.append(r7)     // Catch: java.lang.Exception -> Laa
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch: java.lang.Exception -> Laa
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> Laa
            r5.d(r4)     // Catch: java.lang.Exception -> Laa
            goto Lb3
        Laa:
            r10 = move-exception
            r10 = r0
            r0 = r1
            goto Lb0
        Lae:
            r0 = move-exception
            r0 = r1
        Lb0:
            r1 = r0
            r0 = r10
            r10 = r3
        Lb3:
            if (r10 == 0) goto Lb6
            goto Lb7
        Lb6:
            r2 = r3
        Lb7:
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$isPandaSUZygiskModuleEnabled$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
