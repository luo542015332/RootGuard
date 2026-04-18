package com.github.kyuubiran.ezxhelper.utils;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.github.kyuubiran.ezxhelper.init.InitFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: ViewUtils.kt */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n\u001a3\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f*\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0007\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000f\u001a/\u0010\u0013\u001a\u0004\u0018\u00010\r*\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0007\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000f\u001a>\u0010\u0014\u001a\u0004\u0018\u0001H\u0015\"\b\b\u0000\u0010\u0015*\u00020\r*\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0007\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000f¢\u0006\u0002\u0010\u0016\u001a\u0014\u0010\u0017\u001a\u0004\u0018\u00010\r*\u00020\u00182\u0006\u0010\u0007\u001a\u00020\b\u001a\u0014\u0010\u0017\u001a\u0004\u0018\u00010\r*\u00020\r2\u0006\u0010\u0007\u001a\u00020\b\u001a3\u0010\u0019\u001a\u00020\u001a*\u00020\u00022!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0007\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u001a0\u000fH\u0086\bø\u0001\u0000\u001aH\u0010\u001c\u001a\u00020\u001a*\u00020\u000226\u0010\u001b\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0010\u0012\b\b\u0007\u0012\u0004\b\b(\u001e\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0007\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u001a0\u001dH\u0086\bø\u0001\u0000\u001a\n\u0010\u001f\u001a\u00020\u0012*\u00020\u0002\u001a\n\u0010 \u001a\u00020\u0012*\u00020\u0002\u001a\n\u0010!\u001a\u00020\u001a*\u00020\r\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"indices", "Lkotlin/ranges/IntRange;", "Landroid/view/ViewGroup;", "getIndices", "(Landroid/view/ViewGroup;)Lkotlin/ranges/IntRange;", "getIdByName", "", "name", "", "ctx", "Landroid/content/Context;", "findAllViewsByCondition", "", "Landroid/view/View;", "condition", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "view", "", "findViewByCondition", "findViewByConditionAs", "T", "(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Landroid/view/View;", "findViewByIdName", "Landroid/app/Activity;", "forEach", "", "action", "forEachIndexed", "Lkotlin/Function2;", "index", "isEmpty", "isNotEmpty", "setViewZeroSize", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class ViewUtilsKt {
    public static final void setViewZeroSize(View $this$setViewZeroSize) {
        Intrinsics.checkNotNullParameter($this$setViewZeroSize, "<this>");
        $this$setViewZeroSize.getLayoutParams().height = 0;
        $this$setViewZeroSize.getLayoutParams().width = 0;
    }

    public static final IntRange getIndices(ViewGroup $this$indices) {
        Intrinsics.checkNotNullParameter($this$indices, "<this>");
        return RangesKt.until(0, $this$indices.getChildCount());
    }

    public static final void forEach(ViewGroup $this$forEach, Function1<? super View, Unit> action) {
        Intrinsics.checkNotNullParameter($this$forEach, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        IntRange until = RangesKt.until(0, $this$forEach.getChildCount());
        int index = until.getFirst();
        int last = until.getLast();
        if (index > last) {
            return;
        }
        while (true) {
            View childAt = $this$forEach.getChildAt(index);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            action.invoke(childAt);
            if (index == last) {
                return;
            } else {
                index++;
            }
        }
    }

    public static final void forEachIndexed(ViewGroup $this$forEachIndexed, Function2<? super Integer, ? super View, Unit> action) {
        Intrinsics.checkNotNullParameter($this$forEachIndexed, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        IntRange until = RangesKt.until(0, $this$forEachIndexed.getChildCount());
        int index = until.getFirst();
        int last = until.getLast();
        if (index > last) {
            return;
        }
        while (true) {
            Integer valueOf = Integer.valueOf(index);
            View childAt = $this$forEachIndexed.getChildAt(index);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            action.invoke(valueOf, childAt);
            if (index == last) {
                return;
            } else {
                index++;
            }
        }
    }

    public static final boolean isEmpty(ViewGroup $this$isEmpty) {
        Intrinsics.checkNotNullParameter($this$isEmpty, "<this>");
        return $this$isEmpty.getChildCount() == 0;
    }

    public static final boolean isNotEmpty(ViewGroup $this$isNotEmpty) {
        Intrinsics.checkNotNullParameter($this$isNotEmpty, "<this>");
        return $this$isNotEmpty.getChildCount() != 0;
    }

    public static final View findViewByCondition(ViewGroup $this$findViewByCondition, Function1<? super View, Boolean> condition) {
        View v;
        Intrinsics.checkNotNullParameter($this$findViewByCondition, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        IntRange until = RangesKt.until(0, $this$findViewByCondition.getChildCount());
        int index$iv = until.getFirst();
        int last = until.getLast();
        if (index$iv > last) {
            return null;
        }
        while (true) {
            View it = $this$findViewByCondition.getChildAt(index$iv);
            Intrinsics.checkNotNullExpressionValue(it, "getChildAt(index)");
            if (condition.invoke(it).booleanValue()) {
                return it;
            }
            if ((it instanceof ViewGroup) && (v = findViewByCondition((ViewGroup) it, condition)) != null) {
                return v;
            }
            if (index$iv == last) {
                return null;
            }
            index$iv++;
        }
    }

    public static final List<View> findAllViewsByCondition(ViewGroup $this$findAllViewsByCondition, Function1<? super View, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$findAllViewsByCondition, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        List list = new ArrayList();
        IntRange until = RangesKt.until(0, $this$findAllViewsByCondition.getChildCount());
        int index$iv = until.getFirst();
        int last = until.getLast();
        if (index$iv <= last) {
            while (true) {
                View it = $this$findAllViewsByCondition.getChildAt(index$iv);
                Intrinsics.checkNotNullExpressionValue(it, "getChildAt(index)");
                if (condition.invoke(it).booleanValue()) {
                    list.add(it);
                } else if (it instanceof ViewGroup) {
                    List v = findAllViewsByCondition((ViewGroup) it, condition);
                    if (!v.isEmpty()) {
                        list.addAll(v);
                    }
                }
                if (index$iv == last) {
                    break;
                }
                index$iv++;
            }
        }
        return list;
    }

    public static final <T extends View> T findViewByConditionAs(ViewGroup viewGroup, Function1<? super View, Boolean> condition) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return (T) findViewByCondition(viewGroup, condition);
    }

    public static /* synthetic */ int getIdByName$default(String str, Context context, int i, Object obj) {
        if ((i & 2) != 0) {
            context = InitFields.INSTANCE.getAppContext();
        }
        return getIdByName(str, context);
    }

    public static final int getIdByName(String name, Context ctx) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        return ctx.getResources().getIdentifier(name, "id", ctx.getPackageName());
    }

    public static final View findViewByIdName(View $this$findViewByIdName, String name) {
        Intrinsics.checkNotNullParameter($this$findViewByIdName, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Context context = $this$findViewByIdName.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "this.context");
        int id = getIdByName(name, context);
        if (id == 0) {
            return null;
        }
        return $this$findViewByIdName.findViewById(id);
    }

    public static final View findViewByIdName(Activity $this$findViewByIdName, String name) {
        Intrinsics.checkNotNullParameter($this$findViewByIdName, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int id = getIdByName(name, $this$findViewByIdName);
        if (id == 0) {
            return null;
        }
        return $this$findViewByIdName.findViewById(id);
    }
}
