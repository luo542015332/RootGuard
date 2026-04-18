package com.rootguard.app.ui.screens.envscore;

import com.rootguard.app.data.kernelsu.KernelSUService;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EnvScoreDetailViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1", f = "EnvScoreDetailViewModel.kt", i = {KernelSUService.$stable, KernelSUService.$stable, KernelSUService.$stable, KernelSUService.$stable, KernelSUService.$stable, 1, 1, 1, 1, 4, 4}, l = {201, 204, 229, 231, 235, 253, 255, 256}, m = "invokeSuspend", n = {"suspiciousApps", "detected", "config", "isolatedCount", "failedCount", "suspiciousApps", "detected", "isolatedCount", "failedCount", "remainingResults", "isolatedPackages"}, s = {"L$0", "L$2", "L$3", "I$0", "I$1", "L$0", "L$2", "I$0", "I$1", "L$0", "L$1"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailViewModel$autoIsolateDetectors$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ EnvScoreDetailViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnvScoreDetailViewModel$autoIsolateDetectors$1(EnvScoreDetailViewModel envScoreDetailViewModel, Continuation<? super EnvScoreDetailViewModel$autoIsolateDetectors$1> continuation) {
        super(2, continuation);
        this.this$0 = envScoreDetailViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EnvScoreDetailViewModel$autoIsolateDetectors$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:121|(1:122)|123|124|125|126|(1:128)(4:129|130|131|(1:133)(6:134|115|116|(1:118)(2:158|159)|119|(6:145|(1:147)(1:157)|148|149|150|(1:152)(3:153|107|(1:109)(25:110|95|96|97|98|99|(1:101)|34|(4:37|(3:39|40|41)(1:43)|42|35)|44|45|(2:48|46)|49|50|51|(4:54|(2:56|57)(2:59|60)|58|52)|61|62|(3:73|(4:76|(3:81|82|83)|84|74)|87)(1:66)|67|68|69|(1:71)|26|(1:28)(3:29|20|(1:22)(5:23|10|11|12|13)))))(0)))) */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03d0, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03d1, code lost:
    
        r6 = r42;
        r2 = r0;
        r0 = r11;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0044: MOVE (r1 I:??[OBJECT, ARRAY]) = 
  (r3 I:??[OBJECT, ARRAY] A[D('this' com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1)])
, block:B:212:0x0044 */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0045: MOVE (r3 I:??[OBJECT, ARRAY] A[D('this' com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1)]) = (r4 I:??[OBJECT, ARRAY] A[D('$result' java.lang.Object)]), block:B:212:0x0044 */
    /* JADX WARN: Removed duplicated region for block: B:101:0x04c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x049d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x037e A[Catch: Exception -> 0x03c6, TryCatch #9 {Exception -> 0x03c6, blocks: (B:116:0x0375, B:118:0x037e, B:158:0x03a2), top: B:115:0x0375 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0371 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03a2 A[Catch: Exception -> 0x03c6, TRY_LEAVE, TryCatch #9 {Exception -> 0x03c6, blocks: (B:116:0x0375, B:118:0x037e, B:158:0x03a2), top: B:115:0x0375 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x065f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x063b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x04dd A[Catch: Exception -> 0x0515, TryCatch #6 {Exception -> 0x0515, blocks: (B:34:0x04c7, B:35:0x04d7, B:37:0x04dd, B:40:0x04eb, B:45:0x04ef, B:46:0x04fb, B:48:0x0501, B:99:0x04ac), top: B:98:0x04ac }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0501 A[Catch: Exception -> 0x0515, LOOP:1: B:46:0x04fb->B:48:0x0501, LOOP_END, TRY_LEAVE, TryCatch #6 {Exception -> 0x0515, blocks: (B:34:0x04c7, B:35:0x04d7, B:37:0x04dd, B:40:0x04eb, B:45:0x04ef, B:46:0x04fb, B:48:0x0501, B:99:0x04ac), top: B:98:0x04ac }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0551 A[Catch: Exception -> 0x0072, TryCatch #7 {Exception -> 0x0072, blocks: (B:51:0x0517, B:52:0x054b, B:54:0x0551, B:56:0x0564, B:58:0x0579, B:62:0x057e, B:64:0x0599, B:67:0x05c6, B:73:0x05a4, B:74:0x05a9, B:76:0x05af, B:79:0x05bd, B:82:0x05c1, B:94:0x0063, B:106:0x0069, B:107:0x0484), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0599 A[Catch: Exception -> 0x0072, TryCatch #7 {Exception -> 0x0072, blocks: (B:51:0x0517, B:52:0x054b, B:54:0x0551, B:56:0x0564, B:58:0x0579, B:62:0x057e, B:64:0x0599, B:67:0x05c6, B:73:0x05a4, B:74:0x05a9, B:76:0x05af, B:79:0x05bd, B:82:0x05c1, B:94:0x0063, B:106:0x0069, B:107:0x0484), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0619 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x05af A[Catch: Exception -> 0x0072, TryCatch #7 {Exception -> 0x0072, blocks: (B:51:0x0517, B:52:0x054b, B:54:0x0551, B:56:0x0564, B:58:0x0579, B:62:0x057e, B:64:0x0599, B:67:0x05c6, B:73:0x05a4, B:74:0x05a9, B:76:0x05af, B:79:0x05bd, B:82:0x05c1, B:94:0x0063, B:106:0x0069, B:107:0x0484), top: B:2:0x000b }] */
    /* JADX WARN: Type inference failed for: r16v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v15, types: [com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18, types: [com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20, types: [com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1] */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v34, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x0372 -> B:99:0x0375). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x03db -> B:103:0x025e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r42) {
        /*
            Method dump skipped, instructions count: 1738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$autoIsolateDetectors$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
