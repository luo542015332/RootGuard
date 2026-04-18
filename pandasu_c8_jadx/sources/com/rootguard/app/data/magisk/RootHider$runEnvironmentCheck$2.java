package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$runEnvironmentCheck$2", f = "RootHider.kt", i = {0, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 14, 14, 14, 15, 15, 15, 15, 16, 16, 17, 17}, l = {307, 315, 316, 317, 318, 323, 338, 353, 371, 394, 402, 410, 418, 427, 450, 460, 478, 490}, m = "invokeSuspend", n = {"results", "totalScore", "results", "totalScore", "results", "totalScore", "hasHideSuConfig", "results", "totalScore", "hasHideSuConfig", "hasHideMagiskConfig", "results", "totalScore", "hasHideSuConfig", "hasHideMagiskConfig", "hasHideBusyboxConfig", "results", "totalScore", "hasHideSuConfig", "hasHideMagiskConfig", "hasHideBusyboxConfig", "hasHideMagiskAppConfig", "results", "totalScore", "hasHideMagiskConfig", "hasHideBusyboxConfig", "hasHideMagiskAppConfig", "results", "totalScore", "hasHideBusyboxConfig", "hasHideMagiskAppConfig", "results", "pm", "totalScore", "hasHideMagiskAppConfig", "results", "totalScore", "results", "totalScore", "results", "totalScore", "results", "totalScore", "results", "totalScore", "results", "trickyStorePath", "path", "totalScore", "hasTrickyStore", "results", "trickyStorePath", "totalScore", "hasTrickyStore", "results", "totalScore", "results", "totalScore"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "Z$0", "L$0", "I$0", "Z$0", "Z$1", "L$0", "I$0", "Z$0", "Z$1", "Z$2", "L$0", "I$0", "Z$0", "Z$1", "Z$2", "Z$3", "L$0", "I$0", "Z$0", "Z$1", "Z$2", "L$0", "I$0", "Z$0", "Z$1", "L$0", "L$1", "I$0", "Z$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "L$1", "L$3", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1", "L$0", "I$0", "L$0", "I$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$runEnvironmentCheck$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Integer>, Object> {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    boolean Z$0;
    boolean Z$1;
    boolean Z$2;
    boolean Z$3;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$runEnvironmentCheck$2(RootHider rootHider, Continuation<? super RootHider$runEnvironmentCheck$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$runEnvironmentCheck$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Integer> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:100:0x070c  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x069b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x06e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x063a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x067e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x05e0  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0625 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x05c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04cb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x09a1  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x028c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x025d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0231 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x09d3 A[LOOP:1: B:27:0x09cd->B:29:0x09d3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0971  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0933  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x08bb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x08fe A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x08ff  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x08ce  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0817  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x083d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x08aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x08ab  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x083a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x07ce  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x07de  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x07d5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x07d7  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0743  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0756  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0739 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x091c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:158:0x044d -> B:140:0x0452). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:181:0x03a5 -> B:161:0x03aa). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:204:0x02f6 -> B:184:0x02fd). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x07c1 -> B:58:0x07c6). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r28) {
        /*
            Method dump skipped, instructions count: 2626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$runEnvironmentCheck$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
