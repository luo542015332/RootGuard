.class public final Lcom/pandasu/turbo/data/model/SandboxRule;
.super Ljava/lang/Object;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;,
        Lcom/pandasu/turbo/data/model/SandboxRule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 /2\u00020\u0001:\u0002./Bm\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fBW\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH\u00c6\u0003J\u000f\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH\u00c6\u0003J\u000f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH\u00c6\u0003J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH\u00c6\u0003J]\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH\u00c6\u0001J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001J\t\u0010%\u001a\u00020\u0005H\u00d6\u0001J&\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u00c1\u0001\u00a2\u0006\u0002\u0008-R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\u00a8\u00060"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/SandboxRule;",
        "",
        "seen1",
        "",
        "packageName",
        "",
        "level",
        "Lcom/pandasu/turbo/data/model/SandboxLevel;",
        "commandWhitelist",
        "",
        "commandBlacklist",
        "pathWhitelist",
        "pathBlacklist",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getCommandBlacklist",
        "()Ljava/util/List;",
        "getCommandWhitelist",
        "getLevel",
        "()Lcom/pandasu/turbo/data/model/SandboxLevel;",
        "getPackageName",
        "()Ljava/lang/String;",
        "getPathBlacklist",
        "getPathWhitelist",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
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

.field public static final Companion:Lcom/pandasu/turbo/data/model/SandboxRule$Companion;


# instance fields
.field private final commandBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final commandWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final level:Lcom/pandasu/turbo/data/model/SandboxLevel;

.field private final packageName:Ljava/lang/String;

.field private final pathBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pathWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/pandasu/turbo/data/model/SandboxRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/model/SandboxRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxRule;->Companion:Lcom/pandasu/turbo/data/model/SandboxRule$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/model/SandboxRule;->$stable:I

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/pandasu/turbo/data/model/SandboxLevel;->Companion:Lcom/pandasu/turbo/data/model/SandboxLevel$Companion;

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/model/SandboxLevel$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxRule;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .registers 11
    .param p1, "seen1"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/pandasu/turbo/data/model/SandboxLevel;
    .param p4, "commandWhitelist"    # Ljava/util/List;
    .param p5, "commandBlacklist"    # Ljava/util/List;
    .param p6, "pathWhitelist"    # Ljava/util/List;
    .param p7, "pathBlacklist"    # Ljava/util/List;
    .param p8, "serializationConstructorMarker"    # Lkotlinx/serialization/internal/SerializationConstructorMarker;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .line 38
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_e

    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;->INSTANCE:Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/model/SandboxRule$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1c

    .line 41
    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 38
    iput-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    goto :goto_1e

    :cond_1c
    iput-object p3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    :goto_1e
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_29

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    goto :goto_2b

    :cond_29
    iput-object p4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    :goto_2b
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_36

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    goto :goto_38

    :cond_36
    iput-object p5, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    :goto_38
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_43

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    goto :goto_45

    :cond_43
    iput-object p6, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    :goto_45
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_50

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    goto :goto_52

    :cond_50
    iput-object p7, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    :goto_52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/pandasu/turbo/data/model/SandboxLevel;
    .param p3, "commandWhitelist"    # Ljava/util/List;
    .param p4, "commandBlacklist"    # Ljava/util/List;
    .param p5, "pathWhitelist"    # Ljava/util/List;
    .param p6, "pathBlacklist"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/model/SandboxLevel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandWhitelist"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandBlacklist"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathWhitelist"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathBlacklist"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 42
    iput-object p3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    .line 44
    iput-object p5, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    .line 45
    iput-object p6, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    .line 39
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    .line 39
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_8

    .line 41
    sget-object p2, Lcom/pandasu/turbo/data/model/SandboxLevel;->MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    move-object v2, p2

    goto :goto_9

    .line 39
    :cond_8
    move-object v2, p2

    :goto_9
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    move-object v3, p3

    goto :goto_14

    .line 39
    :cond_13
    move-object v3, p3

    :goto_14
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1e

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    move-object v4, p4

    goto :goto_1f

    .line 39
    :cond_1e
    move-object v4, p4

    :goto_1f
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_29

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    move-object v5, p5

    goto :goto_2a

    .line 39
    :cond_29
    move-object v5, p5

    :goto_2a
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_34

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    move-object v6, p6

    goto :goto_35

    .line 39
    :cond_34
    move-object v6, p6

    :goto_35
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/pandasu/turbo/data/model/SandboxRule;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .registers 1

    .line 38
    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxRule;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/model/SandboxRule;Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/data/model/SandboxRule;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/pandasu/turbo/data/model/SandboxRule;->copy(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/pandasu/turbo/data/model/SandboxRule;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_debug(Lcom/pandasu/turbo/data/model/SandboxRule;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 9
    .param p0, "self"    # Lcom/pandasu/turbo/data/model/SandboxRule;
    .param p1, "output"    # Lkotlinx/serialization/encoding/CompositeEncoder;
    .param p2, "serialDesc"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 38
    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxRule;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v1

    goto :goto_1a

    :cond_11
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 41
    sget-object v4, Lcom/pandasu/turbo/data/model/SandboxLevel;->MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    if-eq v3, v4, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    if-eqz v3, :cond_25

    .line 38
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    const/4 v3, 0x2

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v4, v1

    goto :goto_3d

    :cond_2e
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    move v4, v1

    goto :goto_3d

    :cond_3c
    move v4, v2

    :goto_3d
    if-eqz v4, :cond_48

    .line 38
    aget-object v4, v0, v3

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    invoke-interface {p1, p2, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_48
    const/4 v3, 0x3

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v1

    goto :goto_60

    :cond_51
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    move v4, v1

    goto :goto_60

    :cond_5f
    move v4, v2

    :goto_60
    if-eqz v4, :cond_6b

    .line 38
    aget-object v4, v0, v3

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    invoke-interface {p1, p2, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_6b
    const/4 v3, 0x4

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_74

    move v4, v1

    goto :goto_83

    :cond_74
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    move v4, v1

    goto :goto_83

    :cond_82
    move v4, v2

    :goto_83
    if-eqz v4, :cond_8e

    .line 38
    aget-object v4, v0, v3

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    invoke-interface {p1, p2, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8e
    const/4 v3, 0x5

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_97

    move v2, v1

    goto :goto_a4

    :cond_97
    iget-object v4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a4

    move v2, v1

    :cond_a4
    :goto_a4
    if-eqz v2, :cond_af

    .line 38
    aget-object v0, v0, v3

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_af
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/pandasu/turbo/data/model/SandboxLevel;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/pandasu/turbo/data/model/SandboxRule;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/model/SandboxLevel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pandasu/turbo/data/model/SandboxRule;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandWhitelist"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandBlacklist"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathWhitelist"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathBlacklist"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/pandasu/turbo/data/model/SandboxRule;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/model/SandboxRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/model/SandboxRule;

    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    if-eq v3, v4, :cond_1f

    return v2

    :cond_1f
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    return v2

    :cond_2a
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    return v2

    :cond_35
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    return v2

    :cond_40
    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    iget-object v1, v1, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    return v2

    :cond_4b
    return v0
.end method

.method public final getCommandBlacklist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public final getCommandWhitelist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public final getLevel()Lcom/pandasu/turbo/data/model/SandboxLevel;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPathBlacklist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public final getPathWhitelist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/SandboxLevel;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->level:Lcom/pandasu/turbo/data/model/SandboxLevel;

    iget-object v2, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandWhitelist:Ljava/util/List;

    iget-object v3, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->commandBlacklist:Ljava/util/List;

    iget-object v4, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathWhitelist:Ljava/util/List;

    iget-object v5, p0, Lcom/pandasu/turbo/data/model/SandboxRule;->pathBlacklist:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SandboxRule(packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", level="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commandWhitelist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commandBlacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pathWhitelist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pathBlacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
