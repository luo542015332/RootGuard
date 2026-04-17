.class public final Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;
.super Lcom/pandasu/turbo/ui/navigation/Screen;
.source "NavHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/ui/navigation/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppIsolation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c7\n\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u00d6\u0003J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\r\u001a\u00020\u0004H\u00d6\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;",
        "Lcom/pandasu/turbo/ui/navigation/Screen;",
        "()V",
        "createRoute",
        "",
        "packageName",
        "appName",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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

.field public static final INSTANCE:Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;

    invoke-direct {v0}, Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;->INSTANCE:Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 16
    const-string v0, "app_isolation/{packageName}/{appName}"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pandasu/turbo/ui/navigation/Screen;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final createRoute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_isolation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/ui/navigation/Screen$AppIsolation;

    return v0
.end method

.method public hashCode()I
    .registers 2

    const v0, 0x24c6ae0a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "AppIsolation"

    return-object v0
.end method
