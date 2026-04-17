.class public final synthetic Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;
.super Ljava/lang/Object;
.source "IsolationViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
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
    .registers 5

    invoke-static {}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->values()[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ALL:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v2}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

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
    sget-object v3, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->USER:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v3}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

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
    sget-object v4, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->SYSTEM:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v4}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v4

    :goto_28
    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->values()[Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_31
    sget-object v4, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->CONSERVATIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-virtual {v4}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    :try_start_3b
    sget-object v4, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->BALANCED:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-virtual {v4}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v4

    :goto_45
    :try_start_45
    sget-object v4, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->AGGRESSIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-virtual {v4}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v4

    :goto_4f
    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/pandasu/turbo/data/model/IsolationLevel;->values()[Lcom/pandasu/turbo/data/model/IsolationLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_58
    sget-object v4, Lcom/pandasu/turbo/data/model/IsolationLevel;->STRICT:Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-virtual {v4}, Lcom/pandasu/turbo/data/model/IsolationLevel;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v1

    :goto_62
    :try_start_62
    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationLevel;->STANDARD:Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/model/IsolationLevel;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6a} :catch_6b

    goto :goto_6c

    :catch_6b
    move-exception v1

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationLevel;->BASIC:Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/model/IsolationLevel;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_74} :catch_75

    goto :goto_76

    :catch_75
    move-exception v1

    :goto_76
    :try_start_76
    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationLevel;->NONE:Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/model/IsolationLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_7f} :catch_80

    goto :goto_81

    :catch_80
    move-exception v1

    :goto_81
    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
