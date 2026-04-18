package com.rootguard.app.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.rootguard.app.util.DetectorScanner;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: DetectorScanner.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/rootguard/app/util/DetectorScanner$IsolationRecommendation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.DetectorScanner$recommendIsolationLevel$2", f = "DetectorScanner.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
final class DetectorScanner$recommendIsolationLevel$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DetectorScanner.IsolationRecommendation>, Object> {
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ DetectorScanner this$0;

    /* compiled from: DetectorScanner.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DetectorScanner.AppType.values().length];
            try {
                iArr[DetectorScanner.AppType.FINANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[DetectorScanner.AppType.GAME.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[DetectorScanner.AppType.SOCIAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[DetectorScanner.AppType.UTILITY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetectorScanner$recommendIsolationLevel$2(DetectorScanner detectorScanner, String str, Continuation<? super DetectorScanner$recommendIsolationLevel$2> continuation) {
        super(2, continuation);
        this.this$0 = detectorScanner;
        this.$packageName = str;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DetectorScanner$recommendIsolationLevel$2(this.this$0, this.$packageName, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DetectorScanner.IsolationRecommendation> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Context context;
        String lowerCase;
        Iterable iterable;
        Iterable $this$any$iv;
        Iterable iterable2;
        Iterable $this$any$iv2;
        Iterable iterable3;
        DetectorScanner.AppType appType;
        Pair pair;
        List generateSuggestedConfigs;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                context = this.this$0.context;
                PackageManager pm = context.getPackageManager();
                boolean z = false;
                try {
                    lowerCase = pm.getApplicationInfo(this.$packageName, 0).loadLabel(pm).toString().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                } catch (Exception e) {
                    lowerCase = this.$packageName.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                }
                String appName = lowerCase;
                String pkgName = this.$packageName.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(pkgName, "toLowerCase(...)");
                iterable = DetectorScanner.FINANCE_KEYWORDS;
                Iterable $this$any$iv3 = iterable;
                if (($this$any$iv3 instanceof Collection) && ((Collection) $this$any$iv3).isEmpty()) {
                    $this$any$iv = null;
                } else {
                    Iterator it = $this$any$iv3.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Object element$iv = it.next();
                            String it2 = (String) element$iv;
                            if (((StringsKt.contains$default(appName, it2, false, 2, (Object) null) || StringsKt.contains$default(pkgName, it2, false, 2, (Object) null)) ? 1 : null) != null) {
                                $this$any$iv = 1;
                            }
                        } else {
                            $this$any$iv = null;
                        }
                    }
                }
                if ($this$any$iv != null) {
                    appType = DetectorScanner.AppType.FINANCE;
                } else {
                    iterable2 = DetectorScanner.SOCIAL_KEYWORDS;
                    Iterable $this$any$iv4 = iterable2;
                    if (($this$any$iv4 instanceof Collection) && ((Collection) $this$any$iv4).isEmpty()) {
                        $this$any$iv2 = null;
                    } else {
                        Iterator it3 = $this$any$iv4.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                Object element$iv2 = it3.next();
                                String it4 = (String) element$iv2;
                                if (((StringsKt.contains$default(appName, it4, false, 2, (Object) null) || StringsKt.contains$default(pkgName, it4, false, 2, (Object) null)) ? 1 : null) != null) {
                                    $this$any$iv2 = 1;
                                }
                            } else {
                                $this$any$iv2 = null;
                            }
                        }
                    }
                    if ($this$any$iv2 != null) {
                        appType = DetectorScanner.AppType.SOCIAL;
                    } else {
                        iterable3 = DetectorScanner.GAME_KEYWORDS;
                        Iterable $this$any$iv5 = iterable3;
                        if (!($this$any$iv5 instanceof Collection) || !((Collection) $this$any$iv5).isEmpty()) {
                            Iterator it5 = $this$any$iv5.iterator();
                            while (true) {
                                if (it5.hasNext()) {
                                    Object element$iv3 = it5.next();
                                    String it6 = (String) element$iv3;
                                    if (((StringsKt.contains$default(appName, it6, false, 2, (Object) null) || StringsKt.contains$default(pkgName, it6, false, 2, (Object) null)) ? 1 : null) != null) {
                                        z = true;
                                    }
                                }
                            }
                        }
                        appType = z ? DetectorScanner.AppType.GAME : DetectorScanner.AppType.UTILITY;
                    }
                }
                DetectorScanner.AppType appType2 = appType;
                switch (WhenMappings.$EnumSwitchMapping$0[appType2.ordinal()]) {
                    case 1:
                        pair = new Pair(DetectorScanner.IsolationLevel.STRICT, "金融类应用建议最高级别隔离，防止财产损失");
                        break;
                    case 2:
                        pair = new Pair(DetectorScanner.IsolationLevel.STANDARD, "游戏类应用建议标准隔离，防止作弊检测");
                        break;
                    case 3:
                        pair = new Pair(DetectorScanner.IsolationLevel.MODERATE, "社交类应用建议中等隔离，保护隐私");
                        break;
                    case 4:
                        pair = new Pair(DetectorScanner.IsolationLevel.BASIC, "工具类应用建议基础隔离");
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                DetectorScanner.IsolationLevel level = (DetectorScanner.IsolationLevel) pair.component1();
                String reason = (String) pair.component2();
                String str = this.$packageName;
                generateSuggestedConfigs = this.this$0.generateSuggestedConfigs(appType2);
                return new DetectorScanner.IsolationRecommendation(str, appType2, level, reason, generateSuggestedConfigs);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
