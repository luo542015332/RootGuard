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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/data/magisk/RootHider$DetectionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$runEnvironmentCheckDetail$2", f = "RootHider.kt", i = {0, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 10, 11, 12, 13, 13, 13, 14, 14, 15, 16}, l = {510, 518, 519, 520, 521, 526, 540, 554, 570, 588, 593, 598, 603, 619, 627, 638, 643}, m = "invokeSuspend", n = {"results", "results", "results", "hasHideSuConfig", "results", "hasHideSuConfig", "hasHideMagiskConfig", "results", "hasHideSuConfig", "hasHideMagiskConfig", "hasHideBusyboxConfig", "results", "hasHideSuConfig", "hasHideMagiskConfig", "hasHideBusyboxConfig", "hasHideMagiskAppConfig", "results", "hasHideMagiskConfig", "hasHideBusyboxConfig", "hasHideMagiskAppConfig", "results", "hasHideBusyboxConfig", "hasHideMagiskAppConfig", "results", "pm", "hasHideMagiskAppConfig", "results", "results", "results", "results", "results", "path", "hasTs", "results", "hasTs", "results", "results"}, s = {"L$0", "L$0", "L$0", "I$0", "L$0", "I$0", "I$1", "L$0", "I$0", "I$1", "I$2", "L$0", "I$0", "I$1", "I$2", "I$3", "L$0", "I$0", "I$1", "I$2", "L$0", "I$0", "I$1", "L$0", "L$1", "I$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$2", "I$0", "L$0", "I$0", "L$0", "L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$runEnvironmentCheckDetail$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<RootHider.DetectionResult>>, Object> {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$runEnvironmentCheckDetail$2(RootHider rootHider, Continuation<? super RootHider$runEnvironmentCheckDetail$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$runEnvironmentCheckDetail$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<RootHider.DetectionResult>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x057c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x054c  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x04b9  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x08b1  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x08e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x08e9  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x08b3  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x083d  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0266 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0230 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x085c  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x01ff A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0898 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0899  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x085e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0801  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x080e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x084a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0807  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x07d5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0809  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0787  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x076f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x071c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x071d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x06c1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x066b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x059e  */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v14, types: [int] */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v29, types: [int] */
    /* JADX WARN: Type inference failed for: r11v43, types: [int] */
    /* JADX WARN: Type inference failed for: r11v44, types: [int] */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14, types: [int] */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v24, types: [int] */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v36, types: [int] */
    /* JADX WARN: Type inference failed for: r12v37, types: [int] */
    /* JADX WARN: Type inference failed for: r12v51 */
    /* JADX WARN: Type inference failed for: r12v54 */
    /* JADX WARN: Type inference failed for: r12v55 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v8, types: [int] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v10, types: [int] */
    /* JADX WARN: Type inference failed for: r13v20, types: [int] */
    /* JADX WARN: Type inference failed for: r13v21, types: [int] */
    /* JADX WARN: Type inference failed for: r13v29 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v5, types: [int] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r15v11, types: [int] */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r6v127 */
    /* JADX WARN: Type inference failed for: r6v128, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v83 */
    /* JADX WARN: Type inference failed for: r6v86, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v96 */
    /* JADX WARN: Type inference failed for: r6v97 */
    /* JADX WARN: Type inference failed for: r7v83, types: [int] */
    /* JADX WARN: Type inference failed for: r7v87, types: [int] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [int] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v79, types: [int] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v80 */
    /* JADX WARN: Type inference failed for: r8v81, types: [int] */
    /* JADX WARN: Type inference failed for: r8v9, types: [int] */
    /* JADX WARN: Type inference failed for: r8v95 */
    /* JADX WARN: Type inference failed for: r8v96 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v17, types: [int] */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v32, types: [int] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v61, types: [int] */
    /* JADX WARN: Type inference failed for: r9v63, types: [int] */
    /* JADX WARN: Type inference failed for: r9v65, types: [int] */
    /* JADX WARN: Type inference failed for: r9v68 */
    /* JADX WARN: Type inference failed for: r9v7, types: [int] */
    /* JADX WARN: Type inference failed for: r9v71 */
    /* JADX WARN: Type inference failed for: r9v72 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:124:0x04d5 -> B:97:0x04da). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:156:0x0400 -> B:127:0x0405). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:188:0x0327 -> B:159:0x032d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x07f4 -> B:33:0x07f9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 2420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$runEnvironmentCheckDetail$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
