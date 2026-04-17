.class final Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Runtime;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Runtime;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;

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

    .line 14
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;->invoke()Ljava/lang/Runtime;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/Runtime;
    .registers 2

    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    return-object v0
.end method
