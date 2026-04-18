package com.rootguard.app.ui.screens.envscore;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.RefreshKt;
import androidx.compose.material.icons.filled.ShieldKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import com.rootguard.app.data.kernelsu.KernelSUService;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnvScoreDetailScreen.kt */
@Metadata(k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class ComposableSingletons$EnvScoreDetailScreenKt {
    public static final ComposableSingletons$EnvScoreDetailScreenKt INSTANCE = new ComposableSingletons$EnvScoreDetailScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f0lambda1 = ComposableLambdaKt.composableLambdaInstance(911803799, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda-1$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C69@2557L16:EnvScoreDetailScreen.kt#jjkgld");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(911803799, $changed, -1, "com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt.lambda-1.<anonymous> (EnvScoreDetailScreen.kt:69)");
            }
            TextKt.Text--4IGK_g("环境安全评分详情", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f1lambda2 = ComposableLambdaKt.composableLambdaInstance(677374902, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda-2$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C72@2695L56:EnvScoreDetailScreen.kt#jjkgld");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(677374902, $changed, -1, "com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt.lambda-2.<anonymous> (EnvScoreDetailScreen.kt:72)");
            }
            IconKt.Icon-ww6aTOc(ArrowBackKt.getArrowBack(Icons.INSTANCE.getDefault()), "返回", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f2lambda3 = ComposableLambdaKt.composableLambdaInstance(-63968211, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda-3$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C:EnvScoreDetailScreen.kt#jjkgld");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-63968211, $changed, -1, "com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt.lambda-3.<anonymous> (EnvScoreDetailScreen.kt:282)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-4, reason: not valid java name */
    public static Function3<ColumnScope, Composer, Integer, Unit> f3lambda4 = ComposableLambdaKt.composableLambdaInstance(113200317, false, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda-4$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x070a A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:101:0x06c1  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x05ae A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0565  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x03d1 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0388  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x022c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x021a  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0226  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0376  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0382  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x03bb  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0553  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x055f  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0598  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x06af  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x06bb  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x06f4  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x088a  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0896  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x08c9  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x09de  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x09ea  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0a23  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0b65  */
        /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0a39 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x09f0  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x08df A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x089a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void invoke(androidx.compose.foundation.layout.ColumnScope r130, androidx.compose.runtime.Composer r131, int r132) {
            /*
                Method dump skipped, instructions count: 2921
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda4$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
        }
    });

    /* renamed from: lambda-5, reason: not valid java name */
    public static Function3<ColumnScope, Composer, Integer, Unit> f4lambda5 = ComposableLambdaKt.composableLambdaInstance(-279798628, false, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda-5$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x01ef  */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void invoke(androidx.compose.foundation.layout.ColumnScope r75, androidx.compose.runtime.Composer r76, int r77) {
            /*
                Method dump skipped, instructions count: 499
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda5$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
        }
    });

    /* renamed from: lambda-6, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f5lambda6 = ComposableLambdaKt.composableLambdaInstance(-1303443753, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda-6$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C877@33662L178:EnvScoreDetailScreen.kt#jjkgld");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1303443753, $changed, -1, "com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt.lambda-6.<anonymous> (EnvScoreDetailScreen.kt:877)");
                }
                IconKt.Icon-ww6aTOc(RefreshKt.getRefresh(Icons.INSTANCE.getDefault()), "重新扫描", SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), 0L, $composer, 432, 8);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-7, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f6lambda7 = ComposableLambdaKt.composableLambdaInstance(-1941801430, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt$lambda-7$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((RowScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope $this$Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter($this$Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C968@37588L65,969@37678L28,970@37731L18:EnvScoreDetailScreen.kt#jjkgld");
            if (($changed & 81) != 16 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1941801430, $changed, -1, "com.rootguard.app.ui.screens.envscore.ComposableSingletons$EnvScoreDetailScreenKt.lambda-7.<anonymous> (EnvScoreDetailScreen.kt:968)");
                }
                IconKt.Icon-ww6aTOc(ShieldKt.getShield(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), 0L, $composer, 432, 8);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), $composer, 6);
                TextKt.Text--4IGK_g("一键隔离高风险检测器", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, $composer, 6, 0, 131070);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: getLambda-1$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m0getLambda1$app_debug() {
        return f0lambda1;
    }

    /* renamed from: getLambda-2$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1getLambda2$app_debug() {
        return f1lambda2;
    }

    /* renamed from: getLambda-3$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m2getLambda3$app_debug() {
        return f2lambda3;
    }

    /* renamed from: getLambda-4$app_debug, reason: not valid java name */
    public final Function3<ColumnScope, Composer, Integer, Unit> m3getLambda4$app_debug() {
        return f3lambda4;
    }

    /* renamed from: getLambda-5$app_debug, reason: not valid java name */
    public final Function3<ColumnScope, Composer, Integer, Unit> m4getLambda5$app_debug() {
        return f4lambda5;
    }

    /* renamed from: getLambda-6$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m5getLambda6$app_debug() {
        return f5lambda6;
    }

    /* renamed from: getLambda-7$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6getLambda7$app_debug() {
        return f6lambda7;
    }
}
