.class public final Lcom/pandasu/turbo/data/local/IsolationDataStore;
.super Ljava/lang/Object;
.source "IsolationDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/local/IsolationDataStore$Companion;,
        Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsolationDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,335:1\n53#2:336\n55#2:340\n53#2:341\n55#2:345\n53#2:346\n55#2:350\n53#2:351\n55#2:355\n53#2:356\n55#2:360\n53#2:361\n55#2:365\n53#2:366\n55#2:370\n53#2:371\n55#2:375\n53#2:376\n55#2:380\n53#2:381\n55#2:385\n50#3:337\n55#3:339\n50#3:342\n55#3:344\n50#3:347\n55#3:349\n50#3:352\n55#3:354\n50#3:357\n55#3:359\n50#3:362\n55#3:364\n50#3:367\n55#3:369\n50#3:372\n55#3:374\n50#3:377\n55#3:379\n50#3:382\n55#3:384\n107#4:338\n107#4:343\n107#4:348\n107#4:353\n107#4:358\n107#4:363\n107#4:368\n107#4:373\n107#4:378\n107#4:383\n1747#5,3:386\n*S KotlinDebug\n*F\n+ 1 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n*L\n45#1:336\n45#1:340\n150#1:341\n150#1:345\n174#1:346\n174#1:350\n247#1:351\n247#1:355\n296#1:356\n296#1:360\n303#1:361\n303#1:365\n310#1:366\n310#1:370\n317#1:371\n317#1:375\n324#1:376\n324#1:380\n65#1:381\n65#1:385\n45#1:337\n45#1:339\n150#1:342\n150#1:344\n174#1:347\n174#1:349\n247#1:352\n247#1:354\n296#1:357\n296#1:359\n303#1:362\n303#1:364\n310#1:367\n310#1:369\n317#1:372\n317#1:374\n324#1:377\n324#1:379\n65#1:382\n65#1:384\n45#1:338\n150#1:343\n174#1:348\n247#1:353\n296#1:358\n303#1:363\n310#1:368\n317#1:373\n324#1:378\n65#1:383\n332#1:386,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 :2\u00020\u0001:\u0002:;B\u0011\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010#\u001a\u00020$H\u0086@\u00a2\u0006\u0002\u0010%J\u000e\u0010&\u001a\u00020$H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\t2\u0006\u0010(\u001a\u00020)J\u0018\u0010*\u001a\u0004\u0018\u00010\u00192\u0006\u0010(\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010/J\u0016\u00100\u001a\u00020$2\u0006\u0010(\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010+J\u0016\u00101\u001a\u00020$2\u0006\u00102\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0002\u00103J\u001c\u00104\u001a\u00020$2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0086@\u00a2\u0006\u0002\u00106J\u0016\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u00109R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000cR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000cR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000cR\u001d\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000cR\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00180\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000cR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u000c\u00a8\u0006<"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "dataStore",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "globalIsolationEnabled",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getGlobalIsolationEnabled",
        "()Lkotlinx/coroutines/flow/Flow;",
        "hasAnyHideBusyboxConfig",
        "getHasAnyHideBusyboxConfig",
        "hasAnyHideMagiskAppConfig",
        "getHasAnyHideMagiskAppConfig",
        "hasAnyHideMagiskConfig",
        "getHasAnyHideMagiskConfig",
        "hasAnyHideSuConfig",
        "getHasAnyHideSuConfig",
        "hasAnyHideXposedConfig",
        "getHasAnyHideXposedConfig",
        "isolationConfigs",
        "",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "getIsolationConfigs",
        "isolationEvents",
        "Lcom/pandasu/turbo/data/model/IsolationEvent;",
        "getIsolationEvents",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "sandboxStats",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
        "getSandboxStats",
        "clearAllConfigs",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearIsolationLogs",
        "getConfigForApp",
        "packageName",
        "",
        "getConfigForAppSync",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hasAnyEnabledIsolation",
        "logIsolationEvent",
        "event",
        "(Lcom/pandasu/turbo/data/model/IsolationEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeIsolationConfig",
        "saveIsolationConfig",
        "config",
        "(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveIsolationConfigs",
        "configs",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setGlobalIsolationEnabled",
        "enabled",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "SandboxStats",
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

.field public static final Companion:Lcom/pandasu/turbo/data/local/IsolationDataStore$Companion;

.field private static final DEFAULT_ISOLATION_LEVEL_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_ISOLATION_ENABLED_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ISOLATION_CONFIGS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ISOLATION_EVENTS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SANDBOX_STATS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataStore:Landroidx/datastore/core/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final globalIsolationEnabled:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAnyHideBusyboxConfig:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAnyHideMagiskAppConfig:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAnyHideMagiskConfig:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAnyHideSuConfig:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAnyHideXposedConfig:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isolationConfigs:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isolationEvents:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final json:Lkotlinx/serialization/json/Json;

.field private final sandboxStats:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/local/IsolationDataStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->Companion:Lcom/pandasu/turbo/data/local/IsolationDataStore$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->$stable:I

    .line 35
    const-string v0, "isolation_configs"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringSetKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->ISOLATION_CONFIGS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 36
    const-string v0, "global_isolation_enabled"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->GLOBAL_ISOLATION_ENABLED_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 37
    const-string v0, "default_isolation_level"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->DEFAULT_ISOLATION_LEVEL_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 38
    const-string v0, "isolation_events"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringSetKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->ISOLATION_EVENTS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 39
    const-string v0, "sandbox_stats"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->SANDBOX_STATS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->context:Landroid/content/Context;

    .line 31
    # invokes: Lcom/pandasu/turbo/data/local/IsolationDataStoreKt;->getIsolationDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    invoke-static {p1}, Lcom/pandasu/turbo/data/local/IsolationDataStoreKt;->access$getIsolationDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    .line 32
    sget-object v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$json$1;->INSTANCE:Lcom/pandasu/turbo/data/local/IsolationDataStore$json$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2, v3}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v1

    iput-object v1, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->json:Lkotlinx/serialization/json/Json;

    .line 45
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .local v1, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 336
    .local v2, "$i$f$map":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 337
    .local v4, "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 338
    .local v5, "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1;

    invoke-direct {v6, v3, p0}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 339
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 340
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 45
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    .line 150
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 341
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 342
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 343
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$2;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 344
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 345
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 150
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->globalIsolationEnabled:Lkotlinx/coroutines/flow/Flow;

    .line 174
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 346
    .local v1, "$i$f$map":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 347
    .local v3, "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 348
    .local v4, "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$3;

    invoke-direct {v5, v2, p0}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 349
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 350
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 174
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationEvents:Lkotlinx/coroutines/flow/Flow;

    .line 247
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationEvents:Lkotlinx/coroutines/flow/Flow;

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 351
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 352
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 353
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4;

    invoke-direct {v5, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 354
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 355
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 247
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->sandboxStats:Lkotlinx/coroutines/flow/Flow;

    .line 296
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 356
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 357
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 358
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$5;

    invoke-direct {v5, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 359
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 360
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 296
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideSuConfig:Lkotlinx/coroutines/flow/Flow;

    .line 303
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 361
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 362
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 363
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$6;

    invoke-direct {v5, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 364
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 365
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 303
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideMagiskConfig:Lkotlinx/coroutines/flow/Flow;

    .line 310
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 366
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 367
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 368
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$7;

    invoke-direct {v5, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 369
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 370
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 310
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideBusyboxConfig:Lkotlinx/coroutines/flow/Flow;

    .line 317
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 371
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 372
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 373
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$8;

    invoke-direct {v5, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 374
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 375
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 317
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideXposedConfig:Lkotlinx/coroutines/flow/Flow;

    .line 324
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 376
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 377
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 378
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$9;

    invoke-direct {v5, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$9;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 379
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 380
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 324
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideMagiskAppConfig:Lkotlinx/coroutines/flow/Flow;

    .line 28
    return-void
.end method

.method public static final synthetic access$getGLOBAL_ISOLATION_ENABLED_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 27
    sget-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->GLOBAL_ISOLATION_ENABLED_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getISOLATION_CONFIGS_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 27
    sget-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->ISOLATION_CONFIGS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getISOLATION_EVENTS_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 27
    sget-object v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->ISOLATION_EVENTS_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getJson$p(Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lkotlinx/serialization/json/Json;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 27
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method


# virtual methods
.method public final clearAllConfigs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$clearAllConfigs$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$clearAllConfigs$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 167
    return-object v0
.end method

.method public final clearIsolationLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$clearIsolationLogs$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$clearIsolationLogs$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 232
    return-object v0
.end method

.method public final getConfigForApp(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 381
    .local v1, "$i$f$map":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 382
    .local v3, "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 383
    .local v4, "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1;

    invoke-direct {v5, v2, p0, p1}, Lcom/pandasu/turbo/data/local/IsolationDataStore$getConfigForApp$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/pandasu/turbo/data/local/IsolationDataStore;Ljava/lang/String;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 384
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 385
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 78
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    return-object v5
.end method

.method public final getConfigForAppSync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getConfigForApp(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGlobalIsolationEnabled()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->globalIsolationEnabled:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getHasAnyHideBusyboxConfig()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideBusyboxConfig:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getHasAnyHideMagiskAppConfig()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideMagiskAppConfig:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getHasAnyHideMagiskConfig()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideMagiskConfig:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getHasAnyHideSuConfig()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideSuConfig:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getHasAnyHideXposedConfig()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->hasAnyHideXposedConfig:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getIsolationConfigs()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getIsolationEvents()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationEvent;",
            ">;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationEvents:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getSandboxStats()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->sandboxStats:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final hasAnyEnabledIsolation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;

    iget v1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;

    invoke-direct {v0, p0, p1}, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;-><init>(Lcom/pandasu/turbo/data/local/IsolationDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 331
    iget v2, p1, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_76

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_42

    :pswitch_33
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 332
    .local v2, "this":Lcom/pandasu/turbo/data/local/IsolationDataStore;
    iget-object v4, v2, Lcom/pandasu/turbo/data/local/IsolationDataStore;->isolationConfigs:Lkotlinx/coroutines/flow/Flow;

    iput v3, p1, Lcom/pandasu/turbo/data/local/IsolationDataStore$hasAnyEnabledIsolation$1;->label:I

    invoke-static {v4, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lcom/pandasu/turbo/data/local/IsolationDataStore;
    if-ne v2, v1, :cond_42

    .line 331
    return-object v1

    :cond_42
    :goto_42
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 386
    .local v2, "$i$f$any":I
    instance-of v4, v1, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_56

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_56

    move v3, v5

    goto :goto_70

    .line 387
    :cond_56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v6, v1

    check-cast v6, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v6, "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/4 v7, 0x0

    .line 332
    .local v7, "$i$a$-any-IsolationDataStore$hasAnyEnabledIsolation$2":I
    invoke-virtual {v6}, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled()Z

    move-result v6

    .line 387
    .end local v6    # "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v7    # "$i$a$-any-IsolationDataStore$hasAnyEnabledIsolation$2":I
    if-eqz v6, :cond_5a

    goto :goto_70

    .line 388
    .end local v1    # "element$iv":Ljava/lang/Object;
    :cond_6f
    move v3, v5

    .end local v2    # "$i$f$any":I
    :goto_70
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 332
    return-object v1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2e
    .end packed-switch
.end method

.method public final logIsolationEvent(Lcom/pandasu/turbo/data/model/IsolationEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "event"    # Lcom/pandasu/turbo/data/model/IsolationEvent;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$logIsolationEvent$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$logIsolationEvent$2;-><init>(Lcom/pandasu/turbo/data/model/IsolationEvent;Lcom/pandasu/turbo/data/local/IsolationDataStore;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 223
    return-object v0
.end method

.method public final removeIsolationConfig(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$removeIsolationConfig$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/local/IsolationDataStore;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 145
    return-object v0
.end method

.method public final saveIsolationConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$saveIsolationConfig$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$saveIsolationConfig$2;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lcom/pandasu/turbo/data/local/IsolationDataStore;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    return-object v0
.end method

.method public final saveIsolationConfigs(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "configs"    # Ljava/util/List;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$saveIsolationConfigs$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$saveIsolationConfigs$2;-><init>(Ljava/util/List;Lcom/pandasu/turbo/data/local/IsolationDataStore;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 289
    return-object v0
.end method

.method public final setGlobalIsolationEnabled(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$setGlobalIsolationEnabled$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$setGlobalIsolationEnabled$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 158
    return-object v0
.end method
