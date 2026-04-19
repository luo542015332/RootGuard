.class public final Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PmsHookTargetBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->hookShouldFilterApplication(Ljava/lang/String;II)V
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
        "com/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1",
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
.field final synthetic $callingUidIndex:I

.field final synthetic $targetIndex:I

.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;


# direct methods
.method constructor <init>(IILcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;)V
    .locals 0
    .param p1, "$callingUidIndex"    # I
    .param p2, "$targetIndex"    # I
    .param p3, "$receiver"    # Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    iput p1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->$callingUidIndex:I

    iput p2, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->$targetIndex:I

    iput-object p3, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    .line 95
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 8
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "PandaSU-PmsHookBase"

    const-string v1, "param"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    nop

    .line 98
    :try_start_0
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget v2, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->$callingUidIndex:I

    aget-object v1, v1, v2

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    .local v1, "callingUid":I
    sparse-switch v1, :sswitch_data_0

    .line 101
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    goto :goto_0

    .line 99
    :sswitch_0
    return-void

    .line 101
    :goto_0
    iget v3, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->$targetIndex:I

    aget-object v2, v2, v3

    .line 102
    .local v2, "targetSetting":Ljava/lang/Object;
    iget-object v3, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    invoke-virtual {v3, v2}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->getPackageNameFromSettings(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "targetApp":Ljava/lang/String;
    if-nez v3, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    invoke-virtual {v4, v1}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "callingApps":[Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    .line 109
    .local v5, "caller":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase$hookShouldFilterApplication$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;

    invoke-virtual {v6}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTargetBase;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Lcom/pandasu/turbo/lspoed/HMAService;->shouldHide(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filtered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 107
    .end local v5    # "caller":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 113
    .end local v1    # "callingUid":I
    .end local v2    # "targetSetting":Ljava/lang/Object;
    .end local v3    # "targetApp":Ljava/lang/String;
    .end local v4    # "callingApps":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Error in shouldFilterApplication hook"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
