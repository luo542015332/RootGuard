.class final Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;
.super Lkotlin/jvm/internal/Lambda;
.source "XposedEntry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
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
.field final synthetic $classLoader:Ljava/lang/ClassLoader;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->$service:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->$classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->$name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 163
    const-string v0, " hook"

    .line 164
    :try_start_0
    sget-object v1, Lcom/pandasu/turbo/lspoed/HMAService;->Companion:Lcom/pandasu/turbo/lspoed/HMAService$Companion;

    iget-object v2, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->$service:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->$classLoader:Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/pandasu/turbo/lspoed/HMAService$Companion;->register(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    .line 165
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->$name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HMAService started from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/pandasu/turbo/lspoed/XposedEntry$hookAddService$hookCallback$1$beforeHookedMethod$1;->$name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMAService failed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/pandasu/turbo/lspoed/XposedEntryKt;->access$logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
