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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$findDirectoriesContaining$2", f = "RootHider.kt", i = {0}, l = {103}, m = "invokeSuspend", n = {"results"}, s = {"L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$findDirectoriesContaining$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<String>>, Object> {
    final /* synthetic */ String $basePath;
    final /* synthetic */ String $keyword;
    Object L$0;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$findDirectoriesContaining$2(String str, String str2, RootHider rootHider, Continuation<? super RootHider$findDirectoriesContaining$2> continuation) {
        super(2, continuation);
        this.$basePath = str;
        this.$keyword = str2;
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$findDirectoriesContaining$2(this.$basePath, this.$keyword, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<String>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0080 A[Catch: Exception -> 0x00f8, TryCatch #2 {Exception -> 0x00f8, blocks: (B:11:0x0074, B:13:0x0080, B:14:0x0099, B:16:0x009f, B:19:0x00b3, B:24:0x00b7, B:25:0x00cb, B:27:0x00d1, B:32:0x00e7, B:38:0x00eb), top: B:10:0x0074 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$findDirectoriesContaining$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
