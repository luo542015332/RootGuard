.class public Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget31;
.super Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget30;
.source "PmsHookTarget31.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget31;",
        "Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget30;",
        "service",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "load",
        "",
        "PandaSU-LSPosed_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .locals 1
    .param p1, "service"    # Lcom/pandasu/turbo/lspoed/HMAService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget30;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 2

    .line 14
    const-string v0, "PandaSU-PmsHook31"

    const-string v1, "Loading Android 12 hooks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-super {p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget30;->load()V

    .line 16
    return-void
.end method
