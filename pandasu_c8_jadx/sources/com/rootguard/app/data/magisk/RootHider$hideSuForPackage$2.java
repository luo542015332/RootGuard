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
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$hideSuForPackage$2", f = "RootHider.kt", i = {}, l = {869}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$hideSuForPackage$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$hideSuForPackage$2(RootHider rootHider, String str, Continuation<? super RootHider$hideSuForPackage$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
        this.$packageName = str;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$hideSuForPackage$2(this.this$0, this.$packageName, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040 A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:11:0x0037, B:13:0x0040, B:18:0x0048), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0048 A[Catch: Exception -> 0x0050, TRY_LEAVE, TryCatch #0 {Exception -> 0x0050, blocks: (B:11:0x0037, B:13:0x0040, B:18:0x0048), top: B:10:0x0037 }] */
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
            switch(r1) {
                case 0: goto L1b;
                case 1: goto L12;
                default: goto La;
            }
        La:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L12:
            r0 = r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L19
            r1 = r0
            r0 = r10
            goto L37
        L19:
            r1 = move-exception
            goto L5a
        L1b:
            kotlin.ResultKt.throwOnFailure(r10)
            r1 = r9
            com.rootguard.app.utils.Logger r3 = com.rootguard.app.utils.Logger.INSTANCE     // Catch: java.lang.Exception -> L56
            java.lang.String r4 = "hideSuForPackage: mount --bind disabled for safety, relying on LSPosed/Zygisk module for su hiding"
            r3.d(r4)     // Catch: java.lang.Exception -> L56
            com.rootguard.app.data.magisk.RootHider r3 = r1.this$0     // Catch: java.lang.Exception -> L56
            r4 = r1
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Exception -> L56
            r1.label = r2     // Catch: java.lang.Exception -> L56
            java.lang.Object r3 = com.rootguard.app.data.magisk.RootHider.access$isPandaSUZygiskModuleEnabled(r3, r4)     // Catch: java.lang.Exception -> L56
            if (r3 != r0) goto L35
            return r0
        L35:
            r0 = r10
            r10 = r3
        L37:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Exception -> L50
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Exception -> L50
            if (r10 == 0) goto L48
            com.rootguard.app.utils.Logger r10 = com.rootguard.app.utils.Logger.INSTANCE     // Catch: java.lang.Exception -> L50
            java.lang.String r3 = "hideSuForPackage: PandaSU Zygisk module is enabled, su hiding delegated to module"
            r10.d(r3)     // Catch: java.lang.Exception -> L50
            goto L4f
        L48:
            com.rootguard.app.utils.Logger r10 = com.rootguard.app.utils.Logger.INSTANCE     // Catch: java.lang.Exception -> L50
            java.lang.String r3 = "hideSuForPackage: Neither mount --bind nor Zygisk module available, su may be visible to detection apps"
            r10.w(r3)     // Catch: java.lang.Exception -> L50
        L4f:
            goto L86
        L50:
            r10 = move-exception
            r8 = r1
            r1 = r10
            r10 = r0
            r0 = r8
            goto L5a
        L56:
            r0 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
        L5a:
            com.rootguard.app.utils.Logger r3 = com.rootguard.app.utils.Logger.INSTANCE
            java.lang.String r4 = r0.$packageName
            java.lang.String r5 = r1.getMessage()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "hideSuForPackage exception for "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r4 = r6.append(r4)
            java.lang.String r6 = ": "
            java.lang.StringBuilder r4 = r4.append(r6)
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r4 = r4.toString()
            r5 = 2
            r6 = 0
            com.rootguard.app.utils.Logger.e$default(r3, r4, r6, r5, r6)
            r1 = r0
            r0 = r10
        L86:
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$hideSuForPackage$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
