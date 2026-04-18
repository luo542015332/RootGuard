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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$detectRootType$2", f = "RootHider.kt", i = {}, l = {75, 75, 79, 83}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$detectRootType$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$detectRootType$2(RootHider rootHider, Continuation<? super RootHider$detectRootType$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$detectRootType$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0013. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0162 A[Catch: Exception -> 0x0035, TRY_ENTER, TryCatch #6 {Exception -> 0x0035, blocks: (B:9:0x002c, B:16:0x0162, B:18:0x0168, B:21:0x012d, B:23:0x0133), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0168 A[Catch: Exception -> 0x0035, TRY_LEAVE, TryCatch #6 {Exception -> 0x0035, blocks: (B:9:0x002c, B:16:0x0162, B:18:0x0168, B:21:0x012d, B:23:0x0133), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0133 A[Catch: Exception -> 0x0035, TRY_LEAVE, TryCatch #6 {Exception -> 0x0035, blocks: (B:9:0x002c, B:16:0x0162, B:18:0x0168, B:21:0x012d, B:23:0x0133), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0106 A[Catch: Exception -> 0x016e, TRY_ENTER, TryCatch #2 {Exception -> 0x016e, blocks: (B:43:0x0106, B:45:0x010c, B:47:0x0119, B:50:0x0125, B:54:0x00d1, B:56:0x00d7), top: B:53:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010c A[Catch: Exception -> 0x016e, TryCatch #2 {Exception -> 0x016e, blocks: (B:43:0x0106, B:45:0x010c, B:47:0x0119, B:50:0x0125, B:54:0x00d1, B:56:0x00d7), top: B:53:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d7 A[Catch: Exception -> 0x016e, TRY_LEAVE, TryCatch #2 {Exception -> 0x016e, blocks: (B:43:0x0106, B:45:0x010c, B:47:0x0119, B:50:0x0125, B:54:0x00d1, B:56:0x00d7), top: B:53:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00b0 A[Catch: Exception -> 0x0066, TryCatch #5 {Exception -> 0x0066, blocks: (B:70:0x0058, B:71:0x00a6, B:81:0x00b0, B:83:0x00bd, B:86:0x00c9, B:89:0x005d, B:91:0x008e, B:93:0x0096, B:100:0x007e), top: B:2:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0096 A[Catch: Exception -> 0x0066, TryCatch #5 {Exception -> 0x0066, blocks: (B:70:0x0058, B:71:0x00a6, B:81:0x00b0, B:83:0x00bd, B:86:0x00c9, B:89:0x005d, B:91:0x008e, B:93:0x0096, B:100:0x007e), top: B:2:0x0013 }] */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v9, types: [com.rootguard.app.data.magisk.RootHider$detectRootType$2] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x014a -> B:11:0x014e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x00ee -> B:38:0x00f1). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$detectRootType$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
