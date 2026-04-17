.class public final Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PmsHookTarget33.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPmsHookTarget33.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PmsHookTarget33.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,185:1\n13374#2,3:186\n*S KotlinDebug\n*F\n+ 1 PmsHookTarget33.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1\n*L\n61#1:186,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1",
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
.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;)V
    .registers 2
    .param p1, "$receiver"    # Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    .line 57
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 15
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "PandaSU-PmsHook33"

    const-string v1, "param"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    nop

    .line 60
    :try_start_8
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldFilterApplication called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " args"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v2, "args"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 186
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 187
    .local v3, "index$iv":I
    array-length v4, v1

    const/4 v5, 0x0

    :goto_32
    const/4 v6, 0x0

    if-ge v5, v4, :cond_82

    aget-object v7, v1, v5

    .local v7, "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v3, 0x1

    .local v3, "i":I
    .local v8, "index$iv":I
    move-object v9, v7

    .local v9, "arg":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 62
    .local v10, "$i$a$-forEachIndexed-PmsHookTarget33$load$unhook$1$beforeHookedMethod$1":I
    if-eqz v9, :cond_4a

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-eqz v11, :cond_4a

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    :cond_4a
    if-nez v6, :cond_4f

    const-string v6, "null"

    goto :goto_52

    :cond_4f
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_52
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  arg["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    nop

    .line 187
    .end local v3    # "i":I
    .end local v9    # "arg":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEachIndexed-PmsHookTarget33$load$unhook$1$beforeHookedMethod$1":I
    nop

    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move v3, v8

    goto :goto_32

    .line 188
    .end local v8    # "index$iv":I
    .local v3, "index$iv":I
    :cond_82
    nop

    .line 66
    .end local v1    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "index$iv":I
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_8f

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    :cond_8f
    if-eqz v6, :cond_12e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    .local v1, "callingUid":I
    sparse-switch v1, :sswitch_data_136

    .line 70
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    goto :goto_9c

    .line 68
    :sswitch_9b
    return-void

    .line 70
    :goto_9c
    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 71
    .local v3, "targetSetting":Ljava/lang/Object;
    iget-object v4, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    invoke-virtual {v4, v3}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getPackageNameFromSettings(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "targetApp":Ljava/lang/String;
    if-nez v4, :cond_ad

    .line 74
    const-string v2, "Could not get target package name"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 78
    :cond_ad
    iget-object v5, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    invoke-virtual {v5, v1}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "callingApps":[Ljava/lang/String;
    if-eqz v5, :cond_113

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_be

    goto :goto_113

    .line 81
    :cond_be
    nop

    .line 84
    .local v6, "caller":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check hide: caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v7, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;

    invoke-virtual {v7}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/pandasu/turbo/lspoed/HMAService;->shouldHide(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_135

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filtered: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " -> "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 79
    .end local v6    # "caller":Ljava/lang/String;
    :cond_113
    :goto_113
    move-object v2, p0

    check-cast v2, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;

    .local v2, "$this$beforeHookedMethod_u24lambda_u241":Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;
    const/4 v6, 0x0

    .line 80
    .local v6, "$i$a$-run-PmsHookTarget33$load$unhook$1$beforeHookedMethod$caller$1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not get caller package for uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_8 .. :try_end_12d} :catchall_12f

    .line 81
    return-void

    .line 66
    .end local v1    # "callingUid":I
    .end local v2    # "$this$beforeHookedMethod_u24lambda_u241":Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget33$load$unhook$1;
    .end local v3    # "targetSetting":Ljava/lang/Object;
    .end local v4    # "targetApp":Ljava/lang/String;
    .end local v5    # "callingApps":[Ljava/lang/String;
    .end local v6    # "$i$a$-run-PmsHookTarget33$load$unhook$1$beforeHookedMethod$caller$1":I
    :cond_12e
    return-void

    .line 90
    :catchall_12f
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Error in hook"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_135
    :goto_135
    return-void

    :sswitch_data_136
    .sparse-switch
        0x0 -> :sswitch_9b
        0x3e8 -> :sswitch_9b
    .end sparse-switch
.end method
