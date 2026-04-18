package com.rootguard.app.data.magisk;

import com.rootguard.app.util.RootEnvironmentDetector;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$removeIsolation$2", f = "RootHider.kt", i = {0, 0, 1, 1, 2, 3, 4}, l = {1089, 1090, 1091, 1092, 1093, 1101, 1103, 1112, 1114, 1130, 1138}, m = "invokeSuspend", n = {"rootType", "isolationDir", "rootType", "isolationDir", "rootType", "rootType", "rootType"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$0", "L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$removeIsolation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $packageName;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ RootHider this$0;

    /* compiled from: RootHider.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RootEnvironmentDetector.RootMode.values().length];
            try {
                iArr[RootEnvironmentDetector.RootMode.MAGISK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[RootEnvironmentDetector.RootMode.KERNELSU.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$removeIsolation$2(String str, RootHider rootHider, Continuation<? super RootHider$removeIsolation$2> continuation) {
        super(2, continuation);
        this.$packageName = str;
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$removeIsolation$2(this.$packageName, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:112:0x0208. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:100:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x020b A[Catch: Exception -> 0x0070, TryCatch #0 {Exception -> 0x0070, blocks: (B:65:0x0328, B:73:0x0278, B:75:0x0054, B:94:0x02ff, B:96:0x006a, B:111:0x01ff, B:112:0x0208, B:113:0x020b, B:114:0x0323, B:115:0x020f, B:119:0x0299, B:151:0x01e3, B:144:0x00cb, B:110:0x007d, B:124:0x008b, B:125:0x01b8, B:129:0x0099, B:130:0x018f, B:134:0x00aa, B:135:0x0166, B:139:0x00bb, B:140:0x013b, B:145:0x0112), top: B:2:0x0011, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x020f A[Catch: Exception -> 0x0070, TRY_LEAVE, TryCatch #0 {Exception -> 0x0070, blocks: (B:65:0x0328, B:73:0x0278, B:75:0x0054, B:94:0x02ff, B:96:0x006a, B:111:0x01ff, B:112:0x0208, B:113:0x020b, B:114:0x0323, B:115:0x020f, B:119:0x0299, B:151:0x01e3, B:144:0x00cb, B:110:0x007d, B:124:0x008b, B:125:0x01b8, B:129:0x0099, B:130:0x018f, B:134:0x00aa, B:135:0x0166, B:139:0x00bb, B:140:0x013b, B:145:0x0112), top: B:2:0x0011, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0299 A[Catch: Exception -> 0x0070, TRY_LEAVE, TryCatch #0 {Exception -> 0x0070, blocks: (B:65:0x0328, B:73:0x0278, B:75:0x0054, B:94:0x02ff, B:96:0x006a, B:111:0x01ff, B:112:0x0208, B:113:0x020b, B:114:0x0323, B:115:0x020f, B:119:0x0299, B:151:0x01e3, B:144:0x00cb, B:110:0x007d, B:124:0x008b, B:125:0x01b8, B:129:0x0099, B:130:0x018f, B:134:0x00aa, B:135:0x0166, B:139:0x00bb, B:140:0x013b, B:145:0x0112), top: B:2:0x0011, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01e1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x018e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0165 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x035c A[Catch: Exception -> 0x040b, TRY_LEAVE, TryCatch #2 {Exception -> 0x040b, blocks: (B:30:0x0356, B:32:0x035c), top: B:29:0x0356 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x03e4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0230 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x038a -> B:27:0x0394). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 1090
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$removeIsolation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
