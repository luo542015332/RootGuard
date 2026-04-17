.class public final Landroidx/compose/runtime/SlotWriter$Companion;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SlotWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,3471:1\n1#2:3472\n4548#3,5:3473\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n*L\n2109#1:3473,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000cH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotWriter$Companion;",
        "",
        "()V",
        "moveGroup",
        "",
        "Landroidx/compose/runtime/Anchor;",
        "fromWriter",
        "Landroidx/compose/runtime/SlotWriter;",
        "fromIndex",
        "",
        "toWriter",
        "updateFromCursor",
        "",
        "updateToCursor",
        "removeSourceGroup",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .registers 8
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter$Companion;
    .param p1, "fromWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "fromIndex"    # I
    .param p3, "toWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p4, "updateFromCursor"    # Z
    .param p5, "updateToCursor"    # Z
    .param p6, "removeSourceGroup"    # Z

    .line 1961
    invoke-direct/range {p0 .. p6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .registers 36
    .param p1, "fromWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "fromIndex"    # I
    .param p3, "toWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p4, "updateFromCursor"    # Z
    .param p5, "updateToCursor"    # Z
    .param p6, "removeSourceGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            "ZZZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 1970
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    .line 1971
    .local v3, "groupsToMove":I
    add-int v4, v1, v3

    .line 1972
    .local v4, "sourceGroupsEnd":I
    # invokes: Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v5

    .line 1973
    .local v5, "sourceSlotsStart":I
    # invokes: Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v6

    .line 1974
    .local v6, "sourceSlotsEnd":I
    sub-int v7, v6, v5

    .line 1975
    .local v7, "slotsToMove":I
    # invokes: Landroidx/compose/runtime/SlotWriter;->containsAnyGroupMarks(I)Z
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result v8

    .line 1978
    .local v8, "hasMarks":Z
    # invokes: Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V
    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotWriter;->access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V

    .line 1979
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v9

    # invokes: Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V
    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/SlotWriter;->access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V

    .line 1983
    # getter for: Landroidx/compose/runtime/SlotWriter;->groupGapStart:I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v4, :cond_2d

    .line 1984
    # invokes: Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V

    .line 1986
    :cond_2d
    # getter for: Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v6, :cond_36

    .line 1987
    # invokes: Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V
    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V

    .line 1991
    :cond_36
    # getter for: Landroidx/compose/runtime/SlotWriter;->groups:[I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v9

    .line 1992
    .local v9, "groups":[I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v10

    .line 1993
    .local v10, "currentGroup":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->groups:[I
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v11

    .line 1994
    nop

    .line 1995
    mul-int/lit8 v12, v10, 0x5

    .line 1996
    mul-int/lit8 v13, v1, 0x5

    .line 1997
    mul-int/lit8 v14, v4, 0x5

    .line 1993
    invoke-static {v11, v9, v12, v13, v14}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 1999
    # getter for: Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v11

    .line 2000
    .local v11, "slots":[Ljava/lang/Object;
    # getter for: Landroidx/compose/runtime/SlotWriter;->currentSlot:I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v12

    .line 2001
    .local v12, "currentSlot":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v13

    .line 2002
    nop

    .line 2003
    nop

    .line 2004
    nop

    .line 2005
    nop

    .line 2001
    invoke-static {v13, v11, v12, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 2010
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v13

    .line 2011
    .local v13, "parent":I
    # invokes: Landroidx/compose/runtime/SlotTableKt;->updateParentAnchor([III)V
    invoke-static {v9, v10, v13}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    .line 2012
    sub-int v14, v10, v1

    .line 2013
    .local v14, "parentDelta":I
    add-int v15, v10, v3

    .line 2014
    .local v15, "moveEnd":I
    nop

    .line 3472
    move-object/from16 v16, p3

    .local v16, "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    const/16 v17, 0x0

    .line 2014
    .local v17, "$i$a$-with-SlotWriter$Companion$moveGroup$dataIndexDelta$1":I
    move/from16 v18, v6

    move-object/from16 v6, v16

    .end local v16    # "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    .local v6, "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    .local v18, "sourceSlotsEnd":I
    # invokes: Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I
    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v6

    .end local v6    # "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    .end local v17    # "$i$a$-with-SlotWriter$Companion$moveGroup$dataIndexDelta$1":I
    sub-int v6, v12, v6

    .line 2015
    .local v6, "dataIndexDelta":I
    const/16 v16, 0x0

    .local v16, "slotsGapOwner":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v16

    .line 2016
    move/from16 v17, v13

    .end local v13    # "parent":I
    .local v17, "parent":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v13

    .line 2017
    .local v13, "slotsGapLen":I
    move/from16 v19, v8

    .end local v8    # "hasMarks":Z
    .local v19, "hasMarks":Z
    array-length v8, v11

    .line 2018
    .local v8, "slotsCapacity":I
    move/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v11, v16

    move/from16 v16, v12

    move/from16 v12, v20

    .local v11, "slotsGapOwner":I
    .local v12, "groupAddress":I
    .local v16, "currentSlot":I
    .local v21, "slots":[Ljava/lang/Object;
    :goto_92
    const/16 v20, 0x0

    if-ge v12, v15, :cond_de

    .line 2020
    if-eq v12, v10, :cond_a4

    .line 2021
    # invokes: Landroidx/compose/runtime/SlotTableKt;->parentAnchor([II)I
    invoke-static {v9, v12}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v22

    .line 2022
    .local v22, "previousParent":I
    move/from16 v23, v15

    .end local v15    # "moveEnd":I
    .local v23, "moveEnd":I
    add-int v15, v22, v14

    # invokes: Landroidx/compose/runtime/SlotTableKt;->updateParentAnchor([III)V
    invoke-static {v9, v12, v15}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    goto :goto_a6

    .line 2020
    .end local v22    # "previousParent":I
    .end local v23    # "moveEnd":I
    .restart local v15    # "moveEnd":I
    :cond_a4
    move/from16 v23, v15

    .line 2025
    .end local v15    # "moveEnd":I
    .restart local v23    # "moveEnd":I
    :goto_a6
    move-object/from16 v15, p3

    .local v15, "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    const/16 v22, 0x0

    .line 2026
    .local v22, "$i$a$-with-SlotWriter$Companion$moveGroup$newDataIndex$1":I
    # invokes: Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I
    invoke-static {v15, v9, v12}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v24

    add-int v24, v24, v6

    .line 2025
    .end local v15    # "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    .end local v22    # "$i$a$-with-SlotWriter$Companion$moveGroup$newDataIndex$1":I
    move/from16 v15, v24

    .line 2028
    .local v15, "newDataIndex":I
    move-object/from16 v22, p3

    .local v22, "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    const/16 v24, 0x0

    .line 2029
    .local v24, "$i$a$-with-SlotWriter$Companion$moveGroup$newDataAnchor$1":I
    nop

    .line 2030
    nop

    .line 2033
    if-ge v11, v12, :cond_bb

    goto :goto_bf

    :cond_bb
    # getter for: Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I
    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v20

    :goto_bf
    move/from16 v25, v6

    move/from16 v6, v20

    .line 2034
    .end local v6    # "dataIndexDelta":I
    .local v25, "dataIndexDelta":I
    nop

    .line 2035
    nop

    .line 2029
    move/from16 v26, v14

    move-object/from16 v14, v22

    .end local v22    # "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .local v14, "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .local v26, "parentDelta":I
    # invokes: Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I
    invoke-static {v14, v15, v6, v13, v8}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I

    move-result v6

    .line 2028
    .end local v14    # "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .end local v24    # "$i$a$-with-SlotWriter$Companion$moveGroup$newDataAnchor$1":I
    nop

    .line 2040
    .local v6, "newDataAnchor":I
    # invokes: Landroidx/compose/runtime/SlotTableKt;->updateDataAnchor([III)V
    invoke-static {v9, v12, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    .line 2043
    if-ne v12, v11, :cond_d5

    add-int/lit8 v11, v11, 0x1

    .line 2018
    .end local v6    # "newDataAnchor":I
    .end local v15    # "newDataIndex":I
    :cond_d5
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v23

    move/from16 v6, v25

    move/from16 v14, v26

    goto :goto_92

    .end local v23    # "moveEnd":I
    .end local v25    # "dataIndexDelta":I
    .end local v26    # "parentDelta":I
    .local v6, "dataIndexDelta":I
    .local v14, "parentDelta":I
    .local v15, "moveEnd":I
    :cond_de
    move/from16 v25, v6

    move/from16 v26, v14

    move/from16 v23, v15

    .line 2045
    .end local v6    # "dataIndexDelta":I
    .end local v12    # "groupAddress":I
    .end local v14    # "parentDelta":I
    .end local v15    # "moveEnd":I
    .restart local v23    # "moveEnd":I
    .restart local v25    # "dataIndexDelta":I
    .restart local v26    # "parentDelta":I
    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2048
    # getter for: Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v12

    # invokes: Landroidx/compose/runtime/SlotTableKt;->locationOf(Ljava/util/ArrayList;II)I
    invoke-static {v6, v1, v12}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v6

    .line 2049
    .local v6, "startAnchors":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v14

    # invokes: Landroidx/compose/runtime/SlotTableKt;->locationOf(Ljava/util/ArrayList;II)I
    invoke-static {v12, v4, v14}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v12

    .line 2050
    .local v12, "endAnchors":I
    if-ge v6, v12, :cond_164

    .line 2051
    # getter for: Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v14

    .line 2052
    .local v14, "sourceAnchors":Ljava/util/ArrayList;
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v22, v4

    .end local v4    # "sourceGroupsEnd":I
    .local v22, "sourceGroupsEnd":I
    sub-int v4, v12, v6

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v15

    .line 2055
    .local v4, "anchors":Ljava/util/ArrayList;
    sub-int v15, v10, v1

    .line 2056
    .local v15, "anchorDelta":I
    move/from16 v24, v6

    move/from16 v27, v8

    move/from16 v8, v24

    .local v8, "anchorIndex":I
    .local v27, "slotsCapacity":I
    :goto_117
    if-ge v8, v12, :cond_13b

    .line 2057
    move/from16 v24, v11

    .end local v11    # "slotsGapOwner":I
    .local v24, "slotsGapOwner":I
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move/from16 v28, v13

    .end local v13    # "slotsGapLen":I
    .local v28, "slotsGapLen":I
    const-string/jumbo v13, "sourceAnchors[anchorIndex]"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/compose/runtime/Anchor;

    .line 2058
    .local v11, "sourceAnchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v11}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v13

    add-int/2addr v13, v15

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 2059
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    .end local v11    # "sourceAnchor":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v24

    move/from16 v13, v28

    goto :goto_117

    .end local v24    # "slotsGapOwner":I
    .end local v28    # "slotsGapLen":I
    .local v11, "slotsGapOwner":I
    .restart local v13    # "slotsGapLen":I
    :cond_13b
    move/from16 v24, v11

    move/from16 v28, v13

    .line 2063
    .end local v8    # "anchorIndex":I
    .end local v11    # "slotsGapOwner":I
    .end local v13    # "slotsGapLen":I
    .restart local v24    # "slotsGapOwner":I
    .restart local v28    # "slotsGapLen":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2064
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v11

    .line 2065
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v13

    .line 2063
    # invokes: Landroidx/compose/runtime/SlotTableKt;->locationOf(Ljava/util/ArrayList;II)I
    invoke-static {v8, v11, v13}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v8

    .line 2067
    .local v8, "insertLocation":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v13, v4

    check-cast v13, Ljava/util/Collection;

    invoke-virtual {v11, v8, v13}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2070
    invoke-virtual {v14, v6, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 2072
    nop

    .end local v4    # "anchors":Ljava/util/ArrayList;
    .end local v8    # "insertLocation":I
    .end local v14    # "sourceAnchors":Ljava/util/ArrayList;
    .end local v15    # "anchorDelta":I
    check-cast v4, Ljava/util/List;

    goto :goto_170

    .line 2073
    .end local v22    # "sourceGroupsEnd":I
    .end local v24    # "slotsGapOwner":I
    .end local v27    # "slotsCapacity":I
    .end local v28    # "slotsGapLen":I
    .local v4, "sourceGroupsEnd":I
    .local v8, "slotsCapacity":I
    .restart local v11    # "slotsGapOwner":I
    .restart local v13    # "slotsGapLen":I
    :cond_164
    move/from16 v22, v4

    move/from16 v27, v8

    move/from16 v24, v11

    move/from16 v28, v13

    .end local v4    # "sourceGroupsEnd":I
    .end local v8    # "slotsCapacity":I
    .end local v11    # "slotsGapOwner":I
    .end local v13    # "slotsGapLen":I
    .restart local v22    # "sourceGroupsEnd":I
    .restart local v24    # "slotsGapOwner":I
    .restart local v27    # "slotsCapacity":I
    .restart local v28    # "slotsGapLen":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 2050
    :goto_170
    nop

    .line 2075
    .local v4, "anchors":Ljava/util/List;
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v8

    .line 2076
    .local v8, "parentGroup":I
    const/4 v11, 0x1

    if-nez p6, :cond_17b

    .line 2079
    move/from16 v14, v20

    goto :goto_1bb

    .line 2080
    :cond_17b
    if-eqz p4, :cond_1b1

    .line 2084
    if-ltz v8, :cond_181

    move v13, v11

    goto :goto_183

    :cond_181
    move/from16 v13, v20

    .line 2085
    .local v13, "needsStartGroups":Z
    :goto_183
    if-eqz v13, :cond_194

    .line 2088
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2089
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2090
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2092
    :cond_194
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v14

    sub-int v14, v1, v14

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2093
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    move-result v14

    .line 2094
    .local v14, "anchorsRemoved":Z
    if-eqz v13, :cond_1af

    .line 2095
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2096
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2097
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2098
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2100
    :cond_1af
    nop

    .end local v13    # "needsStartGroups":Z
    .end local v14    # "anchorsRemoved":Z
    goto :goto_1bb

    .line 2103
    :cond_1b1
    # invokes: Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z

    move-result v14

    .line 2104
    .restart local v14    # "anchorsRemoved":Z
    add-int/lit8 v13, v1, -0x1

    # invokes: Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V
    invoke-static {v0, v5, v7, v13}, Landroidx/compose/runtime/SlotWriter;->access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V

    .line 2105
    nop

    .line 2076
    .end local v14    # "anchorsRemoved":Z
    :goto_1bb
    move v13, v14

    .line 2109
    .local v13, "anchorsRemoved":Z
    if-nez v13, :cond_1c0

    move/from16 v20, v11

    :cond_1c0
    move/from16 v14, v20

    .local v14, "value$iv":Z
    const/4 v15, 0x0

    .line 3473
    .local v15, "$i$f$runtimeCheck":I
    if-eqz v14, :cond_1f1

    .line 3477
    nop

    .line 2112
    .end local v14    # "value$iv":Z
    .end local v15    # "$i$f$runtimeCheck":I
    # getter for: Landroidx/compose/runtime/SlotWriter;->nodeCount:I
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v14

    # invokes: Landroidx/compose/runtime/SlotTableKt;->isNode([II)Z
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v15

    if-eqz v15, :cond_1d1

    goto :goto_1d6

    .line 2113
    :cond_1d1
    nop

    .line 2112
    # invokes: Landroidx/compose/runtime/SlotTableKt;->nodeCount([II)I
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v11

    :goto_1d6
    add-int/2addr v14, v11

    invoke-static {v2, v14}, Landroidx/compose/runtime/SlotWriter;->access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2117
    if-eqz p5, :cond_1e6

    .line 2118
    add-int v11, v10, v3

    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2119
    add-int v11, v16, v7

    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2123
    :cond_1e6
    if-eqz v19, :cond_1ee

    .line 2124
    move/from16 v11, v17

    .end local v17    # "parent":I
    .local v11, "parent":I
    # invokes: Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V
    invoke-static {v2, v11}, Landroidx/compose/runtime/SlotWriter;->access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V

    goto :goto_1f0

    .line 2123
    .end local v11    # "parent":I
    .restart local v17    # "parent":I
    :cond_1ee
    move/from16 v11, v17

    .line 2126
    .end local v17    # "parent":I
    .restart local v11    # "parent":I
    :goto_1f0
    return-object v4

    .line 3474
    .end local v11    # "parent":I
    .restart local v14    # "value$iv":Z
    .restart local v15    # "$i$f$runtimeCheck":I
    .restart local v17    # "parent":I
    :cond_1f1
    move/from16 v11, v17

    .end local v17    # "parent":I
    .restart local v11    # "parent":I
    const/16 v17, 0x0

    .line 2109
    .local v17, "$i$a$-runtimeCheck-SlotWriter$Companion$moveGroup$1":I
    nop

    .line 3474
    .end local v17    # "$i$a$-runtimeCheck-SlotWriter$Companion$moveGroup$1":I
    const-string/jumbo v17, "Unexpectedly removed anchors"

    .line 3475
    .local v17, "message$iv":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v20, Lkotlin/KotlinNothingValueException;

    invoke-direct/range {v20 .. v20}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v20
.end method

.method static synthetic moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;
    .registers 16

    .line 1962
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_7

    .line 1968
    const/4 p6, 0x1

    move v6, p6

    goto :goto_8

    .line 1962
    :cond_7
    move v6, p6

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
