.class final Lcom/pandasu/turbo/MainActivity$onCreate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/pandasu/turbo/MainActivity$onCreate$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,245:1\n25#2:246\n25#2:253\n25#2:260\n1097#3,6:247\n1097#3,6:254\n1097#3,6:261\n1097#3,6:267\n81#4:273\n107#4,2:274\n81#4:276\n107#4,2:277\n81#4:279\n107#4,2:280\n81#4:282\n81#4:283\n81#4:284\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/pandasu/turbo/MainActivity$onCreate$2\n*L\n87#1:246\n88#1:253\n98#1:260\n87#1:247,6\n88#1:254,6\n98#1:261,6\n103#1:267,6\n87#1:273\n87#1:274,2\n88#1:276\n88#1:277,2\n98#1:279\n98#1:280,2\n99#1:282\n100#1:283\n101#1:284\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic this$0:Lcom/pandasu/turbo/MainActivity;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity$onCreate$2;->this$0:Lcom/pandasu/turbo/MainActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V
    .locals 0
    .param p0, "$authorizationStatus$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 85
    invoke-static {p0, p1}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$5(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .param p0, "$isCheckingPermission$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z

    .line 85
    invoke-static {p0, p1}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$5(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .param p0, "$isLoading$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z

    .line 85
    invoke-static {p0, p1}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .locals 4
    .param p0, "$authorizationStatus$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;)",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;"
        }
    .end annotation

    .line 87
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 273
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 87
    return-object v0
.end method

.method private static final invoke$lambda$10(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$isDarkMode$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 283
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 100
    return v0
.end method

.method private static final invoke$lambda$11(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$useDynamicColors$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 284
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 101
    return v0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V
    .locals 4
    .param p0, "$authorizationStatus$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ")V"
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 275
    nop

    .line 87
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$isCheckingPermission$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 88
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 276
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 88
    return v0
.end method

.method private static final invoke$lambda$5(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$isCheckingPermission$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 277
    .local v4, "$i$f$setValue":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 278
    nop

    .line 88
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$7(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$isLoading$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 98
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 279
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 98
    return v0
.end method

.method private static final invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$isLoading$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 280
    .local v4, "$i$f$setValue":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 281
    nop

    .line 98
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$9(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$themeId$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 282
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/String;

    .line 99
    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 85
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v1, "C86@3127L79,87@3247L33,88@3293L358,97@3704L33,98@3796L35,99@3889L31,100@3989L31,102@4034L70:MainActivity.kt#sci7zr"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 87
    and-int/lit8 v1, v9, 0xb

    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 87
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.MainActivity.onCreate.<anonymous> (MainActivity.kt:86)"

    const v3, 0x10adaf2f

    invoke-static {v3, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 246
    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object/from16 v6, p1

    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 247
    .local v10, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 248
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    if-ne v11, v13, :cond_3

    .line 249
    const/4 v13, 0x0

    .line 87
    .local v13, "$i$a$-remember-MainActivity$onCreate$2$authorizationStatus$2":I
    invoke-static {v14, v14, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    .line 249
    .end local v13    # "$i$a$-remember-MainActivity$onCreate$2$authorizationStatus$2":I
    nop

    .line 250
    .local v13, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 251
    nop

    .end local v13    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 252
    :cond_3
    move-object v13, v11

    .line 248
    :goto_1
    nop

    .line 247
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 246
    .end local v5    # "invalid$iv$iv":Z
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 87
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    move-object v10, v13

    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 88
    .local v10, "authorizationStatus$delegate":Landroidx/compose/runtime/MutableState;
    const/4 v11, 0x0

    move v1, v11

    .restart local v1    # "$changed$iv":I
    const/4 v2, 0x0

    .restart local v2    # "$i$f$remember":I
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 253
    const/4 v5, 0x0

    .restart local v5    # "invalid$iv$iv":Z
    move-object/from16 v6, p1

    .restart local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 254
    .local v12, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 255
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    move/from16 v16, v5

    .end local v5    # "invalid$iv$iv":Z
    .local v16, "invalid$iv$iv":Z
    const/4 v5, 0x1

    if-ne v13, v3, :cond_4

    .line 256
    const/4 v3, 0x0

    .line 88
    .local v3, "$i$a$-remember-MainActivity$onCreate$2$isCheckingPermission$2":I
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11, v14, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 256
    .end local v3    # "$i$a$-remember-MainActivity$onCreate$2$isCheckingPermission$2":I
    nop

    .line 257
    .local v3, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 259
    :cond_4
    move-object v3, v13

    .line 255
    :goto_2
    nop

    .line 254
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 253
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    .end local v16    # "invalid$iv$iv":Z
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 88
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    move-object v11, v3

    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 89
    .local v11, "isCheckingPermission$delegate":Landroidx/compose/runtime/MutableState;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lcom/pandasu/turbo/MainActivity$onCreate$2$1;

    iget-object v3, v0, Lcom/pandasu/turbo/MainActivity$onCreate$2;->this$0:Lcom/pandasu/turbo/MainActivity;

    invoke-direct {v2, v3, v10, v11, v14}, Lcom/pandasu/turbo/MainActivity$onCreate$2$1;-><init>(Lcom/pandasu/turbo/MainActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/16 v12, 0x46

    invoke-static {v1, v2, v8, v12}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 98
    const/4 v1, 0x0

    move v2, v1

    .local v2, "$changed$iv":I
    const/4 v1, 0x0

    const v3, -0x1d58f75c

    .local v1, "$i$f$remember":I
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 260
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object/from16 v4, p1

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 261
    .local v6, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 262
    .restart local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v13, v12, :cond_5

    .line 263
    const/4 v12, 0x0

    .line 98
    .local v12, "$i$a$-remember-MainActivity$onCreate$2$isLoading$2":I
    move/from16 v16, v1

    .end local v1    # "$i$f$remember":I
    .local v16, "$i$f$remember":I
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v14, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 263
    .end local v12    # "$i$a$-remember-MainActivity$onCreate$2$isLoading$2":I
    nop

    .line 264
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 265
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 266
    .end local v16    # "$i$f$remember":I
    .local v1, "$i$f$remember":I
    :cond_5
    move/from16 v16, v1

    .end local v1    # "$i$f$remember":I
    .restart local v16    # "$i$f$remember":I
    move-object v1, v13

    .line 262
    :goto_3
    nop

    .line 261
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 260
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 98
    .end local v2    # "$changed$iv":I
    .end local v16    # "$i$f$remember":I
    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 99
    .local v12, "isLoading$delegate":Landroidx/compose/runtime/MutableState;
    iget-object v1, v0, Lcom/pandasu/turbo/MainActivity$onCreate$2;->this$0:Lcom/pandasu/turbo/MainActivity;

    invoke-virtual {v1}, Lcom/pandasu/turbo/MainActivity;->getSettingsDataStore()Lcom/pandasu/turbo/data/local/SettingsDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->getCurrentTheme()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const-string v2, "classic"

    const/4 v3, 0x0

    const/16 v6, 0x38

    const/4 v13, 0x2

    move-object/from16 v4, p1

    move v15, v5

    move v5, v6

    move v6, v13

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 100
    .local v13, "themeId$delegate":Landroidx/compose/runtime/State;
    iget-object v1, v0, Lcom/pandasu/turbo/MainActivity$onCreate$2;->this$0:Lcom/pandasu/turbo/MainActivity;

    invoke-virtual {v1}, Lcom/pandasu/turbo/MainActivity;->getSettingsDataStore()Lcom/pandasu/turbo/data/local/SettingsDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->getDarkMode()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x38

    const/4 v6, 0x2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v16

    .line 101
    .local v16, "isDarkMode$delegate":Landroidx/compose/runtime/State;
    iget-object v1, v0, Lcom/pandasu/turbo/MainActivity$onCreate$2;->this$0:Lcom/pandasu/turbo/MainActivity;

    invoke-virtual {v1}, Lcom/pandasu/turbo/MainActivity;->getSettingsDataStore()Lcom/pandasu/turbo/data/local/SettingsDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/local/SettingsDataStore;->getDynamicColors()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v17

    .line 103
    .local v17, "useDynamicColors$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v2, 0xa0f0b4e

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid$iv":Z
    move-object/from16 v3, p1

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 267
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 268
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_7

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_6

    goto :goto_4

    .line 272
    :cond_6
    move-object v7, v5

    goto :goto_5

    .line 269
    :cond_7
    :goto_4
    const/4 v7, 0x0

    .line 103
    .local v7, "$i$a$-cache-MainActivity$onCreate$2$2":I
    new-instance v15, Lcom/pandasu/turbo/MainActivity$onCreate$2$2$1;

    invoke-direct {v15, v12, v14}, Lcom/pandasu/turbo/MainActivity$onCreate$2$2$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 269
    .end local v7    # "$i$a$-cache-MainActivity$onCreate$2$2":I
    move-object v7, v15

    .line 270
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 271
    nop

    .line 268
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 267
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 103
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v2, 0x46

    invoke-static {v1, v7, v8, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 107
    invoke-static {v11}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, -0xa9b7deb

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "107@4162L570"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/pandasu/turbo/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/pandasu/turbo/ComposableSingletons$MainActivityKt;

    invoke-virtual {v4}, Lcom/pandasu/turbo/ComposableSingletons$MainActivityKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    const/16 v6, 0xc00

    const/4 v7, 0x7

    .line 108
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v7}, Lcom/pandasu/turbo/ui/theme/ThemeKt;->RootGuardTheme(ZZLjava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 107
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_7

    .line 122
    :cond_8
    invoke-static {v10}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->getHasPermission()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    move v5, v2

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_a

    const v1, -0xa9b7b5b

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "122@4818L377"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;

    iget-object v2, v0, Lcom/pandasu/turbo/MainActivity$onCreate$2;->this$0:Lcom/pandasu/turbo/MainActivity;

    invoke-direct {v1, v2, v10}, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;-><init>(Lcom/pandasu/turbo/MainActivity;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v14, v8, v2, v3}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->RootPermissionGuide(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 122
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_7

    .line 132
    :cond_a
    invoke-static {v12}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$7(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-nez v1, :cond_b

    const v1, -0xa9b79ac

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "132@5249L578"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 134
    invoke-static/range {v16 .. v16}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$10(Landroidx/compose/runtime/State;)Z

    move-result v1

    .line 135
    invoke-static/range {v17 .. v17}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$11(Landroidx/compose/runtime/State;)Z

    move-result v2

    .line 136
    invoke-static {v13}, Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke$lambda$9(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pandasu/turbo/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/pandasu/turbo/ComposableSingletons$MainActivityKt;

    invoke-virtual {v4}, Lcom/pandasu/turbo/ComposableSingletons$MainActivityKt;->getLambda-3$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    const/16 v6, 0xc00

    const/4 v7, 0x0

    .line 133
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v7}, Lcom/pandasu/turbo/ui/theme/ThemeKt;->RootGuardTheme(ZZLjava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 132
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_7

    .line 148
    :cond_b
    const v1, -0xa9b774a

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 149
    .end local v10    # "authorizationStatus$delegate":Landroidx/compose/runtime/MutableState;
    .end local v11    # "isCheckingPermission$delegate":Landroidx/compose/runtime/MutableState;
    .end local v12    # "isLoading$delegate":Landroidx/compose/runtime/MutableState;
    .end local v13    # "themeId$delegate":Landroidx/compose/runtime/State;
    .end local v16    # "isDarkMode$delegate":Landroidx/compose/runtime/State;
    .end local v17    # "useDynamicColors$delegate":Landroidx/compose/runtime/State;
    :cond_c
    :goto_8
    return-void
.end method
