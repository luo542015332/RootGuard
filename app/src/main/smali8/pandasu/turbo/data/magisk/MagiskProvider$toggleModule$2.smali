.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;->toggleModule(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.pandasu.turbo.data.magisk.MagiskProvider$toggleModule$2"
    f = "MagiskProvider.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $enable:Z

.field final synthetic $moduleId:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->$moduleId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->$enable:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->$moduleId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->$enable:Z

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;-><init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 252
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->label:I

    packed-switch v0, :pswitch_data_a4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 253
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;
    .local p1, "$result":Ljava/lang/Object;
    nop

    .line 254
    const/4 v1, 0x0

    :try_start_16
    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->$moduleId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/adb/modules/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "modulePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 257
    .local v2, "disableFile":Ljava/lang/String;
    iget-boolean v3, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->$enable:Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_7f

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "-c"

    const-string v7, "su"

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v3, :cond_5d

    .line 258
    const/4 v3, 0x5

    :try_start_4c
    new-array v3, v3, [Ljava/lang/String;

    aput-object v7, v3, v1

    aput-object v6, v3, v9

    const-string v6, "rm"

    aput-object v6, v3, v5

    const-string v5, "-f"

    aput-object v5, v3, v4

    aput-object v2, v3, v8

    .end local v2    # "disableFile":Ljava/lang/String;
    goto :goto_69

    .line 260
    .restart local v2    # "disableFile":Ljava/lang/String;
    :cond_5d
    new-array v3, v8, [Ljava/lang/String;

    aput-object v7, v3, v1

    aput-object v6, v3, v9

    const-string v6, "touch"

    aput-object v6, v3, v5

    aput-object v2, v3, v4

    .line 257
    .end local v2    # "disableFile":Ljava/lang/String;
    :goto_69
    move-object v2, v3

    .line 263
    .local v2, "command":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v2, v3

    .line 264
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 265
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v3
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_7a} :catch_7f

    if-nez v3, :cond_7e

    move v1, v9

    goto :goto_9e

    .end local v2    # "process":Ljava/lang/Process;
    :cond_7e
    goto :goto_9e

    .line 266
    :catch_7f
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$toggleModule$2;->$moduleId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to toggle module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9e
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 253
    return-object v1

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
