.class public final Lcom/pandasu/turbo/data/model/IsolationPresets;
.super Ljava/lang/Object;
.source "IsolationConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/IsolationPresets;",
        "",
        "()V",
        "FULL_PROP_SPOOF",
        "",
        "",
        "getFULL_PROP_SPOOF",
        "()Ljava/util/Map;",
        "MIUI_PROPS",
        "getMIUI_PROPS",
        "REALME_PROPS",
        "getREALME_PROPS",
        "bankingPreset",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "packageName",
        "appName",
        "basicIsolation",
        "gamingPreset",
        "socialPreset",
        "standardIsolation",
        "strictIsolation",
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

.field private static final FULL_PROP_SPOOF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

.field private static final MIUI_PROPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REALME_PROPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-direct {v0}, Lcom/pandasu/turbo/data/model/IsolationPresets;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    .line 77
    nop

    .line 79
    const/16 v0, 0x11

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "ro.boot.vbmeta.device_state"

    const-string v2, "locked"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 80
    const-string v1, "ro.boot.verifiedbootstate"

    const-string v4, "green"

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 79
    nop

    .line 81
    const-string v1, "ro.boot.flash.locked"

    const-string v6, "1"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v0, v7

    .line 79
    nop

    .line 82
    const-string v1, "ro.boot.veritymode"

    const-string v8, "enforcing"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v0, v8

    .line 79
    nop

    .line 83
    const-string v1, "ro.boot.warranty_bit"

    const-string v8, "0"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v9, 0x4

    aput-object v1, v0, v9

    .line 79
    nop

    .line 84
    const-string v1, "ro.warranty_bit"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v9, 0x5

    aput-object v1, v0, v9

    .line 79
    nop

    .line 85
    const-string v1, "ro.debuggable"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v9, 0x6

    aput-object v1, v0, v9

    .line 79
    nop

    .line 86
    const-string v1, "ro.force.debuggable"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    .line 79
    nop

    .line 87
    const-string v1, "ro.secure"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v9, 0x8

    aput-object v1, v0, v9

    .line 79
    nop

    .line 88
    const-string v1, "ro.adb.secure"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v10, 0x9

    aput-object v1, v0, v10

    .line 79
    nop

    .line 89
    const-string v1, "ro.build.type"

    const-string v10, "user"

    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v10, 0xa

    aput-object v1, v0, v10

    .line 79
    nop

    .line 90
    const-string v1, "ro.build.tags"

    const-string v10, "release-keys"

    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v10, 0xb

    aput-object v1, v0, v10

    .line 79
    nop

    .line 91
    const-string v1, "ro.vendor.boot.warranty_bit"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v10, 0xc

    aput-object v1, v0, v10

    .line 79
    nop

    .line 92
    const-string v1, "ro.vendor.warranty_bit"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v10, 0xd

    aput-object v1, v0, v10

    .line 79
    nop

    .line 93
    const-string v1, "vendor.boot.vbmeta.device_state"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v10, 0xe

    aput-object v1, v0, v10

    .line 79
    nop

    .line 94
    const-string v1, "vendor.boot.verifiedbootstate"

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v10, 0xf

    aput-object v1, v0, v10

    .line 79
    nop

    .line 95
    const-string v1, "sys.oem_unlock_allowed"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x10

    aput-object v1, v0, v8

    .line 79
    nop

    .line 77
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationPresets;->FULL_PROP_SPOOF:Ljava/util/Map;

    .line 99
    nop

    .line 100
    const-string v0, "ro.secureboot.lockstate"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationPresets;->MIUI_PROPS:Ljava/util/Map;

    .line 104
    nop

    .line 105
    new-array v0, v7, [Lkotlin/Pair;

    const-string v1, "ro.boot.realmebootstate"

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    .line 106
    const-string v1, "ro.boot.realme.lockstate"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    .line 105
    nop

    .line 104
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationPresets;->REALME_PROPS:Ljava/util/Map;

    sput v9, Lcom/pandasu/turbo/data/model/IsolationPresets;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bankingPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "packageName"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v22, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v0, v22

    .line 110
    const/4 v3, 0x1

    .line 111
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 112
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 113
    const/4 v10, 0x1

    .line 114
    sget-object v11, Lcom/pandasu/turbo/data/model/IsolationPresets;->FULL_PROP_SPOOF:Ljava/util/Map;

    .line 115
    new-instance v13, Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object v12, v13

    .line 116
    sget-object v16, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 115
    const/16 v17, 0x0

    .line 117
    const-string v3, "su -c \'rm -rf\'"

    const-string v4, "su -c \'mount -o remount\'"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 115
    const/16 v18, 0x0

    .line 118
    const-string v4, "/system/xbin"

    const-string v5, "/data/adb"

    const-string v6, "/system/bin"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    .line 115
    const/16 v20, 0x14

    const/16 v21, 0x0

    move-object/from16 v14, p1

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v21}, Lcom/pandasu/turbo/data/model/SandboxRule;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xf000

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v18}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    return-object v22
.end method

.method public final basicIsolation(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "packageName"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v19, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v0, v19

    .line 158
    const/4 v3, 0x1

    .line 159
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 160
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 161
    const/4 v10, 0x0

    .line 157
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 163
    const/4 v13, 0x0

    .line 164
    const/16 v16, 0x0

    move/from16 v14, v16

    .line 162
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 157
    const/16 v16, 0x0

    const v17, 0x8c00

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    return-object v19
.end method

.method public final gamingPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "packageName"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v22, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v0, v22

    .line 123
    const/4 v3, 0x1

    .line 124
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 125
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x0

    .line 128
    const/4 v11, 0x4

    new-array v11, v11, [Lkotlin/Pair;

    const-string v12, "ro.debuggable"

    const-string v13, "0"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string v12, "ro.build.type"

    const-string v13, "user"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 129
    const-string v12, "ro.build.tags"

    const-string v13, "release-keys"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    .line 128
    nop

    .line 129
    const-string v12, "ro.secure"

    const-string v13, "1"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    .line 128
    nop

    .line 127
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    .line 131
    new-instance v13, Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object v12, v13

    .line 132
    sget-object v16, Lcom/pandasu/turbo/data/model/SandboxLevel;->MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 131
    const/16 v17, 0x0

    .line 133
    const-string v3, "su -c \'rm -rf /data\'"

    const-string v4, "su -c \'format\'"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 131
    const/16 v18, 0x0

    .line 134
    const-string v4, "/system"

    const-string v5, "/data/adb/magisk"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    .line 131
    const/16 v20, 0x14

    const/16 v21, 0x0

    move-object/from16 v14, p1

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v21}, Lcom/pandasu/turbo/data/model/SandboxRule;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xf000

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v18}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    return-object v22
.end method

.method public final getFULL_PROP_SPOOF()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationPresets;->FULL_PROP_SPOOF:Ljava/util/Map;

    return-object v0
.end method

.method public final getMIUI_PROPS()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationPresets;->MIUI_PROPS:Ljava/util/Map;

    return-object v0
.end method

.method public final getREALME_PROPS()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationPresets;->REALME_PROPS:Ljava/util/Map;

    return-object v0
.end method

.method public final socialPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "packageName"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v22, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v0, v22

    .line 139
    const/4 v3, 0x1

    .line 140
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 141
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 142
    const/4 v10, 0x0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 143
    new-instance v13, Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object v12, v13

    .line 144
    sget-object v16, Lcom/pandasu/turbo/data/model/SandboxLevel;->PERMISSIVE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 143
    const/16 v17, 0x0

    .line 145
    const-string v18, "su -c \'rm -rf\'"

    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    .line 143
    const/16 v19, 0x0

    .line 146
    const-string v20, "/data/adb"

    invoke-static/range {v20 .. v20}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 143
    const/16 v21, 0x14

    const/16 v23, 0x0

    move-object/from16 v14, p1

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v23

    invoke-direct/range {v13 .. v21}, Lcom/pandasu/turbo/data/model/SandboxRule;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xf000

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 148
    return-object v22
.end method

.method public final standardIsolation(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "packageName"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v19, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v0, v19

    .line 174
    const/4 v3, 0x1

    .line 175
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 176
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 177
    const/4 v10, 0x0

    .line 173
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 179
    const/4 v13, 0x1

    .line 180
    const/16 v16, 0x0

    move/from16 v14, v16

    .line 178
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 173
    const/16 v16, 0x0

    const v17, 0x8c00

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    return-object v19
.end method

.method public final strictIsolation(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "packageName"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v11, Lcom/pandasu/turbo/data/model/IsolationPresets;->FULL_PROP_SPOOF:Ljava/util/Map;

    .line 200
    new-instance v13, Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object v12, v13

    .line 201
    sget-object v15, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 200
    const/16 v16, 0x0

    .line 202
    const-string v0, "su -c \'rm -rf\'"

    const-string v3, "su -c \'mount\'"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 200
    const/16 v18, 0x0

    .line 203
    const-string v0, "/system/xbin"

    const-string v3, "/data/adb"

    const-string v4, "/system/bin"

    filled-new-array {v4, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    .line 200
    const/16 v20, 0x14

    const/16 v21, 0x0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lcom/pandasu/turbo/data/model/SandboxRule;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    new-instance v19, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v0, v19

    .line 192
    const/4 v3, 0x1

    .line 193
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 194
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v13, 0x1

    move v9, v13

    .line 195
    move v10, v13

    .line 196
    nop

    .line 200
    nop

    .line 198
    nop

    .line 199
    const/4 v14, 0x1

    .line 197
    const/4 v15, 0x1

    .line 191
    const v17, 0x8000

    invoke-direct/range {v0 .. v18}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    return-object v19
.end method
