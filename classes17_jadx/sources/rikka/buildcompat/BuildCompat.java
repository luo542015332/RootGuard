package rikka.buildcompat;

import android.os.Build;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class BuildCompat {
    public static boolean isAtLeast(int api) {
        return Build.VERSION.SDK_INT >= api;
    }

    public static boolean isAtLeast5() {
        return true;
    }

    public static boolean isAtLeast5_1() {
        return true;
    }

    public static boolean isAtLeast6() {
        return true;
    }

    public static boolean isAtLeast7() {
        return true;
    }

    public static boolean isAtLeast7_1() {
        return true;
    }

    public static boolean isAtLeast8() {
        return true;
    }

    public static boolean isAtLeast8_1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    public static boolean isAtLeast9() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean isAtLeast10() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean isAtLeast11() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean isAtLeast12() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public static boolean isAtLeast12L() {
        return Build.VERSION.SDK_INT >= 32;
    }

    public static boolean isAtLeast13() {
        return Build.VERSION.SDK_INT >= 33;
    }

    public static boolean isAtLeast14() {
        return (isAtLeast13() && Build.VERSION.PREVIEW_SDK_INT > 0) || Build.VERSION.SDK_INT >= 34;
    }

    public static boolean isAtLeastL() {
        return isAtLeast5();
    }

    public static boolean isAtLeastL_MR1() {
        return isAtLeast5_1();
    }

    public static boolean isAtLeastM() {
        return isAtLeast6();
    }

    public static boolean isAtLeastN() {
        return isAtLeast7();
    }

    public static boolean isAtLeastN_MR1() {
        return isAtLeast7_1();
    }

    public static boolean isAtLeastO() {
        return isAtLeast8();
    }

    public static boolean isAtLeastO_MR1() {
        return isAtLeast8_1();
    }

    public static boolean isAtLeastP() {
        return isAtLeast9();
    }

    public static boolean isAtLeastQ() {
        return isAtLeast10();
    }

    public static boolean isAtLeastR() {
        return isAtLeast11();
    }

    public static boolean isAtLeastS() {
        return isAtLeast12();
    }

    public static boolean isAtLeastS_V2() {
        return isAtLeast12L();
    }

    public static boolean isAtLeastT() {
        return isAtLeast13();
    }

    public static boolean isAtLeastU() {
        return isAtLeast14();
    }
}
