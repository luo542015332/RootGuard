.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IsolationScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->AppFilterTabRow(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# instance fields
.field final synthetic $$changed:I

.field final synthetic $activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

.field final synthetic $onTabSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $systemCount:I

.field final synthetic $userCount:I


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lkotlin/jvm/functions/Function1;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            "Lkotlin/Unit;",
            ">;III)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$onTabSelected:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$userCount:I

    iput p4, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$systemCount:I

    iput p5, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$$changed:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .registers 9

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$onTabSelected:Lkotlin/jvm/functions/Function1;

    iget v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$userCount:I

    iget v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$systemCount:I

    iget v4, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;->$$changed:I

    or-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->AppFilterTabRow(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)V

    return-void
.end method
