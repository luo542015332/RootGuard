.class public Lcom/github/kyuubiran/ezxhelper/utils/Logger;
.super Ljava/lang/Object;
.source "Log.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/kyuubiran/ezxhelper/utils/Logger$LogLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u000c\u0008\u0016\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nJ\u001c\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010 \u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nJ\u001c\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nJ*\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001c\u0010&\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010&\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010\'\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010\'\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000e\u00a8\u0006)"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/Logger;",
        "",
        "()V",
        "logLevel",
        "",
        "getLogLevel",
        "()I",
        "setLogLevel",
        "(I)V",
        "logTag",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "setLogTag",
        "(Ljava/lang/String;)V",
        "<set-?>",
        "",
        "logXp",
        "getLogXp",
        "()Z",
        "setLogXp$EzXHelper_release",
        "(Z)V",
        "toastTag",
        "getToastTag",
        "setToastTag",
        "d",
        "",
        "msg",
        "thr",
        "",
        "dx",
        "e",
        "ex",
        "i",
        "ix",
        "px",
        "levelInt",
        "level",
        "w",
        "wx",
        "LogLevel",
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
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final INFO:I = 0x2

.field public static final LogLevel:Lcom/github/kyuubiran/ezxhelper/utils/Logger$LogLevel;

.field public static final VERBOSE:I = 0x0

.field public static final WARN:I = 0x3


# instance fields
.field private logLevel:I

.field private logTag:Ljava/lang/String;

.field private logXp:Z

.field private toastTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/Logger$LogLevel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger$LogLevel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->LogLevel:Lcom/github/kyuubiran/ezxhelper/utils/Logger$LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "EZXHelper"

    iput-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logXp:Z

    .line 8
    return-void
.end method

.method public static synthetic d$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 55
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: d"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 109
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: d"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic dx$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 179
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->dx(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: dx"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic dx$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 190
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->dx(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: dx"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 77
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: e"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 127
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: e"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic ex$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 200
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: ex"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic ex$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 211
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: ex"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic i$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 45
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: i"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic i$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 100
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: i"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic ix$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 137
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ix(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: ix"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic ix$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 148
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ix(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: ix"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 66
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: w"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 118
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: w"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic wx$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 5

    .line 158
    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->wx(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: wx"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic wx$default(Lcom/github/kyuubiran/ezxhelper/utils/Logger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 169
    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->wx(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: wx"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    return-void

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
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

    .line 110
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public final dx(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    const/4 v0, 0x1

    const-string v1, "D"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->px(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
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

    .line 191
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->dx(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    return-void

    .line 79
    :cond_b
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
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

    .line 128
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method

.method public final ex(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    const/4 v0, 0x4

    const-string v1, "E"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->px(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
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

    .line 212
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public final getLogLevel()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logLevel:I

    return v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogXp()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logXp:Z

    return v0
.end method

.method public final getToastTag()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->toastTag:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_b

    return-void

    .line 47
    :cond_b
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
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

    .line 101
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public final ix(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    const/4 v0, 0x2

    const-string v1, "I"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->px(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
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

    .line 149
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->ix(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public px(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "levelInt"    # I
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "thr"    # Ljava/lang/Throwable;

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logLevel:I

    if-le v0, p1, :cond_f

    return-void

    .line 91
    :cond_f
    iget-boolean v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logXp:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    if-eqz p4, :cond_1c

    invoke-static {p4}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 92
    :cond_51
    return-void
.end method

.method public final setLogLevel(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 13
    iput p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logLevel:I

    return-void
.end method

.method public final setLogTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    return-void
.end method

.method public final setLogXp$EzXHelper_release(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logXp:Z

    return-void
.end method

.method public final setToastTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->toastTag:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_b

    return-void

    .line 68
    :cond_b
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
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

    .line 119
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public final wx(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    const/4 v0, 0x3

    const-string v1, "W"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->px(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
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

    .line 170
    invoke-virtual {p0, p2, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->wx(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    return-void
.end method
