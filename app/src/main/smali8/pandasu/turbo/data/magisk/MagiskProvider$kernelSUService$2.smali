.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$kernelSUService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/pandasu/turbo/data/kernelsu/KernelSUService;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/pandasu/turbo/data/kernelsu/KernelSUService;",
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
.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)V
    .registers 3

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$kernelSUService$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/pandasu/turbo/data/kernelsu/KernelSUService;
    .registers 3

    .line 34
    new-instance v0, Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$kernelSUService$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/kernelsu/KernelSUService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$kernelSUService$2;->invoke()Lcom/pandasu/turbo/data/kernelsu/KernelSUService;

    move-result-object v0

    return-object v0
.end method
