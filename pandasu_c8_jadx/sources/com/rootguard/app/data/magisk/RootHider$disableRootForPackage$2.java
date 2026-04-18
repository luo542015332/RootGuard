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
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$disableRootForPackage$2", f = "RootHider.kt", i = {}, l = {968, 971, 979}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$disableRootForPackage$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$disableRootForPackage$2(RootHider rootHider, String str, Continuation<? super RootHider$disableRootForPackage$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
        this.$packageName = str;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$disableRootForPackage$2(this.this$0, this.$packageName, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0009. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00e7 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:9:0x00df, B:11:0x00e7, B:14:0x0106, B:19:0x007d, B:21:0x0085, B:24:0x00a9), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:9:0x00df, B:11:0x00e7, B:14:0x0106, B:19:0x007d, B:21:0x0085, B:24:0x00a9), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0053 A[Catch: Exception -> 0x010b, TRY_LEAVE, TryCatch #1 {Exception -> 0x010b, blocks: (B:31:0x004a, B:33:0x0053, B:37:0x00b3), top: B:30:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b3 A[Catch: Exception -> 0x010b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x010b, blocks: (B:31:0x004a, B:33:0x0053, B:37:0x00b3), top: B:30:0x004a }] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.rootguard.app.data.magisk.RootHider$disableRootForPackage$2] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$disableRootForPackage$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
