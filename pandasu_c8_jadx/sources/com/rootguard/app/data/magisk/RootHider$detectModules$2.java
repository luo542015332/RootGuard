package com.rootguard.app.data.magisk;

import com.rootguard.app.data.magisk.RootHider;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/data/magisk/RootHider$ModuleStatus;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$detectModules$2", f = "RootHider.kt", i = {0, 1, 2, 3, 4, 5, 6, 7}, l = {256, 262, 262, 268, 274, 274, 280, 280}, m = "invokeSuspend", n = {"modules", "modules", "modules", "modules", "modules", "modules", "modules", "modules"}, s = {"L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$detectModules$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<RootHider.ModuleStatus>>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$detectModules$2(RootHider rootHider, Continuation<? super RootHider$detectModules$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$detectModules$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<RootHider.ModuleStatus>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:40|29|(2:31|(1:33)(3:34|7|(1:9)(11:27|11|12|13|14|15|16|17|(1:19)|20|21)))|10|11|12|13|14|15|16|17|(0)|20|21) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0204, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0169 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x01db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$detectModules$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
