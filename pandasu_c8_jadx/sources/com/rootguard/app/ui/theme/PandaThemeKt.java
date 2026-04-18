package com.rootguard.app.ui.theme;

import androidx.compose.ui.graphics.Color;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PandaTheme.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b:\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010J\u001a\u00020=2\u0006\u0010K\u001a\u00020L\"\u0013\u0010\u0000\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0006\u0010\u0003\"\u0013\u0010\u0007\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\b\u0010\u0003\"\u0013\u0010\t\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\n\u0010\u0003\"\u0013\u0010\u000b\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\f\u0010\u0003\"\u0013\u0010\r\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u000e\u0010\u0003\"\u0013\u0010\u000f\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0010\u0010\u0003\"\u0013\u0010\u0011\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0012\u0010\u0003\"\u0013\u0010\u0013\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0014\u0010\u0003\"\u0013\u0010\u0015\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0016\u0010\u0003\"\u0013\u0010\u0017\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0018\u0010\u0003\"\u0013\u0010\u0019\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u001a\u0010\u0003\"\u0013\u0010\u001b\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u001c\u0010\u0003\"\u0013\u0010\u001d\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u001e\u0010\u0003\"\u0013\u0010\u001f\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b \u0010\u0003\"\u0013\u0010!\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\"\u0010\u0003\"\u0013\u0010#\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b$\u0010\u0003\"\u0013\u0010%\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b&\u0010\u0003\"\u0013\u0010'\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b(\u0010\u0003\"\u0013\u0010)\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b*\u0010\u0003\"\u0013\u0010+\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b,\u0010\u0003\"\u0013\u0010-\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b.\u0010\u0003\"\u0013\u0010/\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b0\u0010\u0003\"\u0013\u00101\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b2\u0010\u0003\"\u0013\u00103\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b4\u0010\u0003\"\u0013\u00105\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b6\u0010\u0003\"\u0013\u00107\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b8\u0010\u0003\"\u0013\u00109\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b:\u0010\u0003\"\u0017\u0010;\u001a\b\u0012\u0004\u0012\u00020=0<¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?\"\u0013\u0010@\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\bA\u0010\u0003\"\u0013\u0010B\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\bC\u0010\u0003\"\u0013\u0010D\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\bE\u0010\u0003\"\u0013\u0010F\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\bG\u0010\u0003\"\u0013\u0010H\u001a\u00020\u0001¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\bI\u0010\u0003¨\u0006M"}, d2 = {"BambooDark", "Landroidx/compose/ui/graphics/Color;", "getBambooDark", "()J", "J", "BambooGreen", "getBambooGreen", "BambooLight", "getBambooLight", "BambooPandaBackground", "getBambooPandaBackground", "BambooPandaPrimary", "getBambooPandaPrimary", "BambooPandaSecondary", "getBambooPandaSecondary", "BambooPandaSurface", "getBambooPandaSurface", "ClassicPandaBackground", "getClassicPandaBackground", "ClassicPandaPrimary", "getClassicPandaPrimary", "ClassicPandaSecondary", "getClassicPandaSecondary", "ClassicPandaSurface", "getClassicPandaSurface", "GoldenPandaBackground", "getGoldenPandaBackground", "GoldenPandaPrimary", "getGoldenPandaPrimary", "GoldenPandaSecondary", "getGoldenPandaSecondary", "GoldenPandaSurface", "getGoldenPandaSurface", "NightPandaBackground", "getNightPandaBackground", "NightPandaPrimary", "getNightPandaPrimary", "NightPandaSecondary", "getNightPandaSecondary", "NightPandaSurface", "getNightPandaSurface", "OceanPandaBackground", "getOceanPandaBackground", "OceanPandaPrimary", "getOceanPandaPrimary", "OceanPandaSecondary", "getOceanPandaSecondary", "OceanPandaSurface", "getOceanPandaSurface", "PandaBlack", "getPandaBlack", "PandaBlush", "getPandaBlush", "PandaGray", "getPandaGray", "PandaLightGray", "getPandaLightGray", "PandaPink", "getPandaPink", "PandaThemes", "", "Lcom/rootguard/app/ui/theme/PandaTheme;", "getPandaThemes", "()Ljava/util/List;", "PandaWhite", "getPandaWhite", "SakuraPandaBackground", "getSakuraPandaBackground", "SakuraPandaPrimary", "getSakuraPandaPrimary", "SakuraPandaSecondary", "getSakuraPandaSecondary", "SakuraPandaSurface", "getSakuraPandaSurface", "getPandaTheme", "id", "", "app_debug"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class PandaThemeKt {
    private static final long BambooDark;
    private static final long BambooGreen;
    private static final long BambooLight;
    private static final long BambooPandaBackground;
    private static final long BambooPandaPrimary;
    private static final long BambooPandaSecondary;
    private static final long BambooPandaSurface;
    private static final long ClassicPandaBackground;
    private static final long ClassicPandaPrimary;
    private static final long ClassicPandaSecondary;
    private static final long ClassicPandaSurface;
    private static final long GoldenPandaBackground;
    private static final long GoldenPandaPrimary;
    private static final long GoldenPandaSecondary;
    private static final long GoldenPandaSurface;
    private static final long NightPandaBackground;
    private static final long NightPandaPrimary;
    private static final long NightPandaSecondary;
    private static final long NightPandaSurface;
    private static final long OceanPandaBackground;
    private static final long OceanPandaPrimary;
    private static final long OceanPandaSecondary;
    private static final long OceanPandaSurface;
    private static final long PandaBlush;
    private static final long PandaPink;
    private static final List<PandaTheme> PandaThemes;
    private static final long SakuraPandaBackground;
    private static final long SakuraPandaPrimary;
    private static final long SakuraPandaSecondary;
    private static final long SakuraPandaSurface;
    private static final long PandaBlack = androidx.compose.ui.graphics.ColorKt.Color(4279900698L);
    private static final long PandaWhite = androidx.compose.ui.graphics.ColorKt.Color(4294638330L);
    private static final long PandaGray = androidx.compose.ui.graphics.ColorKt.Color(4283058762L);
    private static final long PandaLightGray = androidx.compose.ui.graphics.ColorKt.Color(4292927712L);

    static {
        long Color = androidx.compose.ui.graphics.ColorKt.Color(4286362434L);
        BambooGreen = Color;
        BambooLight = androidx.compose.ui.graphics.ColorKt.Color(4289648001L);
        long Color2 = androidx.compose.ui.graphics.ColorKt.Color(4283796271L);
        BambooDark = Color2;
        PandaPink = androidx.compose.ui.graphics.ColorKt.Color(4294217649L);
        PandaBlush = androidx.compose.ui.graphics.ColorKt.Color(4294954450L);
        long Color3 = androidx.compose.ui.graphics.ColorKt.Color(4281152566L);
        ClassicPandaPrimary = Color3;
        long Color4 = androidx.compose.ui.graphics.ColorKt.Color(4284706418L);
        ClassicPandaSecondary = Color4;
        long Color5 = androidx.compose.ui.graphics.ColorKt.Color(4294638330L);
        ClassicPandaBackground = Color5;
        long Color6 = androidx.compose.ui.graphics.ColorKt.Color(4294967295L);
        ClassicPandaSurface = Color6;
        BambooPandaPrimary = Color;
        BambooPandaSecondary = Color2;
        long Color7 = androidx.compose.ui.graphics.ColorKt.Color(4294047977L);
        BambooPandaBackground = Color7;
        long Color8 = androidx.compose.ui.graphics.ColorKt.Color(4292668872L);
        BambooPandaSurface = Color8;
        long Color9 = androidx.compose.ui.graphics.ColorKt.Color(4287669422L);
        NightPandaPrimary = Color9;
        long Color10 = androidx.compose.ui.graphics.ColorKt.Color(4289773253L);
        NightPandaSecondary = Color10;
        long Color11 = androidx.compose.ui.graphics.ColorKt.Color(4279374354L);
        NightPandaBackground = Color11;
        long Color12 = androidx.compose.ui.graphics.ColorKt.Color(4280163870L);
        NightPandaSurface = Color12;
        long Color13 = androidx.compose.ui.graphics.ColorKt.Color(4293673082L);
        SakuraPandaPrimary = Color13;
        long Color14 = androidx.compose.ui.graphics.ColorKt.Color(4293943954L);
        SakuraPandaSecondary = Color14;
        long Color15 = androidx.compose.ui.graphics.ColorKt.Color(4294763756L);
        SakuraPandaBackground = Color15;
        long Color16 = androidx.compose.ui.graphics.ColorKt.Color(4294491097L);
        SakuraPandaSurface = Color16;
        long Color17 = androidx.compose.ui.graphics.ColorKt.Color(4294942720L);
        GoldenPandaPrimary = Color17;
        long Color18 = androidx.compose.ui.graphics.ColorKt.Color(4294947584L);
        GoldenPandaSecondary = Color18;
        long Color19 = androidx.compose.ui.graphics.ColorKt.Color(4294965473L);
        GoldenPandaBackground = Color19;
        long Color20 = androidx.compose.ui.graphics.ColorKt.Color(4294962355L);
        GoldenPandaSurface = Color20;
        long Color21 = androidx.compose.ui.graphics.ColorKt.Color(4278356177L);
        OceanPandaPrimary = Color21;
        long Color22 = androidx.compose.ui.graphics.ColorKt.Color(4280923894L);
        OceanPandaSecondary = Color22;
        long Color23 = androidx.compose.ui.graphics.ColorKt.Color(4292998654L);
        OceanPandaBackground = Color23;
        long Color24 = androidx.compose.ui.graphics.ColorKt.Color(4289979900L);
        OceanPandaSurface = Color24;
        PandaThemes = CollectionsKt.listOf(new PandaTheme[]{new PandaTheme("classic", "经典熊猫", "Classic Panda", Color3, Color4, 0L, Color5, Color6, 0L, 0L, 0L, false, "🐼", 3872, null), new PandaTheme("bamboo", "竹林熊猫", "Bamboo Panda", Color, Color2, Color2, Color7, Color8, 0L, 0L, 0L, false, "🎋", 3840, null), new PandaTheme("night", "暗夜熊猫", "Night Panda", Color9, Color10, 0L, Color11, Color12, 0L, Color.Companion.getWhite-0d7_KjU(), Color.Companion.getWhite-0d7_KjU(), true, "🌙", 288, null), new PandaTheme("sakura", "樱花熊猫", "Sakura Panda", Color13, Color14, 0L, Color15, Color16, 0L, 0L, 0L, false, "🌸", 3872, null), new PandaTheme("golden", "金黄熊猫", "Golden Panda", Color17, Color18, 0L, Color19, Color20, 0L, 0L, 0L, false, "🌟", 3872, null), new PandaTheme("ocean", "海洋熊猫", "Ocean Panda", Color21, Color22, 0L, Color23, Color24, 0L, 0L, 0L, false, "🌊", 3872, null)});
    }

    public static final long getPandaBlack() {
        return PandaBlack;
    }

    public static final long getPandaWhite() {
        return PandaWhite;
    }

    public static final long getPandaGray() {
        return PandaGray;
    }

    public static final long getPandaLightGray() {
        return PandaLightGray;
    }

    public static final long getBambooGreen() {
        return BambooGreen;
    }

    public static final long getBambooLight() {
        return BambooLight;
    }

    public static final long getBambooDark() {
        return BambooDark;
    }

    public static final long getPandaPink() {
        return PandaPink;
    }

    public static final long getPandaBlush() {
        return PandaBlush;
    }

    public static final long getClassicPandaPrimary() {
        return ClassicPandaPrimary;
    }

    public static final long getClassicPandaSecondary() {
        return ClassicPandaSecondary;
    }

    public static final long getClassicPandaBackground() {
        return ClassicPandaBackground;
    }

    public static final long getClassicPandaSurface() {
        return ClassicPandaSurface;
    }

    public static final long getBambooPandaPrimary() {
        return BambooPandaPrimary;
    }

    public static final long getBambooPandaSecondary() {
        return BambooPandaSecondary;
    }

    public static final long getBambooPandaBackground() {
        return BambooPandaBackground;
    }

    public static final long getBambooPandaSurface() {
        return BambooPandaSurface;
    }

    public static final long getNightPandaPrimary() {
        return NightPandaPrimary;
    }

    public static final long getNightPandaSecondary() {
        return NightPandaSecondary;
    }

    public static final long getNightPandaBackground() {
        return NightPandaBackground;
    }

    public static final long getNightPandaSurface() {
        return NightPandaSurface;
    }

    public static final long getSakuraPandaPrimary() {
        return SakuraPandaPrimary;
    }

    public static final long getSakuraPandaSecondary() {
        return SakuraPandaSecondary;
    }

    public static final long getSakuraPandaBackground() {
        return SakuraPandaBackground;
    }

    public static final long getSakuraPandaSurface() {
        return SakuraPandaSurface;
    }

    public static final long getGoldenPandaPrimary() {
        return GoldenPandaPrimary;
    }

    public static final long getGoldenPandaSecondary() {
        return GoldenPandaSecondary;
    }

    public static final long getGoldenPandaBackground() {
        return GoldenPandaBackground;
    }

    public static final long getGoldenPandaSurface() {
        return GoldenPandaSurface;
    }

    public static final long getOceanPandaPrimary() {
        return OceanPandaPrimary;
    }

    public static final long getOceanPandaSecondary() {
        return OceanPandaSecondary;
    }

    public static final long getOceanPandaBackground() {
        return OceanPandaBackground;
    }

    public static final long getOceanPandaSurface() {
        return OceanPandaSurface;
    }

    public static final List<PandaTheme> getPandaThemes() {
        return PandaThemes;
    }

    public static final PandaTheme getPandaTheme(String id) {
        Object obj;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = PandaThemes.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            PandaTheme it2 = (PandaTheme) obj;
            if (Intrinsics.areEqual(it2.getId(), id)) {
                break;
            }
        }
        PandaTheme pandaTheme = (PandaTheme) obj;
        return pandaTheme == null ? (PandaTheme) CollectionsKt.first(PandaThemes) : pandaTheme;
    }
}
