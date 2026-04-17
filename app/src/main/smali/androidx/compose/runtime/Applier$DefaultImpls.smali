.class public final Landroidx/compose/runtime/Applier$DefaultImpls;
.super Ljava/lang/Object;
.source "Applier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Applier;
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
.method public static onBeginChanges(Landroidx/compose/runtime/Applier;)V
    .registers 1
    .param p0, "$this"    # Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/Applier<",
            "TN;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    # invokes: Landroidx/compose/runtime/Applier;->onBeginChanges()V
    invoke-static {p0}, Landroidx/compose/runtime/Applier;->access$onBeginChanges$jd(Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method public static onEndChanges(Landroidx/compose/runtime/Applier;)V
    .registers 1
    .param p0, "$this"    # Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/Applier<",
            "TN;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    # invokes: Landroidx/compose/runtime/Applier;->onEndChanges()V
    invoke-static {p0}, Landroidx/compose/runtime/Applier;->access$onEndChanges$jd(Landroidx/compose/runtime/Applier;)V

    return-void
.end method
