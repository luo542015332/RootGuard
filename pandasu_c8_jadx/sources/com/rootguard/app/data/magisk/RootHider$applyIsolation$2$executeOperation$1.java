package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RootHider.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$applyIsolation$2", f = "RootHider.kt", i = {0, 0, 0, 0}, l = {670}, m = "invokeSuspend$executeOperation", n = {"$this$withContext", "operationResults", "executedOperations", "operationName"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$applyIsolation$2$executeOperation$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RootHider$applyIsolation$2$executeOperation$1(Continuation<? super RootHider$applyIsolation$2$executeOperation$1> continuation) {
        super(continuation);
    }

    public final Object invokeSuspend(Object obj) {
        Object invokeSuspend$executeOperation;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        invokeSuspend$executeOperation = RootHider$applyIsolation$2.invokeSuspend$executeOperation(null, null, null, null, null, (Continuation) this);
        return invokeSuspend$executeOperation;
    }
}
