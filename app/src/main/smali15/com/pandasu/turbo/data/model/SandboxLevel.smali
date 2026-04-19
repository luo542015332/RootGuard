.class public final enum Lcom/pandasu/turbo/data/model/SandboxLevel;
.super Ljava/lang/Enum;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/model/SandboxLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/data/model/SandboxLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0087\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/SandboxLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "STRICT",
        "MODERATE",
        "PERMISSIVE",
        "DISABLED",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/data/model/SandboxLevel;

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

.field public static final Companion:Lcom/pandasu/turbo/data/model/SandboxLevel$Companion;

.field public static final enum DISABLED:Lcom/pandasu/turbo/data/model/SandboxLevel;

.field public static final enum MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

.field public static final enum PERMISSIVE:Lcom/pandasu/turbo/data/model/SandboxLevel;

.field public static final enum STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/data/model/SandboxLevel;
    .locals 4

    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    sget-object v1, Lcom/pandasu/turbo/data/model/SandboxLevel;->MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    sget-object v2, Lcom/pandasu/turbo/data/model/SandboxLevel;->PERMISSIVE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    sget-object v3, Lcom/pandasu/turbo/data/model/SandboxLevel;->DISABLED:Lcom/pandasu/turbo/data/model/SandboxLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/pandasu/turbo/data/model/SandboxLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/pandasu/turbo/data/model/SandboxLevel;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/SandboxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    new-instance v0, Lcom/pandasu/turbo/data/model/SandboxLevel;

    const-string v1, "MODERATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/SandboxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    new-instance v0, Lcom/pandasu/turbo/data/model/SandboxLevel;

    const-string v1, "PERMISSIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/SandboxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->PERMISSIVE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    new-instance v0, Lcom/pandasu/turbo/data/model/SandboxLevel;

    const-string v1, "DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/SandboxLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->DISABLED:Lcom/pandasu/turbo/data/model/SandboxLevel;

    invoke-static {}, Lcom/pandasu/turbo/data/model/SandboxLevel;->$values()[Lcom/pandasu/turbo/data/model/SandboxLevel;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->$VALUES:[Lcom/pandasu/turbo/data/model/SandboxLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/pandasu/turbo/data/model/SandboxLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/model/SandboxLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->Companion:Lcom/pandasu/turbo/data/model/SandboxLevel$Companion;

    .line 48
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/pandasu/turbo/data/model/SandboxLevel$Companion$1;->INSTANCE:Lcom/pandasu/turbo/data/model/SandboxLevel$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 51
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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 48
    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/data/model/SandboxLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/data/model/SandboxLevel;
    .locals 1

    const-class v0, Lcom/pandasu/turbo/data/model/SandboxLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/model/SandboxLevel;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/data/model/SandboxLevel;
    .locals 1

    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->$VALUES:[Lcom/pandasu/turbo/data/model/SandboxLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/data/model/SandboxLevel;

    return-object v0
.end method
