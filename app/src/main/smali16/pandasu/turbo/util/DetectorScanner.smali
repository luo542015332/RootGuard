.class public final Lcom/pandasu/turbo/util/DetectorScanner;
.super Ljava/lang/Object;
.source "DetectorScanner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/util/DetectorScanner$AppType;,
        Lcom/pandasu/turbo/util/DetectorScanner$Companion;,
        Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;,
        Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;,
        Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;,
        Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;,
        Lcom/pandasu/turbo/util/DetectorScanner$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetectorScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1747#2,3:263\n*S KotlinDebug\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner\n*L\n147#1:263,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0006\u001a\u001b\u001c\u001d\u001e\u001fB\u0011\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0086@\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000c\u001a\u00020\u0007H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0006H\u0086@\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/pandasu/turbo/util/DetectorScanner;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "autoIsolateDetectors",
        "",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calculateRiskLevel",
        "Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;",
        "keywords",
        "pkgName",
        "generateSuggestedConfigs",
        "appType",
        "Lcom/pandasu/turbo/util/DetectorScanner$AppType;",
        "isSystemApp",
        "",
        "appInfo",
        "Landroid/content/pm/ApplicationInfo;",
        "recommendIsolationLevel",
        "Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;",
        "packageName",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scanDetectors",
        "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
        "AppType",
        "Companion",
        "DetectedApp",
        "IsolationLevel",
        "IsolationRecommendation",
        "RiskLevel",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/pandasu/turbo/util/DetectorScanner$Companion;

.field private static final DETECTOR_KEYWORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FINANCE_KEYWORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAME_KEYWORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOCIAL_KEYWORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 30

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/util/DetectorScanner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->Companion:Lcom/pandasu/turbo/util/DetectorScanner$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/util/DetectorScanner;->$stable:I

    .line 24
    nop

    .line 25
    const-string v1, "detector"

    const-string v2, "detection"

    const-string v3, "checker"

    const-string v4, "safety"

    const-string v5, "integrity"

    .line 26
    const-string v6, "safetynet"

    .line 25
    nop

    .line 26
    const-string v7, "root"

    .line 25
    nop

    .line 26
    const-string v8, "hide"

    .line 25
    nop

    .line 26
    const-string v9, "hideapplist"

    .line 25
    nop

    .line 26
    const-string v10, "applistdetector"

    .line 25
    nop

    .line 27
    const-string v11, "detector"

    .line 25
    nop

    .line 27
    const-string v12, "scanner"

    .line 25
    nop

    .line 27
    const-string v13, "monitor"

    .line 25
    nop

    .line 27
    const-string v14, "guard"

    .line 25
    nop

    .line 27
    const-string v15, "protect"

    .line 25
    nop

    .line 28
    const-string v16, "hunter"

    .line 25
    nop

    .line 28
    const-string v17, "zhang"

    .line 25
    nop

    .line 28
    const-string v18, "xposed"

    .line 25
    nop

    .line 28
    const-string v19, "lsposed"

    .line 25
    nop

    .line 28
    const-string v20, "magisk"

    .line 25
    nop

    .line 29
    const-string v21, "leaname"

    .line 25
    nop

    .line 29
    const-string v22, "now"

    .line 25
    nop

    .line 29
    const-string v23, "aliuoud"

    .line 25
    nop

    .line 29
    const-string v24, "rotator"

    .line 25
    nop

    .line 29
    const-string v25, "xiaodaijin"

    .line 25
    nop

    .line 30
    const-string v26, "tricky"

    .line 25
    nop

    .line 30
    const-string v27, "patch"

    .line 25
    nop

    .line 30
    const-string v28, "kpwn"

    .line 25
    nop

    .line 30
    const-string v29, "apatch"

    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v0

    .line 25
    nop

    .line 24
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->DETECTOR_KEYWORDS:Ljava/util/List;

    .line 34
    nop

    .line 35
    const-string v1, "bank"

    const-string v2, "banking"

    const-string v3, "finance"

    const-string v4, "wallet"

    const-string v5, "pay"

    const-string v6, "coin"

    .line 36
    const-string v7, "\u652f\u4ed8\u5b9d"

    .line 35
    nop

    .line 36
    const-string v8, "\u5fae\u4fe1\u652f\u4ed8"

    .line 35
    nop

    .line 36
    const-string v9, "\u4e91\u95ea\u4ed8"

    .line 35
    nop

    .line 36
    const-string v10, "\u94f6\u884c"

    .line 35
    nop

    .line 36
    const-string v11, "\u91d1\u878d"

    .line 35
    nop

    .line 36
    const-string v12, "\u94b1\u5305"

    .line 35
    nop

    .line 37
    const-string v13, "paypal"

    .line 35
    nop

    .line 37
    const-string v14, "venmo"

    .line 35
    nop

    .line 37
    const-string v15, "cash"

    .line 35
    nop

    .line 37
    const-string v16, "crypto"

    .line 35
    nop

    .line 37
    const-string v17, "bitcoin"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    .line 35
    nop

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->FINANCE_KEYWORDS:Ljava/util/List;

    .line 41
    nop

    .line 42
    const-string v1, "wechat"

    const-string v2, "weibo"

    const-string v3, "douyin"

    const-string v4, "tiktok"

    const-string v5, "instagram"

    .line 43
    const-string v6, "facebook"

    .line 42
    nop

    .line 43
    const-string v7, "twitter"

    .line 42
    nop

    .line 43
    const-string v8, "telegram"

    .line 42
    nop

    .line 43
    const-string v9, "whatsapp"

    .line 42
    nop

    .line 43
    const-string v10, "snapchat"

    .line 42
    nop

    .line 44
    const-string v11, "\u5fae\u4fe1"

    .line 42
    nop

    .line 44
    const-string v12, "\u5fae\u535a"

    .line 42
    nop

    .line 44
    const-string v13, "\u6296\u97f3"

    .line 42
    nop

    .line 44
    const-string v14, "\u5c0f\u7ea2\u4e66"

    .line 42
    nop

    .line 44
    const-string v15, "\u964c\u964c"

    .line 42
    nop

    .line 44
    const-string v16, "\u63a2\u63a2"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    nop

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->SOCIAL_KEYWORDS:Ljava/util/List;

    .line 48
    nop

    .line 49
    const-string v1, "game"

    const-string v2, "games"

    const-string v3, "play"

    const-string v4, "gamepad"

    const-string v5, "steam"

    .line 50
    const-string v6, "\u738b\u8005\u8363\u8000"

    .line 49
    nop

    .line 50
    const-string v7, "\u548c\u5e73\u7cbe\u82f1"

    .line 49
    nop

    .line 50
    const-string v8, "\u539f\u795e"

    .line 49
    nop

    .line 50
    const-string v9, "\u68a6\u5e7b\u897f\u6e38"

    .line 49
    nop

    .line 50
    const-string v10, "\u817e\u8baf\u6e38\u620f"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 49
    nop

    .line 48
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->GAME_KEYWORDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/pandasu/turbo/util/DetectorScanner;->context:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static final synthetic access$calculateRiskLevel(Lcom/pandasu/turbo/util/DetectorScanner;Ljava/util/List;Ljava/lang/String;)Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    .registers 4
    .param p0, "$this"    # Lcom/pandasu/turbo/util/DetectorScanner;
    .param p1, "keywords"    # Ljava/util/List;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/util/DetectorScanner;->calculateRiskLevel(Ljava/util/List;Ljava/lang/String;)Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$generateSuggestedConfigs(Lcom/pandasu/turbo/util/DetectorScanner;Lcom/pandasu/turbo/util/DetectorScanner$AppType;)Ljava/util/List;
    .registers 3
    .param p0, "$this"    # Lcom/pandasu/turbo/util/DetectorScanner;
    .param p1, "appType"    # Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    .line 17
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/util/DetectorScanner;->generateSuggestedConfigs(Lcom/pandasu/turbo/util/DetectorScanner$AppType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lcom/pandasu/turbo/util/DetectorScanner;)Landroid/content/Context;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/DetectorScanner;

    .line 17
    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getDETECTOR_KEYWORDS$cp()Ljava/util/List;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->DETECTOR_KEYWORDS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getFINANCE_KEYWORDS$cp()Ljava/util/List;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->FINANCE_KEYWORDS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getGAME_KEYWORDS$cp()Ljava/util/List;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->GAME_KEYWORDS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSOCIAL_KEYWORDS$cp()Ljava/util/List;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner;->SOCIAL_KEYWORDS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$isSystemApp(Lcom/pandasu/turbo/util/DetectorScanner;Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p0, "$this"    # Lcom/pandasu/turbo/util/DetectorScanner;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 17
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/util/DetectorScanner;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method private final calculateRiskLevel(Ljava/util/List;Ljava/lang/String;)Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    .registers 16
    .param p1, "keywords"    # Ljava/util/List;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;"
        }
    .end annotation

    .line 144
    const-string v0, "applistdetector"

    const-string v1, "hidemyapplist"

    const-string v2, "detector"

    const-string v3, "hunter"

    .line 145
    const-string v4, "tsng"

    .line 144
    nop

    .line 145
    const-string v5, "icu.nullptr"

    .line 144
    nop

    .line 145
    const-string v6, "com.zhenxi"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 144
    nop

    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "coreDetectors":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 263
    .local v2, "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_2e

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_50

    .line 264
    :cond_2e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 147
    .local v9, "$i$a$-any-DetectorScanner$calculateRiskLevel$1":I
    move-object v10, p2

    check-cast v10, Ljava/lang/CharSequence;

    move-object v11, v8

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v5, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    .line 264
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-any-DetectorScanner$calculateRiskLevel$1":I
    if-eqz v8, :cond_32

    move v6, v4

    goto :goto_50

    .line 265
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_4f
    nop

    .line 147
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_50
    if-eqz v6, :cond_55

    .line 148
    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->CRITICAL:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    return-object v1

    .line 152
    :cond_55
    nop

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_60

    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->HIGH:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    return-object v1

    .line 154
    :cond_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v5, :cond_69

    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->MEDIUM:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    return-object v1

    .line 155
    :cond_69
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_76

    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->LOW:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    return-object v1

    .line 157
    :cond_76
    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->SAFE:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    return-object v1
.end method

.method private final generateSuggestedConfigs(Lcom/pandasu/turbo/util/DetectorScanner$AppType;)Ljava/util/List;
    .registers 11
    .param p1, "appType"    # Lcom/pandasu/turbo/util/DetectorScanner$AppType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/util/DetectorScanner$AppType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/util/DetectorScanner$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "\u9690\u85cf Magisk \u5e94\u7528"

    const-string v2, "\u9690\u85cf Xposed"

    const-string v3, "\u9690\u85cf Magisk \u6587\u4ef6"

    packed-switch v0, :pswitch_data_5c

    .line 240
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 241
    :pswitch_17
    nop

    .line 240
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5a

    .line 236
    :pswitch_1d
    nop

    .line 237
    nop

    .line 236
    nop

    .line 238
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 236
    nop

    .line 235
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5a

    .line 230
    :pswitch_2a
    nop

    .line 231
    nop

    .line 230
    nop

    .line 232
    nop

    .line 230
    nop

    .line 233
    const-string v0, "\u9690\u85cf Su \u4e8c\u8fdb\u5236\u6587\u4ef6"

    filled-new-array {v3, v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 230
    nop

    .line 229
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5a

    .line 220
    :pswitch_3b
    const-string v1, "\u9690\u85cf Magisk \u6587\u4ef6"

    .line 221
    const-string v2, "\u9690\u85cf Su \u4e8c\u8fdb\u5236\u6587\u4ef6"

    .line 220
    nop

    .line 222
    const-string v3, "\u9690\u85cf Busybox"

    .line 220
    nop

    .line 223
    const-string v4, "\u9690\u85cf Xposed"

    .line 220
    nop

    .line 224
    const-string v5, "\u9690\u85cf Magisk \u5e94\u7528"

    .line 220
    nop

    .line 225
    const-string v6, "\u542f\u7528\u5b58\u50a8\u9694\u79bb"

    .line 220
    nop

    .line 226
    const-string v7, "\u7981\u7528 Root \u8bbf\u95ee"

    .line 220
    nop

    .line 227
    const-string v8, "\u5e94\u7528\u5b8c\u6574\u5c5e\u6027\u4f2a\u88c5"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 220
    nop

    .line 219
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 218
    :goto_5a
    return-object v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_2a
        :pswitch_1d
        :pswitch_17
    .end packed-switch
.end method

.method private final isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 164
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method


# virtual methods
.method public final autoIsolateDetectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;-><init>(Lcom/pandasu/turbo/util/DetectorScanner;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public final recommendIsolationLevel(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/pandasu/turbo/util/DetectorScanner$recommendIsolationLevel$2;-><init>(Lcom/pandasu/turbo/util/DetectorScanner;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method public final scanDetectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/util/DetectorScanner$scanDetectors$2;-><init>(Lcom/pandasu/turbo/util/DetectorScanner;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    return-object v0
.end method
