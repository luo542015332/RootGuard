package com.rootguard.app.data.magisk;

import com.rootguard.app.data.model.IsolationConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$applyIsolation$2", f = "RootHider.kt", i = {0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 10, 10, 10}, l = {661, 694, 695, 698, 701, 704, 707, 710, 713, 727, 738, 753}, m = "invokeSuspend", n = {"packageName", "executedOperations", "$this$withContext", "packageName", "operationResults", "executedOperations", "$this$withContext", "packageName", "operationResults", "executedOperations", "r1", "$this$withContext", "packageName", "operationResults", "executedOperations", "r1", "r2", "$this$withContext", "packageName", "operationResults", "executedOperations", "r1", "r2", "r3", "$this$withContext", "packageName", "operationResults", "executedOperations", "r1", "r2", "r3", "r4", "$this$withContext", "packageName", "operationResults", "executedOperations", "r1", "r2", "r3", "r4", "r5", "$this$withContext", "packageName", "operationResults", "executedOperations", "r1", "r2", "r3", "r4", "r5", "r6", "packageName", "operationResults", "executedOperations", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "packageName", "executedOperations", "finalResult", "packageName", "executedOperations", "finalResult"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "Z$2", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "Z$2", "Z$3", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "Z$2", "Z$3", "Z$4", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "Z$2", "Z$3", "Z$4", "Z$5", "L$0", "L$1", "L$2", "Z$0", "Z$1", "Z$2", "Z$3", "Z$4", "Z$5", "Z$6", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$applyIsolation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ IsolationConfig $config;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    boolean Z$0;
    boolean Z$1;
    boolean Z$2;
    boolean Z$3;
    boolean Z$4;
    boolean Z$5;
    boolean Z$6;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$applyIsolation$2(IsolationConfig isolationConfig, RootHider rootHider, Continuation<? super RootHider$applyIsolation$2> continuation) {
        super(2, continuation);
        this.$config = isolationConfig;
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> rootHider$applyIsolation$2 = new RootHider$applyIsolation$2(this.$config, this.this$0, continuation);
        rootHider$applyIsolation$2.L$0 = obj;
        return rootHider$applyIsolation$2;
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: Types fix failed
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:56)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:183)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:242)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:221)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
        */
    /* JADX WARN: Failed to apply debug info
    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnoreUnknown(TypeUpdate.java:74)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0211: MOVE (r3 I:??[OBJECT, ARRAY] A[D('this' com.rootguard.app.data.magisk.RootHider$applyIsolation$2)]) = (r4 I:??[OBJECT, ARRAY] A[D('$result' java.lang.Object)]), block:B:348:0x020d */
    public final java.lang.Object invokeSuspend(java.lang.Object r30) {
        /*
            Method dump skipped, instructions count: 2154
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$applyIsolation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0026. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0075 A[Catch: Exception -> 0x0046, CancellationException -> 0x0049, TryCatch #4 {CancellationException -> 0x0049, Exception -> 0x0046, blocks: (B:13:0x0041, B:15:0x0071, B:17:0x0075, B:21:0x00a0, B:24:0x00b1, B:32:0x007a), top: B:12:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a A[Catch: Exception -> 0x0046, CancellationException -> 0x0049, TryCatch #4 {CancellationException -> 0x0049, Exception -> 0x0046, blocks: (B:13:0x0041, B:15:0x0071, B:17:0x0075, B:21:0x00a0, B:24:0x00b1, B:32:0x007a), top: B:12:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object invokeSuspend$executeOperation(kotlinx.coroutines.CoroutineScope r10, java.util.Map<java.lang.String, java.lang.Boolean> r11, java.util.List<java.lang.String> r12, java.lang.String r13, kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r14, kotlin.coroutines.Continuation<? super java.lang.Boolean> r15) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$applyIsolation$2.invokeSuspend$executeOperation(kotlinx.coroutines.CoroutineScope, java.util.Map, java.util.List, java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
