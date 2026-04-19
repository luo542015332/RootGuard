.class public final Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PmsHookTarget33.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->tryHookFilterMethods(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V
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
        "com/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1",
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
.field final synthetic $method:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;)V
    .locals 0
    .param p1, "$method"    # Ljava/lang/reflect/Method;
    .param p2, "$receiver"    # Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;->$method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    .line 122
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 11
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "PandaSU-PmsHook33"

    const-string v1, "param"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    nop

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;->$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " called with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "callingUid":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 131
    .local v2, "targetPkg":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v4, v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 132
    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v5, v5, v3

    .line 133
    .local v5, "arg":Ljava/lang/Object;
    nop

    .line 134
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    if-nez v1, :cond_0

    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    move-object v1, v6

    goto :goto_1

    .line 135
    :cond_0
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "."

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v10, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 131
    .end local v5    # "arg":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "i":I
    :cond_2
    if-eqz v1, :cond_8

    if-nez v2, :cond_3

    goto :goto_4

    .line 140
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 142
    :cond_4
    iget-object v3, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "callingApps":[Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_2

    .line 145
    .local v4, "caller":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    invoke-virtual {v5}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/pandasu/turbo/lspoed/HMAService;->shouldHide(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 146
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v5}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 147
    iget-object v5, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;->$method:Ljava/lang/reflect/Method;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filtered ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".name): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 143
    .end local v4    # "caller":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 140
    .end local v3    # "callingApps":[Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 139
    :cond_8
    :goto_4
    return-void

    .line 149
    .end local v1    # "callingUid":Ljava/lang/Integer;
    .end local v2    # "targetPkg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$tryHookFilterMethods$unhook$1;->$method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_9
    :goto_5
    return-void
.end method
