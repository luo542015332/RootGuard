.class public final enum Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;
.super Ljava/lang/Enum;
.source "AndroidVersionCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/utils/AndroidVersionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompatibilityRequirements"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;",
        "",
        "(Ljava/lang/String;I)V",
        "ROOT_DETECTION",
        "STORAGE_ISOLATION",
        "SYSTEM_PROPERTY_HIDING",
        "SANDBOXING",
        "FULL_ISOLATION",
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

.field private static final synthetic $VALUES:[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

.field public static final enum FULL_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

.field public static final enum ROOT_DETECTION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

.field public static final enum SANDBOXING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

.field public static final enum STORAGE_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

.field public static final enum SYSTEM_PROPERTY_HIDING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;


# direct methods
.method private static final synthetic $values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;
    .registers 5

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ROOT_DETECTION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->STORAGE_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->SYSTEM_PROPERTY_HIDING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    sget-object v3, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->SANDBOXING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->FULL_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 279
    new-instance v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    const-string v1, "ROOT_DETECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ROOT_DETECTION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    .line 280
    new-instance v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    const-string v1, "STORAGE_ISOLATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->STORAGE_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    .line 281
    new-instance v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    const-string v1, "SYSTEM_PROPERTY_HIDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->SYSTEM_PROPERTY_HIDING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    .line 282
    new-instance v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    const-string v1, "SANDBOXING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->SANDBOXING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    .line 283
    new-instance v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    const-string v1, "FULL_ISOLATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->FULL_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-static {}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->$values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->$VALUES:[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;
    .registers 2

    const-class v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    return-object v0
.end method

.method public static values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;
    .registers 1

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->$VALUES:[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    return-object v0
.end method
