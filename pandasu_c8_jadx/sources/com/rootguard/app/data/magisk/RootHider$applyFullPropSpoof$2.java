package com.rootguard.app.data.magisk;

import com.rootguard.app.utils.AndroidVersionCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$applyFullPropSpoof$2", f = "RootHider.kt", i = {1, 2, 3, 4, 5, 5, 5, 5, 5}, l = {156, 212, 215, 216, 217, 225}, m = "invokeSuspend", n = {"allProps", "allProps", "allProps", "allProps", "allProps", "ok", "fail", "k", "v"}, s = {"L$0", "L$0", "L$0", "L$0", "L$0", "L$1", "L$2", "L$5", "L$6"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$applyFullPropSpoof$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    final /* synthetic */ RootHider this$0;

    /* compiled from: RootHider.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AndroidVersionCompat.DeviceManufacturer.values().length];
            try {
                iArr[AndroidVersionCompat.DeviceManufacturer.XIAOMI.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[AndroidVersionCompat.DeviceManufacturer.OPPO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[AndroidVersionCompat.DeviceManufacturer.HUAWEI.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[AndroidVersionCompat.DeviceManufacturer.VIVO.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[AndroidVersionCompat.DeviceManufacturer.SAMSUNG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$applyFullPropSpoof$2(RootHider rootHider, Continuation<? super RootHider$applyFullPropSpoof$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$applyFullPropSpoof$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0296 A[Catch: Exception -> 0x02ca, TryCatch #3 {Exception -> 0x02ca, blocks: (B:11:0x028e, B:13:0x0296, B:35:0x029c), top: B:10:0x028e }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x023c A[Catch: Exception -> 0x007c, TRY_LEAVE, TryCatch #1 {Exception -> 0x007c, blocks: (B:8:0x0038, B:15:0x0236, B:17:0x023c, B:21:0x02cf, B:23:0x0307, B:40:0x0046, B:41:0x01eb, B:42:0x01f9, B:44:0x0053, B:45:0x01d8, B:49:0x0060, B:50:0x01c5, B:54:0x006d, B:77:0x0073, B:106:0x0088), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x02cf A[Catch: Exception -> 0x007c, TRY_ENTER, TryCatch #1 {Exception -> 0x007c, blocks: (B:8:0x0038, B:15:0x0236, B:17:0x023c, B:21:0x02cf, B:23:0x0307, B:40:0x0046, B:41:0x01eb, B:42:0x01f9, B:44:0x0053, B:45:0x01d8, B:49:0x0060, B:50:0x01c5, B:54:0x006d, B:77:0x0073, B:106:0x0088), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x029c A[Catch: Exception -> 0x02ca, TRY_LEAVE, TryCatch #3 {Exception -> 0x02ca, blocks: (B:11:0x028e, B:13:0x0296, B:35:0x029c), top: B:10:0x028e }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01ea A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00aa A[Catch: Exception -> 0x00b7, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x00b7, blocks: (B:83:0x00aa, B:94:0x0127, B:95:0x012f, B:96:0x0137, B:97:0x013f, B:98:0x0150, B:100:0x0164), top: B:81:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00bc A[Catch: Exception -> 0x0321, TRY_ENTER, TryCatch #7 {Exception -> 0x0321, blocks: (B:80:0x00a2, B:85:0x00bc, B:86:0x0121, B:87:0x0124, B:88:0x016c, B:89:0x0171), top: B:79:0x00a2 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0284 -> B:10:0x028e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$applyFullPropSpoof$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
