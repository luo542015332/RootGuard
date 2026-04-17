.class final Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodepointIndexFinder"
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findIndexBackward(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 803
    move v0, p1

    .line 804
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 805
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 806
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_3f

    if-ge v2, v0, :cond_c

    goto :goto_3f

    .line 809
    :cond_c
    if-gez p2, :cond_f

    .line 810
    return v3

    .line 812
    :cond_f
    move v4, p2

    .line 814
    .local v4, "remainingCodePoints":I
    :goto_10
    if-nez v4, :cond_13

    .line 815
    return v0

    .line 818
    :cond_13
    add-int/lit8 v0, v0, -0x1

    .line 819
    if-gez v0, :cond_1c

    .line 820
    if-eqz v1, :cond_1a

    .line 821
    return v3

    .line 823
    :cond_1a
    const/4 v3, 0x0

    return v3

    .line 826
    :cond_1c
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 827
    .local v5, "c":C
    if-eqz v1, :cond_2d

    .line 828
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_29

    .line 829
    return v3

    .line 831
    :cond_29
    const/4 v1, 0x0

    .line 832
    add-int/lit8 v4, v4, -0x1

    .line 833
    goto :goto_10

    .line 835
    :cond_2d
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_36

    .line 836
    add-int/lit8 v4, v4, -0x1

    .line 837
    goto :goto_10

    .line 839
    :cond_36
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 840
    return v3

    .line 842
    :cond_3d
    const/4 v1, 0x1

    .line 843
    .end local v5    # "c":C
    goto :goto_10

    .line 807
    .end local v4    # "remainingCodePoints":I
    :cond_3f
    :goto_3f
    return v3
.end method

.method static findIndexForward(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 859
    move v0, p1

    .line 860
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 861
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 862
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_43

    if-ge v2, v0, :cond_c

    goto :goto_43

    .line 865
    :cond_c
    if-gez p2, :cond_f

    .line 866
    return v3

    .line 868
    :cond_f
    move v4, p2

    .line 871
    .local v4, "remainingCodePoints":I
    :goto_10
    if-nez v4, :cond_13

    .line 872
    return v0

    .line 875
    :cond_13
    if-lt v0, v2, :cond_19

    .line 876
    if-eqz v1, :cond_18

    .line 877
    return v3

    .line 879
    :cond_18
    return v2

    .line 882
    :cond_19
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 883
    .local v5, "c":C
    if-eqz v1, :cond_2c

    .line 884
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_26

    .line 885
    return v3

    .line 887
    :cond_26
    add-int/lit8 v4, v4, -0x1

    .line 888
    const/4 v1, 0x0

    .line 889
    add-int/lit8 v0, v0, 0x1

    .line 890
    goto :goto_10

    .line 892
    :cond_2c
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_37

    .line 893
    add-int/lit8 v4, v4, -0x1

    .line 894
    add-int/lit8 v0, v0, 0x1

    .line 895
    goto :goto_10

    .line 897
    :cond_37
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 898
    return v3

    .line 900
    :cond_3e
    const/4 v1, 0x1

    .line 901
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 902
    goto :goto_10

    .line 863
    .end local v4    # "remainingCodePoints":I
    :cond_43
    :goto_43
    return v3
.end method
