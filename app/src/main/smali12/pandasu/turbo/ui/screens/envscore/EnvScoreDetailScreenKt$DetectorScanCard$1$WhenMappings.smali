.class public final synthetic Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$1$WhenMappings;
.super Ljava/lang/Object;
.source "EnvScoreDetailScreen.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$1;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->values()[Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->CRITICAL:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    invoke-virtual {v1}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    :try_start_12
    sget-object v1, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->HIGH:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    invoke-virtual {v1}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    sput-object v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$DetectorScanCard$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
