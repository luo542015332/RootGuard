.class public final Lcom/github/kyuubiran/ezxhelper/utils/Log;
.super Ljava/lang/Object;
.source "Log.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J1\u0010\u0012\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00170 \"\u00020\u00172\u0008\u0008\u0002\u0010!\u001a\u00020\"\u00a2\u0006\u0002\u0010#J\u0018\u0010\u0012\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010!\u001a\u00020\"J\u001a\u0010$\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010$\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010%\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010%\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017JF\u0010&\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+JF\u0010,\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+JF\u0010-\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+JF\u0010.\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+JF\u0010/\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+JF\u00100\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+JF\u00101\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+JF\u00102\u001a\u0004\u0018\u00010\u0015\"\u0004\u0008\u0000\u0010\'*\u0008\u0012\u0004\u0012\u0002H\'0(2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010+R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u009920\u0001\n\u0002\u0008\u0019\u00a8\u00063"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/Log;",
        "",
        "()V",
        "cancelLastToast",
        "",
        "getCancelLastToast",
        "()Z",
        "setCancelLastToast",
        "(Z)V",
        "value",
        "Lcom/github/kyuubiran/ezxhelper/utils/Logger;",
        "currentLogger",
        "getCurrentLogger",
        "()Lcom/github/kyuubiran/ezxhelper/utils/Logger;",
        "setCurrentLogger",
        "(Lcom/github/kyuubiran/ezxhelper/utils/Logger;)V",
        "defaultLogger",
        "logger",
        "toast",
        "Landroid/widget/Toast;",
        "d",
        "",
        "msg",
        "",
        "thr",
        "",
        "dx",
        "e",
        "ex",
        "i",
        "ix",
        "formats",
        "",
        "duration",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;I)V",
        "w",
        "wx",
        "logdIfThrow",
        "R",
        "Lkotlin/Result;",
        "then",
        "Lkotlin/Function1;",
        "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;",
        "logdxIfThrow",
        "logeIfThrow",
        "logexIfThrow",
        "logiIfThrow",
        "logixIfThrow",
        "logwIfThrow",
        "logwxIfThrow",
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
.field public static final INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

.field private static cancelLastToast:Z

.field private static final defaultLogger:Lcom/github/kyuubiran/ezxhelper/utils/Logger;

.field private static logger:Lcom/github/kyuubiran/ezxhelper/utils/Logger;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$i5dixOyD-pbZ8bP_Rji54nDvXlc(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->toast$lambda-1(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    .line 217
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->defaultLogger:Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 237
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 269
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dx$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 257
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->dx(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic dx$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 289
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->dx(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 245
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 277
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ex$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 261
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic ex$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 293
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 233
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic i$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 265
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ix$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 249
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->ix(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic ix$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 281
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->ix(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logdIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 354
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logdIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logdIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 355
    .local p4, "$i$f$logdIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 356
    .local v0, "$i$a$-let-Log$logdIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 357
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    nop

    .line 355
    .end local v0    # "$i$a$-let-Log$logdIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 358
    :goto_33
    return-object p5
.end method

.method public static synthetic logdxIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 368
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logdxIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logdxIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 369
    .local p4, "$i$f$logdxIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 370
    .local v0, "$i$a$-let-Log$logdxIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->dx(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 371
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    nop

    .line 369
    .end local v0    # "$i$a$-let-Log$logdxIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 372
    :goto_33
    return-object p5
.end method

.method public static synthetic logeIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 410
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logeIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logeIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 411
    .local p4, "$i$f$logeIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 412
    .local v0, "$i$a$-let-Log$logeIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 413
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    nop

    .line 411
    .end local v0    # "$i$a$-let-Log$logeIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 414
    :goto_33
    return-object p5
.end method

.method public static synthetic logexIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 424
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logexIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logexIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 425
    .local p4, "$i$f$logexIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 426
    .local v0, "$i$a$-let-Log$logexIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 427
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    nop

    .line 425
    .end local v0    # "$i$a$-let-Log$logexIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 428
    :goto_33
    return-object p5
.end method

.method public static synthetic logiIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 326
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logiIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logiIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 327
    .local p4, "$i$f$logiIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 328
    .local v0, "$i$a$-let-Log$logiIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 329
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    nop

    .line 327
    .end local v0    # "$i$a$-let-Log$logiIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 330
    :goto_33
    return-object p5
.end method

.method public static synthetic logixIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 340
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logixIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logixIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 341
    .local p4, "$i$f$logixIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 342
    .local v0, "$i$a$-let-Log$logixIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 343
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    nop

    .line 341
    .end local v0    # "$i$a$-let-Log$logixIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 344
    :goto_33
    return-object p5
.end method

.method public static synthetic logwIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 382
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logwIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logwIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 383
    .local p4, "$i$f$logwIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 384
    .local v0, "$i$a$-let-Log$logwIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 385
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    nop

    .line 383
    .end local v0    # "$i$a$-let-Log$logwIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 386
    :goto_33
    return-object p5
.end method

.method public static synthetic logwxIfThrow$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Unit;
    .registers 8
    .param p0, "$this"    # Lcom/github/kyuubiran/ezxhelper/utils/Log;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;

    .line 396
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    sget-object p4, Lcom/github/kyuubiran/ezxhelper/utils/Log$logwxIfThrow$1;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log$logwxIfThrow$1;

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_f
    const-string p4, "msg"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "then"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 397
    .local p4, "$i$f$logwxIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_32

    .local p5, "it":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 398
    .local v0, "$i$a$-let-Log$logwxIfThrow$2":I
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, p5, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->wx(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 399
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    nop

    .line 397
    .end local v0    # "$i$a$-let-Log$logwxIfThrow$2":I
    .end local p5    # "it":Ljava/lang/Throwable;
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_33

    :cond_32
    const/4 p5, 0x0

    .line 400
    :goto_33
    return-object p5
.end method

.method public static synthetic toast$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;IILjava/lang/Object;)V
    .registers 5

    .line 306
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic toast$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;[Ljava/lang/String;IILjava/lang/Object;)V
    .registers 6

    .line 315
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->toast(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method private static final toast$lambda-1(ILjava/lang/String;)V
    .registers 7
    .param p0, "$duration"    # I
    .param p1, "$msg"    # Ljava/lang/String;

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    sget-boolean v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->cancelLastToast:Z

    if-eqz v1, :cond_12

    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 308
    :cond_12
    const/4 v1, 0x0

    sput-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->toast:Landroid/widget/Toast;

    .line 309
    sget-object v2, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v2}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$toast_u24lambda_u2d1_u24lambda_u2d0":Landroid/widget/Toast;
    const/4 v3, 0x0

    .line 310
    .local v3, "$i$a$-apply-Log$toast$1$1":I
    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->getToastTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4b

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->getToastTag()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_4b
    move-object v0, p1

    :goto_4c
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 312
    nop

    .line 309
    .end local v2    # "$this$toast_u24lambda_u2d1_u24lambda_u2d0":Landroid/widget/Toast;
    .end local v3    # "$i$a$-apply-Log$toast$1$1":I
    sput-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->toast:Landroid/widget/Toast;

    .line 313
    return-void
.end method

.method public static synthetic w$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 241
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic w$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 273
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic wx$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 253
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->wx(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic wx$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 285
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->wx(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    return-void
.end method

.method public final d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public final dx(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->dx(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    return-void
.end method

.method public final dx(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->dx(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    return-void
.end method

.method public final e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public final ex(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method

.method public final ex(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public final getCancelLastToast()Z
    .registers 2

    .line 229
    sget-boolean v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->cancelLastToast:Z

    return v0
.end method

.method public final getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;
    .registers 2

    .line 221
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->logger:Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    if-nez v0, :cond_6

    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->defaultLogger:Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    :cond_6
    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    return-void
.end method

.method public final i(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public final ix(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ix(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method public final ix(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ix(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public final logdIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logdIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 355
    .local v0, "$i$f$logdIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 356
    .local v2, "$i$a$-let-Log$logdIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 357
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    nop

    .line 355
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logdIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 358
    :goto_24
    return-object v1
.end method

.method public final logdxIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logdxIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 369
    .local v0, "$i$f$logdxIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 370
    .local v2, "$i$a$-let-Log$logdxIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->dx(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 371
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    nop

    .line 369
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logdxIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 372
    :goto_24
    return-object v1
.end method

.method public final logeIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logeIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 411
    .local v0, "$i$f$logeIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 412
    .local v2, "$i$a$-let-Log$logeIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 413
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    nop

    .line 411
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logeIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 414
    :goto_24
    return-object v1
.end method

.method public final logexIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logexIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 425
    .local v0, "$i$f$logexIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 426
    .local v2, "$i$a$-let-Log$logexIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 427
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    nop

    .line 425
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logexIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 428
    :goto_24
    return-object v1
.end method

.method public final logiIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logiIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 327
    .local v0, "$i$f$logiIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 328
    .local v2, "$i$a$-let-Log$logiIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 329
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    nop

    .line 327
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logiIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 330
    :goto_24
    return-object v1
.end method

.method public final logixIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logixIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 341
    .local v0, "$i$f$logixIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 342
    .local v2, "$i$a$-let-Log$logixIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 343
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    nop

    .line 341
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logixIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 344
    :goto_24
    return-object v1
.end method

.method public final logwIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logwIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 383
    .local v0, "$i$f$logwIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 384
    .local v2, "$i$a$-let-Log$logwIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 385
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    nop

    .line 383
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logwIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 386
    :goto_24
    return-object v1
.end method

.method public final logwxIfThrow(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 8
    .param p1, "$this$logwxIfThrow"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "then"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 397
    .local v0, "$i$f$logwxIfThrow":I
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 398
    .local v2, "$i$a$-let-Log$logwxIfThrow$2":I
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->wx(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 399
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    nop

    .line 397
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-Log$logwxIfThrow$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 400
    :goto_24
    return-object v1
.end method

.method public final setCancelLastToast(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 229
    sput-boolean p1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->cancelLastToast:Z

    return-void
.end method

.method public final setCurrentLogger(Lcom/github/kyuubiran/ezxhelper/utils/Logger;)V
    .registers 3
    .param p1, "value"    # Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->logger:Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    .line 224
    return-void
.end method

.method public final toast(Ljava/lang/String;I)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/Log$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Log$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public final toast(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "duration"    # I

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formats"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    return-void
.end method

.method public final w(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public final wx(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->wx(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    return-void
.end method

.method public final wx(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    const-string/jumbo v0, "thr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->wx(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 287
    return-void
.end method
