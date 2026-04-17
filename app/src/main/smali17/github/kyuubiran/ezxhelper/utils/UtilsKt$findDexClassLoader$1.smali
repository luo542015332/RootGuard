.class public final Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt;->findDexClassLoader$default(Ljava/lang/ClassLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ldalvik/system/BaseDexClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ldalvik/system/BaseDexClassLoader;",
        "Ldalvik/system/BaseDexClassLoader;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1\n*L\n1#1,225:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ldalvik/system/BaseDexClassLoader;",
        "x",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ldalvik/system/BaseDexClassLoader;)Ldalvik/system/BaseDexClassLoader;
    .registers 3
    .param p1, "x"    # Ldalvik/system/BaseDexClassLoader;

    const-string/jumbo v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 145
    move-object v0, p1

    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {p0, v0}, Lcom/github/kyuubiran/ezxhelper/utils/UtilsKt$findDexClassLoader$1;->invoke(Ldalvik/system/BaseDexClassLoader;)Ldalvik/system/BaseDexClassLoader;

    move-result-object v0

    return-object v0
.end method
