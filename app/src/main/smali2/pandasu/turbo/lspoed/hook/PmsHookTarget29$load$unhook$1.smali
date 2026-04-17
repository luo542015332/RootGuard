.class public final Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PmsHookTarget29.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;->load()V
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
        "com/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1",
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
.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;)V
    .registers 2
    .param p1, "$receiver"    # Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;

    .line 29
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 10
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "PandaSU-PmsHook29"

    const-string v1, "param"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    nop

    .line 33
    :try_start_8
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 34
    .local v1, "callingUid":I
    sparse-switch v1, :sswitch_data_78

    .line 36
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    goto :goto_1f

    .line 34
    :sswitch_1e
    return-void

    .line 36
    :goto_1f
    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 37
    .local v2, "targetSetting":Ljava/lang/Object;
    iget-object v4, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;

    invoke-virtual {v4, v2}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;->getPackageNameFromSettings(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "targetApp":Ljava/lang/String;
    if-nez v4, :cond_2b

    return-void

    .line 41
    :cond_2b
    iget-object v5, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;

    invoke-virtual {v5, v1}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "callingApps":[Ljava/lang/String;
    if-eqz v5, :cond_70

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_3c

    goto :goto_70

    .line 44
    .local v6, "caller":Ljava/lang/String;
    :cond_3c
    iget-object v7, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;

    invoke-virtual {v7}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget29;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/pandasu/turbo/lspoed/HMAService;->shouldHide(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filtered: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " -> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_8 .. :try_end_6f} :catchall_71

    goto :goto_77

    .line 42
    .end local v6    # "caller":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 48
    .end local v1    # "callingUid":I
    .end local v2    # "targetSetting":Ljava/lang/Object;
    .end local v4    # "targetApp":Ljava/lang/String;
    .end local v5    # "callingApps":[Ljava/lang/String;
    :catchall_71
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Error in hook"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_77
    :goto_77
    return-void

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0x3e8 -> :sswitch_1e
    .end sparse-switch
.end method
