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
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$verifyIsolation$2", f = "RootHider.kt", i = {1, 2, 2, 3, 3, 3}, l = {1575, 1584, 1593, 1594}, m = "invokeSuspend", n = {"magiskHideVerified", "magiskHideVerified", "sqliteVerified", "magiskHideVerified", "sqliteVerified", "suHidden"}, s = {"I$0", "I$0", "I$1", "I$0", "I$1", "Z$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$verifyIsolation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $packageName;
    int I$0;
    int I$1;
    boolean Z$0;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$verifyIsolation$2(String str, RootHider rootHider, Continuation<? super RootHider$verifyIsolation$2> continuation) {
        super(2, continuation);
        this.$packageName = str;
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$verifyIsolation$2(this.$packageName, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0010. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x00ef A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x019a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x015e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015f  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v33, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$verifyIsolation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
