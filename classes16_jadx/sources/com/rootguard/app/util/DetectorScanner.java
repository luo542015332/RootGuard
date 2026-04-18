package com.rootguard.app.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: DetectorScanner.kt */
@Singleton
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0006\u001a\u001b\u001c\u001d\u001e\u001fB\u0011\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086@¢\u0006\u0002\u0010\bJ\u001e\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\f\u001a\u00020\u0007H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\u0017J\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0006H\u0086@¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/rootguard/app/util/DetectorScanner;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "autoIsolateDetectors", "", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "calculateRiskLevel", "Lcom/rootguard/app/util/DetectorScanner$RiskLevel;", "keywords", "pkgName", "generateSuggestedConfigs", "appType", "Lcom/rootguard/app/util/DetectorScanner$AppType;", "isSystemApp", "", "appInfo", "Landroid/content/pm/ApplicationInfo;", "recommendIsolationLevel", "Lcom/rootguard/app/util/DetectorScanner$IsolationRecommendation;", "packageName", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scanDetectors", "Lcom/rootguard/app/util/DetectorScanner$DetectedApp;", "AppType", "Companion", "DetectedApp", "IsolationLevel", "IsolationRecommendation", "RiskLevel", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class DetectorScanner {
    private final Context context;
    public static final int $stable = 8;
    private static final List<String> DETECTOR_KEYWORDS = CollectionsKt.listOf(new String[]{"detector", "detection", "checker", "safety", "integrity", "safetynet", "root", "hide", "hideapplist", "applistdetector", "detector", "scanner", "monitor", "guard", "protect", "hunter", "zhang", "xposed", "lsposed", "magisk", "leaname", "now", "aliuoud", "rotator", "xiaodaijin", "tricky", "patch", "kpwn", "apatch"});
    private static final List<String> FINANCE_KEYWORDS = CollectionsKt.listOf(new String[]{"bank", "banking", "finance", "wallet", "pay", "coin", "支付宝", "微信支付", "云闪付", "银行", "金融", "钱包", "paypal", "venmo", "cash", "crypto", "bitcoin"});
    private static final List<String> SOCIAL_KEYWORDS = CollectionsKt.listOf(new String[]{"wechat", "weibo", "douyin", "tiktok", "instagram", "facebook", "twitter", "telegram", "whatsapp", "snapchat", "微信", "微博", "抖音", "小红书", "陌陌", "探探"});
    private static final List<String> GAME_KEYWORDS = CollectionsKt.listOf(new String[]{"game", "games", "play", "gamepad", "steam", "王者荣耀", "和平精英", "原神", "梦幻西游", "腾讯游戏"});

    /* compiled from: DetectorScanner.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AppType.values().length];
            try {
                iArr[AppType.FINANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[AppType.GAME.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[AppType.SOCIAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[AppType.UTILITY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Inject
    public DetectorScanner(@ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    /* compiled from: DetectorScanner.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\nHÆ\u0003JA\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\nHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000eR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/rootguard/app/util/DetectorScanner$DetectedApp;", "", "packageName", "", "appName", "isSuspicious", "", "riskLevel", "Lcom/rootguard/app/util/DetectorScanner$RiskLevel;", "matchedKeywords", "", "(Ljava/lang/String;Ljava/lang/String;ZLcom/rootguard/app/util/DetectorScanner$RiskLevel;Ljava/util/List;)V", "getAppName", "()Ljava/lang/String;", "()Z", "getMatchedKeywords", "()Ljava/util/List;", "getPackageName", "getRiskLevel", "()Lcom/rootguard/app/util/DetectorScanner$RiskLevel;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final /* data */ class DetectedApp {
        public static final int $stable = 8;
        private final String appName;
        private final boolean isSuspicious;
        private final List<String> matchedKeywords;
        private final String packageName;
        private final RiskLevel riskLevel;

        public static /* synthetic */ DetectedApp copy$default(DetectedApp detectedApp, String str, String str2, boolean z, RiskLevel riskLevel, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = detectedApp.packageName;
            }
            if ((i & 2) != 0) {
                str2 = detectedApp.appName;
            }
            String str3 = str2;
            if ((i & 4) != 0) {
                z = detectedApp.isSuspicious;
            }
            boolean z2 = z;
            if ((i & 8) != 0) {
                riskLevel = detectedApp.riskLevel;
            }
            RiskLevel riskLevel2 = riskLevel;
            if ((i & 16) != 0) {
                list = detectedApp.matchedKeywords;
            }
            return detectedApp.copy(str, str3, z2, riskLevel2, list);
        }

        /* renamed from: component1, reason: from getter */
        public final String getPackageName() {
            return this.packageName;
        }

        /* renamed from: component2, reason: from getter */
        public final String getAppName() {
            return this.appName;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getIsSuspicious() {
            return this.isSuspicious;
        }

        /* renamed from: component4, reason: from getter */
        public final RiskLevel getRiskLevel() {
            return this.riskLevel;
        }

        public final List<String> component5() {
            return this.matchedKeywords;
        }

        public final DetectedApp copy(String packageName, String appName, boolean isSuspicious, RiskLevel riskLevel, List<String> matchedKeywords) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(appName, "appName");
            Intrinsics.checkNotNullParameter(riskLevel, "riskLevel");
            Intrinsics.checkNotNullParameter(matchedKeywords, "matchedKeywords");
            return new DetectedApp(packageName, appName, isSuspicious, riskLevel, matchedKeywords);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DetectedApp)) {
                return false;
            }
            DetectedApp detectedApp = (DetectedApp) other;
            return Intrinsics.areEqual(this.packageName, detectedApp.packageName) && Intrinsics.areEqual(this.appName, detectedApp.appName) && this.isSuspicious == detectedApp.isSuspicious && this.riskLevel == detectedApp.riskLevel && Intrinsics.areEqual(this.matchedKeywords, detectedApp.matchedKeywords);
        }

        public int hashCode() {
            return (((((((this.packageName.hashCode() * 31) + this.appName.hashCode()) * 31) + Boolean.hashCode(this.isSuspicious)) * 31) + this.riskLevel.hashCode()) * 31) + this.matchedKeywords.hashCode();
        }

        public String toString() {
            return "DetectedApp(packageName=" + this.packageName + ", appName=" + this.appName + ", isSuspicious=" + this.isSuspicious + ", riskLevel=" + this.riskLevel + ", matchedKeywords=" + this.matchedKeywords + ")";
        }

        public DetectedApp(String packageName, String appName, boolean isSuspicious, RiskLevel riskLevel, List<String> list) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(appName, "appName");
            Intrinsics.checkNotNullParameter(riskLevel, "riskLevel");
            Intrinsics.checkNotNullParameter(list, "matchedKeywords");
            this.packageName = packageName;
            this.appName = appName;
            this.isSuspicious = isSuspicious;
            this.riskLevel = riskLevel;
            this.matchedKeywords = list;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public final String getAppName() {
            return this.appName;
        }

        public final boolean isSuspicious() {
            return this.isSuspicious;
        }

        public final RiskLevel getRiskLevel() {
            return this.riskLevel;
        }

        public final List<String> getMatchedKeywords() {
            return this.matchedKeywords;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: DetectorScanner.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/rootguard/app/util/DetectorScanner$RiskLevel;", "", "(Ljava/lang/String;I)V", "SAFE", "LOW", "MEDIUM", "HIGH", "CRITICAL", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final class RiskLevel {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RiskLevel[] $VALUES;
        public static final RiskLevel SAFE = new RiskLevel("SAFE", 0);
        public static final RiskLevel LOW = new RiskLevel("LOW", 1);
        public static final RiskLevel MEDIUM = new RiskLevel("MEDIUM", 2);
        public static final RiskLevel HIGH = new RiskLevel("HIGH", 3);
        public static final RiskLevel CRITICAL = new RiskLevel("CRITICAL", 4);

        private static final /* synthetic */ RiskLevel[] $values() {
            return new RiskLevel[]{SAFE, LOW, MEDIUM, HIGH, CRITICAL};
        }

        public static EnumEntries<RiskLevel> getEntries() {
            return $ENTRIES;
        }

        public static RiskLevel valueOf(String str) {
            return (RiskLevel) Enum.valueOf(RiskLevel.class, str);
        }

        public static RiskLevel[] values() {
            return (RiskLevel[]) $VALUES.clone();
        }

        private RiskLevel(String $enum$name, int $enum$ordinal) {
        }

        static {
            RiskLevel[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }
    }

    public final Object scanDetectors(Continuation<? super List<DetectedApp>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new DetectorScanner$scanDetectors$2(this, null), continuation);
    }

    public final Object autoIsolateDetectors(Continuation<? super List<String>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new DetectorScanner$autoIsolateDetectors$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RiskLevel calculateRiskLevel(List<String> keywords, String pkgName) {
        Iterable coreDetectors = CollectionsKt.listOf(new String[]{"applistdetector", "hidemyapplist", "detector", "hunter", "tsng", "icu.nullptr", "com.zhenxi"});
        Iterable $this$any$iv = coreDetectors;
        boolean z = false;
        if (!($this$any$iv instanceof Collection) || !((Collection) $this$any$iv).isEmpty()) {
            Iterator it = $this$any$iv.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object element$iv = it.next();
                String it2 = (String) element$iv;
                if (StringsKt.contains$default(pkgName, it2, false, 2, (Object) null)) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            return RiskLevel.CRITICAL;
        }
        return keywords.size() >= 4 ? RiskLevel.HIGH : keywords.size() >= 2 ? RiskLevel.MEDIUM : keywords.isEmpty() ^ true ? RiskLevel.LOW : RiskLevel.SAFE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSystemApp(ApplicationInfo appInfo) {
        return (appInfo.flags & 1) != 0;
    }

    public final Object recommendIsolationLevel(String packageName, Continuation<? super IsolationRecommendation> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new DetectorScanner$recommendIsolationLevel$2(this, packageName, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> generateSuggestedConfigs(AppType appType) {
        switch (WhenMappings.$EnumSwitchMapping$0[appType.ordinal()]) {
            case 1:
                return CollectionsKt.listOf(new String[]{"隐藏 Magisk 文件", "隐藏 Su 二进制文件", "隐藏 Busybox", "隐藏 Xposed", "隐藏 Magisk 应用", "启用存储隔离", "禁用 Root 访问", "应用完整属性伪装"});
            case 2:
                return CollectionsKt.listOf(new String[]{"隐藏 Magisk 文件", "隐藏 Su 二进制文件", "隐藏 Xposed", "隐藏 Magisk 应用"});
            case 3:
                return CollectionsKt.listOf(new String[]{"隐藏 Magisk 文件", "隐藏 Xposed", "隐藏 Magisk 应用"});
            case 4:
                return CollectionsKt.listOf("隐藏 Magisk 文件");
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: DetectorScanner.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/rootguard/app/util/DetectorScanner$AppType;", "", "(Ljava/lang/String;I)V", "FINANCE", "GAME", "SOCIAL", "UTILITY", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final class AppType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AppType[] $VALUES;
        public static final AppType FINANCE = new AppType("FINANCE", 0);
        public static final AppType GAME = new AppType("GAME", 1);
        public static final AppType SOCIAL = new AppType("SOCIAL", 2);
        public static final AppType UTILITY = new AppType("UTILITY", 3);

        private static final /* synthetic */ AppType[] $values() {
            return new AppType[]{FINANCE, GAME, SOCIAL, UTILITY};
        }

        public static EnumEntries<AppType> getEntries() {
            return $ENTRIES;
        }

        public static AppType valueOf(String str) {
            return (AppType) Enum.valueOf(AppType.class, str);
        }

        public static AppType[] values() {
            return (AppType[]) $VALUES.clone();
        }

        private AppType(String $enum$name, int $enum$ordinal) {
        }

        static {
            AppType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: DetectorScanner.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/rootguard/app/util/DetectorScanner$IsolationLevel;", "", "(Ljava/lang/String;I)V", "BASIC", "MODERATE", "STANDARD", "STRICT", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final class IsolationLevel {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ IsolationLevel[] $VALUES;
        public static final IsolationLevel BASIC = new IsolationLevel("BASIC", 0);
        public static final IsolationLevel MODERATE = new IsolationLevel("MODERATE", 1);
        public static final IsolationLevel STANDARD = new IsolationLevel("STANDARD", 2);
        public static final IsolationLevel STRICT = new IsolationLevel("STRICT", 3);

        private static final /* synthetic */ IsolationLevel[] $values() {
            return new IsolationLevel[]{BASIC, MODERATE, STANDARD, STRICT};
        }

        public static EnumEntries<IsolationLevel> getEntries() {
            return $ENTRIES;
        }

        public static IsolationLevel valueOf(String str) {
            return (IsolationLevel) Enum.valueOf(IsolationLevel.class, str);
        }

        public static IsolationLevel[] values() {
            return (IsolationLevel[]) $VALUES.clone();
        }

        private IsolationLevel(String $enum$name, int $enum$ordinal) {
        }

        static {
            IsolationLevel[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }
    }

    /* compiled from: DetectorScanner.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\nHÆ\u0003JA\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/rootguard/app/util/DetectorScanner$IsolationRecommendation;", "", "packageName", "", "appType", "Lcom/rootguard/app/util/DetectorScanner$AppType;", "recommendedLevel", "Lcom/rootguard/app/util/DetectorScanner$IsolationLevel;", "reason", "suggestedConfigs", "", "(Ljava/lang/String;Lcom/rootguard/app/util/DetectorScanner$AppType;Lcom/rootguard/app/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;)V", "getAppType", "()Lcom/rootguard/app/util/DetectorScanner$AppType;", "getPackageName", "()Ljava/lang/String;", "getReason", "getRecommendedLevel", "()Lcom/rootguard/app/util/DetectorScanner$IsolationLevel;", "getSuggestedConfigs", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final /* data */ class IsolationRecommendation {
        public static final int $stable = 8;
        private final AppType appType;
        private final String packageName;
        private final String reason;
        private final IsolationLevel recommendedLevel;
        private final List<String> suggestedConfigs;

        public static /* synthetic */ IsolationRecommendation copy$default(IsolationRecommendation isolationRecommendation, String str, AppType appType, IsolationLevel isolationLevel, String str2, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = isolationRecommendation.packageName;
            }
            if ((i & 2) != 0) {
                appType = isolationRecommendation.appType;
            }
            AppType appType2 = appType;
            if ((i & 4) != 0) {
                isolationLevel = isolationRecommendation.recommendedLevel;
            }
            IsolationLevel isolationLevel2 = isolationLevel;
            if ((i & 8) != 0) {
                str2 = isolationRecommendation.reason;
            }
            String str3 = str2;
            if ((i & 16) != 0) {
                list = isolationRecommendation.suggestedConfigs;
            }
            return isolationRecommendation.copy(str, appType2, isolationLevel2, str3, list);
        }

        /* renamed from: component1, reason: from getter */
        public final String getPackageName() {
            return this.packageName;
        }

        /* renamed from: component2, reason: from getter */
        public final AppType getAppType() {
            return this.appType;
        }

        /* renamed from: component3, reason: from getter */
        public final IsolationLevel getRecommendedLevel() {
            return this.recommendedLevel;
        }

        /* renamed from: component4, reason: from getter */
        public final String getReason() {
            return this.reason;
        }

        public final List<String> component5() {
            return this.suggestedConfigs;
        }

        public final IsolationRecommendation copy(String packageName, AppType appType, IsolationLevel recommendedLevel, String reason, List<String> suggestedConfigs) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(appType, "appType");
            Intrinsics.checkNotNullParameter(recommendedLevel, "recommendedLevel");
            Intrinsics.checkNotNullParameter(reason, "reason");
            Intrinsics.checkNotNullParameter(suggestedConfigs, "suggestedConfigs");
            return new IsolationRecommendation(packageName, appType, recommendedLevel, reason, suggestedConfigs);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof IsolationRecommendation)) {
                return false;
            }
            IsolationRecommendation isolationRecommendation = (IsolationRecommendation) other;
            return Intrinsics.areEqual(this.packageName, isolationRecommendation.packageName) && this.appType == isolationRecommendation.appType && this.recommendedLevel == isolationRecommendation.recommendedLevel && Intrinsics.areEqual(this.reason, isolationRecommendation.reason) && Intrinsics.areEqual(this.suggestedConfigs, isolationRecommendation.suggestedConfigs);
        }

        public int hashCode() {
            return (((((((this.packageName.hashCode() * 31) + this.appType.hashCode()) * 31) + this.recommendedLevel.hashCode()) * 31) + this.reason.hashCode()) * 31) + this.suggestedConfigs.hashCode();
        }

        public String toString() {
            return "IsolationRecommendation(packageName=" + this.packageName + ", appType=" + this.appType + ", recommendedLevel=" + this.recommendedLevel + ", reason=" + this.reason + ", suggestedConfigs=" + this.suggestedConfigs + ")";
        }

        public IsolationRecommendation(String packageName, AppType appType, IsolationLevel recommendedLevel, String reason, List<String> list) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(appType, "appType");
            Intrinsics.checkNotNullParameter(recommendedLevel, "recommendedLevel");
            Intrinsics.checkNotNullParameter(reason, "reason");
            Intrinsics.checkNotNullParameter(list, "suggestedConfigs");
            this.packageName = packageName;
            this.appType = appType;
            this.recommendedLevel = recommendedLevel;
            this.reason = reason;
            this.suggestedConfigs = list;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public final AppType getAppType() {
            return this.appType;
        }

        public final IsolationLevel getRecommendedLevel() {
            return this.recommendedLevel;
        }

        public final String getReason() {
            return this.reason;
        }

        public final List<String> getSuggestedConfigs() {
            return this.suggestedConfigs;
        }
    }
}
