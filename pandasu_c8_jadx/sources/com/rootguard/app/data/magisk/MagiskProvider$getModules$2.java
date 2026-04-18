package com.rootguard.app.data.magisk;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/data/magisk/MagiskModule;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$getModules$2", f = "MagiskProvider.kt", i = {0}, l = {184}, m = "invokeSuspend", n = {"modules"}, s = {"L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class MagiskProvider$getModules$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<MagiskModule>>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ MagiskProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagiskProvider$getModules$2(MagiskProvider magiskProvider, Continuation<? super MagiskProvider$getModules$2> continuation) {
        super(2, continuation);
        this.this$0 = magiskProvider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$getModules$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<MagiskModule>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00eb A[Catch: Exception -> 0x00f3, TRY_LEAVE, TryCatch #2 {Exception -> 0x00f3, blocks: (B:11:0x00e7, B:13:0x00eb), top: B:10:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b8 A[Catch: Exception -> 0x002e, TryCatch #1 {Exception -> 0x002e, blocks: (B:8:0x0024, B:16:0x00b2, B:18:0x00b8, B:21:0x00d3, B:27:0x00fc), top: B:7:0x0024 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00e2 -> B:10:0x00e7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.MagiskProvider$getModules$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
