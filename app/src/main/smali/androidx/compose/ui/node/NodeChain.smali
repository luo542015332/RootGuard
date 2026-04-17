.class public final Landroidx/compose/ui/node/NodeChain;
.super Ljava/lang/Object;
.source "NodeChain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeChain$Differ;,
        Landroidx/compose/ui/node/NodeChain$Logger;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,858:1\n754#1,6:869\n723#1,6:886\n723#1,6:892\n731#1,3:899\n734#1,3:905\n754#1,6:908\n754#1,6:914\n700#1,8:922\n723#1,3:930\n708#1,2:933\n701#1:935\n702#1,11:979\n726#1,3:990\n713#1:993\n703#1:994\n706#1,2:995\n723#1,3:997\n708#1,2:1000\n711#1,2:1045\n726#1,3:1047\n713#1:1050\n723#1,6:1051\n745#1,12:1057\n757#1,3:1112\n751#1:1115\n754#1,6:1116\n739#1,18:1122\n757#1,3:1183\n751#1:1186\n742#1:1187\n700#1,8:1188\n723#1,3:1196\n708#1,2:1199\n701#1:1201\n702#1,11:1245\n726#1,3:1256\n713#1:1259\n703#1:1260\n731#1,6:1261\n1#2:859\n1182#3:860\n1161#3,2:861\n1161#3,2:867\n1162#3:898\n1182#3:956\n1161#3,2:957\n1182#3:1022\n1161#3,2:1023\n1182#3:1089\n1161#3,2:1090\n1182#3:1160\n1161#3,2:1161\n1182#3:1222\n1161#3,2:1223\n523#4:863\n523#4:864\n523#4:865\n523#4:866\n476#4,11:875\n523#4:902\n728#4,2:903\n72#5:920\n261#6:921\n261#6:942\n261#6:1008\n261#6:1075\n261#6:1146\n261#6:1208\n383#7,6:936\n393#7,2:943\n395#7,8:948\n403#7,9:959\n412#7,8:971\n383#7,6:1002\n393#7,2:1009\n395#7,8:1014\n403#7,9:1025\n412#7,8:1037\n383#7,6:1069\n393#7,2:1076\n395#7,8:1081\n403#7,9:1092\n412#7,8:1104\n383#7,6:1140\n393#7,2:1147\n395#7,8:1152\n403#7,9:1163\n412#7,8:1175\n383#7,6:1202\n393#7,2:1209\n395#7,8:1214\n403#7,9:1225\n412#7,8:1237\n234#8,3:945\n237#8,3:968\n234#8,3:1011\n237#8,3:1034\n234#8,3:1078\n237#8,3:1101\n234#8,3:1149\n237#8,3:1172\n234#8,3:1211\n237#8,3:1234\n*S KotlinDebug\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n*L\n219#1:869,6\n289#1:886,6\n299#1:892,6\n325#1:899,3\n325#1:905,3\n357#1:908,6\n363#1:914,6\n693#1:922,8\n693#1:930,3\n693#1:933,2\n693#1:935\n693#1:979,11\n693#1:990,3\n693#1:993\n693#1:994\n700#1:995,2\n700#1:997,3\n700#1:1000,2\n700#1:1045,2\n700#1:1047,3\n700#1:1050\n707#1:1051,6\n739#1:1057,12\n739#1:1112,3\n739#1:1115\n746#1:1116,6\n762#1:1122,18\n762#1:1183,3\n762#1:1186\n762#1:1187\n769#1:1188,8\n769#1:1196,3\n769#1:1199,2\n769#1:1201\n769#1:1245,11\n769#1:1256,3\n769#1:1259\n769#1:1260\n785#1:1261,6\n114#1:860\n114#1:861,2\n196#1:867,2\n323#1:898\n693#1:956\n693#1:957,2\n701#1:1022\n701#1:1023,2\n740#1:1089\n740#1:1090,2\n762#1:1160\n762#1:1161,2\n769#1:1222\n769#1:1223,2\n125#1:863\n126#1:864\n176#1:865\n188#1:866\n223#1:875,11\n351#1:902\n351#1:903,2\n405#1:920\n405#1:921\n693#1:942\n701#1:1008\n740#1:1075\n762#1:1146\n769#1:1208\n693#1:936,6\n693#1:943,2\n693#1:948,8\n693#1:959,9\n693#1:971,8\n701#1:1002,6\n701#1:1009,2\n701#1:1014,8\n701#1:1025,9\n701#1:1037,8\n740#1:1069,6\n740#1:1076,2\n740#1:1081,8\n740#1:1092,9\n740#1:1104,8\n762#1:1140,6\n762#1:1147,2\n762#1:1152,8\n762#1:1163,9\n762#1:1175,8\n769#1:1202,6\n769#1:1209,2\n769#1:1214,8\n769#1:1225,9\n769#1:1237,8\n693#1:945,3\n693#1:968,3\n701#1:1011,3\n701#1:1034,3\n740#1:1078,3\n740#1:1101,3\n762#1:1149,3\n762#1:1172,3\n769#1:1211,3\n769#1:1234,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u0002mnB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u0010H\u0002J\u0018\u0010(\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002JE\u0010,\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020\u001901H\u0080\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u00082\u00103J@\u00104\u001a\u00060\rR\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00105\u001a\u00020\u00062\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u00108\u001a\u00020\u0019H\u0002J\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020;0:J!\u0010<\u001a\u00020\u00192\n\u0010.\u001a\u0006\u0012\u0002\u0008\u00030/H\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u0015\u0010<\u001a\u00020\u00192\u0006\u0010?\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008@J.\u0010\u0011\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/H\u0080\u0008\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008A\u0010BJ%\u0010C\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008EJC\u0010C\u001a\u00020D\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008F\u0010GJ-\u0010C\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008EJ%\u0010H\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008IJ\u0018\u0010J\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u0010H\u0002J\u0018\u0010K\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0006\u0010L\u001a\u00020DJ\r\u0010M\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008NJ\u0008\u0010O\u001a\u00020\u0010H\u0002J\u0018\u0010P\u001a\u00020D2\u0006\u0010Q\u001a\u00020\u00102\u0006\u0010R\u001a\u00020\u001fH\u0002J\u0010\u0010S\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002J\r\u0010T\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008UJ\u0006\u0010V\u001a\u00020DJ\r\u0010W\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008XJ<\u0010Y\u001a\u00020D2\u0006\u00105\u001a\u00020\u00062\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010#\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0019H\u0002J\u0008\u0010Z\u001a\u00020DH\u0002J\u0006\u0010[\u001a\u00020DJ.\u0010#\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/H\u0080\u0008\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\\\u0010BJ%\u0010]\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008^JC\u0010]\u001a\u00020D\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008_\u0010GJ-\u0010]\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008^J\u0008\u0010`\u001a\u00020aH\u0016J\u0010\u0010b\u001a\u00020\u00102\u0006\u0010c\u001a\u00020\u0010H\u0002J\u0015\u0010d\u001a\u00020D2\u0006\u0010e\u001a\u00020fH\u0000\u00a2\u0006\u0002\u0008gJ \u0010h\u001a\u00020D2\u0006\u0010i\u001a\u00020\u000b2\u0006\u0010j\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0010H\u0002J\u0017\u0010k\u001a\u00020D2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0000\u00a2\u0006\u0002\u0008lR\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0018\u00010\rR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u001f@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0013\u0082\u0002\u0012\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006o"
    }
    d2 = {
        "Landroidx/compose/ui/node/NodeChain;",
        "",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "aggregateChildKindSet",
        "",
        "getAggregateChildKindSet",
        "()I",
        "buffer",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/Modifier$Element;",
        "cachedDiffer",
        "Landroidx/compose/ui/node/NodeChain$Differ;",
        "current",
        "<set-?>",
        "Landroidx/compose/ui/Modifier$Node;",
        "head",
        "getHead$ui_release",
        "()Landroidx/compose/ui/Modifier$Node;",
        "innerCoordinator",
        "Landroidx/compose/ui/node/InnerNodeCoordinator;",
        "getInnerCoordinator$ui_release",
        "()Landroidx/compose/ui/node/InnerNodeCoordinator;",
        "isUpdating",
        "",
        "()Z",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "logger",
        "Landroidx/compose/ui/node/NodeChain$Logger;",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "outerCoordinator",
        "getOuterCoordinator$ui_release",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "tail",
        "getTail$ui_release",
        "createAndInsertNodeAsChild",
        "element",
        "parent",
        "createAndInsertNodeAsParent",
        "child",
        "detachAndRemoveNode",
        "node",
        "firstFromHead",
        "T",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "block",
        "Lkotlin/Function1;",
        "firstFromHead-aLcG6gQ$ui_release",
        "(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "getDiffer",
        "offset",
        "before",
        "after",
        "shouldAttachOnInsert",
        "getModifierInfo",
        "",
        "Landroidx/compose/ui/layout/ModifierInfo;",
        "has",
        "has-H91voCI$ui_release",
        "(I)Z",
        "mask",
        "has$ui_release",
        "head-H91voCI$ui_release",
        "(I)Ljava/lang/Object;",
        "headToTail",
        "",
        "headToTail$ui_release",
        "headToTail-aLcG6gQ$ui_release",
        "(ILkotlin/jvm/functions/Function1;)V",
        "headToTailExclusive",
        "headToTailExclusive$ui_release",
        "insertChild",
        "insertParent",
        "markAsAttached",
        "markAsDetached",
        "markAsDetached$ui_release",
        "padChain",
        "propagateCoordinator",
        "start",
        "coordinator",
        "removeNode",
        "resetState",
        "resetState$ui_release",
        "runAttachLifecycle",
        "runDetachLifecycle",
        "runDetachLifecycle$ui_release",
        "structuralUpdate",
        "syncAggregateChildKindSet",
        "syncCoordinators",
        "tail-H91voCI$ui_release",
        "tailToHead",
        "tailToHead$ui_release",
        "tailToHead-aLcG6gQ$ui_release",
        "toString",
        "",
        "trimChain",
        "paddedHead",
        "updateFrom",
        "m",
        "Landroidx/compose/ui/Modifier;",
        "updateFrom$ui_release",
        "updateNode",
        "prev",
        "next",
        "useLogger",
        "useLogger$ui_release",
        "Differ",
        "Logger",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private buffer:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

.field private current:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;"
        }
    .end annotation
.end field

.field private head:Landroidx/compose/ui/Modifier$Node;

.field private final innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private logger:Landroidx/compose/ui/node/NodeChain$Logger;

.field private outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

.field private final tail:Landroidx/compose/ui/Modifier$Node;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .registers 4
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    const-string/jumbo v0, "layoutNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 36
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/InnerNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 37
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v1, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getTail()Landroidx/compose/ui/node/TailModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    .line 40
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 35
    return-void
.end method

.method public static final synthetic access$createAndInsertNodeAsChild(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "element"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "parent"    # Landroidx/compose/ui/Modifier$Node;

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detachAndRemoveNode(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 35
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I
    .registers 2
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;

    .line 35
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getLogger$p(Landroidx/compose/ui/node/NodeChain;)Landroidx/compose/ui/node/NodeChain$Logger;
    .registers 2
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;

    .line 35
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    return-object v0
.end method

.method public static final synthetic access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "start"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "coordinator"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method

.method public static final synthetic access$updateNode(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "prev"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "next"    # Landroidx/compose/ui/Modifier$Element;
    .param p3, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    return-void
.end method

.method private final createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 7
    .param p1, "element"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "parent"    # Landroidx/compose/ui/Modifier$Node;

    .line 621
    nop

    .line 622
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 623
    .local v2, "$i$a$-also-NodeChain$createAndInsertNodeAsChild$node$1":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/Modifier$Node;->setKindSet$ui_release(I)V

    .line 624
    nop

    .line 622
    .end local v1    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$a$-also-NodeChain$createAndInsertNodeAsChild$node$1":I
    goto :goto_1e

    .line 625
    :cond_17
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/Modifier$Element;)V

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 621
    :goto_1e
    nop

    .line 627
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2f

    .line 630
    invoke-virtual {v0, v2}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 631
    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/node/NodeChain;->insertChild(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    return-object v1

    .line 627
    :cond_2f
    const/4 v1, 0x0

    .line 628
    .local v1, "$i$a$-check-NodeChain$createAndInsertNodeAsChild$1":I
    nop

    .line 627
    .end local v1    # "$i$a$-check-NodeChain$createAndInsertNodeAsChild$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A ModifierNodeElement cannot return an already attached node from create() "

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final createAndInsertNodeAsParent(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 7
    .param p1, "element"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "child"    # Landroidx/compose/ui/Modifier$Node;

    .line 583
    nop

    .line 584
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 585
    .local v2, "$i$a$-also-NodeChain$createAndInsertNodeAsParent$node$1":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/Modifier$Node;->setKindSet$ui_release(I)V

    .line 586
    nop

    .line 584
    .end local v1    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$a$-also-NodeChain$createAndInsertNodeAsParent$node$1":I
    goto :goto_1e

    .line 587
    :cond_17
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/Modifier$Element;)V

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 583
    :goto_1e
    nop

    .line 589
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2f

    .line 590
    invoke-virtual {v0, v2}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 591
    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/node/NodeChain;->insertParent(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    return-object v1

    .line 589
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 3
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 542
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 546
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateRemovedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 547
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui_release()V

    .line 548
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    .line 550
    :cond_f
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChain;->removeNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method private final getAggregateChildKindSet()I
    .registers 2

    .line 43
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    return v0
.end method

.method private final getDiffer(Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)Landroidx/compose/ui/node/NodeChain$Differ;
    .registers 15
    .param p1, "head"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "offset"    # I
    .param p3, "before"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p4, "after"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p5, "shouldAttachOnInsert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier$Node;",
            "I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;Z)",
            "Landroidx/compose/ui/node/NodeChain$Differ;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 377
    .local v0, "current":Landroidx/compose/ui/node/NodeChain$Differ;
    if-nez v0, :cond_1a

    .line 378
    new-instance v8, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 379
    nop

    .line 380
    nop

    .line 381
    nop

    .line 382
    nop

    .line 384
    nop

    .line 378
    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/NodeChain$Differ;-><init>(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V

    .line 385
    nop

    .line 859
    .local v1, "it":Landroidx/compose/ui/node/NodeChain$Differ;
    const/4 v2, 0x0

    .line 385
    .local v2, "$i$a$-also-NodeChain$getDiffer$1":I
    iput-object v1, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    .end local v1    # "it":Landroidx/compose/ui/node/NodeChain$Differ;
    .end local v2    # "$i$a$-also-NodeChain$getDiffer$1":I
    goto :goto_2d

    .line 387
    :cond_1a
    move-object v1, v0

    .restart local v1    # "it":Landroidx/compose/ui/node/NodeChain$Differ;
    const/4 v2, 0x0

    .line 388
    .local v2, "$i$a$-also-NodeChain$getDiffer$2":I
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/NodeChain$Differ;->setNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 389
    invoke-virtual {v1, p2}, Landroidx/compose/ui/node/NodeChain$Differ;->setOffset(I)V

    .line 390
    invoke-virtual {v1, p3}, Landroidx/compose/ui/node/NodeChain$Differ;->setBefore(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 391
    invoke-virtual {v1, p4}, Landroidx/compose/ui/node/NodeChain$Differ;->setAfter(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 392
    invoke-virtual {v1, p5}, Landroidx/compose/ui/node/NodeChain$Differ;->setShouldAttachOnInsert(Z)V

    .line 393
    nop

    .line 387
    .end local v1    # "it":Landroidx/compose/ui/node/NodeChain$Differ;
    .end local v2    # "$i$a$-also-NodeChain$getDiffer$2":I
    move-object v8, v0

    .line 377
    :goto_2d
    return-object v8
.end method

.method private final insertChild(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 4
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "parent"    # Landroidx/compose/ui/Modifier$Node;

    .line 647
    invoke-virtual {p2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 648
    .local v0, "theChild":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_c

    .line 649
    invoke-virtual {v0, p1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 650
    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 652
    :cond_c
    invoke-virtual {p2, p1}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 653
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 654
    return-object p1
.end method

.method private final insertParent(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 4
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "child"    # Landroidx/compose/ui/Modifier$Node;

    .line 607
    invoke-virtual {p2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 608
    .local v0, "theParent":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_c

    .line 609
    invoke-virtual {v0, p1}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 610
    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 612
    :cond_c
    invoke-virtual {p2, p1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 613
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 614
    return-object p1
.end method

.method private final isUpdating()Z
    .registers 3

    .line 42
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private final padChain()Landroidx/compose/ui/Modifier$Node;
    .registers 3

    .line 64
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_26

    .line 65
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 66
    .local v0, "currentHead":Landroidx/compose/ui/Modifier$Node;
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 67
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 68
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    return-object v1

    .line 859
    .end local v0    # "currentHead":Landroidx/compose/ui/Modifier$Node;
    :cond_26
    const/4 v0, 0x0

    .line 64
    .local v0, "$i$a$-check-NodeChain$padChain$1":I
    nop

    .end local v0    # "$i$a$-check-NodeChain$padChain$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "padChain called on already padded chain"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .registers 8
    .param p1, "start"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "coordinator"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 398
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 399
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v0, :cond_3d

    .line 400
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-ne v0, v1, :cond_20

    .line 401
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p2, v1}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 402
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 403
    goto :goto_3d

    .line 405
    :cond_20
    const/4 v1, 0x0

    .line 920
    .local v1, "$i$f$getLayout-OLwlOKw":I
    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 405
    .end local v1    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v1, "kind$iv":I
    move-object v2, v0

    .local v2, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 921
    .local v3, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    .line 405
    .end local v1    # "kind$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_33
    if-nez v4, :cond_3d

    .line 406
    invoke-virtual {v0, p2}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 407
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_4

    .line 409
    :cond_3d
    :goto_3d
    return-void
.end method

.method private final removeNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 5
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 566
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 567
    .local v0, "child":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 568
    .local v1, "parent":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 569
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 570
    invoke-virtual {p1, v2}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 572
    :cond_11
    if-eqz v1, :cond_19

    .line 573
    invoke-virtual {v1, v0}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 574
    invoke-virtual {p1, v2}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 576
    :cond_19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method private final structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .registers 12
    .param p1, "offset"    # I
    .param p2, "before"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p3, "after"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p4, "tail"    # Landroidx/compose/ui/Modifier$Node;
    .param p5, "shouldAttachOnInsert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/ui/Modifier$Node;",
            "Z)V"
        }
    .end annotation

    .line 536
    move-object v0, p0

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->getDiffer(Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)Landroidx/compose/ui/node/NodeChain$Differ;

    move-result-object v0

    .line 537
    .local v0, "differ":Landroidx/compose/ui/node/NodeChain$Differ;
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    sub-int/2addr v2, p1

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DiffCallback;

    invoke-static {v1, v2, v3}, Landroidx/compose/ui/node/MyersDiffKt;->executeDiff(IILandroidx/compose/ui/node/DiffCallback;)V

    .line 538
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->syncAggregateChildKindSet()V

    .line 539
    return-void
.end method

.method private final syncAggregateChildKindSet()V
    .registers 4

    .line 272
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 273
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x0

    .line 274
    .local v1, "aggregateChildKindSet":I
    :goto_7
    if-eqz v0, :cond_1c

    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v2

    if-eq v0, v2, :cond_1c

    .line 275
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    or-int/2addr v1, v2

    .line 276
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setAggregateChildKindSet$ui_release(I)V

    .line 277
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_7

    .line 279
    :cond_1c
    return-void
.end method

.method private final trimChain(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .registers 8
    .param p1, "paddedHead"    # Landroidx/compose/ui/Modifier$Node;

    .line 72
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_4d

    .line 73
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    .line 74
    .local v0, "result":Landroidx/compose/ui/Modifier$Node;
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 75
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 76
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setAggregateChildKindSet$ui_release(I)V

    .line 77
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 78
    # getter for: Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v3

    if-eq v0, v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    if-eqz v1, :cond_3e

    .line 79
    return-object v0

    .line 859
    :cond_3e
    const/4 v1, 0x0

    .line 78
    .local v1, "$i$a$-check-NodeChain$trimChain$2":I
    nop

    .end local v1    # "$i$a$-check-NodeChain$trimChain$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "trimChain did not update the head"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    .end local v0    # "result":Landroidx/compose/ui/Modifier$Node;
    :cond_4d
    const/4 v0, 0x0

    .line 72
    .local v0, "$i$a$-check-NodeChain$trimChain$1":I
    nop

    .end local v0    # "$i$a$-check-NodeChain$trimChain$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "trimChain called on already trimmed chain"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .registers 6
    .param p1, "prev"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "next"    # Landroidx/compose/ui/Modifier$Element;
    .param p3, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 662
    nop

    .line 663
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    instance-of v0, p2, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_1e

    .line 664
    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/node/ModifierNodeElement;

    # invokes: Landroidx/compose/ui/node/NodeChainKt;->updateUnsafe(Landroidx/compose/ui/node/ModifierNodeElement;Landroidx/compose/ui/Modifier$Node;)V
    invoke-static {v0, p3}, Landroidx/compose/ui/node/NodeChainKt;->access$updateUnsafe(Landroidx/compose/ui/node/ModifierNodeElement;Landroidx/compose/ui/Modifier$Node;)V

    .line 665
    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 669
    invoke-static {p3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_35

    .line 671
    :cond_1a
    invoke-virtual {p3, v1}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    goto :goto_35

    .line 674
    :cond_1e
    instance-of v0, p3, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v0, :cond_36

    .line 675
    move-object v0, p3

    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/BackwardsCompatNode;->setElement(Landroidx/compose/ui/Modifier$Element;)V

    .line 677
    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 678
    invoke-static {p3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_35

    .line 680
    :cond_32
    invoke-virtual {p3, v1}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 685
    :goto_35
    return-void

    .line 680
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 683
    const-string/jumbo v1, "Unknown Modifier.Node type"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic firstFromHead-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 33
    .param p1, "type"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string/jumbo v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 693
    .local v1, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v3, 0x0

    .line 922
    .local v3, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move/from16 v4, p1

    .local v4, "mask$iv$iv":I
    move-object v5, v2

    .local v5, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v6, 0x0

    .line 928
    .local v6, "$i$f$headToTail$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {v5}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v7

    and-int/2addr v7, v4

    if-eqz v7, :cond_16c

    .line 929
    move-object v7, v5

    .local v7, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v8, 0x0

    .line 930
    .local v8, "$i$f$headToTail$ui_release":I
    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 931
    .local v9, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1d
    if-eqz v9, :cond_161

    .line 932
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 933
    .local v11, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v4

    if-eqz v12, :cond_13c

    .line 934
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 935
    .local v13, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    move-object v14, v12

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 936
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 937
    .local v16, "stack$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v29, v17

    move/from16 v17, v1

    move-object/from16 v1, v29

    .line 938
    .local v1, "node$iv$iv":Ljava/lang/Object;
    .local v17, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    :goto_3c
    if-eqz v1, :cond_132

    .line 939
    move-object/from16 v18, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v18, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x3

    move/from16 v19, v3

    .end local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .local v19, "$i$f$headToTail-aLcG6gQ$ui_release":I
    const-string/jumbo v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v1, Ljava/lang/Object;

    if-eqz v2, :cond_63

    .line 940
    move-object v2, v1

    .local v2, "it":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 694
    .local v3, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1":I
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_5c

    return-object v2

    .line 695
    :cond_5c
    nop

    .line 940
    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1":I
    move-object/from16 v27, v5

    move/from16 v28, v6

    goto/16 :goto_11e

    .line 941
    :cond_63
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 942
    .local v3, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v20

    and-int v20, v20, p1

    if-eqz v20, :cond_71

    const/4 v2, 0x1

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    .line 941
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_72
    if-eqz v2, :cond_11a

    instance-of v2, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_11a

    .line 943
    const/4 v2, 0x0

    .line 944
    .local v2, "count$iv$iv":I
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 945
    .local v20, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 946
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_82
    if-eqz v21, :cond_105

    .line 947
    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 948
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v0

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 942
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, p1

    if-eqz v25, :cond_99

    const/16 v23, 0x1

    goto :goto_9b

    :cond_99
    const/16 v23, 0x0

    .line 948
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_9b
    if-eqz v23, :cond_f0

    .line 949
    add-int/lit8 v2, v2, 0x1

    .line 950
    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v2, v3, :cond_ab

    .line 951
    move-object v1, v0

    move-object/from16 v27, v5

    move/from16 v28, v6

    const/4 v6, 0x0

    goto :goto_f7

    .line 955
    :cond_ab
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_cc

    const/4 v3, 0x0

    .line 956
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 957
    move/from16 v24, v2

    .end local v2    # "count$iv$iv":I
    .local v24, "count$iv$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 958
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v27, v5

    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v27, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v5, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$headToTail$ui_release":I
    .local v28, "$i$f$headToTail$ui_release":I
    invoke-direct {v3, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 956
    .end local v2    # "capacity$iv$iv$iv$iv":I
    .end local v25    # "$i$f$MutableVector":I
    nop

    .end local v26    # "$i$f$mutableVectorOf":I
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_d3

    .line 955
    .end local v24    # "count$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .local v2, "count$iv$iv":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_cc
    move/from16 v24, v2

    move-object/from16 v27, v5

    move/from16 v28, v6

    const/4 v6, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .restart local v24    # "count$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    :goto_d3
    move-object/from16 v16, v3

    .line 959
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 960
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_e4

    .line 961
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_e3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_e3
    const/4 v1, 0x0

    .line 964
    :cond_e4
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_ed

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 967
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_ed
    move/from16 v2, v24

    goto :goto_f7

    .line 948
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "count$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .local v2, "count$iv$iv":I
    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_f0
    move-object/from16 v23, v3

    move-object/from16 v27, v5

    move/from16 v28, v6

    const/4 v6, 0x0

    .line 967
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .restart local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    :goto_f7
    nop

    .line 947
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 968
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v3, v23

    move-object/from16 v5, v27

    move/from16 v6, v28

    goto/16 :goto_82

    .line 970
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .restart local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_105
    move-object/from16 v23, v3

    move-object/from16 v27, v5

    move/from16 v28, v6

    .line 971
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .end local v20    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    const/4 v0, 0x1

    if-ne v2, v0, :cond_11e

    .line 973
    move-object/from16 v0, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v5, v27

    move/from16 v6, v28

    goto/16 :goto_3c

    .line 941
    .end local v2    # "count$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_11a
    move-object/from16 v27, v5

    move/from16 v28, v6

    .line 976
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    :cond_11e
    :goto_11e
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    # invokes: Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v0, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v5, v27

    move/from16 v6, v28

    goto/16 :goto_3c

    .line 978
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v3, "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_132
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v27, v5

    move/from16 v28, v6

    .line 979
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    nop

    .line 934
    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    goto :goto_146

    .line 933
    .end local v17    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .local v1, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_13c
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v27, v5

    move/from16 v28, v6

    .line 988
    .end local v1    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .restart local v17    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    :goto_146
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_176

    .line 989
    nop

    .line 932
    .end local v10    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 990
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v5, v27

    move/from16 v6, v28

    goto/16 :goto_1d

    .line 992
    .end local v17    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .restart local v1    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_161
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v27, v5

    move/from16 v28, v6

    .line 993
    .end local v1    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .end local v7    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v8    # "$i$f$headToTail$ui_release":I
    .end local v9    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    goto :goto_176

    .line 928
    .end local v17    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .restart local v1    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v6    # "$i$f$headToTail$ui_release":I
    :cond_16c
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v27, v5

    move/from16 v28, v6

    .line 994
    .end local v1    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "mask$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .restart local v17    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    :cond_176
    :goto_176
    nop

    .line 696
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHead$ui_release()Landroidx/compose/ui/Modifier$Node;
    .registers 2

    .line 40
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final getInnerCoordinator$ui_release()Landroidx/compose/ui/node/InnerNodeCoordinator;
    .registers 2

    .line 36
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    return-object v0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .registers 2

    .line 35
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final getModifierInfo()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;"
        }
    .end annotation

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 323
    .local v1, "current":Landroidx/compose/runtime/collection/MutableVector;
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .local v2, "capacity$iv":I
    const/4 v3, 0x0

    .line 898
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/ui/layout/ModifierInfo;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 323
    .end local v2    # "capacity$iv":I
    .end local v3    # "$i$f$MutableVector":I
    move-object v2, v4

    .line 324
    .local v2, "infoList":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 325
    .local v3, "i":I
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 899
    .local v5, "$i$f$headToTailExclusive$ui_release":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 900
    .local v7, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_21
    if-eqz v7, :cond_8f

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-eq v7, v8, :cond_8f

    .line 901
    move-object v8, v7

    .local v8, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 326
    .local v9, "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v10

    if-eqz v10, :cond_82

    .line 335
    .local v10, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v10}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v11

    .line 336
    .local v11, "currentNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    iget-object v12, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-virtual {v12}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v12

    move-object v13, v12

    .local v13, "it":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v14, 0x0

    .line 347
    .local v14, "$i$a$-takeIf-NodeChain$getModifierInfo$1$innerNodeLayer$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 348
    .local v15, "localChild":Landroidx/compose/ui/Modifier$Node;
    iget-object v6, v0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    if-ne v15, v6, :cond_51

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eq v6, v0, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    .line 336
    .end local v13    # "it":Landroidx/compose/ui/node/OwnedLayer;
    .end local v14    # "$i$a$-takeIf-NodeChain$getModifierInfo$1$innerNodeLayer$1":I
    .end local v15    # "localChild":Landroidx/compose/ui/Modifier$Node;
    :goto_52
    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    const/4 v12, 0x0

    :goto_56
    move-object v0, v12

    .line 350
    .local v0, "innerNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    if-nez v11, :cond_5b

    move-object v6, v0

    goto :goto_5c

    :cond_5b
    move-object v6, v11

    .line 351
    .local v6, "layer":Landroidx/compose/ui/node/OwnedLayer;
    :goto_5c
    new-instance v12, Landroidx/compose/ui/layout/ModifierInfo;

    add-int/lit8 v13, v3, 0x1

    .local v3, "index$iv":I
    .local v13, "i":I
    move-object v14, v1

    .local v14, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v15, 0x0

    .line 902
    .local v15, "$i$f$get":I
    invoke-virtual {v14}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v16

    aget-object v3, v16, v3

    .end local v3    # "index$iv":I
    .end local v14    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v15    # "$i$f$get":I
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 351
    move-object v14, v10

    check-cast v14, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-direct {v12, v3, v14, v6}, Landroidx/compose/ui/layout/ModifierInfo;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LayoutCoordinates;Ljava/lang/Object;)V

    move-object v3, v12

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v12, v2

    .local v12, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v14, 0x0

    .line 903
    .local v14, "$i$f$plusAssign":I
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 904
    nop

    .line 352
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v12    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v14    # "$i$f$plusAssign":I
    nop

    .line 901
    .end local v0    # "innerNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v6    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v8    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    .end local v10    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v11    # "currentNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    nop

    .line 905
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v13

    goto :goto_21

    .line 326
    .end local v13    # "i":I
    .local v3, "i":I
    .restart local v8    # "node":Landroidx/compose/ui/Modifier$Node;
    .restart local v9    # "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Required value was null."

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    .end local v8    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    :cond_8f
    nop

    .line 353
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTailExclusive$ui_release":I
    .end local v7    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .registers 2

    .line 37
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getTail$ui_release()Landroidx/compose/ui/Modifier$Node;
    .registers 2

    .line 39
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final has$ui_release(I)Z
    .registers 3
    .param p1, "mask"    # I

    .line 777
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final has-H91voCI$ui_release(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 775
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final synthetic head-H91voCI$ui_release(I)Ljava/lang/Object;
    .registers 32
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 769
    .local v0, "$i$f$head-H91voCI$ui_release":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1188
    .local v2, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move/from16 v3, p1

    .local v3, "mask$iv$iv":I
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 1194
    .local v5, "$i$f$headToTail$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {v4}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_155

    .line 1195
    move-object v6, v4

    .local v6, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1196
    .local v7, "$i$f$headToTail$ui_release":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1197
    .local v8, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_15
    if-eqz v8, :cond_148

    .line 1198
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1199
    .local v10, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_121

    .line 1200
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1201
    .local v12, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    move-object v13, v11

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1202
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 1203
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v29, v16

    move/from16 v16, v0

    move-object/from16 v0, v29

    .line 1204
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$i$f$head-H91voCI$ui_release":I
    :goto_33
    if-eqz v0, :cond_115

    .line 1205
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x3

    move/from16 v18, v2

    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .local v18, "$i$f$headToTail-aLcG6gQ$ui_release":I
    const-string/jumbo v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_47

    .line 1206
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 770
    .local v2, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1":I
    return-object v1

    .line 1207
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1":I
    :cond_47
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1208
    .local v2, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, p1

    move-object/from16 v20, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v19, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    .line 1207
    .end local v2    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_58
    if-eqz v2, :cond_fc

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_fc

    .line 1209
    const/4 v2, 0x0

    .line 1210
    .local v2, "count$iv$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1211
    .local v20, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1212
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_69
    if-eqz v21, :cond_e7

    .line 1213
    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1214
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v1

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1208
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, p1

    if-eqz v25, :cond_80

    const/16 v23, 0x1

    goto :goto_82

    :cond_80
    const/16 v23, 0x0

    .line 1214
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_82
    if-eqz v23, :cond_d3

    .line 1215
    add-int/lit8 v2, v2, 0x1

    .line 1216
    move-object/from16 v23, v4

    const/4 v4, 0x1

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v23, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    if-ne v2, v4, :cond_92

    .line 1217
    move-object v0, v1

    move/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x0

    goto :goto_da

    .line 1221
    :cond_92
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v4, :cond_b2

    const/4 v4, 0x0

    .line 1222
    .local v4, "$i$f$mutableVectorOf":I
    nop

    .line 1223
    move/from16 v24, v2

    .end local v2    # "count$iv$iv":I
    .local v24, "count$iv$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 1224
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v4

    .end local v4    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v5

    .end local v5    # "$i$f$headToTail$ui_release":I
    .local v27, "$i$f$headToTail$ui_release":I
    new-array v5, v2, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1222
    .end local v2    # "capacity$iv$iv$iv$iv":I
    .end local v25    # "$i$f$MutableVector":I
    nop

    .end local v26    # "$i$f$mutableVectorOf":I
    move-object v2, v4

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_b9

    .line 1221
    .end local v24    # "count$iv$iv":I
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "count$iv$iv":I
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b2
    move/from16 v24, v2

    move/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "count$iv$iv":I
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_b9
    move-object v15, v4

    .line 1225
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1226
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_c8

    .line 1227
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_c7

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_c7
    const/4 v0, 0x0

    .line 1230
    :cond_c8
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_d0

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d0
    move/from16 v2, v24

    goto :goto_da

    .line 1214
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "count$iv$iv":I
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "count$iv$iv":I
    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d3
    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .line 1233
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_da
    nop

    .line 1213
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1234
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto :goto_69

    .line 1236
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e7
    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1237
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_102

    .line 1239
    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_33

    .line 1207
    .end local v2    # "count$iv$iv":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_fc
    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1242
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_102
    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    # invokes: Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_33

    .line 1244
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_115
    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1245
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 1200
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    goto :goto_12d

    .line 1199
    .end local v16    # "$i$f$head-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "$i$f$head-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_121
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1254
    .end local v0    # "$i$f$head-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v16    # "$i$f$head-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_12d
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_15f

    .line 1255
    nop

    .line 1198
    .end local v9    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 1256
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_15

    .line 1258
    .end local v16    # "$i$f$head-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "$i$f$head-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_148
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1259
    .end local v0    # "$i$f$head-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui_release":I
    .end local v8    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$head-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    goto :goto_15f

    .line 1194
    .end local v16    # "$i$f$head-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .restart local v0    # "$i$f$head-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    :cond_155
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    .line 1260
    .end local v0    # "$i$f$head-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .restart local v16    # "$i$f$head-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    :cond_15f
    :goto_15f
    nop

    .line 772
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public final headToTail$ui_release(ILkotlin/jvm/functions/Function1;)V
    .registers 10
    .param p1, "mask"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 706
    .local v0, "$i$f$headToTail$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_f

    return-void

    .line 707
    :cond_f
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1051
    .local v2, "$i$f$headToTail$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .line 1052
    .local v3, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_15
    if-eqz v3, :cond_32

    .line 1053
    move-object v4, v3

    .local v4, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v5, 0x0

    .line 708
    .local v5, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, p1

    if-eqz v6, :cond_23

    .line 709
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_23
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, p1

    if-nez v6, :cond_2b

    return-void

    .line 712
    :cond_2b
    nop

    .line 1053
    .end local v4    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2":I
    nop

    .line 1054
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_15

    .line 1056
    :cond_32
    nop

    .line 713
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail$ui_release":I
    .end local v3    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final headToTail$ui_release(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 723
    .local v0, "$i$f$headToTail$ui_release":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 724
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    if-eqz v1, :cond_15

    .line 725
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_b

    .line 728
    :cond_15
    return-void
.end method

.method public final synthetic headToTail-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)V
    .registers 30
    .param p1, "type"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string/jumbo v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 700
    .local v1, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 995
    .local v4, "$i$f$headToTail$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {v3}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_149

    .line 996
    move-object v5, v3

    .local v5, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v6, 0x0

    .line 997
    .local v6, "$i$f$headToTail$ui_release":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 998
    .local v7, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1b
    if-eqz v7, :cond_140

    .line 999
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .local v8, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 1000
    .local v9, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v2

    if-eqz v10, :cond_11f

    .line 1001
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 701
    .local v11, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1":I
    move-object v12, v10

    .local v12, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 1002
    .local v13, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v14, 0x0

    .line 1003
    .local v14, "stack$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "node$iv":Ljava/lang/Object;
    move-object v15, v12

    .line 1004
    :goto_31
    if-eqz v15, :cond_115

    .line 1005
    move/from16 v16, v1

    .end local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .local v16, "$i$f$headToTail-aLcG6gQ$ui_release":I
    const/4 v1, 0x3

    move-object/from16 v17, v3

    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const-string/jumbo v3, "T"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v15, Ljava/lang/Object;

    if-eqz v1, :cond_4b

    .line 1006
    invoke-interface {v0, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_102

    .line 1007
    :cond_4b
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 1008
    .local v3, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, p1

    if-eqz v18, :cond_59

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    .line 1007
    .end local v1    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5a
    if-eqz v1, :cond_fe

    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_fe

    .line 1009
    const/4 v1, 0x0

    .line 1010
    .local v1, "count$iv":I
    move-object v3, v15

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .local v3, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 1011
    .local v18, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1012
    .local v19, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6a
    if-eqz v19, :cond_e9

    .line 1013
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1014
    .local v20, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v21, v0

    .local v21, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1008
    .local v22, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v23

    and-int v23, v23, p1

    if-eqz v23, :cond_81

    const/16 v21, 0x1

    goto :goto_83

    :cond_81
    const/16 v21, 0x0

    .line 1014
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_83
    if-eqz v21, :cond_d5

    .line 1015
    add-int/lit8 v1, v1, 0x1

    .line 1016
    move-object/from16 v21, v3

    const/4 v3, 0x1

    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v21, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v1, v3, :cond_93

    .line 1017
    move-object v15, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    const/4 v5, 0x0

    goto :goto_dc

    .line 1021
    :cond_93
    move-object v3, v14

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_b3

    const/4 v3, 0x0

    .line 1022
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 1023
    move/from16 v22, v1

    .end local v1    # "count$iv":I
    .local v22, "count$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 1024
    .local v23, "$i$f$MutableVector":I
    move/from16 v24, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v24, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v25, v4

    .end local v4    # "$i$f$headToTail$ui_release":I
    .local v25, "$i$f$headToTail$ui_release":I
    new-array v4, v1, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v26, v5

    const/4 v5, 0x0

    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v26, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1022
    .end local v1    # "capacity$iv$iv$iv":I
    .end local v23    # "$i$f$MutableVector":I
    nop

    .end local v24    # "$i$f$mutableVectorOf":I
    move-object v1, v3

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_ba

    .line 1021
    .end local v22    # "count$iv":I
    .end local v25    # "$i$f$headToTail$ui_release":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "count$iv":I
    .restart local v4    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b3
    move/from16 v22, v1

    move/from16 v25, v4

    move-object/from16 v26, v5

    const/4 v5, 0x0

    .end local v1    # "count$iv":I
    .end local v4    # "$i$f$headToTail$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v22    # "count$iv":I
    .restart local v25    # "$i$f$headToTail$ui_release":I
    .restart local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_ba
    move-object v14, v3

    .line 1025
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 1026
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_ca

    .line 1027
    move-object v3, v14

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_c8

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_c8
    const/4 v3, 0x0

    move-object v15, v3

    .line 1030
    :cond_ca
    move-object v3, v14

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_d2

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1033
    .end local v1    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d2
    move/from16 v1, v22

    goto :goto_dc

    .line 1014
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "count$iv":I
    .end local v25    # "$i$f$headToTail$ui_release":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "count$iv":I
    .local v3, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d5
    move-object/from16 v21, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    const/4 v5, 0x0

    .line 1033
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v4    # "$i$f$headToTail$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v21    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v25    # "$i$f$headToTail$ui_release":I
    .restart local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_dc
    nop

    .line 1013
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1034
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move-object/from16 v3, v21

    move/from16 v4, v25

    move-object/from16 v5, v26

    goto :goto_6a

    .line 1036
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v25    # "$i$f$headToTail$ui_release":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e9
    move-object/from16 v21, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 1037
    .end local v3    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v4    # "$i$f$headToTail$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v19    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "$i$f$headToTail$ui_release":I
    .restart local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v0, 0x1

    if-ne v1, v0, :cond_102

    .line 1039
    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    goto/16 :goto_31

    .line 1007
    .end local v1    # "count$iv":I
    .end local v25    # "$i$f$headToTail$ui_release":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_fe
    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 1042
    .end local v4    # "$i$f$headToTail$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$headToTail$ui_release":I
    .restart local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_102
    :goto_102
    move-object v0, v14

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    # invokes: Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    goto/16 :goto_31

    .line 1044
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$headToTail$ui_release":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "$i$f$headToTail-aLcG6gQ$ui_release":I
    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_115
    move/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 702
    .end local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$headToTail$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v12    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v14    # "stack$iv":Ljava/lang/Object;
    .end local v15    # "node$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$headToTail$ui_release":I
    .restart local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 1001
    .end local v10    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1":I
    goto :goto_127

    .line 1000
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$headToTail$ui_release":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_11f
    move/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 1045
    .end local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$headToTail$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$headToTail$ui_release":I
    .restart local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_127
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_14f

    .line 1046
    nop

    .line 999
    .end local v8    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv":I
    nop

    .line 1047
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    goto/16 :goto_1b

    .line 1049
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$headToTail$ui_release":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$headToTail$ui_release":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_140
    move/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 1050
    .end local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$headToTail$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$headToTail$ui_release":I
    .end local v7    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$headToTail$ui_release":I
    goto :goto_14f

    .line 995
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$headToTail$ui_release":I
    .restart local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$headToTail$ui_release":I
    :cond_149
    move/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v25, v4

    .line 703
    .end local v1    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v2    # "mask$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$headToTail$ui_release":I
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    :cond_14f
    :goto_14f
    return-void
.end method

.method public final headToTailExclusive$ui_release(Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 731
    .local v0, "$i$f$headToTailExclusive$ui_release":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 732
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-eq v1, v2, :cond_1b

    .line 733
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_b

    .line 736
    :cond_1b
    return-void
.end method

.method public final markAsAttached()V
    .registers 6

    .line 289
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 886
    .local v1, "$i$f$headToTail$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 887
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_14

    .line 888
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 290
    .local v4, "$i$a$-headToTail$ui_release-NodeChain$markAsAttached$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui_release()V

    .line 291
    nop

    .line 888
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-headToTail$ui_release-NodeChain$markAsAttached$1":I
    nop

    .line 889
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_6

    .line 891
    :cond_14
    nop

    .line 292
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$headToTail$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final markAsDetached$ui_release()V
    .registers 7

    .line 357
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 908
    .local v1, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 909
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_1a

    .line 910
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 358
    .local v4, "$i$a$-tailToHead$ui_release-NodeChain$markAsDetached$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    .line 359
    :cond_13
    nop

    .line 910
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-tailToHead$ui_release-NodeChain$markAsDetached$1":I
    nop

    .line 911
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_6

    .line 913
    :cond_1a
    nop

    .line 360
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$tailToHead$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final resetState$ui_release()V
    .registers 13

    .line 219
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 869
    .local v1, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 870
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_1a

    .line 871
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 220
    .local v4, "$i$a$-tailToHead$ui_release-NodeChain$resetState$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->reset$ui_release()V

    .line 221
    :cond_13
    nop

    .line 871
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-tailToHead$ui_release-NodeChain$resetState$1":I
    nop

    .line 872
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_6

    .line 874
    :cond_1a
    nop

    .line 222
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$tailToHead$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_4c

    .local v0, "elements":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 223
    .local v1, "$i$a$-let-NodeChain$resetState$2":I
    move-object v2, v0

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 875
    .local v3, "$i$f$forEachIndexed":I
    nop

    .line 876
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 877
    .local v4, "size$iv":I
    if-lez v4, :cond_49

    .line 878
    const/4 v5, 0x0

    .line 879
    .local v5, "i$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v6

    .line 881
    .local v6, "content$iv":[Ljava/lang/Object;
    :cond_2e
    aget-object v7, v6, v5

    check-cast v7, Landroidx/compose/ui/Modifier$Element;

    .local v7, "element":Landroidx/compose/ui/Modifier$Element;
    move v8, v5

    .local v8, "i":I
    const/4 v9, 0x0

    .line 227
    .local v9, "$i$a$-forEachIndexed-NodeChain$resetState$2$1":I
    instance-of v10, v7, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    if-eqz v10, :cond_43

    .line 228
    new-instance v10, Landroidx/compose/ui/node/ForceUpdateElement;

    move-object v11, v7

    check-cast v11, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-direct {v10, v11}, Landroidx/compose/ui/node/ForceUpdateElement;-><init>(Landroidx/compose/ui/node/ModifierNodeElement;)V

    invoke-virtual {v0, v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_43
    nop

    .line 881
    .end local v7    # "element":Landroidx/compose/ui/Modifier$Element;
    .end local v8    # "i":I
    .end local v9    # "$i$a$-forEachIndexed-NodeChain$resetState$2$1":I
    nop

    .line 882
    add-int/lit8 v5, v5, 0x1

    .line 883
    if-lt v5, v4, :cond_2e

    .line 885
    .end local v5    # "i$iv":I
    .end local v6    # "content$iv":[Ljava/lang/Object;
    :cond_49
    nop

    .line 231
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v4    # "size$iv":I
    nop

    .line 222
    .end local v0    # "elements":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$a$-let-NodeChain$resetState$2":I
    nop

    .line 232
    :cond_4c
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->runDetachLifecycle$ui_release()V

    .line 233
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->markAsDetached$ui_release()V

    .line 234
    return-void
.end method

.method public final runAttachLifecycle()V
    .registers 7

    .line 299
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 892
    .local v1, "$i$f$headToTail$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 893
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_2d

    .line 894
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 300
    .local v4, "$i$a$-headToTail$ui_release-NodeChain$runAttachLifecycle$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui_release()V

    .line 301
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getInsertedNodeAwaitingAttachForInvalidation$ui_release()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 302
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 304
    :cond_16
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getUpdatedNodeAwaitingAttachForInvalidation$ui_release()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 305
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 311
    :cond_1f
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 312
    invoke-virtual {v3, v5}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 313
    nop

    .line 894
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-headToTail$ui_release-NodeChain$runAttachLifecycle$1":I
    nop

    .line 895
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_6

    .line 897
    :cond_2d
    nop

    .line 314
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$headToTail$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final runDetachLifecycle$ui_release()V
    .registers 7

    .line 363
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 914
    .local v1, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 915
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_1a

    .line 916
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 364
    .local v4, "$i$a$-tailToHead$ui_release-NodeChain$runDetachLifecycle$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui_release()V

    .line 365
    :cond_13
    nop

    .line 916
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-tailToHead$ui_release-NodeChain$runDetachLifecycle$1":I
    nop

    .line 917
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_6

    .line 919
    :cond_1a
    nop

    .line 366
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$tailToHead$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final syncCoordinators()V
    .registers 6

    .line 237
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 238
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 239
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    if-eqz v1, :cond_56

    .line 240
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v2

    .line 241
    .local v2, "layoutmod":Landroidx/compose/ui/node/LayoutModifierNode;
    if-eqz v2, :cond_4e

    .line 242
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 243
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 244
    .local v3, "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->getLayoutModifierNode()Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v4

    .line 245
    .local v4, "prevNode":Landroidx/compose/ui/node/LayoutModifierNode;
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui_release(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 246
    if-eq v4, v1, :cond_30

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->onLayoutModifierNodeChanged()V

    .line 247
    :cond_30
    nop

    .end local v3    # "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    .end local v4    # "prevNode":Landroidx/compose/ui/node/LayoutModifierNode;
    goto :goto_40

    .line 249
    :cond_32
    new-instance v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v3, v4, v2}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 250
    .restart local v3    # "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v1, v4}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 251
    nop

    .line 242
    .end local v3    # "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    :goto_40
    nop

    .line 253
    .local v3, "next":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 254
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setWrapped$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 255
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .end local v3    # "next":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    goto :goto_51

    .line 257
    :cond_4e
    invoke-virtual {v1, v0}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 259
    :goto_51
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .end local v2    # "layoutmod":Landroidx/compose/ui/node/LayoutModifierNode;
    goto :goto_a

    .line 261
    :cond_56
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 262
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 263
    return-void
.end method

.method public final synthetic tail-H91voCI$ui_release(I)Ljava/lang/Object;
    .registers 32
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 762
    .local v0, "$i$f$tail-H91voCI$ui_release":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1122
    .local v2, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    move/from16 v3, p1

    .local v3, "mask$iv$iv":I
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 1128
    .local v5, "$i$f$tailToHead$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {v4}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_14e

    .line 1129
    move-object v6, v4

    .local v6, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1137
    .local v7, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1138
    .local v8, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_15
    if-eqz v8, :cond_141

    .line 1139
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1130
    .local v10, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv$iv":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_121

    .line 1131
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1123
    .local v12, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1$iv":I
    move-object v13, v11

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1140
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 1141
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v29, v16

    move/from16 v16, v0

    move-object/from16 v0, v29

    .line 1142
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$i$f$tail-H91voCI$ui_release":I
    :goto_33
    if-eqz v0, :cond_115

    .line 1143
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x3

    move/from16 v18, v2

    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .local v18, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    const-string/jumbo v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_47

    .line 1144
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 763
    .local v2, "$i$a$-tailToHead-aLcG6gQ$ui_release-NodeChain$tail$1":I
    return-object v1

    .line 1145
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-tailToHead-aLcG6gQ$ui_release-NodeChain$tail$1":I
    :cond_47
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1146
    .local v2, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, p1

    move-object/from16 v20, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v19, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    .line 1145
    .end local v2    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_58
    if-eqz v2, :cond_fc

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_fc

    .line 1147
    const/4 v2, 0x0

    .line 1148
    .local v2, "count$iv$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1149
    .local v20, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1150
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_69
    if-eqz v21, :cond_e7

    .line 1151
    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1152
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v1

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1146
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, p1

    if-eqz v25, :cond_80

    const/16 v23, 0x1

    goto :goto_82

    :cond_80
    const/16 v23, 0x0

    .line 1152
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_82
    if-eqz v23, :cond_d3

    .line 1153
    add-int/lit8 v2, v2, 0x1

    .line 1154
    move/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "mask$iv$iv":I
    .local v23, "mask$iv$iv":I
    if-ne v2, v3, :cond_92

    .line 1155
    move-object v0, v1

    move-object/from16 v27, v4

    move/from16 v28, v5

    const/4 v5, 0x0

    goto :goto_da

    .line 1159
    :cond_92
    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_b2

    const/4 v3, 0x0

    .line 1160
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 1161
    move/from16 v24, v2

    .end local v2    # "count$iv$iv":I
    .local v24, "count$iv$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 1162
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v27, v4

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v27, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$tailToHead$ui_release":I
    .local v28, "$i$f$tailToHead$ui_release":I
    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1160
    .end local v2    # "capacity$iv$iv$iv$iv":I
    .end local v25    # "$i$f$MutableVector":I
    nop

    .end local v26    # "$i$f$mutableVectorOf":I
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_b9

    .line 1159
    .end local v24    # "count$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v2, "count$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_b2
    move/from16 v24, v2

    move-object/from16 v27, v4

    move/from16 v28, v5

    const/4 v5, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v24    # "count$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :goto_b9
    move-object v15, v3

    .line 1163
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1164
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_c8

    .line 1165
    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_c7

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1166
    :cond_c7
    const/4 v0, 0x0

    .line 1168
    :cond_c8
    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_d0

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1171
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d0
    move/from16 v2, v24

    goto :goto_da

    .line 1152
    .end local v23    # "mask$iv$iv":I
    .end local v24    # "count$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v2, "count$iv$iv":I
    .local v3, "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_d3
    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    const/4 v5, 0x0

    .line 1171
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :goto_da
    nop

    .line 1151
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1172
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto :goto_69

    .line 1174
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_e7
    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1175
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    const/4 v1, 0x1

    if-ne v2, v1, :cond_102

    .line 1177
    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_33

    .line 1145
    .end local v2    # "count$iv$iv":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_fc
    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1180
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :cond_102
    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    # invokes: Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_33

    .line 1182
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_115
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1124
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    nop

    .line 1131
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1$iv":I
    goto :goto_12d

    .line 1130
    .end local v16    # "$i$f$tail-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v0, "$i$f$tail-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_121
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1133
    .end local v0    # "$i$f$tail-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :goto_12d
    nop

    .line 1139
    .end local v9    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv$iv":I
    nop

    .line 1183
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_15

    .line 1185
    .end local v16    # "$i$f$tail-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v0    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_141
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1186
    .end local v0    # "$i$f$tail-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$tailToHead$ui_release":I
    .end local v8    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    goto :goto_15a

    .line 1128
    .end local v16    # "$i$f$tail-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v0    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_14e
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1187
    .end local v0    # "$i$f$tail-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    :goto_15a
    nop

    .line 765
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public final tailToHead$ui_release(ILkotlin/jvm/functions/Function1;)V
    .registers 10
    .param p1, "mask"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 745
    .local v0, "$i$f$tailToHead$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_f

    return-void

    .line 746
    :cond_f
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1116
    .local v2, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .line 1117
    .local v3, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_15
    if-eqz v3, :cond_2a

    .line 1118
    move-object v4, v3

    .local v4, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v5, 0x0

    .line 747
    .local v5, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, p1

    if-eqz v6, :cond_23

    .line 748
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_23
    nop

    .line 1118
    .end local v4    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2":I
    nop

    .line 1119
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_15

    .line 1121
    :cond_2a
    nop

    .line 751
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead$ui_release":I
    .end local v3    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final tailToHead$ui_release(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 754
    .local v0, "$i$f$tailToHead$ui_release":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 755
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    if-eqz v1, :cond_15

    .line 756
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_b

    .line 759
    :cond_15
    return-void
.end method

.method public final synthetic tailToHead-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)V
    .registers 30
    .param p1, "type"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string/jumbo v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 739
    .local v1, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 1057
    .local v4, "$i$f$tailToHead$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {v3}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_142

    .line 1058
    move-object v5, v3

    .local v5, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v6, 0x0

    .line 1066
    .local v6, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 1067
    .local v7, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1b
    if-eqz v7, :cond_139

    .line 1068
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .local v8, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 1059
    .local v9, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v2

    if-eqz v10, :cond_11f

    .line 1060
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 740
    .local v11, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1":I
    move-object v12, v10

    .local v12, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 1069
    .local v13, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v14, 0x0

    .line 1070
    .local v14, "stack$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "node$iv":Ljava/lang/Object;
    move-object v15, v12

    .line 1071
    :goto_31
    if-eqz v15, :cond_115

    .line 1072
    move/from16 v16, v1

    .end local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .local v16, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    const/4 v1, 0x3

    move/from16 v17, v2

    .end local v2    # "mask$iv":I
    .local v17, "mask$iv":I
    const-string/jumbo v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v15, Ljava/lang/Object;

    if-eqz v1, :cond_4b

    .line 1073
    invoke-interface {v0, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v25, v3

    move/from16 v26, v4

    goto/16 :goto_102

    .line 1074
    :cond_4b
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1075
    .local v2, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, p1

    if-eqz v18, :cond_59

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    .line 1074
    .end local v1    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5a
    if-eqz v1, :cond_fe

    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_fe

    .line 1076
    const/4 v1, 0x0

    .line 1077
    .local v1, "count$iv":I
    move-object v2, v15

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .local v2, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 1078
    .local v18, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1079
    .local v19, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6a
    if-eqz v19, :cond_e9

    .line 1080
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1081
    .local v20, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v21, v0

    .local v21, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1075
    .local v22, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v23

    and-int v23, v23, p1

    if-eqz v23, :cond_81

    const/16 v21, 0x1

    goto :goto_83

    :cond_81
    const/16 v21, 0x0

    .line 1081
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_83
    if-eqz v21, :cond_d5

    .line 1082
    add-int/lit8 v1, v1, 0x1

    .line 1083
    move-object/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v21, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v1, v2, :cond_93

    .line 1084
    move-object v15, v0

    move-object/from16 v25, v3

    move/from16 v26, v4

    const/4 v4, 0x0

    goto :goto_dc

    .line 1088
    :cond_93
    move-object v2, v14

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_b3

    const/4 v2, 0x0

    .line 1089
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 1090
    move/from16 v22, v1

    .end local v1    # "count$iv":I
    .local v22, "count$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 1091
    .local v23, "$i$f$MutableVector":I
    move/from16 v24, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v24, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v25, v3

    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v25, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v26, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$tailToHead$ui_release":I
    .local v26, "$i$f$tailToHead$ui_release":I
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1089
    .end local v1    # "capacity$iv$iv$iv":I
    .end local v23    # "$i$f$MutableVector":I
    nop

    .end local v24    # "$i$f$mutableVectorOf":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_ba

    .line 1088
    .end local v22    # "count$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .local v1, "count$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_b3
    move/from16 v22, v1

    move-object/from16 v25, v3

    move/from16 v26, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .restart local v22    # "count$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "$i$f$tailToHead$ui_release":I
    :goto_ba
    move-object v14, v2

    .line 1092
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 1093
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_ca

    .line 1094
    move-object v2, v14

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_c8

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_c8
    const/4 v2, 0x0

    move-object v15, v2

    .line 1097
    :cond_ca
    move-object v2, v14

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_d2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1100
    .end local v1    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d2
    move/from16 v1, v22

    goto :goto_dc

    .line 1081
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "count$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .local v1, "count$iv":I
    .local v2, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_d5
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    const/4 v4, 0x0

    .line 1100
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .restart local v21    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "$i$f$tailToHead$ui_release":I
    :goto_dc
    nop

    .line 1080
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1101
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    move/from16 v4, v26

    goto :goto_6a

    .line 1103
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .restart local v2    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_e9
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    .line 1104
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .end local v18    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v19    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "$i$f$tailToHead$ui_release":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_102

    .line 1106
    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v25

    move/from16 v4, v26

    goto/16 :goto_31

    .line 1074
    .end local v1    # "count$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_fe
    move-object/from16 v25, v3

    move/from16 v26, v4

    .line 1109
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "$i$f$tailToHead$ui_release":I
    :cond_102
    :goto_102
    move-object v0, v14

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    # invokes: Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v25

    move/from16 v4, v26

    goto/16 :goto_31

    .line 1111
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v17    # "mask$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .local v1, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .local v2, "mask$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_115
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    .line 741
    .end local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v2    # "mask$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .end local v12    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v14    # "stack$iv":Ljava/lang/Object;
    .end local v15    # "node$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v17    # "mask$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "$i$f$tailToHead$ui_release":I
    nop

    .line 1060
    .end local v10    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1":I
    goto :goto_127

    .line 1059
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v17    # "mask$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .restart local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_11f
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    .line 1062
    .end local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v2    # "mask$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v17    # "mask$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "$i$f$tailToHead$ui_release":I
    :goto_127
    nop

    .line 1068
    .end local v8    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv":I
    nop

    .line 1112
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v25

    move/from16 v4, v26

    goto/16 :goto_1b

    .line 1114
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v17    # "mask$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .restart local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_139
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    .line 1115
    .end local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v2    # "mask$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "$i$f$tailToHead$ui_release":I
    .end local v7    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v17    # "mask$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "$i$f$tailToHead$ui_release":I
    goto :goto_14a

    .line 1057
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v17    # "mask$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "$i$f$tailToHead$ui_release":I
    .restart local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui_release":I
    :cond_142
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    .line 742
    .end local v1    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v2    # "mask$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    :goto_14a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$toString_u24lambda_u2430":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 780
    .local v2, "$i$a$-buildString-NodeChain$toString$1":I
    const-string/jumbo v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    iget-object v3, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    const-string/jumbo v5, "]"

    if-ne v3, v4, :cond_1a

    .line 782
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    goto :goto_4b

    .line 785
    :cond_1a
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 1261
    .local v4, "$i$f$headToTailExclusive$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1262
    .local v6, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_20
    if-eqz v6, :cond_49

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-eq v6, v7, :cond_49

    .line 1263
    move-object v7, v6

    .local v7, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 786
    .local v8, "$i$a$-headToTailExclusive$ui_release-NodeChain$toString$1$1":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    iget-object v10, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    if-ne v9, v10, :cond_3d

    .line 788
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    goto :goto_4b

    .line 791
    :cond_3d
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    nop

    .line 1263
    .end local v7    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-headToTailExclusive$ui_release-NodeChain$toString$1$1":I
    nop

    .line 1264
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_20

    .line 1266
    :cond_49
    nop

    .line 793
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$headToTailExclusive$ui_release":I
    .end local v6    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 779
    .end local v1    # "$this$toString_u24lambda_u2430":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-NodeChain$toString$1":I
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    return-object v0
.end method

.method public final updateFrom$ui_release(Landroidx/compose/ui/Modifier;)V
    .registers 22
    .param p1, "m"    # Landroidx/compose/ui/Modifier;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string/jumbo v0, "m"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 106
    .local v0, "coordinatorSyncNeeded":Z
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->padChain()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 112
    .local v8, "paddedHead":Landroidx/compose/ui/Modifier$Node;
    iget-object v9, v6, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    .line 113
    .local v9, "before":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    move v10, v2

    .line 114
    .local v10, "beforeSize":I
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->buffer:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_2c

    const/4 v2, 0x0

    .line 860
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 861
    const/16 v3, 0x10

    .local v3, "capacity$iv$iv":I
    const/4 v4, 0x0

    .line 862
    .local v4, "$i$f$MutableVector":I
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v3, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v5, v11, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 860
    .end local v3    # "capacity$iv$iv":I
    .end local v4    # "$i$f$MutableVector":I
    move-object v2, v5

    .line 114
    .end local v2    # "$i$f$mutableVectorOf":I
    :cond_2c
    # invokes: Landroidx/compose/ui/node/NodeChainKt;->fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;
    invoke-static {v7, v2}, Landroidx/compose/ui/node/NodeChainKt;->access$fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v11

    .line 115
    .local v11, "after":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 116
    .local v12, "i":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    const/4 v13, 0x0

    const-string/jumbo v3, "expected prior modifier list to be non-empty"

    if-ne v2, v10, :cond_e1

    .line 122
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 123
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_3f
    if-eqz v1, :cond_a7

    if-ge v12, v10, :cond_a7

    .line 124
    if-eqz v9, :cond_9b

    .line 125
    move-object v2, v9

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 863
    .local v4, "$i$f$get":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v2, v5, v12

    .line 125
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$get":I
    check-cast v2, Landroidx/compose/ui/Modifier$Element;

    .line 126
    .local v2, "prev":Landroidx/compose/ui/Modifier$Element;
    move-object v4, v11

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 864
    .local v5, "$i$f$get":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v14

    aget-object v4, v14, v12

    .line 126
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$get":I
    check-cast v4, Landroidx/compose/ui/Modifier$Element;

    .line 127
    .local v4, "next":Landroidx/compose/ui/Modifier$Element;
    invoke-static {v2, v4}, Landroidx/compose/ui/node/NodeChainKt;->actionForModifiers(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;)I

    move-result v5

    packed-switch v5, :pswitch_data_1ae

    goto :goto_93

    .line 143
    :pswitch_61
    iget-object v14, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v14, :cond_93

    move v15, v12

    move/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    invoke-interface/range {v14 .. v19}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeReused(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_93

    .line 139
    :pswitch_72
    invoke-direct {v6, v2, v4, v1}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 140
    iget-object v14, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v14, :cond_93

    move v15, v12

    move/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    invoke-interface/range {v14 .. v19}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeUpdated(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_93

    .line 132
    :pswitch_86
    iget-object v5, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v5, :cond_8d

    invoke-interface {v5, v12, v2, v4, v1}, Landroidx/compose/ui/node/NodeChain$Logger;->linearDiffAborted(ILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 133
    :cond_8d
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 134
    move-object v14, v1

    goto :goto_a8

    .line 149
    :cond_93
    :goto_93
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 150
    nop

    .end local v2    # "prev":Landroidx/compose/ui/Modifier$Element;
    .end local v4    # "next":Landroidx/compose/ui/Modifier$Element;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 859
    :cond_9b
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$a$-checkNotNull-NodeChain$updateFrom$1":I
    nop

    .end local v2    # "$i$a$-checkNotNull-NodeChain$updateFrom$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_a7
    move-object v14, v1

    .end local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    .local v14, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_a8
    if-ge v12, v10, :cond_196

    .line 153
    const/4 v15, 0x1

    .line 154
    .end local v0    # "coordinatorSyncNeeded":Z
    .local v15, "coordinatorSyncNeeded":Z
    if-eqz v9, :cond_d5

    .line 155
    if-eqz v14, :cond_c6

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    iget-object v0, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v5

    .line 159
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v9

    move-object v3, v11

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move v0, v15

    .end local v14    # "node":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_196

    .line 859
    .restart local v14    # "node":Landroidx/compose/ui/Modifier$Node;
    :cond_c6
    const/4 v0, 0x0

    .line 155
    .local v0, "$i$a$-checkNotNull-NodeChain$updateFrom$3":I
    nop

    .end local v0    # "$i$a$-checkNotNull-NodeChain$updateFrom$3":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "structuralUpdate requires a non-null tail"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_d5
    const/4 v0, 0x0

    .line 154
    .local v0, "$i$a$-checkNotNull-NodeChain$updateFrom$2":I
    nop

    .end local v0    # "$i$a$-checkNotNull-NodeChain$updateFrom$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    .end local v14    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "coordinatorSyncNeeded":Z
    .local v0, "coordinatorSyncNeeded":Z
    :cond_e1
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v2

    if-nez v2, :cond_11b

    if-nez v10, :cond_11b

    .line 173
    const/4 v0, 0x1

    .line 174
    move-object v1, v8

    .line 175
    .restart local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    :goto_ed
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-ge v12, v2, :cond_116

    .line 176
    move-object v2, v11

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 865
    .local v3, "$i$f$get":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v2, v4, v12

    .line 176
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$get":I
    check-cast v2, Landroidx/compose/ui/Modifier$Element;

    .line 177
    .local v2, "next":Landroidx/compose/ui/Modifier$Element;
    move-object v3, v1

    .line 178
    .local v3, "parent":Landroidx/compose/ui/Modifier$Node;
    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 179
    iget-object v14, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v14, :cond_112

    const/4 v15, 0x0

    move/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-interface/range {v14 .. v19}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeInserted(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)V

    .line 180
    :cond_112
    nop

    .end local v2    # "next":Landroidx/compose/ui/Modifier$Element;
    .end local v3    # "parent":Landroidx/compose/ui/Modifier$Node;
    add-int/lit8 v12, v12, 0x1

    goto :goto_ed

    .line 182
    :cond_116
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->syncAggregateChildKindSet()V

    .end local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_196

    .line 183
    :cond_11b
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-nez v2, :cond_171

    .line 184
    if-eqz v9, :cond_165

    .line 186
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 187
    .restart local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    :goto_127
    if-eqz v1, :cond_14b

    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-ge v12, v2, :cond_14b

    .line 188
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v2, :cond_140

    move-object v3, v9

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 866
    .local v4, "$i$f$get":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v3, v5, v12

    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$get":I
    check-cast v3, Landroidx/compose/ui/Modifier$Element;

    .line 188
    invoke-interface {v2, v12, v3, v1}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeRemoved(ILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 189
    :cond_140
    invoke-direct {v6, v1}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 190
    add-int/lit8 v12, v12, 0x1

    goto :goto_127

    .line 192
    :cond_14b
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v3, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_15a

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    goto :goto_15b

    :cond_15a
    move-object v3, v13

    :goto_15b
    invoke-virtual {v2, v3}, Landroidx/compose/ui/node/InnerNodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 193
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v2, v6, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .end local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    goto :goto_196

    .line 859
    :cond_165
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$a$-checkNotNull-NodeChain$updateFrom$4":I
    nop

    .end local v1    # "$i$a$-checkNotNull-NodeChain$updateFrom$4":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_171
    const/4 v14, 0x1

    .line 196
    .end local v0    # "coordinatorSyncNeeded":Z
    .local v14, "coordinatorSyncNeeded":Z
    if-nez v9, :cond_180

    .line 867
    const/16 v0, 0x10

    .local v0, "capacity$iv":I
    const/4 v2, 0x0

    .line 868
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v0, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v3, v4, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    move-object v2, v3

    goto :goto_181

    .line 196
    .end local v0    # "capacity$iv":I
    .end local v2    # "$i$f$MutableVector":I
    :cond_180
    move-object v2, v9

    :goto_181
    nop

    .line 197
    .end local v9    # "before":Landroidx/compose/runtime/collection/MutableVector;
    .local v2, "before":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 198
    const/4 v1, 0x0

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    iget-object v0, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v5

    .line 197
    move-object/from16 v0, p0

    move-object v3, v11

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move-object v9, v2

    move v0, v14

    .line 205
    .end local v2    # "before":Landroidx/compose/runtime/collection/MutableVector;
    .end local v14    # "coordinatorSyncNeeded":Z
    .local v0, "coordinatorSyncNeeded":Z
    .restart local v9    # "before":Landroidx/compose/runtime/collection/MutableVector;
    :cond_196
    :goto_196
    iput-object v11, v6, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    .line 207
    if-eqz v9, :cond_1a0

    .line 859
    move-object v1, v9

    .local v1, "it":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 207
    .local v2, "$i$a$-also-NodeChain$updateFrom$5":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    move-object v13, v9

    .end local v1    # "it":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$a$-also-NodeChain$updateFrom$5":I
    :cond_1a0
    iput-object v13, v6, Landroidx/compose/ui/node/NodeChain;->buffer:Landroidx/compose/runtime/collection/MutableVector;

    .line 208
    invoke-direct {v6, v8}, Landroidx/compose/ui/node/NodeChain;->trimChain(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    iput-object v1, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 209
    if-eqz v0, :cond_1ad

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->syncCoordinators()V

    .line 212
    :cond_1ad
    return-void

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_86
        :pswitch_72
        :pswitch_61
    .end packed-switch
.end method

.method public final useLogger$ui_release(Landroidx/compose/ui/node/NodeChain$Logger;)V
    .registers 2
    .param p1, "logger"    # Landroidx/compose/ui/node/NodeChain$Logger;

    .line 50
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    .line 51
    return-void
.end method
