.class public final Landroidx/compose/ui/unit/Density$DefaultImpls;
.super Ljava/lang/Object;
.source "Density.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/unit/Density;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getDensity$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getFontScale$annotations()V
    .registers 0

    return-void
.end method

.method public static roundToPx--R2X_6o(Landroidx/compose/ui/unit/Density;J)I
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    # invokes: Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/unit/Density;J)I

    move-result v0

    return v0
.end method

.method public static roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    # invokes: Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$roundToPx-0680j_4$jd(Landroidx/compose/ui/unit/Density;F)I

    move-result v0

    .line 76
    return v0
.end method

.method public static toDp-GaN1DYA(Landroidx/compose/ui/unit/Density;J)F
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    # invokes: Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->access$toDp-GaN1DYA$jd(Landroidx/compose/ui/unit/Density;J)F

    move-result v0

    .line 108
    return v0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/unit/Density;F)F
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    # invokes: Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/unit/Density;F)F

    move-result v0

    return v0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/unit/Density;I)F
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    # invokes: Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/unit/Density;I)F

    move-result v0

    return v0
.end method

.method public static toDpSize-k-rfVVM(Landroidx/compose/ui/unit/Density;J)J
    .registers 5
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    # invokes: Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/unit/Density;J)J

    move-result-wide v0

    .line 161
    return-wide v0
.end method

.method public static toPx--R2X_6o(Landroidx/compose/ui/unit/Density;J)F
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    # invokes: Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->access$toPx--R2X_6o$jd(Landroidx/compose/ui/unit/Density;J)F

    move-result v0

    .line 92
    return v0
.end method

.method public static toPx-0680j_4(Landroidx/compose/ui/unit/Density;F)F
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    # invokes: Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$toPx-0680j_4$jd(Landroidx/compose/ui/unit/Density;F)F

    move-result v0

    return v0
.end method

.method public static toRect(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # Landroidx/compose/ui/unit/DpRect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    # invokes: Landroidx/compose/ui/unit/Density;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$toRect$jd(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public static toSize-XkaWNTQ(Landroidx/compose/ui/unit/Density;J)J
    .registers 5
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    # invokes: Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/unit/Density;J)J

    move-result-wide v0

    .line 151
    return-wide v0
.end method

.method public static toSp-0xMU5do(Landroidx/compose/ui/unit/Density;F)J
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    # invokes: Landroidx/compose/ui/unit/Density;->toSp-0xMU5do(F)J
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$toSp-0xMU5do$jd(Landroidx/compose/ui/unit/Density;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/unit/Density;F)J
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    # invokes: Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/unit/Density;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/unit/Density;I)J
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/unit/Density;
    .param p1, "$receiver"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    # invokes: Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(I)J
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Density;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/unit/Density;I)J

    move-result-wide v0

    return-wide v0
.end method
