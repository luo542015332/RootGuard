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
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$checkToolAvailable$2", f = "RootHider.kt", i = {0}, l = {771, 777}, m = "invokeSuspend", n = {"absolutePath"}, s = {"L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$checkToolAvailable$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $toolName;
    Object L$0;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$checkToolAvailable$2(String str, RootHider rootHider, Continuation<? super RootHider$checkToolAvailable$2> continuation) {
        super(2, continuation);
        this.$toolName = str;
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$checkToolAvailable$2(this.$toolName, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00e4 A[Catch: Exception -> 0x0129, TryCatch #2 {Exception -> 0x0129, blocks: (B:12:0x00d4, B:16:0x00e4, B:21:0x0109), top: B:11:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0109 A[Catch: Exception -> 0x0129, TRY_LEAVE, TryCatch #2 {Exception -> 0x0129, blocks: (B:12:0x00d4, B:16:0x00e4, B:21:0x0109), top: B:11:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0089 A[Catch: Exception -> 0x012e, TryCatch #0 {Exception -> 0x012e, blocks: (B:33:0x0079, B:37:0x0089, B:38:0x00a8), top: B:32:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a8 A[Catch: Exception -> 0x012e, TRY_LEAVE, TryCatch #0 {Exception -> 0x012e, blocks: (B:33:0x0079, B:37:0x0089, B:38:0x00a8), top: B:32:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0086  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$checkToolAvailable$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
