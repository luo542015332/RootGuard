package com.rootguard.app.ui.screens.isolation;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.CloseKt;
import androidx.compose.material.icons.filled.ListKt;
import androidx.compose.material.icons.filled.SaveKt;
import androidx.compose.material.icons.filled.SearchKt;
import androidx.compose.material.icons.filled.ShieldKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IsolationScreen.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class ComposableSingletons$IsolationScreenKt {
    public static final ComposableSingletons$IsolationScreenKt INSTANCE = new ComposableSingletons$IsolationScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f0lambda1 = ComposableLambdaKt.composableLambdaInstance(-1962654658, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-1$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C51@2312L35:IsolationScreen.kt#r3e9si");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1962654658, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-1.<anonymous> (IsolationScreen.kt:51)");
            }
            IconKt.Icon-ww6aTOc(ArrowBackKt.getArrowBack(Icons.INSTANCE.getDefault()), "返回", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f5lambda2 = ComposableLambdaKt.composableLambdaInstance(1508572023, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-2$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C56@2572L30:IsolationScreen.kt#r3e9si");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1508572023, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-2.<anonymous> (IsolationScreen.kt:56)");
            }
            IconKt.Icon-ww6aTOc(ListKt.getList(Icons.INSTANCE.getDefault()), "日志", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f6lambda3 = ComposableLambdaKt.composableLambdaInstance(-346549170, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-3$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C61@2801L30:IsolationScreen.kt#r3e9si");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-346549170, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-3.<anonymous> (IsolationScreen.kt:61)");
            }
            IconKt.Icon-ww6aTOc(SaveKt.getSave(Icons.INSTANCE.getDefault()), "保存", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-4, reason: not valid java name */
    public static Function3<LazyItemScope, Composer, Integer, Unit> f7lambda4 = ComposableLambdaKt.composableLambdaInstance(-62447107, false, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-4$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope $this$item, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter($this$item, "$this$item");
            ComposerKt.sourceInformation($composer, "C73@3427L30:IsolationScreen.kt#r3e9si");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-62447107, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-4.<anonymous> (IsolationScreen.kt:73)");
            }
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(32)), $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-5, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f8lambda5 = ComposableLambdaKt.composableLambdaInstance(1089934172, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-5$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((RowScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope $this$Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter($this$Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C142@7816L65,143@7914L28,144@8019L10,144@7975L67:IsolationScreen.kt#r3e9si");
            if (($changed & 81) != 16 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1089934172, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-5.<anonymous> (IsolationScreen.kt:142)");
                }
                IconKt.Icon-ww6aTOc(ShieldKt.getShield(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), 0L, $composer, 432, 8);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), $composer, 6);
                TextKt.Text--4IGK_g("📋 一键隔离所有用户应用", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelMedium(), $composer, 6, 0, 65534);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-6, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f9lambda6 = ComposableLambdaKt.composableLambdaInstance(-1506766525, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-6$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((RowScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope $this$TextButton, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter($this$TextButton, "$this$TextButton");
            ComposerKt.sourceInformation($composer, "C199@11209L10,199@11176L55:IsolationScreen.kt#r3e9si");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1506766525, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-6.<anonymous> (IsolationScreen.kt:199)");
            }
            TextKt.Text--4IGK_g("清除", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall(), $composer, 6, 0, 65534);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-7, reason: not valid java name */
    public static Function3<LazyItemScope, Composer, Integer, Unit> f10lambda7 = ComposableLambdaKt.composableLambdaInstance(115482664, false, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-7$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x017e  */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void invoke(androidx.compose.foundation.lazy.LazyItemScope r35, androidx.compose.runtime.Composer r36, int r37) {
            /*
                Method dump skipped, instructions count: 386
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda7$1.invoke(androidx.compose.foundation.lazy.LazyItemScope, androidx.compose.runtime.Composer, int):void");
        }
    });

    /* renamed from: lambda-8, reason: not valid java name */
    public static Function3<LazyItemScope, Composer, Integer, Unit> f11lambda8 = ComposableLambdaKt.composableLambdaInstance(1026778632, false, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-8$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(LazyItemScope $this$item, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter($this$item, "$this$item");
            ComposerKt.sourceInformation($composer, "C212@12216L30:IsolationScreen.kt#r3e9si");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1026778632, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-8.<anonymous> (IsolationScreen.kt:212)");
            }
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16)), $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-9, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f12lambda9 = ComposableLambdaKt.composableLambdaInstance(-1087365829, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-9$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C224@12623L11,224@12580L84:IsolationScreen.kt#r3e9si");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1087365829, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-9.<anonymous> (IsolationScreen.kt:224)");
            }
            TextKt.Text--4IGK_g("搜索应用名称或包名...", (Modifier) null, Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurface-0d7_KjU(), 0.4f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, $composer, 6, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-10, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f1lambda10 = ComposableLambdaKt.composableLambdaInstance(1397697882, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-10$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C225@12746L11,225@12692L95:IsolationScreen.kt#r3e9si");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1397697882, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-10.<anonymous> (IsolationScreen.kt:225)");
            }
            IconKt.Icon-ww6aTOc(SearchKt.getSearch(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurface-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), $composer, 48, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-11, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f2lambda11 = ComposableLambdaKt.composableLambdaInstance(-474105215, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-11$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C226@12939L11,226@12886L127:IsolationScreen.kt#r3e9si");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-474105215, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-11.<anonymous> (IsolationScreen.kt:226)");
            }
            IconKt.Icon-ww6aTOc(CloseKt.getClose(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(20)), Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurface-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), $composer, 432, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-12, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f3lambda12 = ComposableLambdaKt.composableLambdaInstance(1863468534, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-12$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C292@17731L10,292@17841L11,292@17698L164:IsolationScreen.kt#r3e9si");
            if (($changed & 11) == 2 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1863468534, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-12.<anonymous> (IsolationScreen.kt:292)");
            }
            TextKt.Text--4IGK_g("系统", PaddingKt.padding-VpY3zN4(Modifier.Companion, Dp.constructor-impl(6), Dp.constructor-impl(1)), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getTertiary-0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall(), $composer, 54, 0, 65528);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-13, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f4lambda13 = ComposableLambdaKt.composableLambdaInstance(-1690131162, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt$lambda-13$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C405@24168L64:IsolationScreen.kt#r3e9si");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1690131162, $changed, -1, "com.rootguard.app.ui.screens.isolation.ComposableSingletons$IsolationScreenKt.lambda-13.<anonymous> (IsolationScreen.kt:405)");
                }
                IconKt.Icon-ww6aTOc(CloseKt.getClose(Icons.INSTANCE.getDefault()), "关闭", SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(18)), 0L, $composer, 432, 8);
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

    /* renamed from: getLambda-10$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1getLambda10$app_debug() {
        return f1lambda10;
    }

    /* renamed from: getLambda-11$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m2getLambda11$app_debug() {
        return f2lambda11;
    }

    /* renamed from: getLambda-12$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m3getLambda12$app_debug() {
        return f3lambda12;
    }

    /* renamed from: getLambda-13$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4getLambda13$app_debug() {
        return f4lambda13;
    }

    /* renamed from: getLambda-2$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m5getLambda2$app_debug() {
        return f5lambda2;
    }

    /* renamed from: getLambda-3$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m6getLambda3$app_debug() {
        return f6lambda3;
    }

    /* renamed from: getLambda-4$app_debug, reason: not valid java name */
    public final Function3<LazyItemScope, Composer, Integer, Unit> m7getLambda4$app_debug() {
        return f7lambda4;
    }

    /* renamed from: getLambda-5$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m8getLambda5$app_debug() {
        return f8lambda5;
    }

    /* renamed from: getLambda-6$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m9getLambda6$app_debug() {
        return f9lambda6;
    }

    /* renamed from: getLambda-7$app_debug, reason: not valid java name */
    public final Function3<LazyItemScope, Composer, Integer, Unit> m10getLambda7$app_debug() {
        return f10lambda7;
    }

    /* renamed from: getLambda-8$app_debug, reason: not valid java name */
    public final Function3<LazyItemScope, Composer, Integer, Unit> m11getLambda8$app_debug() {
        return f11lambda8;
    }

    /* renamed from: getLambda-9$app_debug, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m12getLambda9$app_debug() {
        return f12lambda9;
    }
}
