.class public final enum Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
.super Ljava/lang/Enum;
.source "DetectorScanner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/util/DetectorScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RiskLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "SAFE",
        "LOW",
        "MEDIUM",
        "HIGH",
        "CRITICAL",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

.field public static final enum CRITICAL:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

.field public static final enum HIGH:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

.field public static final enum LOW:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

.field public static final enum MEDIUM:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

.field public static final enum SAFE:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    .locals 5

    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->SAFE:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->LOW:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    sget-object v2, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->MEDIUM:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    sget-object v3, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->HIGH:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    sget-object v4, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->CRITICAL:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    const-string v1, "SAFE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->SAFE:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    const-string v1, "LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->LOW:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    const-string v1, "MEDIUM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->MEDIUM:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    const-string v1, "HIGH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->HIGH:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    const-string v1, "CRITICAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->CRITICAL:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    invoke-static {}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->$values()[Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->$VALUES:[Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    .locals 1

    const-class v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;
    .locals 1

    sget-object v0, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->$VALUES:[Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    return-object v0
.end method
