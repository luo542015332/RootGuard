package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/rootguard/app/data/magisk/HideStatus;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$checkHideStatus$2", f = "RootHider.kt", i = {}, l = {1153}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$checkHideStatus$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HideStatus>, Object> {
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$checkHideStatus$2(RootHider rootHider, Continuation<? super RootHider$checkHideStatus$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$checkHideStatus$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HideStatus> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045 A[Catch: Exception -> 0x005b, TryCatch #1 {Exception -> 0x005b, blocks: (B:11:0x0032, B:13:0x0045, B:17:0x0048, B:19:0x0055, B:20:0x0058), top: B:10:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048 A[Catch: Exception -> 0x005b, TryCatch #1 {Exception -> 0x005b, blocks: (B:11:0x0032, B:13:0x0045, B:17:0x0048, B:19:0x0055, B:20:0x0058), top: B:10:0x0032 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            switch(r1) {
                case 0: goto L1a;
                case 1: goto L11;
                default: goto L9;
            }
        L9:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L11:
            r0 = r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L18
            r1 = r0
            r0 = r8
            goto L32
        L18:
            r1 = move-exception
            goto L61
        L1a:
            kotlin.ResultKt.throwOnFailure(r8)
            r1 = r7
            com.rootguard.app.data.magisk.RootHider r2 = r1.this$0     // Catch: java.lang.Exception -> L5f
            java.lang.String r3 = "magisk -Z"
            r4 = r1
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Exception -> L5f
            r5 = 1
            r1.label = r5     // Catch: java.lang.Exception -> L5f
            java.lang.Object r2 = com.rootguard.app.data.magisk.RootHider.access$runSuCommandOutput(r2, r3, r4)     // Catch: java.lang.Exception -> L5f
            if (r2 != r0) goto L30
            return r0
        L30:
            r0 = r8
            r8 = r2
        L32:
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Exception -> L5b
            r2 = r8
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2     // Catch: java.lang.Exception -> L5b
            java.lang.String r3 = "Enforcing"
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L5b
            r4 = 0
            r5 = 2
            r6 = 0
            boolean r2 = kotlin.text.StringsKt.contains$default(r2, r3, r6, r5, r4)     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L48
            com.rootguard.app.data.magisk.HideStatus r2 = com.rootguard.app.data.magisk.HideStatus.ACTIVE     // Catch: java.lang.Exception -> L5b
            goto L5a
        L48:
            r2 = r8
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2     // Catch: java.lang.Exception -> L5b
            java.lang.String r3 = "Permissive"
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L5b
            boolean r2 = kotlin.text.StringsKt.contains$default(r2, r3, r6, r5, r4)     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L58
            com.rootguard.app.data.magisk.HideStatus r2 = com.rootguard.app.data.magisk.HideStatus.PARTIAL     // Catch: java.lang.Exception -> L5b
            goto L5a
        L58:
            com.rootguard.app.data.magisk.HideStatus r2 = com.rootguard.app.data.magisk.HideStatus.INACTIVE     // Catch: java.lang.Exception -> L5b
        L5a:
            goto L65
        L5b:
            r8 = move-exception
            r8 = r0
            r0 = r1
            goto L61
        L5f:
            r0 = move-exception
            r0 = r1
        L61:
            com.rootguard.app.data.magisk.HideStatus r2 = com.rootguard.app.data.magisk.HideStatus.UNKNOWN
            r1 = r0
            r0 = r8
        L65:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$checkHideStatus$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
