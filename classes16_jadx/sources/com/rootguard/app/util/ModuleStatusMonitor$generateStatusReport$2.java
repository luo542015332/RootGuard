package com.rootguard.app.util;

import com.rootguard.app.util.ModuleStatusMonitor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModuleStatusMonitor.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$2", f = "ModuleStatusMonitor.kt", i = {}, l = {281}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class ModuleStatusMonitor$generateStatusReport$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    int label;
    final /* synthetic */ ModuleStatusMonitor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleStatusMonitor$generateStatusReport$2(ModuleStatusMonitor moduleStatusMonitor, Continuation<? super ModuleStatusMonitor$generateStatusReport$2> continuation) {
        super(2, continuation);
        this.this$0 = moduleStatusMonitor;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ModuleStatusMonitor$generateStatusReport$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.label = 1;
                Object checkOverallStatus = this.this$0.checkOverallStatus((Continuation) this);
                if (checkOverallStatus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result = checkOverallStatus;
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ModuleStatusMonitor.OverallStatus status = (ModuleStatusMonitor.OverallStatus) $result;
        StringBuilder sb = new StringBuilder();
        StringBuilder append = sb.append("=== PandaSU 模块状态报告 ===");
        Intrinsics.checkNotNullExpressionValue(append, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append.append('\n'), "append(...)");
        Intrinsics.checkNotNullExpressionValue(sb.append('\n'), "append(...)");
        StringBuilder append2 = sb.append("【基础框架】");
        Intrinsics.checkNotNullExpressionValue(append2, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append2.append('\n'), "append(...)");
        StringBuilder append3 = sb.append("  Magisk: " + (status.getHasMagisk() ? "✅ 已安装" : "❌ 未安装"));
        Intrinsics.checkNotNullExpressionValue(append3, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append3.append('\n'), "append(...)");
        StringBuilder append4 = sb.append("  Zygisk: " + (status.getHasZygisk() ? "✅ 已启用" : "❌ 未启用"));
        Intrinsics.checkNotNullExpressionValue(append4, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append4.append('\n'), "append(...)");
        StringBuilder append5 = sb.append("  LSPosed: " + (status.getHasLSPosed() ? "✅ 已安装" : "❌ 未安装"));
        Intrinsics.checkNotNullExpressionValue(append5, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append5.append('\n'), "append(...)");
        Intrinsics.checkNotNullExpressionValue(sb.append('\n'), "append(...)");
        StringBuilder append6 = sb.append("【隐藏功能】");
        Intrinsics.checkNotNullExpressionValue(append6, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append6.append('\n'), "append(...)");
        StringBuilder append7 = sb.append("  Denylist: " + (status.getHasDenylist() ? "✅ 已配置" : "⚠️ 未配置"));
        Intrinsics.checkNotNullExpressionValue(append7, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append7.append('\n'), "append(...)");
        StringBuilder append8 = sb.append("  Shamiko: " + (status.getHasShamiko() ? "✅ 已安装" : "⚠️ 未安装"));
        Intrinsics.checkNotNullExpressionValue(append8, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append8.append('\n'), "append(...)");
        Intrinsics.checkNotNullExpressionValue(sb.append('\n'), "append(...)");
        StringBuilder append9 = sb.append("【PandaSU 模块】");
        Intrinsics.checkNotNullExpressionValue(append9, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append9.append('\n'), "append(...)");
        StringBuilder append10 = sb.append("  Zygisk 模块: " + (status.getPandaSUZygiskInstalled() ? "✅ 已安装" : "❌ 未安装"));
        Intrinsics.checkNotNullExpressionValue(append10, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append10.append('\n'), "append(...)");
        StringBuilder append11 = sb.append("  LSPosed 模块: " + (status.getPandaSULSPosedInstalled() ? "✅ 已激活" : "❌ 未激活"));
        Intrinsics.checkNotNullExpressionValue(append11, "append(...)");
        Intrinsics.checkNotNullExpressionValue(append11.append('\n'), "append(...)");
        Intrinsics.checkNotNullExpressionValue(sb.append('\n'), "append(...)");
        if (!status.getIssues().isEmpty()) {
            StringBuilder append12 = sb.append("【发现问题】");
            Intrinsics.checkNotNullExpressionValue(append12, "append(...)");
            Intrinsics.checkNotNullExpressionValue(append12.append('\n'), "append(...)");
            Iterable $this$forEach$iv = status.getIssues();
            for (Object element$iv : $this$forEach$iv) {
                String issue = (String) element$iv;
                StringBuilder append13 = sb.append("  ⚠️ " + issue);
                Intrinsics.checkNotNullExpressionValue(append13, "append(...)");
                Intrinsics.checkNotNullExpressionValue(append13.append('\n'), "append(...)");
            }
            Intrinsics.checkNotNullExpressionValue(sb.append('\n'), "append(...)");
        }
        if (true ^ status.getRecommendations().isEmpty()) {
            StringBuilder append14 = sb.append("【优化建议】");
            Intrinsics.checkNotNullExpressionValue(append14, "append(...)");
            Intrinsics.checkNotNullExpressionValue(append14.append('\n'), "append(...)");
            Iterable $this$forEachIndexed$iv = status.getRecommendations();
            int index = 0;
            for (Object item$iv : $this$forEachIndexed$iv) {
                int index$iv = index + 1;
                if (index < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                String rec = (String) item$iv;
                StringBuilder append15 = sb.append("  " + (index + 1) + ". " + rec);
                Intrinsics.checkNotNullExpressionValue(append15, "append(...)");
                Intrinsics.checkNotNullExpressionValue(append15.append('\n'), "append(...)");
                index = index$iv;
            }
        }
        return sb.toString();
    }
}
