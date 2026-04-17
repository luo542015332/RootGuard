.class public final Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityHelper.kt\ncom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper\n+ 2 Log.kt\ncom/github/kyuubiran/ezxhelper/utils/Log\n+ 3 Log.kt\ncom/github/kyuubiran/ezxhelper/utils/Log$logexIfThrow$1\n*L\n1#1,586:1\n424#2,4:587\n428#2:592\n424#3:591\n*S KotlinDebug\n*F\n+ 1 ActivityHelper.kt\ncom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper\n*L\n100#1:587,4\n100#1:592\n100#1:591\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;",
        "",
        "()V",
        "isStubHooked",
        "",
        "initSubActivity",
        "",
        "initSubActivity$EzXHelper_release",
        "EzXHelper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;

.field private static isStubHooked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initSubActivity$EzXHelper_release()V
    .registers 34

    .line 28
    sget-boolean v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;->isStubHooked:Z

    if-eqz v0, :cond_5

    return-void

    .line 100
    :cond_5
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    .line 29
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;

    move-object v2, v0

    .local v2, "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v11, v0

    .line 33
    .local v11, "cActivityThread":Ljava/lang/Class;
    const-string v0, "cActivityThread"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sCurrentActivityThread"

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v11, v0, v13, v12, v13}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->staticField$default(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 32
    move-object v14, v0

    .line 34
    .local v14, "fCurrentActivityThread":Ljava/lang/reflect/Field;
    invoke-virtual {v14, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v0

    .line 36
    .local v15, "sCurrentActivityThread":Ljava/lang/Object;
    const-string v5, "mInstrumentation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v11

    invoke-static/range {v4 .. v9}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 35
    move-object v10, v0

    .line 37
    .local v10, "fmInstrumentation":Ljava/lang/reflect/Field;
    const-string v5, "getInstrumentation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v0, 0x0

    move-object v4, v11

    move-object v12, v10

    .end local v10    # "fmInstrumentation":Ljava/lang/reflect/Field;
    .local v12, "fmInstrumentation":Ljava/lang/reflect/Field;
    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->method-_8BSV04$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v10, v0

    .line 39
    .local v10, "mGetInstrumentation":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {v10, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/Instrumentation;

    .line 38
    move-object v8, v0

    .line 40
    .local v8, "mInstrumentation":Landroid/app/Instrumentation;
    nop

    .line 41
    nop

    .line 42
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyInstrumentation;

    invoke-direct {v0, v8}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    .line 40
    invoke-virtual {v12, v15, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const-string v4, "ActivityProxy Instrumentation part finished"

    const/4 v5, 0x2

    invoke-static {v0, v4, v13, v5, v13}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->d$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 47
    const-string v5, "mH"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x6

    const/16 v16, 0x0

    move-object v4, v11

    move-object/from16 v17, v8

    .end local v8    # "mInstrumentation":Landroid/app/Instrumentation;
    .local v17, "mInstrumentation":Landroid/app/Instrumentation;
    move v8, v0

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v4, v0

    .line 48
    .local v4, "fmH":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type android.os.Handler"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Handler;

    move-object v5, v0

    .local v5, "originHandler":Landroid/os/Handler;
    const-class v19, Landroid/os/Handler;

    .line 49
    const-string v20, "mCallback"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v6, v0

    .line 50
    .local v6, "fHandlerCallback":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    move-object v7, v0

    .line 51
    .local v7, "currHCallback":Landroid/os/Handler$Callback;
    if-eqz v7, :cond_b3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v8, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 52
    :cond_b3
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;

    invoke-direct {v0, v7}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyHandler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    :cond_bb
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const-string v8, "ActivityProxy Handler part finished"

    const/4 v9, 0x2

    invoke-static {v0, v8, v13, v9, v13}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->d$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_c3
    .catchall {:try_start_7 .. :try_end_c3} :catchall_1f9

    const/4 v8, 0x0

    .local v8, "cActivityManager":Ljava/lang/Class;
    const/4 v9, 0x0

    .line 59
    .local v9, "fgDefault":Ljava/lang/reflect/Field;
    nop

    .line 60
    :try_start_c6
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v13, "forName(\"android.app.ActivityManagerNative\")"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    .line 61
    const-string v0, "gDefault"
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d4} :catch_e3
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_1f9

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v13, 0x2

    .end local v2    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    .local v19, "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    :try_start_d8
    invoke-static {v8, v0, v2, v13, v2}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->staticField$default(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_dc} :catch_e1
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_1f9

    move-object v2, v0

    move/from16 v20, v3

    const/4 v3, 0x0

    .end local v9    # "fgDefault":Ljava/lang/reflect/Field;
    .local v0, "fgDefault":Ljava/lang/reflect/Field;
    goto :goto_ff

    .line 62
    .end local v0    # "fgDefault":Ljava/lang/reflect/Field;
    .restart local v9    # "fgDefault":Ljava/lang/reflect/Field;
    :catch_e1
    move-exception v0

    goto :goto_e6

    .end local v19    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    .restart local v2    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    :catch_e3
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    .restart local v19    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    :goto_e6
    move-object v2, v0

    .line 63
    .local v2, "e1":Ljava/lang/Exception;
    nop

    .line 64
    :try_start_e8
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v13, "forName(\"android.app.ActivityManager\")"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    .line 65
    const-string v0, "IActivityManagerSingleton"
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f6} :catch_1df
    .catchall {:try_start_e8 .. :try_end_f6} :catchall_1f9

    move/from16 v20, v3

    const/4 v3, 0x0

    const/4 v13, 0x2

    .end local v3    # "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    .local v20, "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    :try_start_fa
    invoke-static {v8, v0, v3, v13, v3}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->staticField$default(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fe} :catch_1d9
    .catchall {:try_start_fa .. :try_end_fe} :catchall_1f9

    .end local v9    # "fgDefault":Ljava/lang/reflect/Field;
    .restart local v0    # "fgDefault":Ljava/lang/reflect/Field;
    move-object v2, v0

    .line 72
    .end local v0    # "fgDefault":Ljava/lang/reflect/Field;
    .local v2, "fgDefault":Ljava/lang/reflect/Field;
    :goto_ff
    :try_start_ff
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 73
    .local v3, "gDefault":Ljava/lang/Object;
    const-string v0, "android.util.Singleton"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    .line 74
    .local v9, "cSingleton":Ljava/lang/Class;
    const-string v0, "cSingleton"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v22, "mInstance"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x0

    move-object/from16 v21, v9

    invoke-static/range {v21 .. v26}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->field$default(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v13, v0

    .line 75
    .local v13, "fmInstance":Ljava/lang/reflect/Field;
    invoke-virtual {v13, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    .line 77
    .local v28, "mInstance":Ljava/lang/Object;
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getMODULE_CLASS_LOADER()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 78
    move-object/from16 v29, v2

    .end local v2    # "fgDefault":Ljava/lang/reflect/Field;
    .local v29, "fgDefault":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    move-object/from16 v30, v4

    .end local v4    # "fmH":Ljava/lang/reflect/Field;
    .local v30, "fmH":Ljava/lang/reflect/Field;
    new-array v4, v2, [Ljava/lang/Class;

    const-string v21, "android.app.IActivityManager"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v21

    const/4 v2, 0x0

    aput-object v21, v4, v2

    .line 79
    new-instance v2, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;

    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v31, v5

    move-object/from16 v5, v28

    .end local v28    # "mInstance":Ljava/lang/Object;
    .local v5, "mInstance":Ljava/lang/Object;
    .local v31, "originHandler":Landroid/os/Handler;
    invoke-direct {v2, v5}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;-><init>(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/reflect/InvocationHandler;

    .line 76
    invoke-static {v0, v4, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 81
    .local v2, "proxy":Ljava/lang/Object;
    invoke-virtual {v13, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_153
    .catchall {:try_start_ff .. :try_end_153} :catchall_1f9

    .line 82
    nop

    .line 83
    :try_start_154
    const-string v0, "android.app.ActivityTaskManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "cActivityTaskManager":Ljava/lang/Class;
    const-string v4, "cActivityTaskManager"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "IActivityTaskManagerSingleton"
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_161} :catch_1b7
    .catchall {:try_start_154 .. :try_end_161} :catchall_1f9

    move-object/from16 v28, v2

    move-object/from16 v32, v3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .end local v2    # "proxy":Ljava/lang/Object;
    .end local v3    # "gDefault":Ljava/lang/Object;
    .local v28, "proxy":Ljava/lang/Object;
    .local v32, "gDefault":Ljava/lang/Object;
    :try_start_167
    invoke-static {v0, v4, v3, v2, v3}, Lcom/github/kyuubiran/ezxhelper/utils/FieldUtilsKt;->getStaticObjectOrNull$default(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 84
    move-object v2, v4

    .line 86
    .local v2, "singleton":Ljava/lang/Object;
    const-string v22, "get"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xe

    const/16 v27, 0x0

    move-object/from16 v21, v9

    invoke-static/range {v21 .. v27}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->method-_8BSV04$default(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v21, v0

    const/4 v4, 0x0

    .end local v0    # "cActivityTaskManager":Ljava/lang/Class;
    .local v21, "cActivityTaskManager":Ljava/lang/Class;
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "mDefaultTaskMgr":Ljava/lang/Object;
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getMODULE_CLASS_LOADER()Ljava/lang/ClassLoader;

    move-result-object v3
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_190} :catch_1b3
    .catchall {:try_start_167 .. :try_end_190} :catchall_1f9

    .line 90
    move-object/from16 v22, v5

    const/4 v4, 0x1

    .end local v5    # "mInstance":Ljava/lang/Object;
    .local v22, "mInstance":Ljava/lang/Object;
    :try_start_193
    new-array v5, v4, [Ljava/lang/Class;

    const-string v4, "android.app.IActivityTaskManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v18, 0x0

    aput-object v4, v5, v18

    .line 91
    new-instance v4, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v0}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;-><init>(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/reflect/InvocationHandler;

    .line 88
    invoke-static {v3, v5, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    .local v3, "proxy2":Ljava/lang/Object;
    invoke-virtual {v13, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1b0} :catch_1b1
    .catchall {:try_start_193 .. :try_end_1b0} :catchall_1f9

    .end local v0    # "mDefaultTaskMgr":Ljava/lang/Object;
    .end local v2    # "singleton":Ljava/lang/Object;
    .end local v3    # "proxy2":Ljava/lang/Object;
    .end local v21    # "cActivityTaskManager":Ljava/lang/Class;
    goto :goto_1be

    .line 94
    :catch_1b1
    move-exception v0

    goto :goto_1be

    .end local v22    # "mInstance":Ljava/lang/Object;
    .restart local v5    # "mInstance":Ljava/lang/Object;
    :catch_1b3
    move-exception v0

    move-object/from16 v22, v5

    .end local v5    # "mInstance":Ljava/lang/Object;
    .restart local v22    # "mInstance":Ljava/lang/Object;
    goto :goto_1be

    .end local v22    # "mInstance":Ljava/lang/Object;
    .end local v28    # "proxy":Ljava/lang/Object;
    .end local v32    # "gDefault":Ljava/lang/Object;
    .local v2, "proxy":Ljava/lang/Object;
    .local v3, "gDefault":Ljava/lang/Object;
    .restart local v5    # "mInstance":Ljava/lang/Object;
    :catch_1b7
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v32, v3

    move-object/from16 v22, v5

    .line 96
    .end local v2    # "proxy":Ljava/lang/Object;
    .end local v3    # "gDefault":Ljava/lang/Object;
    .end local v5    # "mInstance":Ljava/lang/Object;
    .restart local v22    # "mInstance":Ljava/lang/Object;
    .restart local v28    # "proxy":Ljava/lang/Object;
    .restart local v32    # "gDefault":Ljava/lang/Object;
    :goto_1be
    const/4 v2, 0x1

    :try_start_1bf
    sput-boolean v2, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;->isStubHooked:Z

    .line 97
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const-string v2, "ActivityProxy IActivityManager part finished"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v4}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->d$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const-string v2, "ActivityProxy successfully inited"

    invoke-static {v0, v2, v4, v3, v4}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->i$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 100
    nop

    .end local v6    # "fHandlerCallback":Ljava/lang/reflect/Field;
    .end local v7    # "currHCallback":Landroid/os/Handler$Callback;
    .end local v8    # "cActivityManager":Ljava/lang/Class;
    .end local v9    # "cSingleton":Ljava/lang/Class;
    .end local v10    # "mGetInstrumentation":Ljava/lang/reflect/Method;
    .end local v11    # "cActivityThread":Ljava/lang/Class;
    .end local v12    # "fmInstrumentation":Ljava/lang/reflect/Field;
    .end local v13    # "fmInstance":Ljava/lang/reflect/Field;
    .end local v14    # "fCurrentActivityThread":Ljava/lang/reflect/Field;
    .end local v15    # "sCurrentActivityThread":Ljava/lang/Object;
    .end local v17    # "mInstrumentation":Landroid/app/Instrumentation;
    .end local v19    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    .end local v20    # "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    .end local v22    # "mInstance":Ljava/lang/Object;
    .end local v28    # "proxy":Ljava/lang/Object;
    .end local v29    # "fgDefault":Ljava/lang/reflect/Field;
    .end local v30    # "fmH":Ljava/lang/reflect/Field;
    .end local v31    # "originHandler":Landroid/os/Handler;
    .end local v32    # "gDefault":Ljava/lang/Object;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_204

    .line 66
    .local v2, "e1":Ljava/lang/Exception;
    .restart local v4    # "fmH":Ljava/lang/reflect/Field;
    .local v5, "originHandler":Landroid/os/Handler;
    .restart local v6    # "fHandlerCallback":Ljava/lang/reflect/Field;
    .restart local v7    # "currHCallback":Landroid/os/Handler$Callback;
    .restart local v8    # "cActivityManager":Ljava/lang/Class;
    .local v9, "fgDefault":Ljava/lang/reflect/Field;
    .restart local v10    # "mGetInstrumentation":Ljava/lang/reflect/Method;
    .restart local v11    # "cActivityThread":Ljava/lang/Class;
    .restart local v12    # "fmInstrumentation":Ljava/lang/reflect/Field;
    .restart local v14    # "fCurrentActivityThread":Ljava/lang/reflect/Field;
    .restart local v15    # "sCurrentActivityThread":Ljava/lang/Object;
    .restart local v17    # "mInstrumentation":Landroid/app/Instrumentation;
    .restart local v19    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    .restart local v20    # "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    :catch_1d9
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    .end local v4    # "fmH":Ljava/lang/reflect/Field;
    .end local v5    # "originHandler":Landroid/os/Handler;
    .restart local v30    # "fmH":Ljava/lang/reflect/Field;
    .restart local v31    # "originHandler":Landroid/os/Handler;
    goto :goto_1e6

    .end local v20    # "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    .end local v30    # "fmH":Ljava/lang/reflect/Field;
    .end local v31    # "originHandler":Landroid/os/Handler;
    .local v3, "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    .restart local v4    # "fmH":Ljava/lang/reflect/Field;
    .restart local v5    # "originHandler":Landroid/os/Handler;
    :catch_1df
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    .line 67
    .end local v3    # "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    .end local v4    # "fmH":Ljava/lang/reflect/Field;
    .end local v5    # "originHandler":Landroid/os/Handler;
    .local v0, "e2":Ljava/lang/Exception;
    .restart local v20    # "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    .restart local v30    # "fmH":Ljava/lang/reflect/Field;
    .restart local v31    # "originHandler":Landroid/os/Handler;
    :goto_1e6
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    const/4 v5, 0x2

    const/4 v13, 0x0

    invoke-static {v3, v4, v13, v5, v13}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 68
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4, v13, v5, v13}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1f8
    .catchall {:try_start_1bf .. :try_end_1f8} :catchall_1f9

    .line 69
    return-void

    .line 29
    .end local v0    # "e2":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v6    # "fHandlerCallback":Ljava/lang/reflect/Field;
    .end local v7    # "currHCallback":Landroid/os/Handler$Callback;
    .end local v8    # "cActivityManager":Ljava/lang/Class;
    .end local v9    # "fgDefault":Ljava/lang/reflect/Field;
    .end local v10    # "mGetInstrumentation":Ljava/lang/reflect/Method;
    .end local v11    # "cActivityThread":Ljava/lang/Class;
    .end local v12    # "fmInstrumentation":Ljava/lang/reflect/Field;
    .end local v14    # "fCurrentActivityThread":Ljava/lang/reflect/Field;
    .end local v15    # "sCurrentActivityThread":Ljava/lang/Object;
    .end local v17    # "mInstrumentation":Landroid/app/Instrumentation;
    .end local v19    # "$this$initSubActivity_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;
    .end local v20    # "$i$a$-runCatching-ActivityHelper$initSubActivity$1":I
    .end local v30    # "fmH":Ljava/lang/reflect/Field;
    .end local v31    # "originHandler":Landroid/os/Handler;
    :catchall_1f9
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_204
    const-string v2, "Activity proxy init failed!"

    .line 587
    .local v0, "$receiver$iv":Ljava/lang/Object;
    .local v1, "$this$iv":Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .local v2, "msg$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 588
    .local v3, "$i$f$logexIfThrow":I
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_21c

    .local v4, "it$iv":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 589
    .local v5, "$i$a$-let-Log$logexIfThrow$2$iv":I
    sget-object v6, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v6}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 590
    const/4 v6, 0x0

    .local v6, "$i$a$-logexIfThrow-Log$logexIfThrow$1":I
    move-object v7, v4

    .line 591
    .local v7, "it":Ljava/lang/Throwable;
    nop

    .line 592
    .end local v6    # "$i$a$-logexIfThrow-Log$logexIfThrow$1":I
    .end local v7    # "it":Ljava/lang/Throwable;
    nop

    .line 588
    .end local v4    # "it$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-let-Log$logexIfThrow$2$iv":I
    nop

    .line 592
    :cond_21c
    nop

    .line 101
    .end local v0    # "$receiver$iv":Ljava/lang/Object;
    .end local v1    # "$this$iv":Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .end local v2    # "msg$iv":Ljava/lang/String;
    .end local v3    # "$i$f$logexIfThrow":I
    return-void
.end method
