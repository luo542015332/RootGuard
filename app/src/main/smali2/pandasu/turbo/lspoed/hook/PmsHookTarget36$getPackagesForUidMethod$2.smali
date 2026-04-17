.class final Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PmsHookTarget36.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;-><init>(Lcom/pandasu/turbo/lspoed/HMAService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Method;",
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


# static fields
.field public static final INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2;

    invoke-direct {v0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2;->invoke()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Method;
    .registers 7

    .line 23
    const-string v0, "com.android.server.pm.Computer"

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2$1;->INSTANCE:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$getPackagesForUidMethod$2$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->findMethod$default(Ljava/lang/String;Ljava/lang/ClassLoader;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
