.class public abstract Lcom/pandasu/turbo/ui/navigation/Screen;
.super Ljava/lang/Object;
.source "NavHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;,
        Lcom/pandasu/turbo/ui/navigation/Screen$EnvScoreDetail;,
        Lcom/pandasu/turbo/ui/navigation/Screen$Home;,
        Lcom/pandasu/turbo/ui/navigation/Screen$Logs;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0004\u0007\u0008\t\nB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0004\u000b\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/pandasu/turbo/ui/navigation/Screen;",
        "",
        "route",
        "",
        "(Ljava/lang/String;)V",
        "getRoute",
        "()Ljava/lang/String;",
        "AppIsolation",
        "EnvScoreDetail",
        "Home",
        "Logs",
        "Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;",
        "Lcom/pandasu/turbo/ui/navigation/Screen$EnvScoreDetail;",
        "Lcom/pandasu/turbo/ui/navigation/Screen$Home;",
        "Lcom/pandasu/turbo/ui/navigation/Screen$Logs;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final route:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "route"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pandasu/turbo/ui/navigation/Screen;->route:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pandasu/turbo/ui/navigation/Screen;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getRoute()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/pandasu/turbo/ui/navigation/Screen;->route:Ljava/lang/String;

    return-object v0
.end method
