package com.rootguard.app.data.local;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationDataStore.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore", f = "IsolationDataStore.kt", i = {}, l = {332}, m = "hasAnyEnabledIsolation", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class IsolationDataStore$hasAnyEnabledIsolation$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ IsolationDataStore this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationDataStore$hasAnyEnabledIsolation$1(IsolationDataStore isolationDataStore, Continuation<? super IsolationDataStore$hasAnyEnabledIsolation$1> continuation) {
        super(continuation);
        this.this$0 = isolationDataStore;
    }

    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.hasAnyEnabledIsolation((Continuation) this);
    }
}
