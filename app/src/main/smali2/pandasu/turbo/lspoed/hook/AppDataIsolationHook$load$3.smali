.class final Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDataIsolationHook.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppDataIsolationHook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppDataIsolationHook.kt\ncom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3\n+ 2 AppDataIsolationHook.kt\ncom/pandasu/turbo/lspoed/hook/AppDataIsolationHook\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,172:1\n166#2,4:173\n12474#3,2:177\n*S KotlinDebug\n*F\n+ 1 AppDataIsolationHook.kt\ncom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3\n*L\n121#1:173,4\n141#1:177,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
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
.field final synthetic $config:Lcom/pandasu/turbo/lspoed/HMAService$Config;

.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;Lcom/pandasu/turbo/lspoed/HMAService$Config;)V
    .registers 4

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;->this$0:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;

    iput-object p2, p0, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;->$config:Lcom/pandasu/turbo/lspoed/HMAService$Config;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;->invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 29
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "PandaSU-AppDataIsolationHook"

    const-string v0, "param"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    nop

    .line 111
    :try_start_c
    iget-object v0, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v4, "args"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    const/4 v6, 0x0

    :goto_15
    const/4 v8, 0x1

    if-ge v6, v4, :cond_37

    aget-object v9, v0, v6

    move-object v10, v9

    .local v10, "it":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 112
    .local v11, "$i$a$-find-AppDataIsolationHook$load$3$app$1":I
    if-eqz v10, :cond_30

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ProcessRecord"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    move v10, v8

    goto :goto_31

    :cond_30
    const/4 v10, 0x0

    .line 111
    .end local v10    # "it":Ljava/lang/Object;
    .end local v11    # "$i$a$-find-AppDataIsolationHook$load$3$app$1":I
    :goto_31
    if-eqz v10, :cond_34

    goto :goto_38

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_37
    const/4 v9, 0x0

    :goto_38
    if-nez v9, :cond_3b

    .line 113
    return-void

    .line 111
    :cond_3b
    move-object v0, v9

    .line 115
    .local v0, "app":Ljava/lang/Object;
    const-string v4, "uid"

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    .line 116
    .local v4, "uid":I
    const-string v6, "processName"

    invoke-static {v0, v6}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_4f

    check-cast v6, Ljava/lang/String;

    goto :goto_50

    :cond_4f
    const/4 v6, 0x0

    .line 118
    .local v6, "processName":Ljava/lang/String;
    :goto_50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "needsStorageDataIsolation: uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", process="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v9, v1, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;->this$0:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;

    move-object v10, v9

    .local v10, "this_$iv":Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;
    const/4 v11, 0x0

    .line 173
    .local v11, "$i$f$binderLocalScope":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 174
    .local v12, "identity$iv":J
    const/4 v14, 0x0

    .line 122
    .local v14, "$i$a$-binderLocalScope-AppDataIsolationHook$load$3$packages$1":I
    # getter for: Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;
    invoke-static {v9}, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->access$getService$p(Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;)Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/pandasu/turbo/lspoed/HMAService;->getPms()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_98

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    if-eqz v15, :cond_98

    .line 123
    const-string v7, "getPackagesForUid"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v18, v5, v17

    .line 122
    invoke-virtual {v15, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_99

    :cond_98
    const/4 v5, 0x0

    .line 125
    .local v5, "getPackagesForUid":Ljava/lang/reflect/Method;
    :goto_99
    if-nez v5, :cond_9c

    goto :goto_9f

    :cond_9c
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 126
    :goto_9f
    if-eqz v5, :cond_b8

    # getter for: Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;
    invoke-static {v9}, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->access$getService$p(Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;)Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pandasu/turbo/lspoed/HMAService;->getPms()Ljava/lang/Object;

    move-result-object v7

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v9, v17

    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_b9

    :cond_b8
    const/4 v7, 0x0

    :goto_b9
    instance-of v9, v7, [Ljava/lang/String;

    if-eqz v9, :cond_c0

    check-cast v7, [Ljava/lang/String;

    goto :goto_c1

    :cond_c0
    const/4 v7, 0x0

    .line 174
    .end local v5    # "getPackagesForUid":Ljava/lang/reflect/Method;
    .end local v14    # "$i$a$-binderLocalScope-AppDataIsolationHook$load$3$packages$1":I
    :goto_c1
    move-object v5, v7

    .line 175
    .local v5, "result$iv":Ljava/lang/Object;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    nop

    .line 121
    .end local v5    # "result$iv":Ljava/lang/Object;
    .end local v10    # "this_$iv":Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;
    .end local v11    # "$i$f$binderLocalScope":I
    .end local v12    # "identity$iv":J
    nop

    .line 129
    .local v5, "packages":[Ljava/lang/String;
    if-eqz v5, :cond_169

    .line 130
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3f

    const/16 v26, 0x0

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v26}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Packages for uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v7, "com.pandasu.turbo"

    invoke-static {v5, v7}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 134
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 135
    const-string v7, "Skip isolation for PandaSU"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 140
    :cond_115
    iget-object v7, v1, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;->$config:Lcom/pandasu/turbo/lspoed/HMAService$Config;

    invoke-virtual {v7}, Lcom/pandasu/turbo/lspoed/HMAService$Config;->getSkipSystemAppDataIsolation()Z

    move-result v7

    if-eqz v7, :cond_169

    .line 141
    iget-object v7, v1, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook$load$3;->this$0:Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;

    move-object v9, v5

    .local v9, "$this$any$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 177
    .local v10, "$i$f$any":I
    array-length v11, v9

    const/4 v12, 0x0

    :goto_123
    if-ge v12, v11, :cond_13d

    aget-object v13, v9, v12

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it":Ljava/lang/String;
    const/4 v15, 0x0

    .line 141
    .local v15, "$i$a$-any-AppDataIsolationHook$load$3$1":I
    # getter for: Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->service:Lcom/pandasu/turbo/lspoed/HMAService;
    invoke-static {v7}, Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;->access$getService$p(Lcom/pandasu/turbo/lspoed/hook/AppDataIsolationHook;)Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/pandasu/turbo/lspoed/HMAService;->getSystemApps()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 177
    .end local v14    # "it":Ljava/lang/String;
    .end local v15    # "$i$a$-any-AppDataIsolationHook$load$3$1":I
    if-eqz v8, :cond_139

    const/4 v8, 0x1

    goto :goto_13e

    .end local v13    # "element$iv":Ljava/lang/Object;
    :cond_139
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_123

    .line 178
    :cond_13d
    const/4 v8, 0x0

    .line 141
    .end local v9    # "$this$any$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$any":I
    :goto_13e
    if-eqz v8, :cond_169

    .line 142
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 143
    const-string v7, "Skip isolation for system app"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catchall {:try_start_c .. :try_end_14d} :catchall_14e

    goto :goto_169

    .line 147
    .end local v0    # "app":Ljava/lang/Object;
    .end local v4    # "uid":I
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    :catchall_14e
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in needsStorageDataIsolation hook: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_169
    :goto_169
    return-void
.end method
