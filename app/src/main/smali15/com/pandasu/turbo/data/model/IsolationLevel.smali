.class public final enum Lcom/pandasu/turbo/data/model/IsolationLevel;
.super Ljava/lang/Enum;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/model/IsolationLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/data/model/IsolationLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0087\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/IsolationLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "BASIC",
        "STANDARD",
        "STRICT",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/data/model/IsolationLevel;

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

.field public static final enum BASIC:Lcom/pandasu/turbo/data/model/IsolationLevel;

.field public static final Companion:Lcom/pandasu/turbo/data/model/IsolationLevel$Companion;

.field public static final enum NONE:Lcom/pandasu/turbo/data/model/IsolationLevel;

.field public static final enum STANDARD:Lcom/pandasu/turbo/data/model/IsolationLevel;

.field public static final enum STRICT:Lcom/pandasu/turbo/data/model/IsolationLevel;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/data/model/IsolationLevel;
    .locals 4

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->NONE:Lcom/pandasu/turbo/data/model/IsolationLevel;

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationLevel;->BASIC:Lcom/pandasu/turbo/data/model/IsolationLevel;

    sget-object v2, Lcom/pandasu/turbo/data/model/IsolationLevel;->STANDARD:Lcom/pandasu/turbo/data/model/IsolationLevel;

    sget-object v3, Lcom/pandasu/turbo/data/model/IsolationLevel;->STRICT:Lcom/pandasu/turbo/data/model/IsolationLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/pandasu/turbo/data/model/IsolationLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->NONE:Lcom/pandasu/turbo/data/model/IsolationLevel;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationLevel;

    const-string v1, "BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->BASIC:Lcom/pandasu/turbo/data/model/IsolationLevel;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationLevel;

    const-string v1, "STANDARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->STANDARD:Lcom/pandasu/turbo/data/model/IsolationLevel;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationLevel;

    const-string v1, "STRICT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->STRICT:Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-static {}, Lcom/pandasu/turbo/data/model/IsolationLevel;->$values()[Lcom/pandasu/turbo/data/model/IsolationLevel;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->$VALUES:[Lcom/pandasu/turbo/data/model/IsolationLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/model/IsolationLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->Companion:Lcom/pandasu/turbo/data/model/IsolationLevel$Companion;

    .line 26
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationLevel$Companion$1;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationLevel$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 29
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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 26
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/data/model/IsolationLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationLevel;
    .locals 1

    const-class v0, Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationLevel;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/data/model/IsolationLevel;
    .locals 1

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationLevel;->$VALUES:[Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/data/model/IsolationLevel;

    return-object v0
.end method
