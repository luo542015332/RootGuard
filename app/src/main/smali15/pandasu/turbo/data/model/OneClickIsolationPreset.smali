.class public final enum Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
.super Ljava/lang/Enum;
.source "IsolationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/model/OneClickIsolationPreset$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
        "",
        "(Ljava/lang/String;I)V",
        "getDescription",
        "",
        "getDisplayName",
        "CONSERVATIVE",
        "BALANCED",
        "AGGRESSIVE",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

.field public static final enum AGGRESSIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

.field public static final enum BALANCED:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

.field public static final enum CONSERVATIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    .registers 3

    sget-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->CONSERVATIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    sget-object v1, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->BALANCED:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    sget-object v2, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->AGGRESSIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    filled-new-array {v0, v1, v2}, [Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 219
    new-instance v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    const-string v1, "CONSERVATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->CONSERVATIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    new-instance v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    const-string v1, "BALANCED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->BALANCED:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    new-instance v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    const-string v1, "AGGRESSIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->AGGRESSIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-static {}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->$values()[Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->$VALUES:[Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    .registers 2

    const-class v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    .registers 1

    sget-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->$VALUES:[Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 3

    .line 221
    sget-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 224
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_11
    const-string v0, "\u5b8c\u6574\u9694\u79bb\uff0c\u5305\u62ec\u5c5e\u6027\u4f2a\u88c5\u3001\u6570\u636e\u9694\u79bb\u3001\u7981\u7528 Root"

    goto :goto_19

    .line 223
    :pswitch_14
    const-string v0, "\u9690\u85cf Root + Xposed\uff0c\u542f\u7528\u5f3a\u5236\u6570\u636e\u9694\u79bb"

    goto :goto_19

    .line 222
    :pswitch_17
    const-string v0, "\u4ec5\u9690\u85cf Root \u5e94\u7528\uff0c\u4fdd\u7559 Xposed \u529f\u80fd"

    .line 225
    :goto_19
    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 3

    .line 227
    sget-object v0, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 230
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_11
    const-string v0, "\u6fc0\u8fdb\u6a21\u5f0f"

    goto :goto_19

    .line 229
    :pswitch_14
    const-string v0, "\u5e73\u8861\u6a21\u5f0f"

    goto :goto_19

    .line 228
    :pswitch_17
    const-string v0, "\u4fdd\u5b88\u6a21\u5f0f"

    .line 231
    :goto_19
    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method
