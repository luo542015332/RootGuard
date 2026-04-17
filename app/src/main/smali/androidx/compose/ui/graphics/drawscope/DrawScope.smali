.class public interface abstract Landroidx/compose/ui/graphics/drawscope/DrawScope;
.super Ljava/lang/Object;
.source "DrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# annotations
.annotation runtime Landroidx/compose/ui/graphics/drawscope/DrawScopeMarker;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;,
        Landroidx/compose/ui/graphics/drawscope/DrawScope$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008g\u0018\u0000 n2\u00020\u0001:\u0001nJs\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#Js\u0010\u0011\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'J[\u0010(\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010)\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010+J[\u0010(\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010)\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-JQ\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u0002002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u00102Jo\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u0002002\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u0002042\u0008\u0008\u0002\u00108\u001a\u0002062\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H\'\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:Jy\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u0002002\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u0002042\u0008\u0008\u0002\u00108\u001a\u0002062\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010;\u001a\u00020<H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>Jm\u0010?\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010@\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u00032\u0008\u0008\u0002\u0010B\u001a\u00020\u00162\u0008\u0008\u0002\u0010C\u001a\u00020D2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010F2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008G\u0010HJm\u0010?\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0006\u0010@\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u00032\u0008\u0008\u0002\u0010B\u001a\u00020\u00162\u0008\u0008\u0002\u0010C\u001a\u00020D2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010F2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010JJ[\u0010K\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010MJ[\u0010K\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008N\u0010OJO\u0010P\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020R2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008S\u0010TJO\u0010P\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020R2\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008U\u0010VJs\u0010W\u001a\u00020\u00122\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u00030Y2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010B\u001a\u00020\u00162\u0008\u0008\u0002\u0010C\u001a\u00020D2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010F2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\\\u0010]Js\u0010W\u001a\u00020\u00122\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u00030Y2\u0006\u0010Z\u001a\u00020[2\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010B\u001a\u00020\u00162\u0008\u0008\u0002\u0010C\u001a\u00020D2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010F2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008^\u0010_J[\u0010`\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008a\u0010MJ[\u0010`\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008b\u0010OJe\u0010c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010d\u001a\u00020e2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008f\u0010gJe\u0010c\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010d\u001a\u00020e2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00162\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008h\u0010iJ!\u0010j\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010k\u001a\u00020\u0003H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008l\u0010mR\u001d\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0005\u00f8\u0001\u0003\u0082\u0002\u0015\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0004\u0008!0\u0001\u00a8\u0006o\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Landroidx/compose/ui/unit/Density;",
        "center",
        "Landroidx/compose/ui/geometry/Offset;",
        "getCenter-F1C5BW0",
        "()J",
        "drawContext",
        "Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "getDrawContext",
        "()Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "getSize-NH-jbRc",
        "drawArc",
        "",
        "brush",
        "Landroidx/compose/ui/graphics/Brush;",
        "startAngle",
        "",
        "sweepAngle",
        "useCenter",
        "",
        "topLeft",
        "alpha",
        "style",
        "Landroidx/compose/ui/graphics/drawscope/DrawStyle;",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "blendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "drawArc-illE91I",
        "(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "drawArc-yD3GUKo",
        "(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawCircle",
        "radius",
        "drawCircle-V9BoPsw",
        "(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawCircle-VaOC9Bg",
        "(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawImage",
        "image",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "drawImage-gbVJVH8",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "srcOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "srcSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "dstOffset",
        "dstSize",
        "drawImage-9jGpkUE",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "drawImage-AZ2fEMs",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V",
        "drawLine",
        "start",
        "end",
        "strokeWidth",
        "cap",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "pathEffect",
        "Landroidx/compose/ui/graphics/PathEffect;",
        "drawLine-1RTmtNc",
        "(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawLine-NGM6Ib0",
        "(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawOval",
        "drawOval-AsUm42w",
        "(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawOval-n-J9OG0",
        "(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPath",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "drawPath-GBMwjPU",
        "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPath-LG529CI",
        "(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPoints",
        "points",
        "",
        "pointMode",
        "Landroidx/compose/ui/graphics/PointMode;",
        "drawPoints-Gsft0Ws",
        "(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPoints-F8ZwMP8",
        "(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawRect",
        "drawRect-AsUm42w",
        "drawRect-n-J9OG0",
        "drawRoundRect",
        "cornerRadius",
        "Landroidx/compose/ui/geometry/CornerRadius;",
        "drawRoundRect-ZuiqVtQ",
        "(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawRoundRect-u-Aw5IA",
        "(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "offsetSize",
        "offset",
        "offsetSize-PENXr5M",
        "(JJ)J",
        "Companion",
        "ui-graphics_release"
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
.field public static final Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->$$INSTANCE:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    return-void
.end method

.method public static synthetic access$drawImage-AZ2fEMs$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .registers 15
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "image"    # Landroidx/compose/ui/graphics/ImageBitmap;
    .param p2, "srcOffset"    # J
    .param p4, "srcSize"    # J
    .param p6, "dstOffset"    # J
    .param p8, "dstSize"    # J
    .param p10, "alpha"    # F
    .param p11, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p12, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p13, "blendMode"    # I
    .param p14, "filterQuality"    # I

    .line 285
    invoke-super/range {p0 .. p14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    return-void
.end method

.method public static synthetic access$getCenter-F1C5BW0$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;)J
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 285
    invoke-super {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$getSize-NH-jbRc$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;)J
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 285
    invoke-super {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)I
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # J

    .line 285
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->roundToPx--R2X_6o(J)I

    move-result v0

    return v0
.end method

.method public static synthetic access$roundToPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;F)I
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # F

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->roundToPx-0680j_4(F)I

    move-result v0

    return v0
.end method

.method public static synthetic access$toDp-GaN1DYA$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)F
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # J

    .line 285
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toDp-GaN1DYA(J)F

    move-result v0

    return v0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;F)F
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # F

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toDp-u2uoSUM(F)F

    move-result v0

    return v0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;I)F
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # I

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toDp-u2uoSUM(I)F

    move-result v0

    return v0
.end method

.method public static synthetic access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)J
    .registers 5
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # J

    .line 285
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toDpSize-k-rfVVM(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$toPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)F
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # J

    .line 285
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx--R2X_6o(J)F

    move-result v0

    return v0
.end method

.method public static synthetic access$toPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;F)F
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # F

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v0

    return v0
.end method

.method public static synthetic access$toRect$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .registers 3
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # Landroidx/compose/ui/unit/DpRect;

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)J
    .registers 5
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # J

    .line 285
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$toSp-0xMU5do$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;F)J
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # F

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toSp-0xMU5do(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;F)J
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # F

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toSp-kPz2Gy4(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/DrawScope;I)J
    .registers 4
    .param p0, "$this"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "$receiver"    # I

    .line 285
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toSp-kPz2Gy4(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic drawArc-illE91I$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 31

    .line 713
    move/from16 v0, p13

    if-nez p14, :cond_61

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_10

    .line 718
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_12

    .line 713
    :cond_10
    move-wide/from16 v8, p5

    :goto_12
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_22

    .line 719
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    move-object/from16 v3, p0

    invoke-direct {v3, v1, v2, v8, v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_26

    .line 713
    :cond_22
    move-object/from16 v3, p0

    move-wide/from16 v10, p7

    :goto_26
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2e

    .line 721
    const/high16 v1, 0x3f800000    # 1.0f

    move v12, v1

    goto :goto_30

    .line 713
    :cond_2e
    move/from16 v12, p9

    :goto_30
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3a

    .line 722
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v13, v1

    goto :goto_3c

    .line 713
    :cond_3a
    move-object/from16 v13, p10

    :goto_3c
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_43

    .line 723
    const/4 v1, 0x0

    move-object v14, v1

    goto :goto_45

    .line 713
    :cond_43
    move-object/from16 v14, p11

    :goto_45
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_51

    .line 724
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v15, v0

    goto :goto_53

    .line 713
    :cond_51
    move/from16 v15, p12

    :goto_53
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-interface/range {v3 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-illE91I(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawArc-illE91I"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 33

    .line 749
    move/from16 v0, p14

    if-nez p15, :cond_62

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_10

    .line 754
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    move-wide v9, v1

    goto :goto_12

    .line 749
    :cond_10
    move-wide/from16 v9, p6

    :goto_12
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_22

    .line 755
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    move-object/from16 v3, p0

    invoke-direct {v3, v1, v2, v9, v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v1

    move-wide v11, v1

    goto :goto_26

    .line 749
    :cond_22
    move-object/from16 v3, p0

    move-wide/from16 v11, p8

    :goto_26
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2e

    .line 757
    const/high16 v1, 0x3f800000    # 1.0f

    move v13, v1

    goto :goto_30

    .line 749
    :cond_2e
    move/from16 v13, p10

    :goto_30
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3a

    .line 758
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v14, v1

    goto :goto_3c

    .line 749
    :cond_3a
    move-object/from16 v14, p11

    :goto_3c
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_43

    .line 759
    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_45

    .line 749
    :cond_43
    move-object/from16 v15, p12

    :goto_45
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_52

    .line 760
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move/from16 v16, v0

    goto :goto_54

    .line 749
    :cond_52
    move/from16 v16, p13

    :goto_54
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v3 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawArc-yD3GUKo"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawCircle-V9BoPsw$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 18

    .line 602
    if-nez p10, :cond_50

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_12

    .line 604
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_13

    .line 602
    :cond_12
    move v0, p2

    :goto_13
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_1c

    .line 605
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    goto :goto_1d

    .line 602
    :cond_1c
    move-wide v1, p3

    :goto_1d
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_24

    .line 607
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_25

    .line 602
    :cond_24
    move v3, p5

    :goto_25
    and-int/lit8 v4, p9, 0x10

    if-eqz v4, :cond_2e

    .line 608
    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_2f

    .line 602
    :cond_2e
    move-object v4, p6

    :goto_2f
    and-int/lit8 v5, p9, 0x20

    if-eqz v5, :cond_35

    .line 609
    const/4 v5, 0x0

    goto :goto_36

    .line 602
    :cond_35
    move-object v5, p7

    :goto_36
    and-int/lit8 v6, p9, 0x40

    if-eqz v6, :cond_41

    .line 610
    sget-object v6, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v6

    goto :goto_42

    .line 602
    :cond_41
    move v6, p8

    :goto_42
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move-wide p5, v1

    move p7, v3

    move-object p8, v4

    move-object/from16 p9, v5

    move/from16 p10, v6

    invoke-interface/range {p2 .. p10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-V9BoPsw(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawCircle-V9BoPsw"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 23

    .line 626
    if-nez p11, :cond_52

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_13

    .line 628
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    move v4, v0

    goto :goto_14

    .line 626
    :cond_13
    move v4, p3

    :goto_14
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_1e

    .line 629
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_1f

    .line 626
    :cond_1e
    move-wide v5, p4

    :goto_1f
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_27

    .line 631
    const/high16 v0, 0x3f800000    # 1.0f

    move v7, v0

    goto :goto_29

    .line 626
    :cond_27
    move/from16 v7, p6

    :goto_29
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_33

    .line 632
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v8, v0

    goto :goto_35

    .line 626
    :cond_33
    move-object/from16 v8, p7

    :goto_35
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_3c

    .line 633
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_3e

    .line 626
    :cond_3c
    move-object/from16 v9, p8

    :goto_3e
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_4a

    .line 634
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v10, v0

    goto :goto_4c

    .line 626
    :cond_4a
    move/from16 v10, p9

    :goto_4c
    move-object v1, p0

    move-wide v2, p1

    invoke-interface/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawImage-9jGpkUE$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 28

    .line 472
    move/from16 v0, p14

    if-nez p15, :cond_77

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 474
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v1

    goto :goto_10

    .line 472
    :cond_f
    move-wide v1, p2

    :goto_10
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_21

    .line 475
    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v3

    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v3

    goto :goto_23

    .line 472
    :cond_21
    move-wide/from16 v3, p4

    :goto_23
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2e

    .line 476
    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v5

    goto :goto_30

    .line 472
    :cond_2e
    move-wide/from16 v5, p6

    :goto_30
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_36

    .line 477
    move-wide v7, v3

    goto :goto_38

    .line 472
    :cond_36
    move-wide/from16 v7, p8

    :goto_38
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_3f

    .line 479
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_41

    .line 472
    :cond_3f
    move/from16 v9, p10

    :goto_41
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_4a

    .line 480
    sget-object v10, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v10, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_4c

    .line 472
    :cond_4a
    move-object/from16 v10, p11

    :goto_4c
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_52

    .line 481
    const/4 v11, 0x0

    goto :goto_54

    .line 472
    :cond_52
    move-object/from16 v11, p12

    :goto_54
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5f

    .line 482
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    goto :goto_61

    .line 472
    :cond_5f
    move/from16 v0, p13

    :goto_61
    move-object p2, p0

    move-object p3, p1

    move-wide/from16 p4, v1

    move-wide/from16 p6, v3

    move-wide/from16 p8, v5

    move-wide/from16 p10, v7

    move/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    move/from16 p15, v0

    invoke-interface/range {p2 .. p15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-9jGpkUE(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawImage-9jGpkUE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)V
    .registers 30

    .line 510
    move/from16 v0, p15

    if-nez p16, :cond_87

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 512
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v1

    goto :goto_10

    .line 510
    :cond_f
    move-wide v1, p2

    :goto_10
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_21

    .line 513
    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v3

    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v3

    goto :goto_23

    .line 510
    :cond_21
    move-wide/from16 v3, p4

    :goto_23
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2e

    .line 514
    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v5

    goto :goto_30

    .line 510
    :cond_2e
    move-wide/from16 v5, p6

    :goto_30
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_36

    .line 515
    move-wide v7, v3

    goto :goto_38

    .line 510
    :cond_36
    move-wide/from16 v7, p8

    :goto_38
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_3f

    .line 517
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_41

    .line 510
    :cond_3f
    move/from16 v9, p10

    :goto_41
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_4a

    .line 518
    sget-object v10, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v10, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_4c

    .line 510
    :cond_4a
    move-object/from16 v10, p11

    :goto_4c
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_52

    .line 519
    const/4 v11, 0x0

    goto :goto_54

    .line 510
    :cond_52
    move-object/from16 v11, p12

    :goto_54
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_5f

    .line 520
    sget-object v12, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v12

    goto :goto_61

    .line 510
    :cond_5f
    move/from16 v12, p13

    :goto_61
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6c

    .line 521
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    goto :goto_6e

    .line 510
    :cond_6c
    move/from16 v0, p14

    :goto_6e
    move-object p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v1

    move-wide/from16 p6, v3

    move-wide/from16 p8, v5

    move-wide/from16 p10, v7

    move/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    move/from16 p15, v12

    move/from16 p16, v0

    invoke-interface/range {p2 .. p16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    return-void

    :cond_87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 16

    .line 430
    if-nez p9, :cond_3e

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_d

    .line 432
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    goto :goto_e

    .line 430
    :cond_d
    move-wide v0, p2

    :goto_e
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_15

    .line 434
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_16

    .line 430
    :cond_15
    move v2, p4

    :goto_16
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_1f

    .line 435
    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_20

    .line 430
    :cond_1f
    move-object v3, p5

    :goto_20
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_26

    .line 436
    const/4 v4, 0x0

    goto :goto_27

    .line 430
    :cond_26
    move-object v4, p6

    :goto_27
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_32

    .line 437
    sget-object v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v5

    goto :goto_33

    .line 430
    :cond_32
    move v5, p7

    :goto_33
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, v2

    move-object p7, v3

    move-object p8, v4

    move p9, v5

    invoke-interface/range {p2 .. p9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_3e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawImage-gbVJVH8"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawLine-1RTmtNc$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 28

    .line 327
    move/from16 v0, p12

    if-nez p13, :cond_4e

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_b

    .line 331
    const/4 v1, 0x0

    move v8, v1

    goto :goto_d

    .line 327
    :cond_b
    move/from16 v8, p6

    :goto_d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_19

    .line 332
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Stroke;->Companion:Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;->getDefaultCap-KaPHkGw()I

    move-result v1

    move v9, v1

    goto :goto_1b

    .line 327
    :cond_19
    move/from16 v9, p7

    :goto_1b
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 333
    move-object v10, v2

    goto :goto_24

    .line 327
    :cond_22
    move-object/from16 v10, p8

    :goto_24
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2c

    .line 335
    const/high16 v1, 0x3f800000    # 1.0f

    move v11, v1

    goto :goto_2e

    .line 327
    :cond_2c
    move/from16 v11, p9

    :goto_2e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_34

    .line 336
    move-object v12, v2

    goto :goto_36

    .line 327
    :cond_34
    move-object/from16 v12, p10

    :goto_36
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_42

    .line 337
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v13, v0

    goto :goto_44

    .line 327
    :cond_42
    move/from16 v13, p11

    :goto_44
    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-1RTmtNc(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_4e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawLine-1RTmtNc"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 30

    .line 355
    move/from16 v0, p13

    if-nez p14, :cond_4f

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_b

    .line 359
    const/4 v1, 0x0

    move v9, v1

    goto :goto_d

    .line 355
    :cond_b
    move/from16 v9, p7

    :goto_d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_19

    .line 360
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Stroke;->Companion:Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;->getDefaultCap-KaPHkGw()I

    move-result v1

    move v10, v1

    goto :goto_1b

    .line 355
    :cond_19
    move/from16 v10, p8

    :goto_1b
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 361
    move-object v11, v2

    goto :goto_24

    .line 355
    :cond_22
    move-object/from16 v11, p9

    :goto_24
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2c

    .line 363
    const/high16 v1, 0x3f800000    # 1.0f

    move v12, v1

    goto :goto_2e

    .line 355
    :cond_2c
    move/from16 v12, p10

    :goto_2e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_34

    .line 364
    move-object v13, v2

    goto :goto_36

    .line 355
    :cond_34
    move-object/from16 v13, p11

    :goto_36
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_42

    .line 365
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v14, v0

    goto :goto_44

    .line 355
    :cond_42
    move/from16 v14, p12

    :goto_44
    move-object v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_4f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawOval-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 21

    .line 653
    if-nez p11, :cond_56

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_d

    .line 655
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    goto :goto_e

    .line 653
    :cond_d
    move-wide v0, p2

    :goto_e
    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_1c

    .line 656
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    move-object v4, p0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v2

    goto :goto_1e

    .line 653
    :cond_1c
    move-object v4, p0

    move-wide v2, p4

    :goto_1e
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_25

    .line 658
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_26

    .line 653
    :cond_25
    move v5, p6

    :goto_26
    and-int/lit8 v6, p10, 0x10

    if-eqz v6, :cond_2f

    .line 659
    sget-object v6, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_31

    .line 653
    :cond_2f
    move-object/from16 v6, p7

    :goto_31
    and-int/lit8 v7, p10, 0x20

    if-eqz v7, :cond_37

    .line 660
    const/4 v7, 0x0

    goto :goto_39

    .line 653
    :cond_37
    move-object/from16 v7, p8

    :goto_39
    and-int/lit8 v8, p10, 0x40

    if-eqz v8, :cond_44

    .line 661
    sget-object v8, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v8

    goto :goto_46

    .line 653
    :cond_44
    move/from16 v8, p9

    :goto_46
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-wide p6, v2

    move/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move/from16 p11, v8

    invoke-interface/range {p2 .. p11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawOval-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawOval-AsUm42w"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawOval-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 26

    .line 680
    if-nez p12, :cond_55

    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_e

    .line 682
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_10

    .line 680
    :cond_e
    move-wide/from16 v5, p3

    :goto_10
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_1f

    .line 683
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    move-object v2, p0

    invoke-direct {p0, v0, v1, v5, v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_22

    .line 680
    :cond_1f
    move-object v2, p0

    move-wide/from16 v7, p5

    :goto_22
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_2a

    .line 685
    const/high16 v0, 0x3f800000    # 1.0f

    move v9, v0

    goto :goto_2c

    .line 680
    :cond_2a
    move/from16 v9, p7

    :goto_2c
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_36

    .line 686
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v10, v0

    goto :goto_38

    .line 680
    :cond_36
    move-object/from16 v10, p8

    :goto_38
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_3f

    .line 687
    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_41

    .line 680
    :cond_3f
    move-object/from16 v11, p9

    :goto_41
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_4d

    .line 688
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v12, v0

    goto :goto_4f

    .line 680
    :cond_4d
    move/from16 v12, p10

    :goto_4f
    move-object v2, p0

    move-wide v3, p1

    invoke-interface/range {v2 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawOval-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawOval-n-J9OG0"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 16

    .line 800
    if-nez p8, :cond_33

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_a

    .line 804
    const/high16 p3, 0x3f800000    # 1.0f

    move v3, p3

    goto :goto_b

    .line 800
    :cond_a
    move v3, p3

    :goto_b
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_16

    .line 805
    sget-object p3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object p4, p3

    check-cast p4, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v4, p4

    goto :goto_17

    .line 800
    :cond_16
    move-object v4, p4

    :goto_17
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_1e

    .line 806
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_1f

    .line 800
    :cond_1e
    move-object v5, p5

    :goto_1f
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_2b

    .line 807
    sget-object p3, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result p6

    move v6, p6

    goto :goto_2c

    .line 800
    :cond_2b
    move v6, p6

    :goto_2c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_33
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 19

    .line 777
    if-nez p9, :cond_33

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_a

    .line 781
    const/high16 v0, 0x3f800000    # 1.0f

    move v5, v0

    goto :goto_b

    .line 777
    :cond_a
    move v5, p4

    :goto_b
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_15

    .line 782
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v6, v0

    goto :goto_16

    .line 777
    :cond_15
    move-object v6, p5

    :goto_16
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1d

    .line 783
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_1e

    .line 777
    :cond_1d
    move-object v7, p6

    :goto_1e
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2a

    .line 784
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v8, v0

    goto :goto_2c

    .line 777
    :cond_2a
    move/from16 v8, p7

    :goto_2c
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-interface/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawPath-LG529CI"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawPoints-F8ZwMP8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 26

    .line 826
    move/from16 v0, p11

    if-nez p12, :cond_4d

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_b

    .line 830
    const/4 v1, 0x0

    move v7, v1

    goto :goto_d

    .line 826
    :cond_b
    move/from16 v7, p5

    :goto_d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_19

    .line 831
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v1

    move v8, v1

    goto :goto_1b

    .line 826
    :cond_19
    move/from16 v8, p6

    :goto_1b
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 832
    move-object v9, v2

    goto :goto_24

    .line 826
    :cond_22
    move-object/from16 v9, p7

    :goto_24
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2c

    .line 834
    const/high16 v1, 0x3f800000    # 1.0f

    move v10, v1

    goto :goto_2e

    .line 826
    :cond_2c
    move/from16 v10, p8

    :goto_2e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_34

    .line 835
    move-object v11, v2

    goto :goto_36

    .line 826
    :cond_34
    move-object/from16 v11, p9

    :goto_36
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_42

    .line 836
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v12, v0

    goto :goto_44

    .line 826
    :cond_42
    move/from16 v12, p10

    :goto_44
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide/from16 v5, p3

    invoke-interface/range {v2 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPoints-F8ZwMP8(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_4d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawPoints-F8ZwMP8"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawPoints-Gsft0Ws$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 24

    .line 855
    move/from16 v0, p10

    if-nez p11, :cond_4c

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_b

    .line 859
    const/4 v1, 0x0

    move v6, v1

    goto :goto_d

    .line 855
    :cond_b
    move/from16 v6, p4

    :goto_d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_19

    .line 860
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v1

    move v7, v1

    goto :goto_1b

    .line 855
    :cond_19
    move/from16 v7, p5

    :goto_1b
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 861
    move-object v8, v2

    goto :goto_24

    .line 855
    :cond_22
    move-object/from16 v8, p6

    :goto_24
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2c

    .line 863
    const/high16 v1, 0x3f800000    # 1.0f

    move v9, v1

    goto :goto_2e

    .line 855
    :cond_2c
    move/from16 v9, p7

    :goto_2e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_34

    .line 864
    move-object v10, v2

    goto :goto_36

    .line 855
    :cond_34
    move-object/from16 v10, p8

    :goto_36
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_42

    .line 865
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v11, v0

    goto :goto_44

    .line 855
    :cond_42
    move/from16 v11, p9

    :goto_44
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPoints-Gsft0Ws(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_4c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawPoints-Gsft0Ws"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 21

    .line 382
    if-nez p11, :cond_56

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_d

    .line 384
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    goto :goto_e

    .line 382
    :cond_d
    move-wide v0, p2

    :goto_e
    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_1c

    .line 385
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    move-object v4, p0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v2

    goto :goto_1e

    .line 382
    :cond_1c
    move-object v4, p0

    move-wide v2, p4

    :goto_1e
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_25

    .line 387
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_26

    .line 382
    :cond_25
    move v5, p6

    :goto_26
    and-int/lit8 v6, p10, 0x10

    if-eqz v6, :cond_2f

    .line 388
    sget-object v6, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_31

    .line 382
    :cond_2f
    move-object/from16 v6, p7

    :goto_31
    and-int/lit8 v7, p10, 0x20

    if-eqz v7, :cond_37

    .line 389
    const/4 v7, 0x0

    goto :goto_39

    .line 382
    :cond_37
    move-object/from16 v7, p8

    :goto_39
    and-int/lit8 v8, p10, 0x40

    if-eqz v8, :cond_44

    .line 390
    sget-object v8, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v8

    goto :goto_46

    .line 382
    :cond_44
    move/from16 v8, p9

    :goto_46
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-wide p6, v2

    move/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move/from16 p11, v8

    invoke-interface/range {p2 .. p11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawRect-AsUm42w"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 26

    .line 407
    if-nez p12, :cond_55

    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_e

    .line 409
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_10

    .line 407
    :cond_e
    move-wide/from16 v5, p3

    :goto_10
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_1f

    .line 410
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    move-object v2, p0

    invoke-direct {p0, v0, v1, v5, v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_22

    .line 407
    :cond_1f
    move-object v2, p0

    move-wide/from16 v7, p5

    :goto_22
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_2a

    .line 412
    const/high16 v0, 0x3f800000    # 1.0f

    move v9, v0

    goto :goto_2c

    .line 407
    :cond_2a
    move/from16 v9, p7

    :goto_2c
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_36

    .line 413
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v10, v0

    goto :goto_38

    .line 407
    :cond_36
    move-object/from16 v10, p8

    :goto_38
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_3f

    .line 414
    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_41

    .line 407
    :cond_3f
    move-object/from16 v11, p9

    :goto_41
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_4d

    .line 415
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v12, v0

    goto :goto_4f

    .line 407
    :cond_4d
    move/from16 v12, p10

    :goto_4f
    move-object v2, p0

    move-wide v3, p1

    invoke-interface/range {v2 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 25

    .line 551
    move/from16 v0, p12

    if-nez p13, :cond_69

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 553
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    goto :goto_10

    .line 551
    :cond_f
    move-wide v1, p2

    :goto_10
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1e

    .line 554
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct {p0, v3, v4, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v3

    goto :goto_20

    .line 551
    :cond_1e
    move-object v5, p0

    move-wide v3, p4

    :goto_20
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_2b

    .line 555
    sget-object v6, Landroidx/compose/ui/geometry/CornerRadius;->Companion:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/CornerRadius$Companion;->getZero-kKHJgLs()J

    move-result-wide v6

    goto :goto_2d

    .line 551
    :cond_2b
    move-wide/from16 v6, p6

    :goto_2d
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_34

    .line 557
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_36

    .line 551
    :cond_34
    move/from16 v8, p8

    :goto_36
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_3f

    .line 558
    sget-object v9, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_41

    .line 551
    :cond_3f
    move-object/from16 v9, p9

    :goto_41
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_47

    .line 559
    const/4 v10, 0x0

    goto :goto_49

    .line 551
    :cond_47
    move-object/from16 v10, p10

    :goto_49
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_54

    .line 560
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    goto :goto_56

    .line 551
    :cond_54
    move/from16 v0, p11

    :goto_56
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v1

    move-wide/from16 p6, v3

    move-wide/from16 p8, v6

    move/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move/from16 p13, v0

    invoke-interface/range {p2 .. p13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .registers 31

    .line 577
    move/from16 v0, p13

    if-nez p14, :cond_69

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_10

    .line 579
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    move-wide v6, v1

    goto :goto_12

    .line 577
    :cond_10
    move-wide/from16 v6, p3

    :goto_12
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_22

    .line 580
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    move-object/from16 v3, p0

    invoke-direct {v3, v1, v2, v6, v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_26

    .line 577
    :cond_22
    move-object/from16 v3, p0

    move-wide/from16 v8, p5

    :goto_26
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_32

    .line 581
    sget-object v1, Landroidx/compose/ui/geometry/CornerRadius;->Companion:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/CornerRadius$Companion;->getZero-kKHJgLs()J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_34

    .line 577
    :cond_32
    move-wide/from16 v10, p7

    :goto_34
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3e

    .line 582
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v12, v1

    goto :goto_40

    .line 577
    :cond_3e
    move-object/from16 v12, p9

    :goto_40
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_48

    .line 584
    const/high16 v1, 0x3f800000    # 1.0f

    move v13, v1

    goto :goto_4a

    .line 577
    :cond_48
    move/from16 v13, p10

    :goto_4a
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_51

    .line 585
    const/4 v1, 0x0

    move-object v14, v1

    goto :goto_53

    .line 577
    :cond_51
    move-object/from16 v14, p11

    :goto_53
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5f

    .line 586
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v15, v0

    goto :goto_61

    .line 577
    :cond_5f
    move/from16 v15, p12

    :goto_61
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-interface/range {v3 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void

    :cond_69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Super calls with default arguments not supported in this target, function: drawRoundRect-u-Aw5IA"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private offsetSize-PENXr5M(JJ)J
    .registers 8
    .param p1, "$this$offsetSize_u2dPENXr5M"    # J
    .param p3, "offset"    # J

    .line 872
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract drawArc-illE91I(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawArc-yD3GUKo(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawCircle-V9BoPsw(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract synthetic drawImage-9jGpkUE(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Prefer usage of drawImage that consumes an optional FilterQuality parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "drawImage(image, srcOffset, srcSize, dstOffset, dstSize, alpha, style, colorFilter, blendMode, FilterQuality.Low)"
            imports = {
                "androidx.compose.ui.graphics.drawscope",
                "androidx.compose.ui.graphics.FilterQuality"
            }
        .end subannotation
    .end annotation
.end method

.method public drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .registers 32
    .param p1, "image"    # Landroidx/compose/ui/graphics/ImageBitmap;
    .param p2, "srcOffset"    # J
    .param p4, "srcSize"    # J
    .param p6, "dstOffset"    # J
    .param p8, "dstSize"    # J
    .param p10, "alpha"    # F
    .param p11, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p12, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p13, "blendMode"    # I
    .param p14, "filterQuality"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    const-string/jumbo v14, "image"

    move-object/from16 v15, p1

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v14, "style"

    move-object/from16 v15, p11

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    nop

    .line 524
    nop

    .line 525
    nop

    .line 526
    nop

    .line 527
    nop

    .line 528
    nop

    .line 529
    nop

    .line 530
    nop

    .line 531
    nop

    .line 532
    nop

    .line 523
    const/4 v14, 0x0

    const/16 v16, 0x200

    move/from16 v15, v16

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)V

    .line 534
    return-void
.end method

.method public abstract drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawLine-1RTmtNc(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawLine-NGM6Ib0(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawOval-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawOval-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawPoints-F8ZwMP8(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;IJFI",
            "Landroidx/compose/ui/graphics/PathEffect;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract drawPoints-Gsft0Ws(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;I",
            "Landroidx/compose/ui/graphics/Brush;",
            "FI",
            "Landroidx/compose/ui/graphics/PathEffect;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract drawRect-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawRect-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawRoundRect-ZuiqVtQ(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract drawRoundRect-u-Aw5IA(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public getCenter-F1C5BW0()J
    .registers 3

    .line 299
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;
.end method

.method public abstract getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method public getSize-NH-jbRc()J
    .registers 3

    .line 305
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method
