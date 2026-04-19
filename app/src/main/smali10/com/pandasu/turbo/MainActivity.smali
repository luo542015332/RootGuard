.class public final Lcom/pandasu/turbo/MainActivity;
.super Lcom/pandasu/turbo/Hilt_MainActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/MainActivity$Companion;,
        Lcom/pandasu/turbo/MainActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/pandasu/turbo/MainActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1855#2,2:246\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/pandasu/turbo/MainActivity\n*L\n217#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c\u00b2\u0006\u000c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u001f\u001a\u00020 X\u008a\u008e\u0002\u00b2\u0006\n\u0010!\u001a\u00020 X\u008a\u008e\u0002\u00b2\u0006\n\u0010\"\u001a\u00020#X\u008a\u0084\u0002\u00b2\u0006\n\u0010$\u001a\u00020 X\u008a\u0084\u0002\u00b2\u0006\n\u0010%\u001a\u00020 X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/pandasu/turbo/MainActivity;",
        "Landroidx/activity/ComponentActivity;",
        "()V",
        "isolationDataStore",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "getIsolationDataStore",
        "()Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "setIsolationDataStore",
        "(Lcom/pandasu/turbo/data/local/IsolationDataStore;)V",
        "rootHider",
        "Lcom/pandasu/turbo/data/magisk/RootHider;",
        "getRootHider",
        "()Lcom/pandasu/turbo/data/magisk/RootHider;",
        "setRootHider",
        "(Lcom/pandasu/turbo/data/magisk/RootHider;)V",
        "settingsDataStore",
        "Lcom/pandasu/turbo/data/local/SettingsDataStore;",
        "getSettingsDataStore",
        "()Lcom/pandasu/turbo/data/local/SettingsDataStore;",
        "setSettingsDataStore",
        "(Lcom/pandasu/turbo/data/local/SettingsDataStore;)V",
        "applyBankingIsolationForTaxApps",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "runCompatibilityCheck",
        "Companion",
        "app_debug",
        "authorizationStatus",
        "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
        "isCheckingPermission",
        "",
        "isLoading",
        "themeId",
        "",
        "isDarkMode",
        "useDynamicColors"
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

.field public static final Companion:Lcom/pandasu/turbo/MainActivity$Companion;

.field private static final HIGH_RISK_DETECTOR_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAX_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public settingsDataStore:Lcom/pandasu/turbo/data/local/SettingsDataStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/pandasu/turbo/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/MainActivity;->Companion:Lcom/pandasu/turbo/MainActivity$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/MainActivity;->$stable:I

    .line 51
    nop

    .line 52
    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/Pair;

    const-string v2, "cn.gov.tax.its"

    const-string v3, "\u7535\u5b50\u7a0e\u52a1"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 53
    const-string v2, "cn.gov.chinatax.gt4.app"

    const-string v4, "\u4e2d\u56fd\u7a0e\u52a1"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 52
    nop

    .line 51
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/pandasu/turbo/MainActivity;->TAX_APPS:Ljava/util/List;

    .line 57
    nop

    .line 58
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "com.zhenxi.hunter"

    const-string v2, "Hunter\u68c0\u6d4b\u5668"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    .line 59
    const-string v1, "icu.nullptr.applistdetector"

    const-string v2, "AppList Detector"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    .line 58
    nop

    .line 57
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/MainActivity;->HIGH_RISK_DETECTOR_APPS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/pandasu/turbo/Hilt_MainActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$applyBankingIsolationForTaxApps(Lcom/pandasu/turbo/MainActivity;)V
    .locals 0
    .param p0, "$this"    # Lcom/pandasu/turbo/MainActivity;

    .line 37
    invoke-direct {p0}, Lcom/pandasu/turbo/MainActivity;->applyBankingIsolationForTaxApps()V

    return-void
.end method

.method public static final synthetic access$getHIGH_RISK_DETECTOR_APPS$cp()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lcom/pandasu/turbo/MainActivity;->HIGH_RISK_DETECTOR_APPS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getTAX_APPS$cp()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lcom/pandasu/turbo/MainActivity;->TAX_APPS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$runCompatibilityCheck(Lcom/pandasu/turbo/MainActivity;)V
    .locals 0
    .param p0, "$this"    # Lcom/pandasu/turbo/MainActivity;

    .line 37
    invoke-direct {p0}, Lcom/pandasu/turbo/MainActivity;->runCompatibilityCheck()V

    return-void
.end method

.method private final applyBankingIsolationForTaxApps()V
    .locals 7

    .line 156
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/MainActivity$applyBankingIsolationForTaxApps$1;-><init>(Lcom/pandasu/turbo/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 179
    return-void
.end method

.method private final runCompatibilityCheck()V
    .locals 19

    .line 185
    const-string v0, ", "

    .line 187
    :try_start_0
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getDeviceManufacturer()Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    move-result-object v1

    .line 188
    .local v1, "deviceManufacturer":Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v2

    .line 189
    .local v2, "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    sget-object v3, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v3}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getVersionDescription()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "androidVersion":Ljava/lang/String;
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "\u7cfb\u7edf\u517c\u5bb9\u6027\u4fe1\u606f:"

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 192
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  \u8bbe\u5907\u5382\u5546: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 193
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  \u5b9a\u5236\u7cfb\u7edf: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 194
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Android \u7248\u672c: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 195
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    sget-object v5, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getSDK_INT()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  SDK_INT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 198
    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v4}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsSeccomp()Z

    move-result v4

    .line 199
    .local v4, "supportsSeccomp":Z
    sget-object v5, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsScopedStorage()Z

    move-result v5

    .line 200
    .local v5, "supportsScopedStorage":Z
    sget-object v6, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsDynamicColor()Z

    move-result v6

    .line 202
    .local v6, "supportsDynamicColor":Z
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "\u529f\u80fd\u652f\u6301\u68c0\u67e5:"

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 203
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Seccomp \u652f\u6301: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (\u9700\u8981 Android 8.0+)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 204
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u5206\u533a\u5b58\u50a8\u652f\u6301: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (\u9700\u8981 Android 10+)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 205
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  \u52a8\u6001\u8272\u5f69\u652f\u6301: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (\u9700\u8981 Android 12+)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 208
    sget-object v7, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->generateCompatibilityReport()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;

    move-result-object v7

    .line 209
    .local v7, "report":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "\u517c\u5bb9\u6027\u62a5\u544a:"

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 210
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getDeviceInfo()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  \u8bbe\u5907\u4fe1\u606f: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 211
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getSupportedFeatures()Ljava/util/List;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  \u652f\u6301\u7684\u529f\u80fd: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 212
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getUnsupportedFeatures()Ljava/util/List;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  \u4e0d\u652f\u6301\u7684\u529f\u80fd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getSuggestions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "\u7cfb\u7edf\u5efa\u8bae:"

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getSuggestions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 246
    .local v8, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "suggestion":Ljava/lang/String;
    const/4 v12, 0x0

    .line 218
    .local v12, "$i$a$-forEach-MainActivity$runCompatibilityCheck$1":I
    sget-object v13, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 219
    nop

    .line 246
    .end local v11    # "suggestion":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-MainActivity$runCompatibilityCheck$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 247
    :cond_0
    nop

    .line 223
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    :cond_1
    sget-object v0, Lcom/pandasu/turbo/MainActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 234
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    goto :goto_1

    .line 231
    :pswitch_0
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "ColorOS \u7cfb\u7edf\u68c0\u6d4b: \u6709\u4e25\u683c\u7684\u6743\u9650\u7ba1\u7406\u673a\u5236"

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :pswitch_1
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "MIUI \u7cfb\u7edf\u68c0\u6d4b: \u9700\u8981\u5904\u7406 FLAG_SYSTEM \u6807\u5fd7\u5f02\u5e38"

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :pswitch_2
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "HyperOS \u7cfb\u7edf\u68c0\u6d4b: \u53ef\u80fd\u9700\u8981\u7279\u6b8a\u6743\u9650\u5904\u7406"

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :goto_1
    const-string v8, "\u6807\u51c6 Android \u7cfb\u7edf: \u4f7f\u7528\u5e38\u89c4\u9002\u914d"

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 238
    :goto_2
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "\u517c\u5bb9\u6027\u68c0\u67e5\u5b8c\u6210"

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "deviceManufacturer":Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;
    .end local v2    # "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    .end local v3    # "androidVersion":Ljava/lang/String;
    .end local v4    # "supportsSeccomp":Z
    .end local v5    # "supportsScopedStorage":Z
    .end local v6    # "supportsDynamicColor":Z
    .end local v7    # "report":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;
    goto :goto_3

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u517c\u5bb9\u6027\u68c0\u67e5\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getIsolationDataStore()Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/pandasu/turbo/MainActivity;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "isolationDataStore"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRootHider()Lcom/pandasu/turbo/data/magisk/RootHider;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/pandasu/turbo/MainActivity;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rootHider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSettingsDataStore()Lcom/pandasu/turbo/data/local/SettingsDataStore;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/pandasu/turbo/MainActivity;->settingsDataStore:Lcom/pandasu/turbo/data/local/SettingsDataStore;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "settingsDataStore"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    sget-object v0, Landroidx/core/splashscreen/SplashScreen;->Companion:Landroidx/core/splashscreen/SplashScreen$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroidx/core/splashscreen/SplashScreen$Companion;->installSplashScreen(Landroid/app/Activity;)Landroidx/core/splashscreen/SplashScreen;

    move-result-object v0

    .line 65
    .local v0, "splashScreen":Landroidx/core/splashscreen/SplashScreen;
    invoke-super {p0, p1}, Lcom/pandasu/turbo/Hilt_MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v2, v3}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 68
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "PandaSU v3.0.52 \u542f\u52a8"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "MainActivity onCreate called - Isolation Only Mode"

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "BuildConfig.VERSION_NAME: 3.0.52"

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 73
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v1, Lcom/pandasu/turbo/MainActivity$onCreate$1;

    invoke-direct {v1, p0, v3}, Lcom/pandasu/turbo/MainActivity$onCreate$1;-><init>(Lcom/pandasu/turbo/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 85
    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    new-instance v2, Lcom/pandasu/turbo/MainActivity$onCreate$2;

    invoke-direct {v2, p0}, Lcom/pandasu/turbo/MainActivity$onCreate$2;-><init>(Lcom/pandasu/turbo/MainActivity;)V

    const v5, 0x10adaf2f

    invoke-static {v5, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v2, v4, v3}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method public final setIsolationDataStore(Lcom/pandasu/turbo/data/local/IsolationDataStore;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    return-void
.end method

.method public final setRootHider(Lcom/pandasu/turbo/data/magisk/RootHider;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    return-void
.end method

.method public final setSettingsDataStore(Lcom/pandasu/turbo/data/local/SettingsDataStore;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/pandasu/turbo/data/local/SettingsDataStore;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity;->settingsDataStore:Lcom/pandasu/turbo/data/local/SettingsDataStore;

    return-void
.end method
