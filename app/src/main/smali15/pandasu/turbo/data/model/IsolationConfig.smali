.class public final Lcom/pandasu/turbo/data/model/IsolationConfig;
.super Ljava/lang/Object;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/model/IsolationConfig$$serializer;,
        Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 O2\u00020\u0001:\u0002NOB\u00b5\u0001\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0008\u0012\u0006\u0010\u0015\u001a\u00020\u0008\u0012\u0006\u0010\u0016\u001a\u00020\u0008\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0018\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0002\u0010\u001bB\u00b5\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u0012\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0008\u0012\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0018\u00a2\u0006\u0002\u0010\u001cJ\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\u0015\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\t\u00105\u001a\u00020\u0008H\u00c6\u0003J\t\u00106\u001a\u00020\u0008H\u00c6\u0003J\t\u00107\u001a\u00020\u0008H\u00c6\u0003J\u000f\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0018H\u00c6\u0003J\t\u00109\u001a\u00020\u0005H\u00c6\u0003J\t\u0010:\u001a\u00020\u0008H\u00c6\u0003J\t\u0010;\u001a\u00020\u0008H\u00c6\u0003J\t\u0010<\u001a\u00020\u0008H\u00c6\u0003J\t\u0010=\u001a\u00020\u0008H\u00c6\u0003J\t\u0010>\u001a\u00020\u0008H\u00c6\u0003J\t\u0010?\u001a\u00020\u0008H\u00c6\u0003J\t\u0010@\u001a\u00020\u0008H\u00c6\u0003J\u00bd\u0001\u0010A\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00082\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0018H\u00c6\u0001J\u0013\u0010B\u001a\u00020\u00082\u0008\u0010C\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010D\u001a\u00020\u0003H\u00d6\u0001J\t\u0010E\u001a\u00020\u0005H\u00d6\u0001J&\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u00002\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020LH\u00c1\u0001\u00a2\u0006\u0002\u0008MR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0015\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u0011\u0010\u0014\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\"R\u0011\u0010\u0016\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\"R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\"R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\"R\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\"R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\"R\u0011\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\"R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\"R\u0011\u0010\u000e\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001eR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100\u00a8\u0006P"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "",
        "seen1",
        "",
        "packageName",
        "",
        "appName",
        "isEnabled",
        "",
        "hideMagisk",
        "hideSuBinary",
        "hideBusybox",
        "hideXposed",
        "hideMagiskApp",
        "isolateStorage",
        "disableRootAccess",
        "customProps",
        "",
        "sandboxRule",
        "Lcom/pandasu/turbo/data/model/SandboxRule;",
        "enablePlatformCompatHook",
        "enableAppDataIsolation",
        "enablePmsHook",
        "hiddenPackages",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)V",
        "getAppName",
        "()Ljava/lang/String;",
        "getCustomProps",
        "()Ljava/util/Map;",
        "getDisableRootAccess",
        "()Z",
        "getEnableAppDataIsolation",
        "getEnablePlatformCompatHook",
        "getEnablePmsHook",
        "getHiddenPackages",
        "()Ljava/util/List;",
        "getHideBusybox",
        "getHideMagisk",
        "getHideMagiskApp",
        "getHideSuBinary",
        "getHideXposed",
        "getIsolateStorage",
        "getPackageName",
        "getSandboxRule",
        "()Lcom/pandasu/turbo/data/model/SandboxRule;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$app_debug",
        "$serializer",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final $stable:I

.field public static final Companion:Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;


# instance fields
.field private final appName:Ljava/lang/String;

.field private final customProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final disableRootAccess:Z

.field private final enableAppDataIsolation:Z

.field private final enablePlatformCompatHook:Z

.field private final enablePmsHook:Z

.field private final hiddenPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hideBusybox:Z

.field private final hideMagisk:Z

.field private final hideMagiskApp:Z

.field private final hideSuBinary:Z

.field private final hideXposed:Z

.field private final isEnabled:Z

.field private final isolateStorage:Z

.field private final packageName:Ljava/lang/String;

.field private final sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->Companion:Lcom/pandasu/turbo/data/model/IsolationConfig$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->$stable:I

    .line 5
    const/16 v2, 0x10

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    aput-object v1, v2, v3

    aput-object v1, v2, v0

    const/16 v0, 0x9

    aput-object v1, v2, v0

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v3, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xa

    aput-object v0, v2, v3

    const/16 v0, 0xb

    aput-object v1, v2, v0

    const/16 v0, 0xc

    aput-object v1, v2, v0

    const/16 v0, 0xd

    aput-object v1, v2, v0

    const/16 v0, 0xe

    aput-object v1, v2, v0

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v1, 0xf

    aput-object v0, v2, v1

    sput-object v2, Lcom/pandasu/turbo/data/model/IsolationConfig;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .registers 36
    .param p1, "seen1"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z
    .param p5, "hideMagisk"    # Z
    .param p6, "hideSuBinary"    # Z
    .param p7, "hideBusybox"    # Z
    .param p8, "hideXposed"    # Z
    .param p9, "hideMagiskApp"    # Z
    .param p10, "isolateStorage"    # Z
    .param p11, "disableRootAccess"    # Z
    .param p12, "customProps"    # Ljava/util/Map;
    .param p13, "sandboxRule"    # Lcom/pandasu/turbo/data/model/SandboxRule;
    .param p14, "enablePlatformCompatHook"    # Z
    .param p15, "enableAppDataIsolation"    # Z
    .param p16, "enablePmsHook"    # Z
    .param p17, "hiddenPackages"    # Ljava/util/List;
    .param p18, "serializationConstructorMarker"    # Lkotlinx/serialization/internal/SerializationConstructorMarker;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .line 5
    move-object/from16 v0, p0

    move/from16 v1, p1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x3

    if-eq v3, v2, :cond_12

    sget-object v2, Lcom/pandasu/turbo/data/model/IsolationConfig$$serializer;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationConfig$$serializer;

    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/IsolationConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    if-nez v4, :cond_28

    .line 9
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    move/from16 v4, p4

    goto :goto_2c

    :cond_28
    move/from16 v4, p4

    iput-boolean v4, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    :goto_2c
    and-int/lit8 v6, v1, 0x8

    const/4 v7, 0x1

    if-nez v6, :cond_37

    .line 10
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    move/from16 v6, p5

    goto :goto_3b

    :cond_37
    move/from16 v6, p5

    iput-boolean v6, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    :goto_3b
    and-int/lit8 v8, v1, 0x10

    if-nez v8, :cond_45

    .line 11
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    move/from16 v8, p6

    goto :goto_49

    :cond_45
    move/from16 v8, p6

    iput-boolean v8, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    :goto_49
    and-int/lit8 v9, v1, 0x20

    if-nez v9, :cond_53

    .line 12
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    move/from16 v9, p7

    goto :goto_57

    :cond_53
    move/from16 v9, p7

    iput-boolean v9, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    :goto_57
    and-int/lit8 v10, v1, 0x40

    if-nez v10, :cond_61

    .line 13
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    move/from16 v10, p8

    goto :goto_65

    :cond_61
    move/from16 v10, p8

    iput-boolean v10, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    :goto_65
    and-int/lit16 v11, v1, 0x80

    if-nez v11, :cond_6f

    .line 14
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    move/from16 v11, p9

    goto :goto_73

    :cond_6f
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    :goto_73
    and-int/lit16 v12, v1, 0x100

    if-nez v12, :cond_7d

    .line 15
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    move/from16 v12, p10

    goto :goto_81

    :cond_7d
    move/from16 v12, p10

    iput-boolean v12, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    :goto_81
    and-int/lit16 v13, v1, 0x200

    if-nez v13, :cond_8b

    .line 16
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    move/from16 v13, p11

    goto :goto_8f

    :cond_8b
    move/from16 v13, p11

    iput-boolean v13, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    :goto_8f
    and-int/lit16 v14, v1, 0x400

    if-nez v14, :cond_9c

    .line 17
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v14

    .line 5
    iput-object v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    move-object/from16 v14, p12

    goto :goto_a0

    :cond_9c
    move-object/from16 v14, p12

    iput-object v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    :goto_a0
    and-int/lit16 v15, v1, 0x800

    if-nez v15, :cond_ab

    .line 18
    nop

    .line 5
    const/4 v15, 0x0

    iput-object v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object/from16 v15, p13

    goto :goto_af

    :cond_ab
    move-object/from16 v15, p13

    iput-object v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    :goto_af
    and-int/lit16 v7, v1, 0x1000

    if-nez v7, :cond_b9

    .line 20
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    move/from16 v7, p14

    goto :goto_bd

    :cond_b9
    move/from16 v7, p14

    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    :goto_bd
    and-int/lit16 v5, v1, 0x2000

    if-nez v5, :cond_c8

    .line 21
    nop

    .line 5
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    move/from16 v5, p15

    goto :goto_cc

    :cond_c8
    move/from16 v5, p15

    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    :goto_cc
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_d7

    .line 22
    nop

    .line 5
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    move/from16 v2, p16

    goto :goto_db

    :cond_d7
    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    :goto_db
    const v16, 0x8000

    and-int v16, v1, v16

    if-nez v16, :cond_eb

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    move-object/from16 v1, p17

    goto :goto_ef

    :cond_eb
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    :goto_ef
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)V
    .registers 33
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "isEnabled"    # Z
    .param p4, "hideMagisk"    # Z
    .param p5, "hideSuBinary"    # Z
    .param p6, "hideBusybox"    # Z
    .param p7, "hideXposed"    # Z
    .param p8, "hideMagiskApp"    # Z
    .param p9, "isolateStorage"    # Z
    .param p10, "disableRootAccess"    # Z
    .param p11, "customProps"    # Ljava/util/Map;
    .param p12, "sandboxRule"    # Lcom/pandasu/turbo/data/model/SandboxRule;
    .param p13, "enablePlatformCompatHook"    # Z
    .param p14, "enableAppDataIsolation"    # Z
    .param p15, "enablePmsHook"    # Z
    .param p16, "hiddenPackages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pandasu/turbo/data/model/SandboxRule;",
            "ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    move-object/from16 v4, p16

    const-string v5, "packageName"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "appName"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "customProps"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "hiddenPackages"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    .line 8
    iput-object v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    .line 9
    move/from16 v5, p3

    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    .line 10
    move/from16 v6, p4

    iput-boolean v6, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    .line 11
    move/from16 v7, p5

    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    .line 12
    move/from16 v8, p6

    iput-boolean v8, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    .line 13
    move/from16 v9, p7

    iput-boolean v9, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    .line 14
    move/from16 v10, p8

    iput-boolean v10, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    .line 15
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    .line 16
    move/from16 v12, p10

    iput-boolean v12, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    .line 17
    iput-object v3, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    .line 18
    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    .line 20
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    .line 21
    move/from16 v15, p14

    iput-boolean v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    .line 22
    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    .line 23
    iput-object v4, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 39

    .line 6
    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 9
    move v6, v2

    goto :goto_b

    .line 6
    :cond_9
    move/from16 v6, p3

    :goto_b
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    .line 10
    move v7, v3

    goto :goto_14

    .line 6
    :cond_12
    move/from16 v7, p4

    :goto_14
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1a

    .line 11
    move v8, v3

    goto :goto_1c

    .line 6
    :cond_1a
    move/from16 v8, p5

    :goto_1c
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_22

    .line 12
    move v9, v3

    goto :goto_24

    .line 6
    :cond_22
    move/from16 v9, p6

    :goto_24
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2a

    .line 13
    move v10, v3

    goto :goto_2c

    .line 6
    :cond_2a
    move/from16 v10, p7

    :goto_2c
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_32

    .line 14
    move v11, v3

    goto :goto_34

    .line 6
    :cond_32
    move/from16 v11, p8

    :goto_34
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3a

    .line 15
    move v12, v2

    goto :goto_3c

    .line 6
    :cond_3a
    move/from16 v12, p9

    :goto_3c
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_42

    .line 16
    move v13, v2

    goto :goto_44

    .line 6
    :cond_42
    move/from16 v13, p10

    :goto_44
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4e

    .line 17
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v14, v1

    goto :goto_50

    .line 6
    :cond_4e
    move-object/from16 v14, p11

    :goto_50
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_57

    .line 18
    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_59

    .line 6
    :cond_57
    move-object/from16 v15, p12

    :goto_59
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_60

    .line 20
    move/from16 v16, v2

    goto :goto_62

    .line 6
    :cond_60
    move/from16 v16, p13

    :goto_62
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_69

    .line 21
    move/from16 v17, v2

    goto :goto_6b

    .line 6
    :cond_69
    move/from16 v17, p14

    :goto_6b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_72

    .line 22
    move/from16 v18, v3

    goto :goto_74

    .line 6
    :cond_72
    move/from16 v18, p15

    :goto_74
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_81

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_83

    .line 6
    :cond_81
    move-object/from16 v19, p16

    :goto_83
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v19}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)V

    .line 24
    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .registers 1

    .line 5
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/model/IsolationConfig;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 36

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-boolean v4, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    goto :goto_1f

    :cond_1d
    move/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-boolean v6, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    goto :goto_3a

    :cond_38
    move/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-boolean v8, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    goto :goto_43

    :cond_41
    move/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-boolean v9, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    goto :goto_4c

    :cond_4a
    move/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-boolean v10, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    goto :goto_55

    :cond_53
    move/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-boolean v11, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    goto :goto_5e

    :cond_5c
    move/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-boolean v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    goto :goto_79

    :cond_77
    move/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-boolean v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    goto :goto_82

    :cond_80
    move/from16 v15, p14

    :goto_82
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-boolean v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    goto :goto_8d

    :cond_8b
    move/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_97

    iget-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    goto :goto_99

    :cond_97
    move-object/from16 v1, p16

    :goto_99
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/pandasu/turbo/data/model/IsolationConfig;->copy(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic write$Self$app_debug(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 9
    .param p0, "self"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p1, "output"    # Lkotlinx/serialization/encoding/CompositeEncoder;
    .param p2, "serialDesc"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 5
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v3

    goto :goto_1e

    :cond_17
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    .line 9
    if-eqz v4, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    if-eqz v4, :cond_25

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_25
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v4, v3

    goto :goto_35

    :cond_2e
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    .line 10
    if-eq v4, v3, :cond_34

    move v4, v3

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    if-eqz v4, :cond_3c

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_3c
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_45

    move v4, v3

    goto :goto_4c

    :cond_45
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    .line 11
    if-eq v4, v3, :cond_4b

    move v4, v3

    goto :goto_4c

    :cond_4b
    move v4, v2

    :goto_4c
    if-eqz v4, :cond_53

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_53
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    move v4, v3

    goto :goto_63

    :cond_5c
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    .line 12
    if-eq v4, v3, :cond_62

    move v4, v3

    goto :goto_63

    :cond_62
    move v4, v2

    :goto_63
    if-eqz v4, :cond_6a

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_6a
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_73

    move v4, v3

    goto :goto_7a

    :cond_73
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    .line 13
    if-eq v4, v3, :cond_79

    move v4, v3

    goto :goto_7a

    :cond_79
    move v4, v2

    :goto_7a
    if-eqz v4, :cond_81

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_81
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_8a

    move v4, v3

    goto :goto_91

    :cond_8a
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    .line 14
    if-eq v4, v3, :cond_90

    move v4, v3

    goto :goto_91

    :cond_90
    move v4, v2

    :goto_91
    if-eqz v4, :cond_98

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_98
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_a2

    move v4, v3

    goto :goto_a9

    :cond_a2
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    .line 15
    if-eqz v4, :cond_a8

    move v4, v3

    goto :goto_a9

    :cond_a8
    move v4, v2

    :goto_a9
    if-eqz v4, :cond_b0

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_b0
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_ba

    move v4, v3

    goto :goto_c1

    :cond_ba
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    .line 16
    if-eqz v4, :cond_c0

    move v4, v3

    goto :goto_c1

    :cond_c0
    move v4, v2

    :goto_c1
    if-eqz v4, :cond_c8

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_c8
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_d2

    move v4, v3

    goto :goto_e1

    :cond_d2
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    .line 17
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e0

    move v4, v3

    goto :goto_e1

    :cond_e0
    move v4, v2

    :goto_e1
    if-eqz v4, :cond_ec

    .line 5
    aget-object v4, v0, v1

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_ec
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_f6

    :goto_f4
    move v4, v3

    goto :goto_fc

    :cond_f6
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    if-eqz v4, :cond_fb

    goto :goto_f4

    :cond_fb
    move v4, v2

    :goto_fc
    if-eqz v4, :cond_107

    sget-object v4, Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;->INSTANCE:Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_107
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_111

    move v4, v3

    goto :goto_118

    :cond_111
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    .line 20
    if-eqz v4, :cond_117

    move v4, v3

    goto :goto_118

    :cond_117
    move v4, v2

    :goto_118
    if-eqz v4, :cond_11f

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_11f
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_129

    move v4, v3

    goto :goto_130

    :cond_129
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    .line 21
    if-eqz v4, :cond_12f

    move v4, v3

    goto :goto_130

    :cond_12f
    move v4, v2

    :goto_130
    if-eqz v4, :cond_137

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_137
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_141

    move v4, v3

    goto :goto_148

    :cond_141
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    .line 22
    if-eq v4, v3, :cond_147

    move v4, v3

    goto :goto_148

    :cond_147
    move v4, v2

    :goto_148
    if-eqz v4, :cond_14f

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_14f
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_159

    move v2, v3

    goto :goto_166

    :cond_159
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_166

    move v2, v3

    :cond_166
    :goto_166
    if-eqz v2, :cond_171

    .line 5
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_171
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    return v0
.end method

.method public final component11()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    return-object v0
.end method

.method public final component12()Lcom/pandasu/turbo/data/model/SandboxRule;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    return-object v0
.end method

.method public final component13()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    return v0
.end method

.method public final component14()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    return v0
.end method

.method public final component15()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    return v0
.end method

.method public final component16()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    return v0
.end method

.method public final component4()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    return v0
.end method

.method public final component5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    return v0
.end method

.method public final component6()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    return v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    return v0
.end method

.method public final component8()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    return v0
.end method

.method public final component9()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pandasu/turbo/data/model/SandboxRule;",
            "ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "packageName"

    move-object/from16 v17, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customProps"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenPackages"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/model/IsolationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/model/IsolationConfig;

    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v2

    :cond_23
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    if-eq v3, v4, :cond_2a

    return v2

    :cond_2a
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    if-eq v3, v4, :cond_31

    return v2

    :cond_31
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    if-eq v3, v4, :cond_38

    return v2

    :cond_38
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    if-eq v3, v4, :cond_3f

    return v2

    :cond_3f
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    if-eq v3, v4, :cond_46

    return v2

    :cond_46
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    if-eq v3, v4, :cond_4d

    return v2

    :cond_4d
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    if-eq v3, v4, :cond_54

    return v2

    :cond_54
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    if-eq v3, v4, :cond_5b

    return v2

    :cond_5b
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    return v2

    :cond_66
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    return v2

    :cond_71
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    if-eq v3, v4, :cond_78

    return v2

    :cond_78
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    if-eq v3, v4, :cond_7f

    return v2

    :cond_7f
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    if-eq v3, v4, :cond_86

    return v2

    :cond_86
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    iget-object v1, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    return v2

    :cond_91
    return v0
.end method

.method public final getAppName()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomProps()Ljava/util/Map;
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

    .line 17
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    return-object v0
.end method

.method public final getDisableRootAccess()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    return v0
.end method

.method public final getEnableAppDataIsolation()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    return v0
.end method

.method public final getEnablePlatformCompatHook()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    return v0
.end method

.method public final getEnablePmsHook()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    return v0
.end method

.method public final getHiddenPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    return-object v0
.end method

.method public final getHideBusybox()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    return v0
.end method

.method public final getHideMagisk()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    return v0
.end method

.method public final getHideMagiskApp()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    return v0
.end method

.method public final getHideSuBinary()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    return v0
.end method

.method public final getHideXposed()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    return v0
.end method

.method public final getIsolateStorage()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSandboxRule()Lcom/pandasu/turbo/data/model/SandboxRule;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    if-nez v2, :cond_68

    const/4 v2, 0x0

    goto :goto_6c

    :cond_68
    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/SandboxRule;->hashCode()I

    move-result v2

    :goto_6c
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isEnabled()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    iget-boolean v4, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    iget-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    iget-boolean v6, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    iget-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    iget-boolean v8, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    iget-boolean v9, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    iget-boolean v10, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    iget-object v11, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    iget-object v12, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    iget-boolean v13, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    iget-boolean v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    iget-boolean v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    move/from16 v16, v15

    iget-object v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "IsolationConfig(packageName="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideMagisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideSuBinary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideBusybox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideXposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideMagiskApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isolateStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableRootAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customProps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sandboxRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enablePlatformCompatHook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableAppDataIsolation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enablePmsHook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hiddenPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
