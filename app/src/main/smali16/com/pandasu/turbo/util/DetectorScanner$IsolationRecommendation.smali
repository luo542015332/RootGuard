.class public final Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;
.super Ljava/lang/Object;
.source "DetectorScanner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/util/DetectorScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsolationRecommendation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nH\u00c6\u0003JA\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;",
        "",
        "packageName",
        "",
        "appType",
        "Lcom/pandasu/turbo/util/DetectorScanner$AppType;",
        "recommendedLevel",
        "Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;",
        "reason",
        "suggestedConfigs",
        "",
        "(Ljava/lang/String;Lcom/pandasu/turbo/util/DetectorScanner$AppType;Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;)V",
        "getAppType",
        "()Lcom/pandasu/turbo/util/DetectorScanner$AppType;",
        "getPackageName",
        "()Ljava/lang/String;",
        "getReason",
        "getRecommendedLevel",
        "()Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;",
        "getSuggestedConfigs",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
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
.field private final appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

.field private final packageName:Ljava/lang/String;

.field private final reason:Ljava/lang/String;

.field private final recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

.field private final suggestedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/util/DetectorScanner$AppType;Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # Lcom/pandasu/turbo/util/DetectorScanner$AppType;
    .param p3, "recommendedLevel"    # Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "suggestedConfigs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/util/DetectorScanner$AppType;",
            "Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendedLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedConfigs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    .line 257
    iput-object p3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    .line 258
    iput-object p4, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    .line 259
    iput-object p5, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    .line 254
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;Ljava/lang/String;Lcom/pandasu/turbo/util/DetectorScanner$AppType;Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->copy(Ljava/lang/String;Lcom/pandasu/turbo/util/DetectorScanner$AppType;Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;)Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/pandasu/turbo/util/DetectorScanner$AppType;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    return-object v0
.end method

.method public final component3()Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/pandasu/turbo/util/DetectorScanner$AppType;Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;)Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/util/DetectorScanner$AppType;",
            "Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendedLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedConfigs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/util/DetectorScanner$AppType;Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;

    iget-object v3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    iget-object v4, v1, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    iget-object v4, v1, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    iget-object v1, v1, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAppType()Lcom/pandasu/turbo/util/DetectorScanner$AppType;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecommendedLevel()Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    return-object v0
.end method

.method public final getSuggestedConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    invoke-virtual {v2}, Lcom/pandasu/turbo/util/DetectorScanner$AppType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    invoke-virtual {v2}, Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->appType:Lcom/pandasu/turbo/util/DetectorScanner$AppType;

    iget-object v2, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->recommendedLevel:Lcom/pandasu/turbo/util/DetectorScanner$IsolationLevel;

    iget-object v3, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->reason:Ljava/lang/String;

    iget-object v4, p0, Lcom/pandasu/turbo/util/DetectorScanner$IsolationRecommendation;->suggestedConfigs:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsolationRecommendation(packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", appType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommendedLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suggestedConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
