.class public final enum Lcom/pandasu/turbo/data/model/IsolationAction;
.super Ljava/lang/Enum;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/model/IsolationAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/data/model/IsolationAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0081\u0002\u0018\u0000 \u00052\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/IsolationAction;",
        "",
        "(Ljava/lang/String;I)V",
        "ALLOWED",
        "BLOCKED",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/data/model/IsolationAction;

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

.field public static final enum ALLOWED:Lcom/pandasu/turbo/data/model/IsolationAction;

.field public static final enum BLOCKED:Lcom/pandasu/turbo/data/model/IsolationAction;

.field public static final Companion:Lcom/pandasu/turbo/data/model/IsolationAction$Companion;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/data/model/IsolationAction;
    .locals 2

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->ALLOWED:Lcom/pandasu/turbo/data/model/IsolationAction;

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationAction;->BLOCKED:Lcom/pandasu/turbo/data/model/IsolationAction;

    filled-new-array {v0, v1}, [Lcom/pandasu/turbo/data/model/IsolationAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationAction;

    const-string v1, "ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->ALLOWED:Lcom/pandasu/turbo/data/model/IsolationAction;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationAction;

    const-string v1, "BLOCKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/IsolationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->BLOCKED:Lcom/pandasu/turbo/data/model/IsolationAction;

    invoke-static {}, Lcom/pandasu/turbo/data/model/IsolationAction;->$values()[Lcom/pandasu/turbo/data/model/IsolationAction;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->$VALUES:[Lcom/pandasu/turbo/data/model/IsolationAction;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/pandasu/turbo/data/model/IsolationAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/model/IsolationAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->Companion:Lcom/pandasu/turbo/data/model/IsolationAction$Companion;

    .line 69
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationAction$Companion$1;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationAction$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 72
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

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 69
    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/data/model/IsolationAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationAction;
    .locals 1

    const-class v0, Lcom/pandasu/turbo/data/model/IsolationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationAction;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/data/model/IsolationAction;
    .locals 1

    sget-object v0, Lcom/pandasu/turbo/data/model/IsolationAction;->$VALUES:[Lcom/pandasu/turbo/data/model/IsolationAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/data/model/IsolationAction;

    return-object v0
.end method
