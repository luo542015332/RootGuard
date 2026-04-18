package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$forceDenyList$2", f = "RootHider.kt", i = {0, 0, 0, 1, 1, 2}, l = {135, 139, 140}, m = "invokeSuspend", n = {"policyFile", "enforceFile", "result", "enforceFile", "result", "result"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$forceDenyList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$forceDenyList$2(RootHider rootHider, Continuation<? super RootHider$forceDenyList$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$forceDenyList$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0169 A[Catch: Exception -> 0x0181, TRY_LEAVE, TryCatch #3 {Exception -> 0x0181, blocks: (B:12:0x00e2, B:14:0x00ef, B:17:0x0122, B:19:0x0154, B:25:0x015f, B:26:0x0163, B:28:0x0169, B:41:0x00fa, B:42:0x00ff, B:44:0x0105, B:49:0x0119, B:52:0x011d), top: B:11:0x00e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0105 A[Catch: Exception -> 0x0181, TryCatch #3 {Exception -> 0x0181, blocks: (B:12:0x00e2, B:14:0x00ef, B:17:0x0122, B:19:0x0154, B:25:0x015f, B:26:0x0163, B:28:0x0169, B:41:0x00fa, B:42:0x00ff, B:44:0x0105, B:49:0x0119, B:52:0x011d), top: B:11:0x00e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$forceDenyList$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
