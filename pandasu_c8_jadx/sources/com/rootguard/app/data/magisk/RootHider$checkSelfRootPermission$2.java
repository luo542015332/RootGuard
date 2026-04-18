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
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$checkSelfRootPermission$2", f = "RootHider.kt", i = {}, l = {1242, 1266, 1291}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$checkSelfRootPermission$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$checkSelfRootPermission$2(RootHider rootHider, Continuation<? super RootHider$checkSelfRootPermission$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$checkSelfRootPermission$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x001c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:32:0x02a0 A[Catch: Exception -> 0x03bd, TryCatch #2 {Exception -> 0x03bd, blocks: (B:30:0x0276, B:32:0x02a0, B:33:0x02ab, B:35:0x02cf, B:36:0x02da, B:38:0x02f4, B:40:0x0304, B:42:0x0322, B:44:0x034f, B:48:0x036e, B:50:0x037c, B:52:0x0386, B:54:0x0394, B:55:0x039e, B:56:0x02d2, B:57:0x02a3), top: B:29:0x0276 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x02cf A[Catch: Exception -> 0x03bd, TryCatch #2 {Exception -> 0x03bd, blocks: (B:30:0x0276, B:32:0x02a0, B:33:0x02ab, B:35:0x02cf, B:36:0x02da, B:38:0x02f4, B:40:0x0304, B:42:0x0322, B:44:0x034f, B:48:0x036e, B:50:0x037c, B:52:0x0386, B:54:0x0394, B:55:0x039e, B:56:0x02d2, B:57:0x02a3), top: B:29:0x0276 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x02f4 A[Catch: Exception -> 0x03bd, TryCatch #2 {Exception -> 0x03bd, blocks: (B:30:0x0276, B:32:0x02a0, B:33:0x02ab, B:35:0x02cf, B:36:0x02da, B:38:0x02f4, B:40:0x0304, B:42:0x0322, B:44:0x034f, B:48:0x036e, B:50:0x037c, B:52:0x0386, B:54:0x0394, B:55:0x039e, B:56:0x02d2, B:57:0x02a3), top: B:29:0x0276 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x034f A[Catch: Exception -> 0x03bd, TryCatch #2 {Exception -> 0x03bd, blocks: (B:30:0x0276, B:32:0x02a0, B:33:0x02ab, B:35:0x02cf, B:36:0x02da, B:38:0x02f4, B:40:0x0304, B:42:0x0322, B:44:0x034f, B:48:0x036e, B:50:0x037c, B:52:0x0386, B:54:0x0394, B:55:0x039e, B:56:0x02d2, B:57:0x02a3), top: B:29:0x0276 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x036e A[Catch: Exception -> 0x03bd, TryCatch #2 {Exception -> 0x03bd, blocks: (B:30:0x0276, B:32:0x02a0, B:33:0x02ab, B:35:0x02cf, B:36:0x02da, B:38:0x02f4, B:40:0x0304, B:42:0x0322, B:44:0x034f, B:48:0x036e, B:50:0x037c, B:52:0x0386, B:54:0x0394, B:55:0x039e, B:56:0x02d2, B:57:0x02a3), top: B:29:0x0276 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02d2 A[Catch: Exception -> 0x03bd, TryCatch #2 {Exception -> 0x03bd, blocks: (B:30:0x0276, B:32:0x02a0, B:33:0x02ab, B:35:0x02cf, B:36:0x02da, B:38:0x02f4, B:40:0x0304, B:42:0x0322, B:44:0x034f, B:48:0x036e, B:50:0x037c, B:52:0x0386, B:54:0x0394, B:55:0x039e, B:56:0x02d2, B:57:0x02a3), top: B:29:0x0276 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02a3 A[Catch: Exception -> 0x03bd, TryCatch #2 {Exception -> 0x03bd, blocks: (B:30:0x0276, B:32:0x02a0, B:33:0x02ab, B:35:0x02cf, B:36:0x02da, B:38:0x02f4, B:40:0x0304, B:42:0x0322, B:44:0x034f, B:48:0x036e, B:50:0x037c, B:52:0x0386, B:54:0x0394, B:55:0x039e, B:56:0x02d2, B:57:0x02a3), top: B:29:0x0276 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0196 A[Catch: Exception -> 0x0255, TryCatch #8 {Exception -> 0x0255, blocks: (B:70:0x016a, B:72:0x0196, B:73:0x01a1, B:75:0x01c5, B:76:0x01d0, B:78:0x01ea, B:80:0x01f0, B:82:0x01fd, B:84:0x0229, B:88:0x023a, B:92:0x01c8, B:93:0x0199), top: B:69:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c5 A[Catch: Exception -> 0x0255, TryCatch #8 {Exception -> 0x0255, blocks: (B:70:0x016a, B:72:0x0196, B:73:0x01a1, B:75:0x01c5, B:76:0x01d0, B:78:0x01ea, B:80:0x01f0, B:82:0x01fd, B:84:0x0229, B:88:0x023a, B:92:0x01c8, B:93:0x0199), top: B:69:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ea A[Catch: Exception -> 0x0255, TryCatch #8 {Exception -> 0x0255, blocks: (B:70:0x016a, B:72:0x0196, B:73:0x01a1, B:75:0x01c5, B:76:0x01d0, B:78:0x01ea, B:80:0x01f0, B:82:0x01fd, B:84:0x0229, B:88:0x023a, B:92:0x01c8, B:93:0x0199), top: B:69:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0229 A[Catch: Exception -> 0x0255, TryCatch #8 {Exception -> 0x0255, blocks: (B:70:0x016a, B:72:0x0196, B:73:0x01a1, B:75:0x01c5, B:76:0x01d0, B:78:0x01ea, B:80:0x01f0, B:82:0x01fd, B:84:0x0229, B:88:0x023a, B:92:0x01c8, B:93:0x0199), top: B:69:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0250 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c8 A[Catch: Exception -> 0x0255, TryCatch #8 {Exception -> 0x0255, blocks: (B:70:0x016a, B:72:0x0196, B:73:0x01a1, B:75:0x01c5, B:76:0x01d0, B:78:0x01ea, B:80:0x01f0, B:82:0x01fd, B:84:0x0229, B:88:0x023a, B:92:0x01c8, B:93:0x0199), top: B:69:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0199 A[Catch: Exception -> 0x0255, TryCatch #8 {Exception -> 0x0255, blocks: (B:70:0x016a, B:72:0x0196, B:73:0x01a1, B:75:0x01c5, B:76:0x01d0, B:78:0x01ea, B:80:0x01f0, B:82:0x01fd, B:84:0x0229, B:88:0x023a, B:92:0x01c8, B:93:0x0199), top: B:69:0x016a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 1048
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$checkSelfRootPermission$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
