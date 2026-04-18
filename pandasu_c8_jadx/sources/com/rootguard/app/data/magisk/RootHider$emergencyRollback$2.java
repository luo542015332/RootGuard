package com.rootguard.app.data.magisk;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$emergencyRollback$2", f = "RootHider.kt", i = {}, l = {1682, 1685, 1688, 1689, 1690, 1691, 1694, 1695}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$emergencyRollback$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<String> $executedOperations;
    final /* synthetic */ String $packageName;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$emergencyRollback$2(String str, List<String> list, RootHider rootHider, Continuation<? super RootHider$emergencyRollback$2> continuation) {
        super(2, continuation);
        this.$packageName = str;
        this.$executedOperations = list;
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$emergencyRollback$2(this.$packageName, this.$executedOperations, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0253 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x022a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0200 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01d8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x012f A[Catch: Exception -> 0x026f, TryCatch #0 {Exception -> 0x026f, blocks: (B:38:0x0129, B:40:0x012f, B:43:0x015c, B:59:0x00e4, B:61:0x00ea, B:64:0x0118, B:70:0x0091), top: B:69:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x015c A[Catch: Exception -> 0x026f, TRY_LEAVE, TryCatch #0 {Exception -> 0x026f, blocks: (B:38:0x0129, B:40:0x012f, B:43:0x015c, B:59:0x00e4, B:61:0x00ea, B:64:0x0118, B:70:0x0091), top: B:69:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ea A[Catch: Exception -> 0x026f, TryCatch #0 {Exception -> 0x026f, blocks: (B:38:0x0129, B:40:0x012f, B:43:0x015c, B:59:0x00e4, B:61:0x00ea, B:64:0x0118, B:70:0x0091), top: B:69:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0118 A[Catch: Exception -> 0x026f, TryCatch #0 {Exception -> 0x026f, blocks: (B:38:0x0129, B:40:0x012f, B:43:0x015c, B:59:0x00e4, B:61:0x00ea, B:64:0x0118, B:70:0x0091), top: B:69:0x0091 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0157 -> B:37:0x015a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0112 -> B:58:0x0115). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$emergencyRollback$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
