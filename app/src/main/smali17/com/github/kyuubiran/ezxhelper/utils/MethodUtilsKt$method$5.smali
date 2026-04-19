.class final Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt$method$5;
.super Lkotlin/jvm/internal/Lambda;
.source "MethodUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->method-_8BSV04(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/reflect/Method;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMethodUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MethodUtils.kt\ncom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt$method$5\n+ 2 MemberExtensions.kt\ncom/github/kyuubiran/ezxhelper/utils/MemberExtensionsKt\n*L\n1#1,781:1\n12#2:782\n*S KotlinDebug\n*F\n+ 1 MethodUtils.kt\ncom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt$method$5\n*L\n45#1:782\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/lang/reflect/Method;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $isStatic:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt$method$5;->$isStatic:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "it"    # Ljava/lang/reflect/Method;

    .line 45
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    .local v0, "$this$isStatic$iv":Ljava/lang/reflect/Member;
    const/4 v1, 0x0

    .line 782
    .local v1, "$i$f$isStatic":I
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    .line 45
    .end local v0    # "$this$isStatic$iv":Ljava/lang/reflect/Member;
    .end local v1    # "$i$f$isStatic":I
    iget-boolean v1, p0, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt$method$5;->$isStatic:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt$method$5;->invoke(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
