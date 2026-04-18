package com.github.kyuubiran.ezxhelper.utils;

import de.robv.android.xposed.XC_MethodHook;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HookUtils.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J-\u0010\u000e\u001a\u00020\u000b2%\u0010\u000e\u001a!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006j\u0002`\fJ\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0014J-\u0010\u0010\u001a\u00020\u000b2%\u0010\u0010\u001a!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006j\u0002`\fJ\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0014R1\u0010\u0005\u001a%\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006j\u0004\u0018\u0001`\fX\u0082\u000e¢\u0006\u0002\n\u0000R1\u0010\r\u001a%\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006j\u0004\u0018\u0001`\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/XposedHookFactory;", "Lde/robv/android/xposed/XC_MethodHook;", "priority", "", "(I)V", "afterMethod", "Lkotlin/Function1;", "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;", "Lkotlin/ParameterName;", "name", "param", "", "Lcom/github/kyuubiran/ezxhelper/utils/Hooker;", "beforeMethod", "after", "afterHookedMethod", "before", "beforeHookedMethod", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class XposedHookFactory extends XC_MethodHook {
    private Function1<? super XC_MethodHook.MethodHookParam, Unit> afterMethod;
    private Function1<? super XC_MethodHook.MethodHookParam, Unit> beforeMethod;

    public XposedHookFactory() {
        this(0, 1, null);
    }

    public XposedHookFactory(int priority) {
        super(priority);
    }

    public /* synthetic */ XposedHookFactory(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 50 : i);
    }

    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
        Intrinsics.checkNotNullParameter(param, "param");
        Function1<? super XC_MethodHook.MethodHookParam, Unit> function1 = this.beforeMethod;
        if (function1 != null) {
            function1.invoke(param);
        }
    }

    protected void afterHookedMethod(XC_MethodHook.MethodHookParam param) {
        Intrinsics.checkNotNullParameter(param, "param");
        Function1<? super XC_MethodHook.MethodHookParam, Unit> function1 = this.afterMethod;
        if (function1 != null) {
            function1.invoke(param);
        }
    }

    public final void before(Function1<? super XC_MethodHook.MethodHookParam, Unit> before) {
        Intrinsics.checkNotNullParameter(before, "before");
        this.beforeMethod = before;
    }

    public final void after(Function1<? super XC_MethodHook.MethodHookParam, Unit> after) {
        Intrinsics.checkNotNullParameter(after, "after");
        this.afterMethod = after;
    }
}
