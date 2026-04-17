.class public final Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;
.super Ljava/lang/ClassLoader;
.source "FixedClassLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;",
        "Ljava/lang/ClassLoader;",
        "mModuleClassLoader",
        "mHostClassLoader",
        "(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V",
        "loadClass",
        "Ljava/lang/Class;",
        "name",
        "",
        "resolve",
        "",
        "Companion",
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
.field public static final Companion:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader$Companion;

.field private static final mBootstrap:Ljava/lang/ClassLoader;


# instance fields
.field private final mHostClassLoader:Ljava/lang/ClassLoader;

.field private final mModuleClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->Companion:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader$Companion;

    .line 8
    const-class v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mBootstrap:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "mModuleClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "mHostClassLoader"    # Ljava/lang/ClassLoader;

    const-string v0, "mModuleClassLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHostClassLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mBootstrap:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 4
    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mModuleClassLoader:Ljava/lang/ClassLoader;

    .line 5
    iput-object p2, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    .line 3
    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;

    .local v0, "$this$loadClass_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;
    const/4 v1, 0x0

    .line 13
    .local v1, "$i$a$-runCatching-FixedClassLoader$loadClass$1":I
    sget-object v2, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mBootstrap:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mBootstrap.loadClass(name)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    .end local v0    # "$this$loadClass_u24lambda_u2d0":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;
    .end local v1    # "$i$a$-runCatching-FixedClassLoader$loadClass$1":I
    :catchall_17
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :try_start_21
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    .local v0, "$this$loadClass_u24lambda_u2d1":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;
    const/4 v1, 0x0

    .line 17
    .local v1, "$i$a$-runCatching-FixedClassLoader$loadClass$2":I
    const-string v2, "androidx.lifecycle.ReportFragment"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 18
    iget-object v2, v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mHostClassLoader.loadClass(name)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 20
    :cond_39
    nop

    .end local v0    # "$this$loadClass_u24lambda_u2d1":Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;
    .end local v1    # "$i$a$-runCatching-FixedClassLoader$loadClass$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_40

    goto :goto_4a

    :catchall_40
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_4a
    nop

    .line 23
    :try_start_4b
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mModuleClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    const-string/jumbo v1, "{\n            mModuleCla\u2026loadClass(name)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_58

    goto :goto_66

    .line 24
    :catch_58
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 24
    const-string/jumbo v2, "{\n            mHostClass\u2026loadClass(name)\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 22
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_66
    return-object v0
.end method
