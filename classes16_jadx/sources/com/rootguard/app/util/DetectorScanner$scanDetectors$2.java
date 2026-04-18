package com.rootguard.app.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.rootguard.app.util.DetectorScanner;
import com.rootguard.app.utils.Logger;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DetectorScanner.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/util/DetectorScanner$DetectedApp;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.DetectorScanner$scanDetectors$2", f = "DetectorScanner.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class DetectorScanner$scanDetectors$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends DetectorScanner.DetectedApp>>, Object> {
    int label;
    final /* synthetic */ DetectorScanner this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetectorScanner$scanDetectors$2(DetectorScanner detectorScanner, Continuation<? super DetectorScanner$scanDetectors$2> continuation) {
        super(2, continuation);
        this.this$0 = detectorScanner;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DetectorScanner$scanDetectors$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<DetectorScanner.DetectedApp>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Context context;
        String str;
        Object $result;
        Iterator<PackageInfo> it;
        boolean isSystemApp;
        List<String> list;
        DetectorScanner.RiskLevel riskLevel;
        String str2 = "toLowerCase(...)";
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Object $result2 = obj;
                Logger.INSTANCE.d("DetectorScanner: 开始扫描检测工具...");
                List detectedApps = new ArrayList();
                context = this.this$0.context;
                PackageManager pm = context.getPackageManager();
                try {
                    List packages = pm.getInstalledPackages(128);
                    Intrinsics.checkNotNullExpressionValue(packages, "getInstalledPackages(...)");
                    Logger.INSTANCE.d("DetectorScanner: 获取到 " + packages.size() + " 个已安装应用");
                    Iterator<PackageInfo> it2 = packages.iterator();
                    while (it2.hasNext()) {
                        PackageInfo pkgInfo = it2.next();
                        try {
                            ApplicationInfo appInfo = pkgInfo.applicationInfo;
                            if (appInfo != null) {
                                String appName = appInfo.loadLabel(pm).toString().toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(appName, str2);
                                String str3 = pkgInfo.packageName;
                                Intrinsics.checkNotNullExpressionValue(str3, "packageName");
                                String pkgName = str3.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(pkgName, str2);
                                isSystemApp = this.this$0.isSystemApp(appInfo);
                                if (!isSystemApp) {
                                    List matchedKeywords = new ArrayList();
                                    boolean isSuspicious = false;
                                    list = DetectorScanner.DETECTOR_KEYWORDS;
                                    for (String keyword : list) {
                                        str = str2;
                                        try {
                                            $result = $result2;
                                            it = it2;
                                            String appName2 = appName;
                                            try {
                                                if (!StringsKt.contains$default(appName, keyword, false, 2, (Object) null) && !StringsKt.contains$default(pkgName, keyword, false, 2, (Object) null)) {
                                                    $result2 = $result;
                                                    appName = appName2;
                                                    str2 = str;
                                                    it2 = it;
                                                }
                                                matchedKeywords.add(keyword);
                                                isSuspicious = true;
                                                $result2 = $result;
                                                appName = appName2;
                                                str2 = str;
                                                it2 = it;
                                            } catch (Exception e) {
                                                $result2 = $result;
                                                str2 = str;
                                                it2 = it;
                                            }
                                        } catch (Exception e2) {
                                            $result = $result2;
                                            it = it2;
                                            $result2 = $result;
                                            str2 = str;
                                            it2 = it;
                                        }
                                    }
                                    String str4 = str2;
                                    Object $result3 = $result2;
                                    Iterator<PackageInfo> it3 = it2;
                                    if (isSuspicious) {
                                        riskLevel = this.this$0.calculateRiskLevel(matchedKeywords, pkgName);
                                        String str5 = pkgInfo.packageName;
                                        Intrinsics.checkNotNullExpressionValue(str5, "packageName");
                                        detectedApps.add(new DetectorScanner.DetectedApp(str5, appInfo.loadLabel(pm).toString(), true, riskLevel, matchedKeywords));
                                        Logger.INSTANCE.d("DetectorScanner: 发现可疑应用 " + pkgInfo.packageName + ", 风险等级: " + riskLevel);
                                        $result2 = $result3;
                                        str2 = str4;
                                        it2 = it3;
                                    } else {
                                        $result2 = $result3;
                                        str2 = str4;
                                        it2 = it3;
                                    }
                                }
                            }
                        } catch (Exception e3) {
                            str = str2;
                        }
                    }
                } catch (Exception e4) {
                    Logger.INSTANCE.e("DetectorScanner: 扫描失败", e4);
                }
                List $this$sortedByDescending$iv = detectedApps;
                List sorted = CollectionsKt.sortedWith($this$sortedByDescending$iv, new Comparator() { // from class: com.rootguard.app.util.DetectorScanner$scanDetectors$2$invokeSuspend$$inlined$sortedByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        DetectorScanner.DetectedApp it4 = (DetectorScanner.DetectedApp) t2;
                        DetectorScanner.DetectedApp it5 = (DetectorScanner.DetectedApp) t;
                        return ComparisonsKt.compareValues(Integer.valueOf(it4.getRiskLevel().ordinal()), Integer.valueOf(it5.getRiskLevel().ordinal()));
                    }
                });
                Logger.INSTANCE.d("DetectorScanner: 扫描完成，发现 " + sorted.size() + " 个可疑应用");
                return sorted;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
