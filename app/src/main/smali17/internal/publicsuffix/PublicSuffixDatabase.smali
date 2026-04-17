.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "()V",
        "listRead",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "publicSuffixExceptionListBytes",
        "",
        "publicSuffixListBytes",
        "readCompleteLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "findMatchingRule",
        "",
        "",
        "domainLabels",
        "getEffectiveTldPlusOne",
        "domain",
        "readTheList",
        "",
        "readTheListUninterruptibly",
        "setListBytes",
        "splitDomain",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

.field private static final EXCEPTION_MARKER:C = '!'

.field private static final PREVAILING_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 245
    const-string v0, "*"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    .line 249
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .line 35
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private final findMatchingRule(Ljava/util/List;)Ljava/util/List;
    .registers 16
    .param p1, "domainLabels"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 101
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_25

    .line 103
    :cond_16
    nop

    .line 104
    :try_start_17
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_25

    .line 105
    :catch_1d
    move-exception v0

    .line 106
    .local v0, "_":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 110
    .end local v0    # "_":Ljava/lang/InterruptedException;
    :goto_25
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    if-eqz v0, :cond_132

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [[B

    move v4, v1

    :goto_35
    if-ge v4, v0, :cond_53

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v7, "UTF_8"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string/jumbo v6, "this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_53
    move-object v0, v3

    .line 119
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v3, 0x0

    .line 120
    .local v3, "exactMatch":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    :goto_5a
    const-string v6, "publicSuffixListBytes"

    const/4 v7, 0x0

    if-ge v4, v5, :cond_74

    .line 121
    sget-object v8, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v9, :cond_69

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v7

    :cond_69
    # invokes: Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;
    invoke-static {v8, v9, v0, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "rule":Ljava/lang/String;
    if-eqz v8, :cond_71

    .line 123
    move-object v3, v8

    .line 124
    goto :goto_74

    .line 120
    .end local v8    # "rule":Ljava/lang/String;
    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 133
    .end local v4    # "i":I
    :cond_74
    :goto_74
    const/4 v4, 0x0

    .line 134
    .local v4, "wildcardMatch":Ljava/lang/String;
    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    if-le v5, v2, :cond_a5

    .line 135
    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    .line 136
    .local v5, "labelsWithWildcard":[[B
    const/4 v8, 0x0

    .local v8, "labelIndex":I
    move-object v9, v5

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    sub-int/2addr v9, v2

    :goto_8a
    if-ge v8, v9, :cond_a5

    .line 137
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v10, v5, v8

    .line 138
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v11, :cond_9a

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v7

    :cond_9a
    # invokes: Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;
    invoke-static {v10, v11, v5, v8}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, "rule":Ljava/lang/String;
    if-eqz v10, :cond_a2

    .line 140
    move-object v4, v10

    .line 141
    goto :goto_a5

    .line 136
    .end local v10    # "rule":Ljava/lang/String;
    :cond_a2
    add-int/lit8 v8, v8, 0x1

    goto :goto_8a

    .line 147
    .end local v5    # "labelsWithWildcard":[[B
    .end local v8    # "labelIndex":I
    :cond_a5
    :goto_a5
    const/4 v5, 0x0

    .line 148
    .local v5, "exception":Ljava/lang/String;
    if-eqz v4, :cond_c8

    .line 149
    const/4 v6, 0x0

    .local v6, "labelIndex":I
    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    array-length v8, v8

    sub-int/2addr v8, v2

    :goto_ae
    if-ge v6, v8, :cond_c8

    .line 150
    sget-object v9, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    if-nez v10, :cond_bc

    const-string v10, "publicSuffixExceptionListBytes"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v7

    .line 151
    :cond_bc
    nop

    .line 150
    # invokes: Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;
    invoke-static {v9, v10, v0, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "rule":Ljava/lang/String;
    if-eqz v9, :cond_c5

    .line 153
    move-object v5, v9

    .line 154
    goto :goto_c8

    .line 149
    .end local v9    # "rule":Ljava/lang/String;
    :cond_c5
    add-int/lit8 v6, v6, 0x1

    goto :goto_ae

    .line 159
    .end local v6    # "labelIndex":I
    :cond_c8
    :goto_c8
    const/16 v6, 0x2e

    if-eqz v5, :cond_ef

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v2, [C

    aput-char v6, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 163
    :cond_ef
    if-nez v3, :cond_f6

    if-nez v4, :cond_f6

    .line 164
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    return-object v1

    .line 167
    :cond_f6
    if-eqz v3, :cond_109

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v2, [C

    aput-char v6, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_10d

    :cond_109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 168
    .local v7, "exactRuleLabels":Ljava/util/List;
    :cond_10d
    if-eqz v4, :cond_120

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v2, [C

    aput-char v6, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_124

    :cond_120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "wildcardRuleLabels":Ljava/util/List;
    :cond_124
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v2, v6, :cond_130

    .line 171
    move-object v2, v7

    goto :goto_131

    .line 173
    :cond_130
    move-object v2, v1

    .line 170
    :goto_131
    return-object v2

    .line 110
    .end local v0    # "domainLabelsUtf8Bytes":[[B
    .end local v1    # "wildcardRuleLabels":Ljava/util/List;
    .end local v3    # "exactMatch":Ljava/lang/String;
    .end local v4    # "wildcardMatch":Ljava/lang/String;
    .end local v5    # "exception":Ljava/lang/String;
    .end local v7    # "exactRuleLabels":Ljava/util/List;
    :cond_132
    const/4 v0, 0x0

    .line 111
    .local v0, "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    nop

    .line 110
    .end local v0    # "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readTheList()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    nop

    .line 207
    :try_start_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 208
    .local v0, "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v1, "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    const-class v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 211
    const-string v3, "publicsuffixes.gz"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_78

    if-nez v2, :cond_1c

    .line 226
    nop

    .end local v0    # "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v1    # "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 211
    .restart local v0    # "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v1    # "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    return-void

    .line 210
    :cond_1c
    nop

    .line 213
    .local v2, "resource":Ljava/io/InputStream;
    :try_start_1d
    new-instance v3, Lokio/GzipSource;

    invoke-static {v2}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    check-cast v3, Lokio/Source;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_78

    :try_start_2e
    move-object v4, v3

    check-cast v4, Lokio/BufferedSource;

    .local v4, "bufferedSource":Lokio/BufferedSource;
    const/4 v5, 0x0

    .line 214
    .local v5, "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 215
    .local v6, "totalBytes":I
    int-to-long v7, v6

    invoke-interface {v4, v7, v8}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v7

    iput-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 217
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 218
    .local v7, "totalExceptionBytes":I
    int-to-long v8, v7

    invoke-interface {v4, v8, v9}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v8

    iput-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 219
    nop

    .end local v4    # "bufferedSource":Lokio/BufferedSource;
    .end local v5    # "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    .end local v6    # "totalBytes":I
    .end local v7    # "totalExceptionBytes":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_71

    .line 213
    const/4 v4, 0x0

    :try_start_4c
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 221
    monitor-enter p0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_78

    const/4 v3, 0x0

    .line 222
    .local v3, "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    :try_start_51
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, [B

    iput-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 223
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, [B

    iput-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 224
    nop

    .end local v3    # "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_6e

    .line 221
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_78

    .line 226
    .end local v0    # "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v1    # "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v2    # "resource":Ljava/io/InputStream;
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 227
    nop

    .line 228
    return-void

    .line 221
    .restart local v0    # "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v1    # "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v2    # "resource":Ljava/io/InputStream;
    :catchall_6e
    move-exception v3

    :try_start_6f
    monitor-exit p0

    throw v3
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_78

    .line 213
    :catchall_71
    move-exception v4

    .end local v0    # "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v1    # "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v2    # "resource":Ljava/io/InputStream;
    :try_start_72
    throw v4
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .restart local v0    # "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v1    # "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v2    # "resource":Ljava/io/InputStream;
    :catchall_73
    move-exception v5

    :try_start_74
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    .line 226
    .end local v0    # "publicSuffixListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v1    # "publicSuffixExceptionListBytes":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v2    # "resource":Ljava/io/InputStream;
    :catchall_78
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method private final readTheListUninterruptibly()V
    .registers 7

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "interrupted":Z
    nop

    .line 185
    :goto_2
    nop

    .line 186
    nop

    .line 187
    :try_start_4
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_7} :catch_30
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_14
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 188
    nop

    .line 198
    if-eqz v0, :cond_11

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 188
    :cond_11
    return-void

    .line 198
    :catchall_12
    move-exception v1

    goto :goto_36

    .line 192
    :catch_14
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/IOException;
    :try_start_15
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const-string v3, "Failed to read public suffix list"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v5, v4}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_12

    .line 194
    nop

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2f

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .restart local v1    # "e":Ljava/io/IOException;
    nop

    .line 194
    :cond_2f
    return-void

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v1

    .line 190
    .local v1, "_":Ljava/io/InterruptedIOException;
    :try_start_31
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_12

    .line 191
    const/4 v0, 0x1

    .end local v1    # "_":Ljava/io/InterruptedIOException;
    goto :goto_2

    .line 198
    :goto_36
    if-eqz v0, :cond_3f

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_3f
    throw v1
.end method

.method private final splitDomain(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v1, v6, [C

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "domainLabels":Ljava/util/List;
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 93
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 96
    :cond_23
    return-object v0
.end method


# virtual methods
.method public final getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "domain"    # Ljava/lang/String;

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "unicodeDomain":Ljava/lang/String;
    const-string/jumbo v1, "unicodeDomain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "domainLabels":Ljava/util/List;
    invoke-direct {p0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "rule":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_32

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_32

    .line 74
    const/4 v3, 0x0

    return-object v3

    .line 77
    :cond_32
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_48

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_53

    .line 82
    :cond_48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    .line 77
    :goto_53
    nop

    .line 85
    .local v3, "firstLabelOffset":I
    invoke-direct {p0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v5

    const-string v4, "."

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final setListBytes([B[B)V
    .registers 5
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    const-string v0, "publicSuffixListBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicSuffixExceptionListBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 236
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 237
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 239
    return-void
.end method
