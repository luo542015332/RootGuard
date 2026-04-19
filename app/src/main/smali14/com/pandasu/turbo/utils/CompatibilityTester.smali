.class public final Lcom/pandasu/turbo/utils/CompatibilityTester;
.super Ljava/lang/Object;
.source "CompatibilityTester.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;,
        Lcom/pandasu/turbo/utils/CompatibilityTester$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompatibilityTester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompatibilityTester.kt\ncom/pandasu/turbo/utils/CompatibilityTester\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,384:1\n13309#2,2:385\n13309#2,2:387\n1855#3,2:389\n1747#3,3:391\n1774#3,4:394\n1855#3,2:398\n76#4:400\n*S KotlinDebug\n*F\n+ 1 CompatibilityTester.kt\ncom/pandasu/turbo/utils/CompatibilityTester\n*L\n204#1:385,2\n214#1:387,2\n246#1:389,2\n304#1:391,3\n331#1:394,4\n337#1:398,2\n379#1:400\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u00020\u00082\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH\u0002J\"\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0011J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002J\u0008\u0010\u0014\u001a\u00020\u0008H\u0002J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0016\u001a\u00020\u0008H\u0002J\u0008\u0010\u0017\u001a\u00020\u0008H\u0002J\u0008\u0010\u0018\u001a\u00020\u0008H\u0002J\u0008\u0010\u0019\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/CompatibilityTester;",
        "",
        "()V",
        "testScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "TestResultView",
        "",
        "result",
        "Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;",
        "(Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;Landroidx/compose/runtime/Composer;I)V",
        "generateComprehensiveReport",
        "results",
        "",
        "runFullCompatibilityTest",
        "context",
        "Landroid/content/Context;",
        "callback",
        "Lkotlin/Function1;",
        "testAppListRetrieval",
        "testCustomOS",
        "testDeviceManufacturer",
        "testFeatureSupport",
        "testPropertySpoof",
        "testRootAccess",
        "testSystemInfo",
        "testVersionCompatibility",
        "TestResult",
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

.field public static final INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

.field private static final testScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pandasu/turbo/utils/CompatibilityTester;

    invoke-direct {v0}, Lcom/pandasu/turbo/utils/CompatibilityTester;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    .line 17
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/CompatibilityTester;->testScope:Lkotlinx/coroutines/CoroutineScope;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/utils/CompatibilityTester;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateComprehensiveReport(Lcom/pandasu/turbo/utils/CompatibilityTester;Ljava/util/List;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;
    .param p1, "results"    # Ljava/util/List;

    .line 15
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/utils/CompatibilityTester;->generateComprehensiveReport(Ljava/util/List;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testAppListRetrieval(Lcom/pandasu/turbo/utils/CompatibilityTester;Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testAppListRetrieval(Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testCustomOS(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;

    .line 15
    invoke-direct {p0}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testCustomOS()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testDeviceManufacturer(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;

    .line 15
    invoke-direct {p0}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testDeviceManufacturer()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testFeatureSupport(Lcom/pandasu/turbo/utils/CompatibilityTester;Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testFeatureSupport(Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testPropertySpoof(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;

    .line 15
    invoke-direct {p0}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testPropertySpoof()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testRootAccess(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;

    .line 15
    invoke-direct {p0}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testRootAccess()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testSystemInfo(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;

    .line 15
    invoke-direct {p0}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testSystemInfo()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$testVersionCompatibility(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/CompatibilityTester;

    .line 15
    invoke-direct {p0}, Lcom/pandasu/turbo/utils/CompatibilityTester;->testVersionCompatibility()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v0

    return-object v0
.end method

.method private final generateComprehensiveReport(Ljava/util/List;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 18
    .param p1, "results"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;",
            ">;)",
            "Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;"
        }
    .end annotation

    .line 330
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    .line 331
    .local v0, "totalTests":I
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 394
    .local v2, "$i$f$count":I
    instance-of v3, v1, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 395
    :cond_0
    const/4 v3, 0x0

    .line 396
    .local v3, "count$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .local v7, "it":Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    const/4 v8, 0x0

    .line 331
    .local v8, "$i$a$-count-CompatibilityTester$generateComprehensiveReport$passedTests$1":I
    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;->getPassed()Z

    move-result v7

    .line 396
    .end local v7    # "it":Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .end local v8    # "$i$a$-count-CompatibilityTester$generateComprehensiveReport$passedTests$1":I
    if-eqz v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    .line 397
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 331
    .end local v1    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$count":I
    .end local v3    # "count$iv":I
    :goto_1
    move v1, v3

    .line 332
    .local v1, "passedTests":I
    sub-int v2, v0, v1

    .line 334
    .local v2, "failedTests":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 335
    .local v3, "allDetails":Ljava/util/Map;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 337
    .local v5, "allSuggestions":Ljava/util/List;
    move-object/from16 v6, p1

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 398
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .local v10, "result":Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    const/4 v11, 0x0

    .line 338
    .local v11, "$i$a$-forEach-CompatibilityTester$generateComprehensiveReport$1":I
    invoke-virtual {v10}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;->getTestName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;->getPassed()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "PASSED"

    goto :goto_3

    :cond_3
    const-string v13, "FAILED"

    :goto_3
    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-virtual {v10}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;->getSuggestions()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v5, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    nop

    .line 398
    .end local v10    # "result":Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .end local v11    # "$i$a$-forEach-CompatibilityTester$generateComprehensiveReport$1":I
    nop

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 399
    :cond_4
    nop

    .line 342
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    const-string v6, "totalTests"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v6, "passedTests"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v6, "failedTests"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "compatibilityScore"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v6, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->generateCompatibilityReport()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;

    move-result-object v6

    .line 349
    .local v6, "compatibilityReport":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;
    const-string v7, "deviceInfo"

    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getDeviceInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v7, "androidVersion"

    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getAndroidVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v7, "customOS"

    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getCustomOS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getSupportedFeatures()Ljava/util/List;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    const-string v7, ", "

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "supportedFeatures"

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getUnsupportedFeatures()Ljava/util/List;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "unsupportedFeatures"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;->getSuggestions()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    new-instance v7, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 357
    nop

    .line 358
    if-nez v2, :cond_5

    const/4 v4, 0x1

    .line 359
    :cond_5
    nop

    .line 360
    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 356
    const-string v9, "\u7efc\u5408\u517c\u5bb9\u6027\u62a5\u544a"

    invoke-direct {v7, v9, v4, v3, v8}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    return-object v7
.end method

.method private final testAppListRetrieval(Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    move-object/from16 v1, p1

    const-string v2, "\u5e94\u7528\u5217\u8868\u83b7\u53d6\u6d4b\u8bd5"

    .line 235
    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/pandasu/turbo/utils/SystemAdapter;->INSTANCE:Lcom/pandasu/turbo/utils/SystemAdapter;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/SystemAdapter;->getAppListStrategy(Landroid/content/Context;)Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    move-result-object v0

    .line 236
    .local v0, "strategy":Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;
    invoke-interface {v0, v1}, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;->getInstalledApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 240
    .local v4, "apps":Ljava/util/List;
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "com.android.settings"

    aput-object v7, v6, v3

    .line 241
    const-string v7, "com.google.android.gms"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 240
    nop

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    .line 240
    nop

    .line 239
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 245
    .local v6, "testPackages":Ljava/util/List;
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 246
    .local v7, "systemAppResults":Ljava/util/Map;
    move-object v10, v6

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 389
    .local v11, "$i$f$forEach":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    .local v14, "pkg":Ljava/lang/String;
    const/4 v15, 0x0

    .line 247
    .local v15, "$i$a$-forEach-CompatibilityTester$testAppListRetrieval$1":I
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v14, v1}, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;->isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v16

    .line 248
    .local v16, "isSystem":Z
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    nop

    .line 389
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "$i$a$-forEach-CompatibilityTester$testAppListRetrieval$1":I
    .end local v16    # "isSystem":Z
    const/4 v9, 0x2

    .end local v13    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 390
    :cond_0
    nop

    .line 251
    .end local v10    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    new-instance v9, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 252
    nop

    .line 253
    move-object v10, v4

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v3

    .line 255
    :goto_1
    new-array v5, v5, [Lkotlin/Pair;

    const-string v11, "strategy"

    invoke-interface {v0}, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;->getStrategyName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v5, v3

    .line 256
    const-string v11, "totalApps"

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v5, v8

    .line 255
    nop

    .line 257
    const-string v8, "systemAppTests"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v5, v11

    .line 255
    nop

    .line 254
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 259
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "\u5e94\u7528\u5217\u8868\u83b7\u53d6\u5931\u8d25\uff0c\u9700\u8981\u68c0\u67e5\u6743\u9650\u548c\u7b56\u7565"

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 251
    :goto_2
    invoke-direct {v9, v2, v10, v5, v8}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "strategy":Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;
    .end local v4    # "apps":Ljava/util/List;
    .end local v6    # "testPackages":Ljava/util/List;
    .end local v7    # "systemAppResults":Ljava/util/Map;
    goto :goto_3

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 263
    nop

    .line 264
    nop

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "Unknown error"

    :cond_3
    const-string v5, "ERROR"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 266
    const-string v5, "\u5e94\u7528\u5217\u8868\u83b7\u53d6\u5f02\u5e38\uff0c\u9700\u8981\u8c03\u8bd5\u7b56\u7565\u5b9e\u73b0"

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 262
    invoke-direct {v9, v2, v3, v4, v5}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v9
.end method

.method private final testCustomOS()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 6

    .line 166
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v0

    .line 168
    .local v0, "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    const/4 v1, 0x7

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "CUSTOM_OS"

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 169
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHyperOS()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isHyperOS"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 168
    nop

    .line 170
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isMIUI()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isMIUI"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 168
    nop

    .line 171
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isColorOS()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isColorOS"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 168
    nop

    .line 172
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isOriginOS()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isOriginOS"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 168
    nop

    .line 173
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHarmonyOS()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isHarmonyOS"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 168
    nop

    .line 174
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isOneUI()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isOneUI"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 168
    nop

    .line 167
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 177
    .local v1, "details":Ljava/util/Map;
    sget-object v2, Lcom/pandasu/turbo/utils/SystemAdapter;->INSTANCE:Lcom/pandasu/turbo/utils/SystemAdapter;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/SystemAdapter;->getSystemSuggestions()Ljava/util/List;

    move-result-object v2

    .line 179
    .local v2, "suggestions":Ljava/util/List;
    new-instance v4, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 179
    const-string v5, "\u5b9a\u5236\u7cfb\u7edf\u6d4b\u8bd5"

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    return-object v4
.end method

.method private final testDeviceManufacturer()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 6

    .line 122
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getDeviceManufacturer()Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    move-result-object v0

    .line 124
    .local v0, "manufacturer":Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;
    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "MANUFACTURER"

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 125
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isXiaomiDevice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isXiaomi"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 124
    nop

    .line 126
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHuaweiDevice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isHuawei"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 124
    nop

    .line 127
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isOppoDevice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isOppo"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 124
    nop

    .line 128
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isVivoDevice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isVivo"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 124
    nop

    .line 129
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isSamsungDevice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isSamsung"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 124
    nop

    .line 123
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 132
    .local v1, "details":Ljava/util/Map;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 133
    .local v2, "suggestions":Ljava/util/List;
    sget-object v4, Lcom/pandasu/turbo/utils/CompatibilityTester$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 150
    const-string v4, "\u5176\u4ed6\u5382\u5546\u8bbe\u5907\uff0c\u4f7f\u7528\u6807\u51c6\u9002\u914d"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :pswitch_0
    const-string v4, "\u4e09\u661f\u8bbe\u5907\u9700\u8981\u5904\u7406 OneUI \u548c Knox \u9650\u5236"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :pswitch_1
    const-string v4, "vivo \u8bbe\u5907\u9700\u8981\u5904\u7406 OriginOS \u9650\u5236"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :pswitch_2
    const-string v4, "OPPO \u8bbe\u5907\u9700\u8981\u5904\u7406 ColorOS \u9650\u5236"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :pswitch_3
    const-string v4, "\u534e\u4e3a\u8bbe\u5907\u53ef\u80fd\u9700\u8981 HarmonyOS \u9002\u914d"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :pswitch_4
    const-string v4, "\u5c0f\u7c73\u8bbe\u5907\u9700\u8981\u7279\u6b8a\u5904\u7406 MIUI/HyperOS \u517c\u5bb9\u6027"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_0
    new-instance v4, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 154
    const-string v5, "\u8bbe\u5907\u5382\u5546\u6d4b\u8bd5"

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final testFeatureSupport(Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 192
    .local v0, "details":Ljava/util/Map;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 195
    .local v1, "suggestions":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsSeccomp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "supportsSeccomp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsAppOps()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "supportsAppOps"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsScopedStorage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "supportsScopedStorage"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsDynamicColor()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "supportsDynamicColor"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsPhotoPicker()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "supportsPhotoPicker"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsPredictiveBack()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "supportsPredictiveBack"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->values()[Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;

    move-result-object v2

    .line 204
    .local v2, "features":[Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;
    move-object v3, v2

    .local v3, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 385
    .local v4, "$i$f$forEach":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "feature":Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;
    const/4 v10, 0x0

    .line 205
    .local v10, "$i$a$-forEach-CompatibilityTester$testFeatureSupport$1":I
    sget-object v11, Lcom/pandasu/turbo/utils/SystemAdapter;->INSTANCE:Lcom/pandasu/turbo/utils/SystemAdapter;

    invoke-virtual {v11, v9}, Lcom/pandasu/turbo/utils/SystemAdapter;->isFeatureSupported(Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;)Z

    move-result v11

    .line 206
    .local v11, "supported":Z
    invoke-virtual {v9}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    if-eqz v11, :cond_0

    .line 208
    invoke-virtual {v9}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->name()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u9700\u8981\u7279\u6b8a\u5904\u7406: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    nop

    .line 385
    .end local v9    # "feature":Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;
    .end local v10    # "$i$a$-forEach-CompatibilityTester$testFeatureSupport$1":I
    .end local v11    # "supported":Z
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 386
    :cond_1
    nop

    .line 213
    .end local v3    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$forEach":I
    invoke-static {}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    move-result-object v3

    .line 214
    .local v3, "requirements":[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;
    move-object v4, v3

    .local v4, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 387
    .local v5, "$i$f$forEach":I
    array-length v7, v4

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v8, v4, v6

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "requirement":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;
    const/4 v10, 0x0

    .line 215
    .local v10, "$i$a$-forEach-CompatibilityTester$testFeatureSupport$2":I
    sget-object v11, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v11, v9}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->checkCompatibility(Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;)Z

    move-result v11

    .line 216
    .local v11, "compatible":Z
    invoke-virtual {v9}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    if-nez v11, :cond_2

    .line 218
    invoke-virtual {v9}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->name()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u4e0d\u517c\u5bb9: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\uff0c\u9700\u8981\u964d\u7ea7\u65b9\u6848"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_2
    nop

    .line 387
    .end local v9    # "requirement":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;
    .end local v10    # "$i$a$-forEach-CompatibilityTester$testFeatureSupport$2":I
    .end local v11    # "compatible":Z
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 388
    :cond_3
    nop

    .line 222
    .end local v4    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$forEach":I
    new-instance v4, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 222
    const-string v5, "\u529f\u80fd\u652f\u6301\u6d4b\u8bd5"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    return-object v4
.end method

.method private final testPropertySpoof()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 18

    .line 275
    const-string v1, "\u7cfb\u7edf\u5c5e\u6027\u4f2a\u88c5\u6d4b\u8bd5"

    .line 276
    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/pandasu/turbo/utils/SystemAdapter;->INSTANCE:Lcom/pandasu/turbo/utils/SystemAdapter;

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/SystemAdapter;->getPropertySpoofConfig()Ljava/util/Map;

    move-result-object v0

    .line 278
    .local v0, "config":Ljava/util/Map;
    new-instance v3, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 279
    nop

    .line 280
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    .line 282
    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Lkotlin/Pair;

    const-string v7, "totalProperties"

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v2

    .line 283
    const-string v7, "sampleProperties"

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v8, Lcom/pandasu/turbo/utils/CompatibilityTester$testPropertySpoof$1;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester$testPropertySpoof$1;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x1f

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v5

    .line 282
    nop

    .line 281
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 285
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\u5c5e\u6027\u914d\u7f6e\u4e3a\u7a7a\uff0c\u9700\u8981\u68c0\u67e5\u9884\u8bbe"

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 278
    :goto_1
    invoke-direct {v3, v1, v4, v5, v6}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "config":Ljava/util/Map;
    goto :goto_2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 289
    nop

    .line 290
    nop

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "Unknown error"

    :cond_2
    const-string v5, "ERROR"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 292
    const-string v5, "\u5c5e\u6027\u914d\u7f6e\u5f02\u5e38\uff0c\u9700\u8981\u8c03\u8bd5\u9002\u914d\u5668"

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 288
    invoke-direct {v3, v1, v2, v4, v5}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3
.end method

.method private final testRootAccess()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 21

    .line 301
    const-string v0, ", "

    const-string v1, "Root \u6743\u9650\u6d4b\u8bd5"

    .line 303
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v4

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v4

    const-string v5, "exec(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .local v4, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const-string v7, "getOut(...)"

    if-eqz v5, :cond_3

    :try_start_1
    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 391
    .local v8, "$i$f$any":I
    instance-of v9, v5, Ljava/util/Collection;

    if-eqz v9, :cond_0

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v3

    goto :goto_0

    .line 392
    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 304
    .local v12, "$i$a$-any-CompatibilityTester$testRootAccess$hasRoot$1":I
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v11

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "uid=0"

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-static {v13, v14, v3, v6, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v13

    .line 392
    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-any-CompatibilityTester$testRootAccess$hasRoot$1":I
    if-eqz v13, :cond_1

    move v5, v2

    goto :goto_0

    .line 393
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_2
    move v5, v3

    .end local v5    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$any":I
    :goto_0
    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    .line 304
    :goto_1
    nop

    .line 306
    .local v5, "hasRoot":Z
    new-instance v8, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 307
    nop

    .line 308
    nop

    .line 310
    const/4 v9, 0x3

    new-array v9, v9, [Lkotlin/Pair;

    const-string v10, "hasRoot"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v3

    .line 311
    const-string v10, "output"

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v11

    check-cast v12, Ljava/lang/Iterable;

    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v9, v2

    .line 310
    nop

    .line 312
    const-string v2, "error"

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/Shell$Result;->getErr()Ljava/util/List;

    move-result-object v7

    const-string v10, "getErr(...)"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v7

    check-cast v11, Ljava/lang/Iterable;

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v6

    .line 310
    nop

    .line 309
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 314
    if-nez v5, :cond_4

    const-string v2, "\u65e0 Root \u6743\u9650\uff0c\u90e8\u5206\u529f\u80fd\u53d7\u9650"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 306
    :goto_2
    invoke-direct {v8, v1, v5, v0, v2}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    .end local v5    # "hasRoot":Z
    goto :goto_3

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 318
    nop

    .line 319
    nop

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Unknown error"

    :cond_5
    const-string v4, "ERROR"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 321
    const-string v4, "Root \u6743\u9650\u68c0\u67e5\u5f02\u5e38\uff0c\u9700\u8981\u8c03\u8bd5 Shell \u547d\u4ee4"

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 317
    invoke-direct {v8, v1, v3, v2, v4}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v8
.end method

.method private final testSystemInfo()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 12

    .line 60
    const-string v0, "\u7cfb\u7edf\u4fe1\u606f\u6d4b\u8bd5"

    .line 61
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getSDK_INT()I

    move-result v2

    .line 62
    .local v2, "sdkInt":I
    sget-object v3, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v3}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getMANUFACTURER()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "manufacturer":Ljava/lang/String;
    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v4}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getBRAND()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "brand":Ljava/lang/String;
    sget-object v5, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getMODEL()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "model":Ljava/lang/String;
    sget-object v6, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getVersionDescription()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "versionDesc":Ljava/lang/String;
    new-instance v7, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 68
    nop

    .line 69
    nop

    .line 71
    const/4 v8, 0x5

    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "SDK_INT"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v1

    .line 72
    const-string v9, "MANUFACTURER"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 71
    nop

    .line 73
    const-string v9, "BRAND"

    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v8, v11

    .line 71
    nop

    .line 74
    const-string v9, "MODEL"

    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    .line 71
    nop

    .line 75
    const-string v9, "VERSION"

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v11, 0x4

    aput-object v9, v8, v11

    .line 71
    nop

    .line 70
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 67
    invoke-direct {v7, v0, v10, v8, v9}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "sdkInt":I
    .end local v3    # "manufacturer":Ljava/lang/String;
    .end local v4    # "brand":Ljava/lang/String;
    .end local v5    # "model":Ljava/lang/String;
    .end local v6    # "versionDesc":Ljava/lang/String;
    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 81
    nop

    .line 82
    nop

    .line 83
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "Unknown error"

    :cond_0
    const-string v4, "ERROR"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 84
    const-string v4, "\u68c0\u67e5 Build \u7c7b\u8bbf\u95ee\u6743\u9650"

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 80
    invoke-direct {v7, v0, v1, v3, v4}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v7
.end method

.method private final testVersionCompatibility()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .locals 6

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 94
    .local v0, "details":Ljava/util/Map;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 96
    .local v1, "suggestions":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastOreo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAtLeastOreo"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastPie()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAtLeastPie"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastQ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAtLeastQ"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastR()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAtLeastR"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastS()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAtLeastS"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastTiramisu()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAtLeastTiramisu"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastUpsideDownCake()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAtLeastUpsideDownCake"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastOreo()Z

    move-result v2

    .line 106
    .local v2, "minSdkSupported":Z
    if-nez v2, :cond_0

    .line 107
    const-string v3, "\u8bbe\u5907\u4f4e\u4e8e Android 8.0 (Oreo)\uff0c\u90e8\u5206\u529f\u80fd\u53ef\u80fd\u4e0d\u53ef\u7528"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    new-instance v3, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 110
    const-string v4, "\u7248\u672c\u517c\u5bb9\u6027\u6d4b\u8bd5"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;)V

    return-object v3
.end method


# virtual methods
.method public final TestResultView(Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p1, "result"    # Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    const v0, 0x104f9549

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(TestResultView)378@13510L7:CompatibilityTester.kt#otyrnw"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 378
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.utils.CompatibilityTester.TestResultView (CompatibilityTester.kt:377)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 379
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 400
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 379
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v3

    check-cast v0, Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 383
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResultView$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/pandasu/turbo/utils/CompatibilityTester$TestResultView$1;-><init>(Lcom/pandasu/turbo/utils/CompatibilityTester;Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public final runFullCompatibilityTest(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v1, Lcom/pandasu/turbo/utils/CompatibilityTester;->testScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, v4}, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 54
    return-void
.end method
