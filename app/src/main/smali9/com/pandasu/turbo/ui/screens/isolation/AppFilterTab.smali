.class public final enum Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
.super Ljava/lang/Enum;
.source "IsolationViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
        "",
        "label",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getLabel",
        "()Ljava/lang/String;",
        "ALL",
        "USER",
        "SYSTEM",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

.field public static final enum ALL:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

.field public static final enum SYSTEM:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

.field public static final enum USER:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .locals 3

    sget-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ALL:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    sget-object v1, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->USER:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    sget-object v2, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->SYSTEM:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    filled-new-array {v0, v1, v2}, [Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    const/4 v1, 0x0

    const-string v2, "\u5168\u90e8"

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ALL:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    const/4 v1, 0x1

    const-string v2, "\u7528\u6237\u5e94\u7528"

    const-string v3, "USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->USER:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    const/4 v1, 0x2

    const-string v2, "\u7cfb\u7edf\u5e94\u7528"

    const-string v3, "SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->SYSTEM:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-static {}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->$values()[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->$VALUES:[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->label:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .locals 1

    const-class v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .locals 1

    sget-object v0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->$VALUES:[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->label:Ljava/lang/String;

    return-object v0
.end method
