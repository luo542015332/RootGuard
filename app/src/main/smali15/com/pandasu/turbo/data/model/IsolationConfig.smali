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
    .locals 5

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
    .locals 17
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

    if-eq v3, v2, :cond_0

    sget-object v2, Lcom/pandasu/turbo/data/model/IsolationConfig$$serializer;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationConfig$$serializer;

    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/IsolationConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 9
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    move/from16 v4, p4

    goto :goto_0

    :cond_1
    move/from16 v4, p4

    iput-boolean v4, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    :goto_0
    and-int/lit8 v6, v1, 0x8

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 10
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    move/from16 v6, p5

    goto :goto_1

    :cond_2
    move/from16 v6, p5

    iput-boolean v6, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    :goto_1
    and-int/lit8 v8, v1, 0x10

    if-nez v8, :cond_3

    .line 11
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    move/from16 v8, p6

    goto :goto_2

    :cond_3
    move/from16 v8, p6

    iput-boolean v8, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    :goto_2
    and-int/lit8 v9, v1, 0x20

    if-nez v9, :cond_4

    .line 12
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    move/from16 v9, p7

    goto :goto_3

    :cond_4
    move/from16 v9, p7

    iput-boolean v9, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    :goto_3
    and-int/lit8 v10, v1, 0x40

    if-nez v10, :cond_5

    .line 13
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    move/from16 v10, p8

    goto :goto_4

    :cond_5
    move/from16 v10, p8

    iput-boolean v10, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    :goto_4
    and-int/lit16 v11, v1, 0x80

    if-nez v11, :cond_6

    .line 14
    nop

    .line 5
    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    move/from16 v11, p9

    goto :goto_5

    :cond_6
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    :goto_5
    and-int/lit16 v12, v1, 0x100

    if-nez v12, :cond_7

    .line 15
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    move/from16 v12, p10

    goto :goto_6

    :cond_7
    move/from16 v12, p10

    iput-boolean v12, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    :goto_6
    and-int/lit16 v13, v1, 0x200

    if-nez v13, :cond_8

    .line 16
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    move/from16 v13, p11

    goto :goto_7

    :cond_8
    move/from16 v13, p11

    iput-boolean v13, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    :goto_7
    and-int/lit16 v14, v1, 0x400

    if-nez v14, :cond_9

    .line 17
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v14

    .line 5
    iput-object v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    move-object/from16 v14, p12

    goto :goto_8

    :cond_9
    move-object/from16 v14, p12

    iput-object v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    :goto_8
    and-int/lit16 v15, v1, 0x800

    if-nez v15, :cond_a

    .line 18
    nop

    .line 5
    const/4 v15, 0x0

    iput-object v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object/from16 v15, p13

    goto :goto_9

    :cond_a
    move-object/from16 v15, p13

    iput-object v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    :goto_9
    and-int/lit16 v7, v1, 0x1000

    if-nez v7, :cond_b

    .line 20
    nop

    .line 5
    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    move/from16 v7, p14

    goto :goto_a

    :cond_b
    move/from16 v7, p14

    iput-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    :goto_a
    and-int/lit16 v5, v1, 0x2000

    if-nez v5, :cond_c

    .line 21
    nop

    .line 5
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    move/from16 v5, p15

    goto :goto_b

    :cond_c
    move/from16 v5, p15

    iput-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    :goto_b
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_d

    .line 22
    nop

    .line 5
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    move/from16 v2, p16

    goto :goto_c

    :cond_d
    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    :goto_c
    const v16, 0x8000

    and-int v16, v1, v16

    if-nez v16, :cond_e

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    move-object/from16 v1, p17

    goto :goto_d

    :cond_e
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    :goto_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)V
    .locals 16
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
    .locals 20

    .line 6
    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9
    move v6, v2

    goto :goto_0

    .line 6
    :cond_0
    move/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 10
    move v7, v3

    goto :goto_1

    .line 6
    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 11
    move v8, v3

    goto :goto_2

    .line 6
    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 12
    move v9, v3

    goto :goto_3

    .line 6
    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 13
    move v10, v3

    goto :goto_4

    .line 6
    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 14
    move v11, v3

    goto :goto_5

    .line 6
    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 15
    move v12, v2

    goto :goto_6

    .line 6
    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 16
    move v13, v2

    goto :goto_7

    .line 6
    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 17
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v14, v1

    goto :goto_8

    .line 6
    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 18
    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_9

    .line 6
    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 20
    move/from16 v16, v2

    goto :goto_a

    .line 6
    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    .line 21
    move/from16 v17, v2

    goto :goto_b

    .line 6
    :cond_b
    move/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    .line 22
    move/from16 v18, v3

    goto :goto_c

    .line 6
    :cond_c
    move/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_d

    .line 6
    :cond_d
    move-object/from16 v19, p16

    :goto_d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v19}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)V

    .line 24
    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 5
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/model/IsolationConfig;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-boolean v15, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
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
    .locals 6
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

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    .line 9
    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_2
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    .line 10
    if-eq v4, v3, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-eqz v4, :cond_5

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_5
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    .line 11
    if-eq v4, v3, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    if-eqz v4, :cond_8

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_8
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_3

    :cond_9
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    .line 12
    if-eq v4, v3, :cond_a

    move v4, v3

    goto :goto_3

    :cond_a
    move v4, v2

    :goto_3
    if-eqz v4, :cond_b

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_b
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v3

    goto :goto_4

    :cond_c
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    .line 13
    if-eq v4, v3, :cond_d

    move v4, v3

    goto :goto_4

    :cond_d
    move v4, v2

    :goto_4
    if-eqz v4, :cond_e

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_e
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v3

    goto :goto_5

    :cond_f
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    .line 14
    if-eq v4, v3, :cond_10

    move v4, v3

    goto :goto_5

    :cond_10
    move v4, v2

    :goto_5
    if-eqz v4, :cond_11

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_11
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v3

    goto :goto_6

    :cond_12
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    .line 15
    if-eqz v4, :cond_13

    move v4, v3

    goto :goto_6

    :cond_13
    move v4, v2

    :goto_6
    if-eqz v4, :cond_14

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_14
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v3

    goto :goto_7

    :cond_15
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    .line 16
    if-eqz v4, :cond_16

    move v4, v3

    goto :goto_7

    :cond_16
    move v4, v2

    :goto_7
    if-eqz v4, :cond_17

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_17
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v3

    goto :goto_8

    :cond_18
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    .line 17
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move v4, v3

    goto :goto_8

    :cond_19
    move v4, v2

    :goto_8
    if-eqz v4, :cond_1a

    .line 5
    aget-object v4, v0, v1

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :goto_9
    move v4, v3

    goto :goto_a

    :cond_1b
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    if-eqz v4, :cond_1c

    goto :goto_9

    :cond_1c
    move v4, v2

    :goto_a
    if-eqz v4, :cond_1d

    sget-object v4, Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;->INSTANCE:Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v3

    goto :goto_b

    :cond_1e
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    .line 20
    if-eqz v4, :cond_1f

    move v4, v3

    goto :goto_b

    :cond_1f
    move v4, v2

    :goto_b
    if-eqz v4, :cond_20

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_20
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_21

    move v4, v3

    goto :goto_c

    :cond_21
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    .line 21
    if-eqz v4, :cond_22

    move v4, v3

    goto :goto_c

    :cond_22
    move v4, v2

    :goto_c
    if-eqz v4, :cond_23

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_23
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_24

    move v4, v3

    goto :goto_d

    :cond_24
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    .line 22
    if-eq v4, v3, :cond_25

    move v4, v3

    goto :goto_d

    :cond_25
    move v4, v2

    :goto_d
    if-eqz v4, :cond_26

    .line 5
    iget-boolean v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_26
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_27

    move v2, v3

    goto :goto_e

    :cond_27
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    move v2, v3

    :cond_28
    :goto_e
    if-eqz v2, :cond_29

    .line 5
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    return v0
.end method

.method public final component11()Ljava/util/Map;
    .locals 1
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
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    return v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    return v0
.end method

.method public final component16()Ljava/util/List;
    .locals 1
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
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .locals 19
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
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/pandasu/turbo/data/model/IsolationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/model/IsolationConfig;

    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->customProps:Ljava/util/Map;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    if-eq v3, v4, :cond_e

    return v2

    :cond_e
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    if-eq v3, v4, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    iget-object v1, v1, Lcom/pandasu/turbo/data/model/IsolationConfig;->hiddenPackages:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomProps()Ljava/util/Map;
    .locals 1
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
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->disableRootAccess:Z

    return v0
.end method

.method public final getEnableAppDataIsolation()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enableAppDataIsolation:Z

    return v0
.end method

.method public final getEnablePlatformCompatHook()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePlatformCompatHook:Z

    return v0
.end method

.method public final getEnablePmsHook()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->enablePmsHook:Z

    return v0
.end method

.method public final getHiddenPackages()Ljava/util/List;
    .locals 1
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
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideBusybox:Z

    return v0
.end method

.method public final getHideMagisk()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagisk:Z

    return v0
.end method

.method public final getHideMagiskApp()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideMagiskApp:Z

    return v0
.end method

.method public final getHideSuBinary()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideSuBinary:Z

    return v0
.end method

.method public final getHideXposed()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->hideXposed:Z

    return v0
.end method

.method public final getIsolateStorage()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isolateStorage:Z

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSandboxRule()Lcom/pandasu/turbo/data/model/SandboxRule;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->sandboxRule:Lcom/pandasu/turbo/data/model/SandboxRule;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

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

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/SandboxRule;->hashCode()I

    move-result v2

    :goto_0
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
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

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
