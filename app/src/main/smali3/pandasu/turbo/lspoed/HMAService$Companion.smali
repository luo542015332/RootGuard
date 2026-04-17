.class public final Lcom/pandasu/turbo/lspoed/HMAService$Companion;
.super Ljava/lang/Object;
.source "HMAService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/lspoed/HMAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/pandasu/turbo/lspoed/HMAService$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/pandasu/turbo/lspoed/HMAService;",
        "getInstance",
        "()Lcom/pandasu/turbo/lspoed/HMAService;",
        "setInstance",
        "(Lcom/pandasu/turbo/lspoed/HMAService;)V",
        "register",
        "",
        "pms",
        "pmn",
        "classLoader",
        "Ljava/lang/ClassLoader;",
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
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/pandasu/turbo/lspoed/HMAService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/pandasu/turbo/lspoed/HMAService;
    .registers 2

    .line 37
    # getter for: Lcom/pandasu/turbo/lspoed/HMAService;->instance:Lcom/pandasu/turbo/lspoed/HMAService;
    invoke-static {}, Lcom/pandasu/turbo/lspoed/HMAService;->access$getInstance$cp()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v0

    return-object v0
.end method

.method public final register(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "pms"    # Ljava/lang/Object;
    .param p2, "pmn"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering HMAService with PMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", classLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/pandasu/turbo/lspoed/HMAServiceKt;->logI(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/HMAServiceKt;->access$logI(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/pandasu/turbo/lspoed/HMAService;

    invoke-direct {v0, p1, p2, p3}, Lcom/pandasu/turbo/lspoed/HMAService;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    .line 46
    .local v0, "service":Lcom/pandasu/turbo/lspoed/HMAService;
    invoke-virtual {v0}, Lcom/pandasu/turbo/lspoed/HMAService;->startHook()V

    .line 47
    return-void
.end method

.method public final setInstance(Lcom/pandasu/turbo/lspoed/HMAService;)V
    .registers 2
    .param p1, "<set-?>"    # Lcom/pandasu/turbo/lspoed/HMAService;

    .line 37
    invoke-static {p1}, Lcom/pandasu/turbo/lspoed/HMAService;->access$setInstance$cp(Lcom/pandasu/turbo/lspoed/HMAService;)V

    return-void
.end method
