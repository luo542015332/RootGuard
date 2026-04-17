.class public final Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n54#2:223\n248#3,2:224\n250#3:230\n251#3:235\n252#3:240\n1774#4,4:226\n1774#4,4:231\n1774#4,4:236\n1774#4,4:241\n*S KotlinDebug\n*F\n+ 1 IsolationDataStore.kt\ncom/pandasu/turbo/data/local/IsolationDataStore\n*L\n249#1:226,4\n250#1:231,4\n251#1:236,4\n252#1:241,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
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
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .registers 2

    iput-object p1, p0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;

    iget v2, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    iget v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_21

    :cond_19
    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;-><init>(Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_21
    iget-object v1, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 0
    iget v4, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;->label:I

    packed-switch v4, :pswitch_data_166

    move-object/from16 v16, v1

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_36
    const/4 v3, 0x0

    .local v3, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    goto/16 :goto_162

    .end local v3    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :pswitch_3e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2;
    move-object/from16 v5, p1

    .line 53
    .local v5, "value":Ljava/lang/Object;
    iget-object v4, v4, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .local v4, "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v6, 0x0

    .line 223
    .local v6, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    check-cast v5, Ljava/util/List;

    .end local v4    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .local v5, "events":Ljava/util/List;
    const/4 v7, 0x0

    .line 224
    .local v7, "$i$a$-map-IsolationDataStore$sandboxStats$1":I
    nop

    .line 225
    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 226
    .local v9, "$i$f$count":I
    instance-of v10, v8, Ljava/util/Collection;

    if-eqz v10, :cond_62

    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_62

    const/4 v10, 0x0

    goto :goto_8a

    .line 227
    :cond_62
    const/4 v10, 0x0

    .line 228
    .local v10, "count$iv":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v8    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_67
    :goto_67
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    check-cast v8, Lcom/pandasu/turbo/data/model/IsolationEvent;

    .local v8, "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    const/4 v14, 0x0

    .line 225
    .local v14, "$i$a$-count-IsolationDataStore$sandboxStats$1$1":I
    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationEvent;->getAction()Lcom/pandasu/turbo/data/model/IsolationAction;

    move-result-object v15

    sget-object v11, Lcom/pandasu/turbo/data/model/IsolationAction;->BLOCKED:Lcom/pandasu/turbo/data/model/IsolationAction;

    if-ne v15, v11, :cond_7e

    const/4 v8, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v8, 0x0

    .line 228
    .end local v8    # "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    .end local v14    # "$i$a$-count-IsolationDataStore$sandboxStats$1$1":I
    :goto_7f
    if-eqz v8, :cond_67

    add-int/lit8 v10, v10, 0x1

    if-gez v10, :cond_67

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_67

    .line 229
    :cond_89
    nop

    .line 230
    .end local v9    # "$i$f$count":I
    .end local v10    # "count$iv":I
    :goto_8a
    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 231
    .restart local v9    # "$i$f$count":I
    instance-of v11, v8, Ljava/util/Collection;

    if-eqz v11, :cond_9d

    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9d

    const/4 v11, 0x0

    goto :goto_c5

    .line 232
    :cond_9d
    const/4 v11, 0x0

    .line 233
    .local v11, "count$iv":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v8    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_a2
    :goto_a2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    check-cast v8, Lcom/pandasu/turbo/data/model/IsolationEvent;

    .local v8, "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    const/4 v14, 0x0

    .line 230
    .local v14, "$i$a$-count-IsolationDataStore$sandboxStats$1$2":I
    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationEvent;->getAction()Lcom/pandasu/turbo/data/model/IsolationAction;

    move-result-object v15

    sget-object v12, Lcom/pandasu/turbo/data/model/IsolationAction;->ALLOWED:Lcom/pandasu/turbo/data/model/IsolationAction;

    if-ne v15, v12, :cond_b9

    const/4 v8, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v8, 0x0

    .line 233
    .end local v8    # "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    .end local v14    # "$i$a$-count-IsolationDataStore$sandboxStats$1$2":I
    :goto_ba
    if-eqz v8, :cond_a2

    add-int/lit8 v11, v11, 0x1

    if-gez v11, :cond_a2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_a2

    .line 234
    :cond_c4
    nop

    .line 235
    .end local v9    # "$i$f$count":I
    .end local v11    # "count$iv":I
    :goto_c5
    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 236
    .restart local v9    # "$i$f$count":I
    instance-of v12, v8, Ljava/util/Collection;

    if-eqz v12, :cond_da

    move-object v12, v8

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_da

    move-object/from16 v16, v1

    const/4 v12, 0x0

    goto :goto_10f

    .line 237
    :cond_da
    const/4 v12, 0x0

    .line 238
    .local v12, "count$iv":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v8    # "$this$count$iv":Ljava/lang/Iterable;
    :goto_df
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    check-cast v8, Lcom/pandasu/turbo/data/model/IsolationEvent;

    .local v8, "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    const/4 v14, 0x0

    .line 235
    .local v14, "$i$a$-count-IsolationDataStore$sandboxStats$1$3":I
    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationEvent;->getAction()Lcom/pandasu/turbo/data/model/IsolationAction;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local v16, "$result":Ljava/lang/Object;
    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationAction;->BLOCKED:Lcom/pandasu/turbo/data/model/IsolationAction;

    if-ne v15, v1, :cond_100

    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/IsolationEvent;->getType()Lcom/pandasu/turbo/data/model/IsolationEventType;

    move-result-object v1

    sget-object v15, Lcom/pandasu/turbo/data/model/IsolationEventType;->COMMAND_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    if-ne v1, v15, :cond_100

    const/4 v1, 0x1

    goto :goto_101

    .end local v8    # "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    :cond_100
    const/4 v1, 0x0

    .line 238
    .end local v14    # "$i$a$-count-IsolationDataStore$sandboxStats$1$3":I
    :goto_101
    if-eqz v1, :cond_10a

    add-int/lit8 v12, v12, 0x1

    if-gez v12, :cond_10a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    :cond_10a
    move-object/from16 v1, v16

    goto :goto_df

    .line 239
    .end local v16    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_10d
    move-object/from16 v16, v1

    .line 240
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$count":I
    .end local v12    # "count$iv":I
    .restart local v16    # "$result":Ljava/lang/Object;
    :goto_10f
    move-object v1, v5

    check-cast v1, Ljava/lang/Iterable;

    .end local v5    # "events":Ljava/util/List;
    .local v1, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 241
    .local v5, "$i$f$count":I
    instance-of v8, v1, Ljava/util/Collection;

    if-eqz v8, :cond_122

    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_122

    const/4 v8, 0x0

    goto :goto_152

    .line 242
    :cond_122
    const/4 v8, 0x0

    .line 243
    .local v8, "count$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v1    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_127
    :goto_127
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_151

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    check-cast v1, Lcom/pandasu/turbo/data/model/IsolationEvent;

    .local v1, "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    const/4 v13, 0x0

    .line 240
    .local v13, "$i$a$-count-IsolationDataStore$sandboxStats$1$4":I
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/model/IsolationEvent;->getAction()Lcom/pandasu/turbo/data/model/IsolationAction;

    move-result-object v14

    sget-object v15, Lcom/pandasu/turbo/data/model/IsolationAction;->BLOCKED:Lcom/pandasu/turbo/data/model/IsolationAction;

    if-ne v14, v15, :cond_146

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/model/IsolationEvent;->getType()Lcom/pandasu/turbo/data/model/IsolationEventType;

    move-result-object v14

    sget-object v15, Lcom/pandasu/turbo/data/model/IsolationEventType;->PATH_BLOCKED:Lcom/pandasu/turbo/data/model/IsolationEventType;

    if-ne v14, v15, :cond_146

    const/4 v1, 0x1

    goto :goto_147

    .end local v1    # "it":Lcom/pandasu/turbo/data/model/IsolationEvent;
    :cond_146
    const/4 v1, 0x0

    .line 243
    .end local v13    # "$i$a$-count-IsolationDataStore$sandboxStats$1$4":I
    :goto_147
    if-eqz v1, :cond_127

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_127

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_127

    .line 244
    :cond_151
    nop

    .line 224
    .end local v5    # "$i$f$count":I
    .end local v8    # "count$iv":I
    :goto_152
    new-instance v1, Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    invoke-direct {v1, v10, v11, v12, v8}, Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;-><init>(IIII)V

    .line 223
    .end local v7    # "$i$a$-map-IsolationDataStore$sandboxStats$1":I
    const/4 v5, 0x1

    iput v5, v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$special$$inlined$map$4$2$1;->label:I

    invoke-interface {v4, v1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_161

    .line 0
    return-object v3

    .line 223
    :cond_161
    move v3, v6

    .line 53
    .end local v6    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    .restart local v3    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    :goto_162
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v3    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1":I
    return-object v1

    nop

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_36
    .end packed-switch
.end method
