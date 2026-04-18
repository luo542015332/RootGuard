package com.rootguard.app.util;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModuleStatusMonitor.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.ModuleStatusMonitor", f = "ModuleStatusMonitor.kt", i = {}, l = {280}, m = "generateStatusReport", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class ModuleStatusMonitor$generateStatusReport$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ModuleStatusMonitor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleStatusMonitor$generateStatusReport$1(ModuleStatusMonitor moduleStatusMonitor, Continuation<? super ModuleStatusMonitor$generateStatusReport$1> continuation) {
        super(continuation);
        this.this$0 = moduleStatusMonitor;
    }

    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.generateStatusReport((Continuation) this);
    }
}
