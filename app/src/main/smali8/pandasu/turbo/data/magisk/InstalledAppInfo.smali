.class public final Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
.super Ljava/lang/Object;
.source "MagiskProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J3\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;",
        "",
        "packageName",
        "",
        "appName",
        "isSystemApp",
        "",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V",
        "getAppName",
        "()Ljava/lang/String;",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "()Z",
        "getPackageName",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
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


# instance fields
.field private final appName:Ljava/lang/String;

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final isSystemApp:Z

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "isSystemApp"    # Z
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    .line 1312
    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    .line 1313
    iput-boolean p3, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    .line 1314
    iput-object p4, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1310
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    .line 1310
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    .line 1314
    const/4 p4, 0x0

    .line 1310
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    .line 1315
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ILjava/lang/Object;)Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->copy(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    return v0
.end method

.method public final component4()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;
    .registers 6

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v2

    :cond_23
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    if-eq v3, v4, :cond_2a

    return v2

    :cond_2a
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, v1, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public final getAppName()Ljava/lang/String;
    .registers 2

    .line 1312
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1314
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 1311
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v1, v2

    return v1
.end method

.method public final isSystemApp()Z
    .registers 2

    .line 1313
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->appName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->isSystemApp:Z

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/InstalledAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstalledAppInfo(packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", appName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSystemApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
