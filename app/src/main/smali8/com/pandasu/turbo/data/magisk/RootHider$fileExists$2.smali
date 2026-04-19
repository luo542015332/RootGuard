.class final Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->fileExists(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.pandasu.turbo.data.magisk.RootHider$fileExists$2"
    f = "RootHider.kt"
    i = {}
    l = {
        0x4ab,
        0x4b5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1192
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto/16 :goto_2

    .line 1211
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 1192
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v1

    move-object v1, p1

    goto :goto_0

    .line 1211
    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    .line 1192
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 1193
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 1195
    :try_start_2
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->label:I

    invoke-static {v6, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$isPandaSUZygiskModuleEnabled(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v6, v0, :cond_0

    .line 1192
    return-object v0

    .line 1195
    :cond_0
    move-object v9, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v9

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v6, "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    :goto_0
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1196
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v0, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PandaSU Zygisk \u6a21\u5757\u5df2\u542f\u7528\uff0c\u8df3\u8fc7\u6587\u4ef6\u68c0\u6d4b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1197
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1201
    :cond_1
    iget-object p1, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    const-string v7, "/data/adb/"

    invoke-static {p1, v7, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    const-string v7, "/system/"

    invoke-static {p1, v7, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    const-string v7, "/vendor/"

    invoke-static {p1, v7, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    move p1, v2

    .line 1203
    .local p1, "needsRoot":Z
    nop

    .end local p1    # "needsRoot":Z
    if-eqz p1, :cond_5

    .line 1205
    iget-object p1, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v2, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ -e \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\" ] && echo \"EXISTS\" || echo \"NOT_EXISTS\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v6

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v4, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->label:I

    invoke-static {p1, v2, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne p1, v0, :cond_4

    .line 1192
    return-object v0

    .line 1205
    :cond_4
    move-object v0, v6

    .line 1192
    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/String;

    .line 1206
    .local p1, "result":Ljava/lang/String;
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v6, "EXISTS"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v2, v6, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v2

    .line 1211
    .end local p1    # "result":Ljava/lang/String;
    :catch_2
    move-exception p1

    move-object p1, v1

    goto :goto_3

    .line 1209
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    :cond_5
    :try_start_5
    new-instance p1, Ljava/io/File;

    iget-object v0, v6, Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;->$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object p1

    .line 1211
    :catch_3
    move-exception p1

    move-object p1, v1

    move-object v0, v6

    .line 1212
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$fileExists$2;
    .local p1, "$result":Ljava/lang/Object;
    :goto_3
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1193
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
