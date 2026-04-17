.class public final Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook$load$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedBridgeHook.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/pandasu/turbo/lspoed/hook/XposedBridgeHook$load$1",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "beforeHookedMethod",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
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


# instance fields
.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;)V
    .registers 2
    .param p1, "$receiver"    # Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook$load$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;

    .line 23
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook$load$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;

    # invokes: Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;->isDetectorCalling()Z
    invoke-static {v0}, Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;->access$isDetectorCalling(Lcom/pandasu/turbo/lspoed/hook/XposedBridgeHook;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 26
    const-string v0, "PandaSU-XposedBridgeHook"

    const-string v1, "Blocking XposedBridge.getModules() in system_server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 29
    :cond_1e
    return-void
.end method
