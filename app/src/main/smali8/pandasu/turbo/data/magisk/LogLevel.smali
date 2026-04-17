.class public final enum Lcom/pandasu/turbo/data/magisk/LogLevel;
.super Ljava/lang/Enum;
.source "MagiskProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/data/magisk/LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/LogLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "DEBUG",
        "INFO",
        "WARNING",
        "ERROR",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/data/magisk/LogLevel;

.field public static final enum DEBUG:Lcom/pandasu/turbo/data/magisk/LogLevel;

.field public static final enum ERROR:Lcom/pandasu/turbo/data/magisk/LogLevel;

.field public static final enum INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;

.field public static final enum WARNING:Lcom/pandasu/turbo/data/magisk/LogLevel;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/data/magisk/LogLevel;
    .registers 4

    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->DEBUG:Lcom/pandasu/turbo/data/magisk/LogLevel;

    sget-object v1, Lcom/pandasu/turbo/data/magisk/LogLevel;->INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;

    sget-object v2, Lcom/pandasu/turbo/data/magisk/LogLevel;->WARNING:Lcom/pandasu/turbo/data/magisk/LogLevel;

    sget-object v3, Lcom/pandasu/turbo/data/magisk/LogLevel;->ERROR:Lcom/pandasu/turbo/data/magisk/LogLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/pandasu/turbo/data/magisk/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1325
    new-instance v0, Lcom/pandasu/turbo/data/magisk/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/magisk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->DEBUG:Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 1326
    new-instance v0, Lcom/pandasu/turbo/data/magisk/LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/magisk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 1327
    new-instance v0, Lcom/pandasu/turbo/data/magisk/LogLevel;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/magisk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->WARNING:Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 1328
    new-instance v0, Lcom/pandasu/turbo/data/magisk/LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/magisk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->ERROR:Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-static {}, Lcom/pandasu/turbo/data/magisk/LogLevel;->$values()[Lcom/pandasu/turbo/data/magisk/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->$VALUES:[Lcom/pandasu/turbo/data/magisk/LogLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 1324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/data/magisk/LogLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/data/magisk/LogLevel;
    .registers 2

    const-class v0, Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/data/magisk/LogLevel;
    .registers 1

    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->$VALUES:[Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/data/magisk/LogLevel;

    return-object v0
.end method
