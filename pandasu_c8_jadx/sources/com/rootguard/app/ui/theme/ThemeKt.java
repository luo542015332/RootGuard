package com.rootguard.app.ui.theme;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.compose.foundation.DarkThemeKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.DynamicTonalPaletteKt;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.Shapes;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.view.WindowCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Theme.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a>\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\f0\u0013¢\u0006\u0002\b\u0014H\u0007¢\u0006\u0002\u0010\u0015\u001a\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000e\"\u0013\u0010\u0000\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0006\u0010\u0003\"\u0013\u0010\u0007\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\b\u0010\u0003\"\u0013\u0010\t\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\n\u0010\u0003¨\u0006\u0018"}, d2 = {"errorColor", "Landroidx/compose/ui/graphics/Color;", "getErrorColor", "()J", "J", "infoColor", "getInfoColor", "successColor", "getSuccessColor", "warningColor", "getWarningColor", "RootGuardTheme", "", "darkTheme", "", "dynamicColor", "themeId", "", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(ZZLjava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "getPandaColorScheme", "Landroidx/compose/material3/ColorScheme;", "app_debug"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class ThemeKt {
    private static final long successColor = androidx.compose.ui.graphics.ColorKt.Color(4283215696L);
    private static final long warningColor = androidx.compose.ui.graphics.ColorKt.Color(4294940672L);
    private static final long errorColor = androidx.compose.ui.graphics.ColorKt.Color(4294198070L);
    private static final long infoColor = androidx.compose.ui.graphics.ColorKt.Color(4280391411L);

    public static final long getSuccessColor() {
        return successColor;
    }

    public static final long getWarningColor() {
        return warningColor;
    }

    public static final long getErrorColor() {
        return errorColor;
    }

    public static final long getInfoColor() {
        return infoColor;
    }

    public static final ColorScheme getPandaColorScheme(String themeId, boolean darkTheme) {
        Intrinsics.checkNotNullParameter(themeId, "themeId");
        PandaTheme theme = PandaThemeKt.getPandaTheme(themeId);
        if (darkTheme || theme.isDark()) {
            return ColorSchemeKt.darkColorScheme-G1PFc-w$default(theme.m17getPrimary0d7_KjU(), theme.m15getOnPrimary0d7_KjU(), 0L, 0L, 0L, theme.m18getSecondary0d7_KjU(), 0L, 0L, 0L, theme.m20getTertiary0d7_KjU(), 0L, 0L, 0L, theme.m13getBackground0d7_KjU(), theme.m14getOnBackground0d7_KjU(), theme.m19getSurface0d7_KjU(), theme.m16getOnSurface0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 536747484, (Object) null);
        }
        return ColorSchemeKt.lightColorScheme-G1PFc-w$default(theme.m17getPrimary0d7_KjU(), theme.m15getOnPrimary0d7_KjU(), 0L, 0L, 0L, theme.m18getSecondary0d7_KjU(), 0L, 0L, 0L, theme.m20getTertiary0d7_KjU(), 0L, 0L, 0L, theme.m13getBackground0d7_KjU(), theme.m14getOnBackground0d7_KjU(), theme.m19getSurface0d7_KjU(), theme.m16getOnSurface0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 536747484, (Object) null);
    }

    public static final void RootGuardTheme(boolean darkTheme, boolean dynamicColor, String themeId, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        boolean darkTheme2;
        boolean z;
        String str;
        int $dirty;
        final boolean darkTheme3;
        boolean dynamicColor2;
        String themeId2;
        ColorScheme pandaColorScheme;
        int i2;
        Intrinsics.checkNotNullParameter(function2, "content");
        Composer $composer2 = $composer.startRestartGroup(-1966062816);
        ComposerKt.sourceInformation($composer2, "C(RootGuardTheme)P(1,2,3)57@1880L21,70@2362L7,79@2666L114:Theme.kt#igbqk4");
        int $dirty2 = $changed;
        if (($changed & 14) == 0) {
            if ((i & 1) == 0) {
                darkTheme2 = darkTheme;
                if ($composer2.changed(darkTheme2)) {
                    i2 = 4;
                    $dirty2 |= i2;
                }
            } else {
                darkTheme2 = darkTheme;
            }
            i2 = 2;
            $dirty2 |= i2;
        } else {
            darkTheme2 = darkTheme;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty2 |= 48;
            z = dynamicColor;
        } else if (($changed & 112) == 0) {
            z = dynamicColor;
            $dirty2 |= $composer2.changed(z) ? 32 : 16;
        } else {
            z = dynamicColor;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty2 |= 384;
            str = themeId;
        } else if (($changed & 896) == 0) {
            str = themeId;
            $dirty2 |= $composer2.changed(str) ? 256 : 128;
        } else {
            str = themeId;
        }
        if ((i & 8) != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 7168) == 0) {
            $dirty2 |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        if (($dirty2 & 5851) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            darkTheme3 = darkTheme2;
            dynamicColor2 = z;
            themeId2 = str;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if ((i & 1) != 0) {
                    darkTheme2 = DarkThemeKt.isSystemInDarkTheme($composer2, 0);
                    $dirty2 &= -15;
                }
                boolean dynamicColor3 = i3 != 0 ? false : z;
                if (i4 != 0) {
                    $dirty = $dirty2;
                    darkTheme3 = darkTheme2;
                    dynamicColor2 = dynamicColor3;
                    themeId2 = "classic";
                } else {
                    $dirty = $dirty2;
                    darkTheme3 = darkTheme2;
                    dynamicColor2 = dynamicColor3;
                    themeId2 = str;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 1) != 0) {
                    $dirty2 &= -15;
                }
                $dirty = $dirty2;
                darkTheme3 = darkTheme2;
                dynamicColor2 = z;
                themeId2 = str;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1966062816, $dirty, -1, "com.rootguard.app.ui.theme.RootGuardTheme (Theme.kt:61)");
            }
            $composer2.startReplaceableGroup(-2011837135);
            ComposerKt.sourceInformation($composer2, "64@2155L7");
            if (!dynamicColor2 || Build.VERSION.SDK_INT < 31) {
                pandaColorScheme = getPandaColorScheme(themeId2, darkTheme3);
            } else {
                CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalContext();
                ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume = $composer2.consume(this_$iv);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Context context = (Context) consume;
                pandaColorScheme = darkTheme3 ? DynamicTonalPaletteKt.dynamicDarkColorScheme(context) : DynamicTonalPaletteKt.dynamicLightColorScheme(context);
            }
            $composer2.endReplaceableGroup();
            final ColorScheme colorScheme = pandaColorScheme;
            CompositionLocal this_$iv2 = AndroidCompositionLocals_androidKt.getLocalView();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = $composer2.consume(this_$iv2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final View view = (View) consume2;
            $composer2.startReplaceableGroup(-2011836794);
            ComposerKt.sourceInformation($composer2, "72@2408L246");
            if (!view.isInEditMode()) {
                EffectsKt.SideEffect(new Function0<Unit>() { // from class: com.rootguard.app.ui.theme.ThemeKt$RootGuardTheme$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    public /* bridge */ /* synthetic */ Object invoke() {
                        m21invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m21invoke() {
                        Context context2 = view.getContext();
                        Intrinsics.checkNotNull(context2, "null cannot be cast to non-null type android.app.Activity");
                        Window window = ((Activity) context2).getWindow();
                        window.setStatusBarColor(androidx.compose.ui.graphics.ColorKt.toArgb-8_81llA(colorScheme.getPrimary-0d7_KjU()));
                        WindowCompat.getInsetsController(window, view).setAppearanceLightStatusBars(!darkTheme3);
                    }
                }, $composer2, 0);
            }
            $composer2.endReplaceableGroup();
            MaterialThemeKt.MaterialTheme(colorScheme, (Shapes) null, TypeKt.getTypography(), function2, $composer2, ($dirty & 7168) | 384, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final boolean z2 = darkTheme3;
            final boolean z3 = dynamicColor2;
            final String str2 = themeId2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.theme.ThemeKt$RootGuardTheme$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i5) {
                    ThemeKt.RootGuardTheme(z2, z3, str2, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }
}
