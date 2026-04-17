.class public final synthetic Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;
.super Ljava/lang/Object;
.source "SystemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/utils/SystemAdapter;
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

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HYPEROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v2}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

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
    sget-object v3, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->MIUI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v3}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

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
    sget-object v4, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->COLOROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v4}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v4

    :goto_28
    const/4 v4, 0x4

    :try_start_29
    sget-object v5, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ORIGINOS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v5

    :goto_33
    const/4 v5, 0x5

    :try_start_34
    sget-object v6, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HARMONYOS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v6}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v6

    :goto_3e
    const/4 v6, 0x6

    :try_start_3f
    sget-object v7, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ONEUI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_47} :catch_48

    goto :goto_49

    :catch_48
    move-exception v7

    :goto_49
    sput-object v0, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->values()[Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_52
    sget-object v7, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->XIAOMI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5b

    goto :goto_5c

    :catch_5b
    move-exception v7

    :goto_5c
    :try_start_5c
    sget-object v7, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->HUAWEI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v7

    :goto_66
    :try_start_66
    sget-object v7, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->VIVO:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v7

    :goto_70
    :try_start_70
    sget-object v7, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->SAMSUNG:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_78} :catch_79

    goto :goto_7a

    :catch_79
    move-exception v7

    :goto_7a
    :try_start_7a
    sget-object v7, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->OPPO:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    invoke-virtual {v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_82} :catch_83

    goto :goto_84

    :catch_83
    move-exception v5

    :goto_84
    :try_start_84
    sget-object v5, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->OTHER:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v5

    aput v6, v0, v5
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v5

    :goto_8e
    sput-object v0, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->values()[Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_97
    sget-object v5, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->KERNELSU_ROOT_SERVICE:Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_9f} :catch_a0

    goto :goto_a1

    :catch_a0
    move-exception v1

    :goto_a1
    :try_start_a1
    sget-object v1, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->INSTALL_PATH_CHECK:Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a9} :catch_aa

    goto :goto_ab

    :catch_aa
    move-exception v1

    :goto_ab
    :try_start_ab
    sget-object v1, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->STRICT_PERMISSION_MANAGEMENT:Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b3} :catch_b4

    goto :goto_b5

    :catch_b4
    move-exception v1

    :goto_b5
    :try_start_b5
    sget-object v1, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->ENHANCED_SECURITY:Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bd} :catch_be

    goto :goto_bf

    :catch_be
    move-exception v1

    :goto_bf
    sput-object v0, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
