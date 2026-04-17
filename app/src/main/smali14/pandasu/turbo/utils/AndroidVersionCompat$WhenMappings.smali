.class public final synthetic Lcom/pandasu/turbo/utils/AndroidVersionCompat$WhenMappings;
.super Ljava/lang/Object;
.source "AndroidVersionCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/utils/AndroidVersionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ROOT_DETECTION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v2

    :goto_12
    const/4 v2, 0x2

    :try_start_13
    sget-object v3, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->STORAGE_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-virtual {v3}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v3

    :goto_1d
    const/4 v3, 0x3

    :try_start_1e
    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->SYSTEM_PROPERTY_HIDING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-virtual {v4}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v4

    :goto_28
    :try_start_28
    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->SANDBOXING:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-virtual {v4}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v4

    :goto_33
    :try_start_33
    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->FULL_ISOLATION:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    invoke-virtual {v4}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v0, v4
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v4

    :goto_3e
    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_47
    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HYPEROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v4}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v1

    :goto_51
    :try_start_51
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->MIUI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception v1

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->COLOROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v1

    :goto_65
    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
