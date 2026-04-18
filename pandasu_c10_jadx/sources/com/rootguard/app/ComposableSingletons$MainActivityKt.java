package com.rootguard.app;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.navigation.NavHostController;
import com.rootguard.app.ui.navigation.NavHostKt;
import com.rootguard.app.ui.navigation.Screen;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: MainActivity.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class ComposableSingletons$MainActivityKt {
    public static final ComposableSingletons$MainActivityKt INSTANCE = new ComposableSingletons$MainActivityKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f0lambda1 = ComposableLambdaKt.composableLambdaInstance(216050366, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ComposableSingletons$MainActivityKt$lambda-1$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x01bd  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x01c9  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x02f1  */
        /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x01cf  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void invoke(androidx.compose.runtime.Composer r79, int r80) {
            /*
                Method dump skipped, instructions count: 757
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ComposableSingletons$MainActivityKt$lambda1$1.invoke(androidx.compose.runtime.Composer, int):void");
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f1lambda2 = ComposableLambdaKt.composableLambdaInstance(-1641267013, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ComposableSingletons$MainActivityKt$lambda-2$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C141@5625L162:MainActivity.kt#sci7zr");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1641267013, $changed, -1, "com.rootguard.app.ComposableSingletons$MainActivityKt.lambda-2.<anonymous> (MainActivity.kt:141)");
                }
                NavHostKt.RootGuardNavHost((NavHostController) null, Screen.Home.INSTANCE.getRoute(), true, $composer, 384, 1);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f2lambda3 = ComposableLambdaKt.composableLambdaInstance(573869302, false, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ComposableSingletons$MainActivityKt$lambda-3$1
        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
            invoke((Composer) p1, ((Number) p2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer $composer, int $changed) {
            ComposerKt.sourceInformation($composer, "C139@5554L11,137@5440L369:MainActivity.kt#sci7zr");
            if (($changed & 11) != 2 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(573869302, $changed, -1, "com.rootguard.app.ComposableSingletons$MainActivityKt.lambda-3.<anonymous> (MainActivity.kt:137)");
                }
                SurfaceKt.Surface-T9BRK9s(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), (Shape) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getBackground-0d7_KjU(), 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableSingletons$MainActivityKt.INSTANCE.m1getLambda2$app_debug(), $composer, 12582918, 122);
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
}
