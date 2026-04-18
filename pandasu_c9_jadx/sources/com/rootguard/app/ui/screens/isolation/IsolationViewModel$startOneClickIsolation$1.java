package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.model.OneClickIsolationPreset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$startOneClickIsolation$1", f = "IsolationViewModel.kt", i = {1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3}, l = {338, 364, 371, 381}, m = "invokeSuspend", n = {"allApps", "apps", "destination$iv$iv", "app", "index$iv$iv", "allApps", "apps", "configs", "allApps", "apps", "configs", "successfulCount", "failedCount", "config", "index$iv"}, s = {"L$0", "L$1", "L$4", "L$6", "I$0", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$7", "I$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$startOneClickIsolation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ OneClickIsolationPreset $preset;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$startOneClickIsolation$1(IsolationViewModel isolationViewModel, OneClickIsolationPreset oneClickIsolationPreset, Continuation<? super IsolationViewModel$startOneClickIsolation$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
        this.$preset = oneClickIsolationPreset;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$startOneClickIsolation$1(this.this$0, this.$preset, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:65|(1:10)|11|(1:13)(1:124)|14|15|16|17|18|19|20|21|22|23|(8:100|101|102|(1:104)|105|(1:106)|37|38)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(27:25|26|(1:28)|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|(1:64)(15:65|10|11|(1:13)(1:124)|14|15|16|17|18|19|20|21|22|23|(8:100|101|102|(1:104)|105|(1:106)|37|38)(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0769, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x076a, code lost:
    
        r7 = r52;
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0774, code lost:
    
        r17 = r3;
        r3 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x076f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0770, code lost:
    
        r7 = r52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0787, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0788, code lost:
    
        r7 = r52;
        r18 = r9;
        r9 = r11;
        r12 = r12;
        r13 = r16;
        r2 = r21;
        r8 = r17;
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x079a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x079b, code lost:
    
        r7 = r52;
        r18 = r9;
        r9 = r11;
        r12 = r12;
        r13 = r16;
        r2 = r21;
        r8 = r17;
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x07af, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x07b0, code lost:
    
        r7 = r52;
        r18 = r9;
        r9 = r11;
        r12 = r12;
        r13 = r16;
        r2 = r21;
        r8 = r17;
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x07c5, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x07c6, code lost:
    
        r7 = r52;
        r18 = r9;
        r9 = r11;
        r12 = r12;
        r13 = r16;
        r2 = r21;
        r8 = r17;
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x07da, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x07db, code lost:
    
        r2 = r16;
        r8 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x07e2, code lost:
    
        r7 = r52;
        r18 = r9;
        r9 = r11;
        r13 = r2;
        r2 = r8;
        r8 = r17;
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x07df, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x07e0, code lost:
    
        r8 = r2;
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x07f1, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x07f2, code lost:
    
        r7 = r52;
        r18 = r9;
        r9 = r11;
        r13 = r16;
        r2 = r2;
        r8 = r8;
        r17 = r1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0010. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x084d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0738  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x05a7 A[Catch: Exception -> 0x05fd, TryCatch #21 {Exception -> 0x05fd, blocks: (B:146:0x0597, B:148:0x05a7, B:149:0x05b5), top: B:145:0x0597 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0493 A[Catch: Exception -> 0x0973, TRY_LEAVE, TryCatch #6 {Exception -> 0x0973, blocks: (B:152:0x048d, B:154:0x0493, B:157:0x04a6), top: B:151:0x048d }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0625  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x02a6 A[Catch: Exception -> 0x098a, TRY_LEAVE, TryCatch #18 {Exception -> 0x098a, blocks: (B:201:0x026c, B:202:0x02a0, B:204:0x02a6), top: B:200:0x026c }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x032c A[Catch: Exception -> 0x098f, TryCatch #16 {Exception -> 0x098f, blocks: (B:206:0x02c2, B:211:0x02dc, B:217:0x032c, B:225:0x033e, B:227:0x036f, B:228:0x039b, B:231:0x03e6, B:234:0x03ee, B:235:0x03f5, B:239:0x0448, B:286:0x0236), top: B:285:0x0236 }] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x032f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x036f A[Catch: Exception -> 0x098f, TryCatch #16 {Exception -> 0x098f, blocks: (B:206:0x02c2, B:211:0x02dc, B:217:0x032c, B:225:0x033e, B:227:0x036f, B:228:0x039b, B:231:0x03e6, B:234:0x03ee, B:235:0x03f5, B:239:0x0448, B:286:0x0236), top: B:285:0x0236 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x03ee A[Catch: Exception -> 0x098f, TryCatch #16 {Exception -> 0x098f, blocks: (B:206:0x02c2, B:211:0x02dc, B:217:0x032c, B:225:0x033e, B:227:0x036f, B:228:0x039b, B:231:0x03e6, B:234:0x03ee, B:235:0x03f5, B:239:0x0448, B:286:0x0236), top: B:285:0x0236 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x06a4 A[Catch: Exception -> 0x0967, TRY_LEAVE, TryCatch #13 {Exception -> 0x0967, blocks: (B:23:0x069e, B:25:0x06a4, B:40:0x06af), top: B:22:0x069e }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0236 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:163:0x0580 -> B:137:0x0589). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x071d -> B:10:0x072c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x082f -> B:21:0x0839). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r52) {
        /*
            Method dump skipped, instructions count: 2604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationViewModel$startOneClickIsolation$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
