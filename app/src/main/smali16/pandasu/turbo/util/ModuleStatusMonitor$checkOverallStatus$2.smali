.class final Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModuleStatusMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkOverallStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.pandasu.turbo.util.ModuleStatusMonitor$checkOverallStatus$2"
    f = "ModuleStatusMonitor.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/util/ModuleStatusMonitor;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;

    iget-object v1, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;-><init>(Lcom/pandasu/turbo/util/ModuleStatusMonitor;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 56
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->label:I

    packed-switch v1, :pswitch_data_116

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;
    move-object/from16 v2, p1

    .line 57
    .local v2, "$result":Ljava/lang/Object;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "ModuleStatusMonitor: \u5f00\u59cb\u68c0\u67e5\u6a21\u5757\u72b6\u6001..."

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 60
    .local v3, "issues":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v4

    check-cast v14, Ljava/util/List;

    .line 63
    .local v14, "recommendations":Ljava/util/List;
    iget-object v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    # invokes: Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkMagisk()Z
    invoke-static {v4}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->access$checkMagisk(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z

    move-result v4

    .line 64
    .local v4, "hasMagisk":Z
    if-nez v4, :cond_41

    .line 65
    const-string v5, "\u672a\u68c0\u6d4b\u5230 Magisk \u6846\u67b6"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v5, "\u5b89\u88c5 Magisk \u4ee5\u4f7f\u7528 Zygisk \u6a21\u5757\u529f\u80fd"

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_41
    iget-object v5, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    # invokes: Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkZygisk()Z
    invoke-static {v5}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->access$checkZygisk(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z

    move-result v5

    .line 71
    .local v5, "hasZygisk":Z
    if-eqz v4, :cond_55

    if-nez v5, :cond_55

    .line 72
    const-string v6, "Magisk Zygisk \u672a\u5f00\u542f"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v6, "\u5728 Magisk \u8bbe\u7f6e\u4e2d\u5f00\u542f Zygisk"

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_55
    iget-object v6, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    # invokes: Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkLSPosed()Z
    invoke-static {v6}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->access$checkLSPosed(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z

    move-result v6

    .line 78
    .local v6, "hasLSPosed":Z
    if-nez v6, :cond_67

    .line 79
    const-string v7, "LSPosed \u6846\u67b6\u672a\u5b89\u88c5"

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v7, "\u5b89\u88c5 LSPosed \u4ee5\u4f7f\u7528 Xposed \u6a21\u5757\u529f\u80fd"

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_67
    iget-object v7, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    # invokes: Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkDenylist()Z
    invoke-static {v7}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->access$checkDenylist(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z

    move-result v7

    .line 85
    .local v7, "hasDenylist":Z
    if-nez v7, :cond_7b

    if-eqz v4, :cond_7b

    .line 86
    const-string v8, "Magisk Denylist \u672a\u914d\u7f6e"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v8, "\u5728 Magisk \u8bbe\u7f6e\u4e2d\u914d\u7f6e Denylist\uff0c\u5c06\u9700\u8981\u9690\u85cf\u7684\u5e94\u7528\u52a0\u5165"

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_7b
    iget-object v8, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    # invokes: Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkShamiko()Z
    invoke-static {v8}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->access$checkShamiko(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z

    move-result v8

    .line 92
    .local v8, "hasShamiko":Z
    iget-object v9, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    # invokes: Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkPandaSUZygisk()Z
    invoke-static {v9}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->access$checkPandaSUZygisk(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z

    move-result v9

    .line 93
    .local v9, "pandaSUZygisk":Z
    iget-object v10, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;->this$0:Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    # invokes: Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkPandaSULSPosed()Z
    invoke-static {v10}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->access$checkPandaSULSPosed(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z

    move-result v10

    .line 96
    .local v10, "pandaSULSPosed":Z
    if-nez v9, :cond_9d

    if-eqz v4, :cond_9d

    if-eqz v5, :cond_9d

    .line 97
    const-string v11, "PandaSU Zygisk \u6a21\u5757\u672a\u5b89\u88c5"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v11, "\u5728 PandaSU \u5e94\u7528\u4e2d\u5b89\u88c5 Zygisk \u6a21\u5757"

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_9d
    if-nez v10, :cond_ab

    if-eqz v6, :cond_ab

    .line 103
    const-string v11, "PandaSU LSPosed \u6a21\u5757\u672a\u6fc0\u6d3b"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v11, "\u5728 LSPosed \u7ba1\u7406\u5668\u4e2d\u542f\u7528 PandaSU \u6a21\u5757"

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_ab
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ModuleStatusMonitor: \u68c0\u67e5\u5b8c\u6210 - \u95ee\u9898: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", \u5efa\u8bae: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;

    .line 110
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_dd

    move v13, v11

    goto :goto_de

    :cond_dd
    move v13, v12

    .line 111
    .end local v4    # "hasMagisk":Z
    :goto_de
    if-eqz v5, :cond_e2

    move v15, v11

    goto :goto_e3

    :cond_e2
    move v15, v12

    .line 112
    .end local v5    # "hasZygisk":Z
    :goto_e3
    if-eqz v6, :cond_e8

    move/from16 v16, v11

    goto :goto_ea

    :cond_e8
    move/from16 v16, v12

    .line 113
    .end local v6    # "hasLSPosed":Z
    :goto_ea
    if-eqz v7, :cond_ef

    move/from16 v17, v11

    goto :goto_f1

    :cond_ef
    move/from16 v17, v12

    .line 114
    .end local v7    # "hasDenylist":Z
    :goto_f1
    if-eqz v8, :cond_f6

    move/from16 v18, v11

    goto :goto_f8

    :cond_f6
    move/from16 v18, v12

    .line 115
    .end local v8    # "hasShamiko":Z
    :goto_f8
    if-eqz v9, :cond_fd

    move/from16 v19, v11

    goto :goto_ff

    :cond_fd
    move/from16 v19, v12

    .line 116
    .end local v9    # "pandaSUZygisk":Z
    :goto_ff
    if-eqz v10, :cond_102

    goto :goto_103

    :cond_102
    move v11, v12

    .line 117
    .end local v10    # "pandaSULSPosed":Z
    :goto_103
    nop

    .line 118
    nop

    .line 109
    move-object v4, v0

    move v5, v13

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object v12, v3

    move-object v13, v14

    invoke-direct/range {v4 .. v13}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;-><init>(ZZZZZZZLjava/util/List;Ljava/util/List;)V

    return-object v0

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
