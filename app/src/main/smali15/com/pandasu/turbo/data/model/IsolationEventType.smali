.class public final enum Lcom/pandasu/turbo/data/model/IsolationEventType;
.super Ljava/lang/Enum;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/model/IsolationEventType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/data/model/IsolationEventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0087\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/IsolationEventType;",
        "",
        "(Ljava/lang/String;I)V",
        "COMMAND_BLOCKED",
        "COMMAND_ALLOWED",
        "PATH_BLOCKED",
        "PATH_ALLOWED",
        "ISOLATION_ENABLED",
        "ISOLATION_DISABLED",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/data/model/IsolationEventType;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum COMMAND_ALLOWED:Lcom/pandasu/turbo/data/model/IsolationEventType;

.field public static final enum COMMAND_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;

.field public static final Companion:Lcom/pandasu/turbo/data/model/IsolationEventType$Companion;

.field public static final enum ISOLATION_DISABLED:Lcom/pandasu/turbo/data/model/IsolationEventType;

.field public static final enum ISOLATION_ENABLED:Lcom/pandasu/turbo/data/model/IsolationEventType;

.field public static final enum PATH_ALLOWED:Lcom/pandasu/turbo/data/model/IsolationEventType;

.field public static final enum PATH_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/data/model/IsolationEventType;
    .locals 6

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->COMMAND_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationEventType;->COMMAND_ALLOWED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    sget-object v2, Lcom/pandasu/turbo/data/model/IsolationEventType;->PATH_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    sget-object v3, Lcom/pandasu/turbo/data/model/IsolationEventType;->PATH_ALLOWED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    sget-object v4, Lcom/pandasu/turbo/data/model/IsolationEventType;->ISOLATION_ENABLED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    sget-object v5, Lcom/pandasu/turbo/data/model/IsolationEventType;->ISOLATION_DISABLED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    filled-new-array/range {v0 .. v5}, [Lcom/pandasu/turbo/data/model/IsolationEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    const-string v1, "COMMAND_BLOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->COMMAND_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    const-string v1, "COMMAND_ALLOWED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->COMMAND_ALLOWED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    const-string v1, "PATH_BLOCKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->PATH_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    const-string v1, "PATH_ALLOWED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->PATH_ALLOWED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    .line 56
    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    const-string v1, "ISOLATION_ENABLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->ISOLATION_ENABLED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    const-string v1, "ISOLATION_DISABLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->ISOLATION_DISABLED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    invoke-static {}, Lcom/pandasu/turbo/data/model/IsolationEventType;->$values()[Lcom/pandasu/turbo/data/model/IsolationEventType;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->$VALUES:[Lcom/pandasu/turbo/data/model/IsolationEventType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationEventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/model/IsolationEventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->Companion:Lcom/pandasu/turbo/data/model/IsolationEventType$Companion;

    .line 53
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationEventType$Companion$1;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationEventType$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 53
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/data/model/IsolationEventType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationEventType;
    .locals 1

    const-class v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationEventType;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/data/model/IsolationEventType;
    .locals 1

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationEventType;->$VALUES:[Lcom/pandasu/turbo/data/model/IsolationEventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/data/model/IsolationEventType;

    return-object v0
.end method
