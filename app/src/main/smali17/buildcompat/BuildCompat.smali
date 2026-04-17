.class public Lrikka/buildcompat/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAtLeast(I)Z
    .registers 2
    .param p0, "api"    # I

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isAtLeast10()Z
    .registers 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeast11()Z
    .registers 2

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeast12()Z
    .registers 2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeast12L()Z
    .registers 2

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeast13()Z
    .registers 2

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeast14()Z
    .registers 2

    .line 173
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast13()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-gtz v0, :cond_10

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isAtLeast5()Z
    .registers 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeast5_1()Z
    .registers 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeast6()Z
    .registers 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeast7()Z
    .registers 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeast7_1()Z
    .registers 1

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeast8()Z
    .registers 1

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeast8_1()Z
    .registers 2

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeast9()Z
    .registers 2

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeastL()Z
    .registers 1

    .line 184
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast5()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastL_MR1()Z
    .registers 1

    .line 195
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast5_1()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastM()Z
    .registers 1

    .line 206
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast6()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastN()Z
    .registers 1

    .line 217
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast7()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastN_MR1()Z
    .registers 1

    .line 228
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast7_1()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastO()Z
    .registers 1

    .line 239
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast8()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastO_MR1()Z
    .registers 1

    .line 250
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast8_1()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastP()Z
    .registers 1

    .line 261
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast9()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastQ()Z
    .registers 1

    .line 272
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast10()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastR()Z
    .registers 1

    .line 283
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast11()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastS()Z
    .registers 1

    .line 294
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast12()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastS_V2()Z
    .registers 1

    .line 305
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast12L()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastT()Z
    .registers 1

    .line 316
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast13()Z

    move-result v0

    return v0
.end method

.method public static isAtLeastU()Z
    .registers 1

    .line 327
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeast14()Z

    move-result v0

    return v0
.end method
