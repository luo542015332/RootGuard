.class final Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "RootPermissionGuide.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $authStatus:Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V
    .locals 1

    iput-object p1, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$3;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$3;->$authStatus:Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 154
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    .line 155
    iget-object v1, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$3;->$context:Landroid/content/Context;

    .line 156
    iget-object v2, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$2$1$1$1$1$3;->$authStatus:Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    invoke-virtual {v2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->getRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->openRootManager(Landroid/content/Context;Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Z

    .line 158
    return-void
.end method
