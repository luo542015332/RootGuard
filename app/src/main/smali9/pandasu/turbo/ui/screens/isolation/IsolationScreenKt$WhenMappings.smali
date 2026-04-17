.class public final synthetic Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$WhenMappings;
.super Ljava/lang/Object;
.source "IsolationScreen.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;
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

    invoke-static {}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->values()[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ALL:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

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
    sget-object v1, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->USER:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->SYSTEM:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v1

    :goto_28
    sput-object v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
