package com.rootguard.app.ui.screens.envscore;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import com.rootguard.app.data.kernelsu.KernelSUService;
import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.util.DetectorScanner;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnvScoreDetailScreen.kt */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u00020\u00012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H\u0007¢\u0006\u0002\u0010\u0007\u001aG\u0010\b\u001a\u00020\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00010\u000fH\u0007¢\u0006\u0002\u0010\u0011\u001a%\u0010\u0012\u001a\u00020\u00012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0002\u0010\u0016\u001aG\u0010\u0017\u001a\u00020\u00012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\b\b\u0002\u0010\r\u001a\u00020\f2\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00010\u000fH\u0007¢\u0006\u0002\u0010\u0019\u001a\"\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u0015\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#H\u0007¢\u0006\u0002\u0010$\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006%²\u0006\n\u0010&\u001a\u00020'X\u008a\u008e\u0002²\u0006\u0010\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u008a\u0084\u0002²\u0006\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003X\u008a\u0084\u0002²\u0006\n\u0010\r\u001a\u00020\fX\u008a\u0084\u0002²\u0006\u0010\u0010(\u001a\b\u0012\u0004\u0012\u00020\n0\u0003X\u008a\u0084\u0002²\u0006\n\u0010\u000b\u001a\u00020\fX\u008a\u0084\u0002²\u0006\f\u0010)\u001a\u0004\u0018\u00010\u001cX\u008a\u0084\u0002"}, d2 = {"DetailTabContent", "", "envChecks", "", "Lcom/rootguard/app/data/magisk/RootHider$DetectionResult;", "moduleStatuses", "Lcom/rootguard/app/data/magisk/RootHider$ModuleStatus;", "(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/Composer;II)V", "DetectorScanCard", "results", "Lcom/rootguard/app/util/DetectorScanner$DetectedApp;", "isScanning", "", "isLoading", "onRescan", "Lkotlin/Function0;", "onAutoIsolate", "(Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "EnvScoreDetailScreen", "onNavigateBack", "viewModel", "Lcom/rootguard/app/ui/screens/envscore/EnvScoreDetailViewModel;", "(Lkotlin/jvm/functions/Function0;Lcom/rootguard/app/ui/screens/envscore/EnvScoreDetailViewModel;Landroidx/compose/runtime/Composer;II)V", "OverviewTabContent", "onRefresh", "(Ljava/util/List;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "RiskBadge", "text", "", "color", "Landroidx/compose/ui/graphics/Color;", "RiskBadge-RPmYEkk", "(Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V", "ScoreDetailCard", "item", "Lcom/rootguard/app/ui/screens/envscore/ScoreItem;", "(Lcom/rootguard/app/ui/screens/envscore/ScoreItem;Landroidx/compose/runtime/Composer;I)V", "app_debug", "selectedTabIndex", "", "detectorResults", "message"}, k = 2, mv = {1, 9, KernelSUService.$stable}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailScreenKt {
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void EnvScoreDetailScreen(final kotlin.jvm.functions.Function0<kotlin.Unit> r37, com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel r38, androidx.compose.runtime.Composer r39, final int r40, final int r41) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt.EnvScoreDetailScreen(kotlin.jvm.functions.Function0, com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int EnvScoreDetailScreen$lambda$1(MutableState<Integer> mutableState) {
        State $this$getValue$iv = (State) mutableState;
        return ((Number) $this$getValue$iv.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void EnvScoreDetailScreen$lambda$2(MutableState<Integer> mutableState, int value) {
        Object value$iv = Integer.valueOf(value);
        mutableState.setValue(value$iv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<RootHider.DetectionResult> EnvScoreDetailScreen$lambda$3(State<? extends List<RootHider.DetectionResult>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<RootHider.ModuleStatus> EnvScoreDetailScreen$lambda$4(State<? extends List<RootHider.ModuleStatus>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean EnvScoreDetailScreen$lambda$5(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<DetectorScanner.DetectedApp> EnvScoreDetailScreen$lambda$6(State<? extends List<DetectorScanner.DetectedApp>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean EnvScoreDetailScreen$lambda$7(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String EnvScoreDetailScreen$lambda$8(State<String> state) {
        Object thisObj$iv = state.getValue();
        return (String) thisObj$iv;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0614  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0690  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OverviewTabContent(java.util.List<com.rootguard.app.data.magisk.RootHider.DetectionResult> r51, java.util.List<com.rootguard.app.data.magisk.RootHider.ModuleStatus> r52, boolean r53, kotlin.jvm.functions.Function0<kotlin.Unit> r54, androidx.compose.runtime.Composer r55, final int r56, final int r57) {
        /*
            Method dump skipped, instructions count: 1713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt.OverviewTabContent(java.util.List, java.util.List, boolean, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0419 A[LOOP:0: B:60:0x0413->B:62:0x0419, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x03cc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void DetailTabContent(java.util.List<com.rootguard.app.data.magisk.RootHider.DetectionResult> r72, java.util.List<com.rootguard.app.data.magisk.RootHider.ModuleStatus> r73, androidx.compose.runtime.Composer r74, final int r75, final int r76) {
        /*
            Method dump skipped, instructions count: 1483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt.DetailTabContent(java.util.List, java.util.List, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void ScoreDetailCard(final ScoreItem item, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(item, "item");
        Composer $composer2 = $composer.startRestartGroup(794874871);
        ComposerKt.sourceInformation($composer2, "C(ScoreDetailCard)741@28602L11,740@28539L100,738@28443L3215:EnvScoreDetailScreen.kt#jjkgld");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(item) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 11) != 2 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(794874871, $dirty2, -1, "com.rootguard.app.ui.screens.envscore.ScoreDetailCard (EnvScoreDetailScreen.kt:737)");
            }
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), (Shape) null, CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface-0d7_KjU(), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, 854852457, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$ScoreDetailCard$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(3);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                    invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01de  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x01ea  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x02b4  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x038b  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x0397  */
                /* JADX WARN: Removed duplicated region for block: B:44:0x03d0  */
                /* JADX WARN: Removed duplicated region for block: B:49:0x04fb  */
                /* JADX WARN: Removed duplicated region for block: B:52:0x0507  */
                /* JADX WARN: Removed duplicated region for block: B:55:0x0540  */
                /* JADX WARN: Removed duplicated region for block: B:60:0x05d4  */
                /* JADX WARN: Removed duplicated region for block: B:63:0x06d2  */
                /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:66:0x05ec  */
                /* JADX WARN: Removed duplicated region for block: B:71:0x0556 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:72:0x050d  */
                /* JADX WARN: Removed duplicated region for block: B:74:0x03e6 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:75:0x039d  */
                /* JADX WARN: Removed duplicated region for block: B:76:0x02bb  */
                /* JADX WARN: Removed duplicated region for block: B:82:0x01f0  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke(androidx.compose.foundation.layout.ColumnScope r102, androidx.compose.runtime.Composer r103, int r104) {
                    /*
                        Method dump skipped, instructions count: 1750
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$ScoreDetailCard$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
                }
            }), $composer2, 196614, 26);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$ScoreDetailCard$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    EnvScoreDetailScreenKt.ScoreDetailCard(ScoreItem.this, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final void DetectorScanCard(final List<DetectorScanner.DetectedApp> list, final boolean isScanning, final boolean isLoading, final Function0<Unit> function0, final Function0<Unit> function02, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(list, "results");
        Intrinsics.checkNotNullParameter(function0, "onRescan");
        Intrinsics.checkNotNullParameter(function02, "onAutoIsolate");
        Composer $composer2 = $composer.startRestartGroup(2018299786);
        ComposerKt.sourceInformation($composer2, "C(DetectorScanCard)P(4,1!1,3)837@32109L11,836@32054L110,832@31933L6533:EnvScoreDetailScreen.kt#jjkgld");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2018299786, $changed, -1, "com.rootguard.app.ui.screens.envscore.DetectorScanCard (EnvScoreDetailScreen.kt:831)");
        }
        CardKt.Card(PaddingKt.padding-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(16)), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(16)), CardDefaults.INSTANCE.cardColors-ro_MJ88(Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getErrorContainer-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, 360036092, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$DetectorScanCard$1

            /* compiled from: EnvScoreDetailScreen.kt */
            @Metadata(k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[DetectorScanner.RiskLevel.values().length];
                    try {
                        iArr[DetectorScanner.RiskLevel.CRITICAL.ordinal()] = 1;
                    } catch (NoSuchFieldError e) {
                    }
                    try {
                        iArr[DetectorScanner.RiskLevel.HIGH.ordinal()] = 2;
                    } catch (NoSuchFieldError e2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:102:0x09f0  */
            /* JADX WARN: Removed duplicated region for block: B:110:0x0b53  */
            /* JADX WARN: Removed duplicated region for block: B:113:0x0b5d  */
            /* JADX WARN: Removed duplicated region for block: B:115:0x0b67  */
            /* JADX WARN: Removed duplicated region for block: B:119:0x09f6  */
            /* JADX WARN: Removed duplicated region for block: B:126:0x0c08  */
            /* JADX WARN: Removed duplicated region for block: B:129:0x0c8c  */
            /* JADX WARN: Removed duplicated region for block: B:147:0x0e50  */
            /* JADX WARN: Removed duplicated region for block: B:156:0x0f0e  */
            /* JADX WARN: Removed duplicated region for block: B:158:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:159:0x07c0  */
            /* JADX WARN: Removed duplicated region for block: B:160:0x0725  */
            /* JADX WARN: Removed duplicated region for block: B:162:0x06a9 A[ADDED_TO_REGION] */
            /* JADX WARN: Removed duplicated region for block: B:163:0x0660  */
            /* JADX WARN: Removed duplicated region for block: B:164:0x04d5  */
            /* JADX WARN: Removed duplicated region for block: B:166:0x0381 A[ADDED_TO_REGION] */
            /* JADX WARN: Removed duplicated region for block: B:167:0x0338  */
            /* JADX WARN: Removed duplicated region for block: B:170:0x0205  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x01f3  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x01ff  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x0326  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x0332  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x036b  */
            /* JADX WARN: Removed duplicated region for block: B:46:0x0485  */
            /* JADX WARN: Removed duplicated region for block: B:50:0x0559  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x05ac A[LOOP:1: B:59:0x05a6->B:61:0x05ac, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:65:0x064e  */
            /* JADX WARN: Removed duplicated region for block: B:68:0x065a  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0693  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x0720  */
            /* JADX WARN: Removed duplicated region for block: B:79:0x0773  */
            /* JADX WARN: Removed duplicated region for block: B:82:0x07bd  */
            /* JADX WARN: Removed duplicated region for block: B:86:0x082c  */
            /* JADX WARN: Removed duplicated region for block: B:99:0x09e4  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke(androidx.compose.foundation.layout.ColumnScope r147, androidx.compose.runtime.Composer r148, int r149) {
                /*
                    Method dump skipped, instructions count: 3866
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$DetectorScanCard$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
            }
        }), $composer2, 196614, 24);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$DetectorScanCard$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    EnvScoreDetailScreenKt.DetectorScanCard(list, isScanning, isLoading, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* renamed from: RiskBadge-RPmYEkk, reason: not valid java name */
    public static final void m7RiskBadgeRPmYEkk(final String text, final long color, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(text, "text");
        Composer $composer3 = $composer.startRestartGroup(1675138751);
        ComposerKt.sourceInformation($composer3, "C(RiskBadge)P(1,0:c#ui.graphics.Color)996@38530L307:EnvScoreDetailScreen.kt#jjkgld");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(text) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changed(color) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1675138751, $dirty2, -1, "com.rootguard.app.ui.screens.envscore.RiskBadge (EnvScoreDetailScreen.kt:995)");
            }
            $composer2 = $composer3;
            SurfaceKt.Surface-T9BRK9s((Modifier) null, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(4)), Color.copy-wmQWz5c$default(color, 0.2f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer3, -1680625276, true, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$RiskBadge$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                    invoke((Composer) p1, ((Number) p2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C1002@38696L10,1000@38638L193:EnvScoreDetailScreen.kt#jjkgld");
                    if (($changed2 & 11) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1680625276, $changed2, -1, "com.rootguard.app.ui.screens.envscore.RiskBadge.<anonymous> (EnvScoreDetailScreen.kt:1000)");
                        }
                        TextKt.Text--4IGK_g(text, PaddingKt.padding-VpY3zN4(Modifier.Companion, Dp.constructor-impl(8), Dp.constructor-impl(4)), color, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer4, MaterialTheme.$stable).getLabelSmall(), $composer4, 48, 0, 65528);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), $composer2, 12582912, 121);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$RiskBadge$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    EnvScoreDetailScreenKt.m7RiskBadgeRPmYEkk(text, color, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
