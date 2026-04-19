.class public final Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;
.super Ljava/lang/Object;
.source "AppOpsApis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/hidden/compat/AppOpsApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalOpsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest$Builder;
    }
.end annotation


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mBeginTimeMillis:J

.field private final mEndTimeMillis:J

.field private final mFilter:I

.field private final mFlags:I

.field private final mHistoryFlags:I

.field private final mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJI)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI)V"
        }
    .end annotation

    .line 241
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I

    .line 243
    iput-object p2, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;

    .line 245
    iput-object p4, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    .line 246
    iput p5, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mHistoryFlags:I

    .line 247
    iput p6, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFilter:I

    .line 248
    iput-wide p7, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J

    .line 249
    iput-wide p9, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J

    .line 250
    iput p11, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I

    .line 251
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILrikka/hidden/compat/AppOpsApis$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # J
    .param p9, "x7"    # J
    .param p11, "x8"    # I
    .param p12, "x9"    # Lrikka/hidden/compat/AppOpsApis$1;

    .line 219
    invoke-direct/range {p0 .. p11}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJI)V

    return-void
.end method

.method static synthetic access$100(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I
    .locals 1
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget-object v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget-object v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget-object v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I
    .locals 1
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mHistoryFlags:I

    return v0
.end method

.method static synthetic access$600(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I
    .locals 1
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFilter:I

    return v0
.end method

.method static synthetic access$700(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J
    .locals 2
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget-wide v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$800(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J
    .locals 2
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget-wide v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$900(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I
    .locals 1
    .param p0, "x0"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;

    .line 219
    iget v0, p0, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I

    return v0
.end method
