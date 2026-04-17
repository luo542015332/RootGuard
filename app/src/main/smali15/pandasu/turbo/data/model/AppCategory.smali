.class public final enum Lcom/pandasu/turbo/data/model/AppCategory;
.super Ljava/lang/Enum;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/data/model/AppCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/AppCategory;",
        "",
        "(Ljava/lang/String;I)V",
        "FINANCE",
        "SOCIAL",
        "GAME",
        "SYSTEM_TOOL",
        "UTILITY",
        "UNKNOWN",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/data/model/AppCategory;

.field public static final enum FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

.field public static final enum GAME:Lcom/pandasu/turbo/data/model/AppCategory;

.field public static final enum SOCIAL:Lcom/pandasu/turbo/data/model/AppCategory;

.field public static final enum SYSTEM_TOOL:Lcom/pandasu/turbo/data/model/AppCategory;

.field public static final enum UNKNOWN:Lcom/pandasu/turbo/data/model/AppCategory;

.field public static final enum UTILITY:Lcom/pandasu/turbo/data/model/AppCategory;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/data/model/AppCategory;
    .registers 6

    sget-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->SOCIAL:Lcom/pandasu/turbo/data/model/AppCategory;

    sget-object v2, Lcom/pandasu/turbo/data/model/AppCategory;->GAME:Lcom/pandasu/turbo/data/model/AppCategory;

    sget-object v3, Lcom/pandasu/turbo/data/model/AppCategory;->SYSTEM_TOOL:Lcom/pandasu/turbo/data/model/AppCategory;

    sget-object v4, Lcom/pandasu/turbo/data/model/AppCategory;->UTILITY:Lcom/pandasu/turbo/data/model/AppCategory;

    sget-object v5, Lcom/pandasu/turbo/data/model/AppCategory;->UNKNOWN:Lcom/pandasu/turbo/data/model/AppCategory;

    filled-new-array/range {v0 .. v5}, [Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 209
    new-instance v0, Lcom/pandasu/turbo/data/model/AppCategory;

    const-string v1, "FINANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/AppCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

    new-instance v0, Lcom/pandasu/turbo/data/model/AppCategory;

    const-string v1, "SOCIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/AppCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->SOCIAL:Lcom/pandasu/turbo/data/model/AppCategory;

    new-instance v0, Lcom/pandasu/turbo/data/model/AppCategory;

    const-string v1, "GAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/AppCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->GAME:Lcom/pandasu/turbo/data/model/AppCategory;

    new-instance v0, Lcom/pandasu/turbo/data/model/AppCategory;

    const-string v1, "SYSTEM_TOOL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/AppCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->SYSTEM_TOOL:Lcom/pandasu/turbo/data/model/AppCategory;

    new-instance v0, Lcom/pandasu/turbo/data/model/AppCategory;

    const-string v1, "UTILITY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/AppCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->UTILITY:Lcom/pandasu/turbo/data/model/AppCategory;

    new-instance v0, Lcom/pandasu/turbo/data/model/AppCategory;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/AppCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->UNKNOWN:Lcom/pandasu/turbo/data/model/AppCategory;

    invoke-static {}, Lcom/pandasu/turbo/data/model/AppCategory;->$values()[Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->$VALUES:[Lcom/pandasu/turbo/data/model/AppCategory;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;
    .registers 2

    const-class v0, Lcom/pandasu/turbo/data/model/AppCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/model/AppCategory;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/data/model/AppCategory;
    .registers 1

    sget-object v0, Lcom/pandasu/turbo/data/model/AppCategory;->$VALUES:[Lcom/pandasu/turbo/data/model/AppCategory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/data/model/AppCategory;

    return-object v0
.end method
