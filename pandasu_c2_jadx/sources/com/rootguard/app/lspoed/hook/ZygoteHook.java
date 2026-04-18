package com.rootguard.app.lspoed.hook;

import com.github.kyuubiran.ezxhelper.utils.HookUtilsKt;
import com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ZygoteHook.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \f2\u00020\u0001:\u0001\fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0018\u0010\u0005\u001a\f\u0012\b\u0012\u00060\u0007R\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/rootguard/app/lspoed/hook/ZygoteHook;", "Lcom/rootguard/app/lspoed/hook/IFrameworkHook;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "hooks", "", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "load", "", "unload", "Companion", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class ZygoteHook implements IFrameworkHook {
    private static final String ZYGOTE_PROCESS_CLASS = "com.android.internal.os.ZygoteProcess";
    private final List<XC_MethodHook.Unhook> hooks;
    private final HMAService service;

    public ZygoteHook(HMAService service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
        this.hooks = new ArrayList();
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        XC_MethodHook.Unhook it;
        Method findMethodOrNull$default = MethodUtilsKt.findMethodOrNull$default(ZYGOTE_PROCESS_CLASS, (ClassLoader) null, false, new Function1<Method, Boolean>() { // from class: com.rootguard.app.lspoed.hook.ZygoteHook$load$1
            public final Boolean invoke(Method $this$findMethodOrNull) {
                Intrinsics.checkNotNullParameter($this$findMethodOrNull, "$this$findMethodOrNull");
                return Boolean.valueOf(Intrinsics.areEqual($this$findMethodOrNull.getName(), "start"));
            }
        }, 6, (Object) null);
        if (findMethodOrNull$default != null && (it = HookUtilsKt.hookBefore(findMethodOrNull$default, new Function1<XC_MethodHook.MethodHookParam, Unit>() { // from class: com.rootguard.app.lspoed.hook.ZygoteHook$load$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                invoke((XC_MethodHook.MethodHookParam) p1);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
            
                if ((r8 instanceof java.lang.String) == false) goto L12;
             */
            /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
            
                r6 = (java.lang.String) r8;
             */
            /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
            
                if (r6 != null) goto L14;
             */
            /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
            
                r2 = r6;
                r6 = 0;
                r7 = r1.length;
             */
            /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
            
                if (r6 >= r7) goto L37;
             */
            /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
            
                r8 = r1[r6];
             */
            /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
            
                if ((r8 instanceof int[]) == false) goto L19;
             */
            /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
            
                r6 = r6 + 1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
            
                r5 = r6;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
            
                r3 = r5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
            
                if (r3 >= 0) goto L24;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x0044, code lost:
            
                r5 = r18.this$0.service;
             */
            /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
            
                if (r5.getDetectorApps().contains(r2) == false) goto L42;
             */
            /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
            
                r5 = r1[r3];
                kotlin.jvm.internal.Intrinsics.checkNotNull(r5, "null cannot be cast to non-null type kotlin.IntArray");
                r5 = (int[]) r5;
                r6 = new int[]{3003, 3004, 3005};
                r9 = new java.util.ArrayList();
                r12 = r5.length;
                r13 = 0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
            
                if (r13 >= r12) goto L39;
             */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
            
                r14 = r5[r13];
             */
            /* JADX WARN: Code restructure failed: missing block: B:2:0x0012, code lost:
            
                if (r4 >= 0) goto L4;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x0088, code lost:
            
                if ((!kotlin.collections.ArraysKt.contains(r6, r14)) == false) goto L41;
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x008a, code lost:
            
                r9.add(java.lang.Integer.valueOf(r14));
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
            
                r13 = r13 + 1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x0094, code lost:
            
                r7 = kotlin.collections.CollectionsKt.toIntArray((java.util.List) r9);
                r1[r3] = r7;
                android.util.Log.d("PandaSU-ZygoteHook", "Restricted GIDs for " + r2);
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00b8, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:3:0x0014, code lost:
            
                r7 = r4;
                r4 = r4 - 1;
                r8 = r1[r7];
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x0021, code lost:
            
                r8 = null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x001c, code lost:
            
                if ((r8 instanceof java.lang.String) == false) goto L7;
             */
            /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
            
                if (r4 >= 0) goto L36;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke(de.robv.android.xposed.XC_MethodHook.MethodHookParam r19) {
                /*
                    r18 = this;
                    r0 = r19
                    java.lang.String r1 = "param"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
                    java.lang.Object[] r1 = r0.args
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
                    r2 = r1
                    r3 = 0
                    int r4 = r2.length
                    r5 = -1
                    int r4 = r4 + r5
                    r6 = 0
                    if (r4 < 0) goto L21
                L14:
                    r7 = r4
                    int r4 = r4 + r5
                    r8 = r2[r7]
                    r9 = r8
                    r10 = 0
                    boolean r9 = r9 instanceof java.lang.String
                    if (r9 == 0) goto L1f
                    goto L22
                L1f:
                    if (r4 >= 0) goto L14
                L21:
                    r8 = r6
                L22:
                    boolean r2 = r8 instanceof java.lang.String
                    if (r2 == 0) goto L29
                    r6 = r8
                    java.lang.String r6 = (java.lang.String) r6
                L29:
                    if (r6 != 0) goto L2c
                    return
                L2c:
                    r2 = r6
                    r3 = r1
                    r4 = 0
                    r6 = 0
                    int r7 = r3.length
                L31:
                    if (r6 >= r7) goto L3f
                    r8 = r3[r6]
                    r9 = 0
                    boolean r8 = r8 instanceof int[]
                    if (r8 == 0) goto L3c
                    r5 = r6
                    goto L40
                L3c:
                    int r6 = r6 + 1
                    goto L31
                L3f:
                L40:
                    r3 = r5
                    if (r3 >= 0) goto L44
                    return
                L44:
                    r4 = r18
                    com.rootguard.app.lspoed.hook.ZygoteHook r5 = com.rootguard.app.lspoed.hook.ZygoteHook.this
                    com.rootguard.app.lspoed.HMAService r5 = com.rootguard.app.lspoed.hook.ZygoteHook.access$getService$p(r5)
                    java.util.Set r5 = r5.getDetectorApps()
                    boolean r5 = r5.contains(r2)
                    if (r5 == 0) goto Lb8
                    r5 = r1[r3]
                    java.lang.String r6 = "null cannot be cast to non-null type kotlin.IntArray"
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r6)
                    int[] r5 = (int[]) r5
                    r6 = 3005(0xbbd, float:4.211E-42)
                    r7 = 3003(0xbbb, float:4.208E-42)
                    r8 = 3004(0xbbc, float:4.21E-42)
                    int[] r6 = new int[]{r7, r8, r6}
                    r7 = r5
                    r8 = 0
                    java.util.ArrayList r9 = new java.util.ArrayList
                    r9.<init>()
                    java.util.Collection r9 = (java.util.Collection) r9
                    r10 = r7
                    r11 = 0
                    int r12 = r10.length
                    r13 = 0
                L7b:
                    if (r13 >= r12) goto L94
                    r14 = r10[r13]
                    r15 = r14
                    r16 = 0
                    boolean r17 = kotlin.collections.ArraysKt.contains(r6, r15)
                    r15 = r17 ^ 1
                    if (r15 == 0) goto L91
                    java.lang.Integer r15 = java.lang.Integer.valueOf(r14)
                    r9.add(r15)
                L91:
                    int r13 = r13 + 1
                    goto L7b
                L94:
                    java.util.List r9 = (java.util.List) r9
                    java.util.Collection r9 = (java.util.Collection) r9
                    int[] r7 = kotlin.collections.CollectionsKt.toIntArray(r9)
                    r1[r3] = r7
                    java.lang.StringBuilder r8 = new java.lang.StringBuilder
                    r8.<init>()
                    java.lang.String r9 = "Restricted GIDs for "
                    java.lang.StringBuilder r8 = r8.append(r9)
                    java.lang.StringBuilder r8 = r8.append(r2)
                    java.lang.String r8 = r8.toString()
                    java.lang.String r9 = "PandaSU-ZygoteHook"
                    android.util.Log.d(r9, r8)
                Lb8:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.lspoed.hook.ZygoteHook$load$2.invoke(de.robv.android.xposed.XC_MethodHook$MethodHookParam):void");
            }
        })) != null) {
            this.hooks.add(it);
        }
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void unload() {
        Iterable $this$forEach$iv = this.hooks;
        for (Object element$iv : $this$forEach$iv) {
            XC_MethodHook.Unhook it = (XC_MethodHook.Unhook) element$iv;
            it.unhook();
        }
        this.hooks.clear();
    }
}
