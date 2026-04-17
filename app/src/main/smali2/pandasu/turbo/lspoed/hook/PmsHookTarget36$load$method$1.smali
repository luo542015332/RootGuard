.class final Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$method$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PmsHookTarget36.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/reflect/Method;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Ljava/lang/reflect/Method;",
        "invoke",
        "(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$method$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$method$1;

    invoke-direct {v0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$method$1;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$method$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$method$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "$this$findMethod"    # Ljava/lang/reflect/Method;

    const-string v0, "$this$findMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldFilterApplication"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$method$1;->invoke(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
