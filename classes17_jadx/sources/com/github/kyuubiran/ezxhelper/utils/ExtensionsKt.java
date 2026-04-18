package com.github.kyuubiran.ezxhelper.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Extensions.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aA\u0010\u0000\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00032!\b\b\u0010\u0004\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aC\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00062\u001d\b\b\u0010\u0004\u001a\u0017\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\f¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aC\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00062\u001d\b\b\u0010\u0004\u001a\u0017\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u000f¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a;\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0002*\u0006\u0012\u0002\b\u00030\u00032!\b\b\u0010\u0004\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a=\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0002*\u0006\u0012\u0002\b\u00030\u00032!\b\b\u0010\u0004\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0007¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a=\u0010\u0012\u001a\u00020\n*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00062\u001d\b\b\u0010\u0004\u001a\u0017\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\f¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a?\u0010\u0013\u001a\u0004\u0018\u00010\n*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00062\u001d\b\b\u0010\u0004\u001a\u0017\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\f¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a=\u0010\u0014\u001a\u00020\u000e*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00062\u001d\b\b\u0010\u0004\u001a\u0017\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u000f¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a?\u0010\u0015\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00062\u001d\b\b\u0010\u0004\u001a\u0017\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u000f¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"findAllConstructors", "", "Ljava/lang/reflect/Constructor;", "Ljava/lang/Class;", "condition", "Lkotlin/Function1;", "", "Lcom/github/kyuubiran/ezxhelper/utils/ConstructorCondition;", "Lkotlin/ExtensionFunctionType;", "findAllFields", "Ljava/lang/reflect/Field;", "findSuper", "Lcom/github/kyuubiran/ezxhelper/utils/FieldCondition;", "findAllMethods", "Ljava/lang/reflect/Method;", "Lcom/github/kyuubiran/ezxhelper/utils/MethodCondition;", "findConstructor", "findConstructorOrNull", "findField", "findFieldOrNull", "findMethod", "findMethodOrNull", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class ExtensionsKt {
    public static /* synthetic */ Method findMethod$default(Class $this$findMethod_u24default, boolean findSuper, Function1 condition, int i, Object obj) {
        if ((i & 1) != 0) {
            findSuper = false;
        }
        Intrinsics.checkNotNullParameter($this$findMethod_u24default, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findMethod($this$findMethod_u24default, findSuper, condition);
    }

    public static final Method findMethod(Class<?> cls, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findMethod(cls, findSuper, condition);
    }

    public static /* synthetic */ Method findMethodOrNull$default(Class $this$findMethodOrNull_u24default, boolean findSuper, Function1 condition, int i, Object obj) {
        if ((i & 1) != 0) {
            findSuper = false;
        }
        Intrinsics.checkNotNullParameter($this$findMethodOrNull_u24default, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findMethodOrNull($this$findMethodOrNull_u24default, findSuper, condition);
    }

    public static final Method findMethodOrNull(Class<?> cls, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findMethodOrNull(cls, findSuper, condition);
    }

    public static /* synthetic */ List findAllMethods$default(Class $this$findAllMethods_u24default, boolean findSuper, Function1 condition, int i, Object obj) {
        if ((i & 1) != 0) {
            findSuper = false;
        }
        Intrinsics.checkNotNullParameter($this$findAllMethods_u24default, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findAllMethods((Class<?>) $this$findAllMethods_u24default, findSuper, (Function1<? super Method, Boolean>) condition);
    }

    public static final List<Method> findAllMethods(Class<?> cls, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findAllMethods(cls, findSuper, condition);
    }

    public static /* synthetic */ Field findField$default(Class $this$findField_u24default, boolean findSuper, Function1 condition, int i, Object obj) {
        if ((i & 1) != 0) {
            findSuper = false;
        }
        Intrinsics.checkNotNullParameter($this$findField_u24default, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return FieldUtilsKt.findField($this$findField_u24default, findSuper, condition);
    }

    public static final Field findField(Class<?> cls, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return FieldUtilsKt.findField(cls, findSuper, condition);
    }

    public static /* synthetic */ Field findFieldOrNull$default(Class $this$findFieldOrNull_u24default, boolean findSuper, Function1 condition, int i, Object obj) {
        if ((i & 1) != 0) {
            findSuper = false;
        }
        Intrinsics.checkNotNullParameter($this$findFieldOrNull_u24default, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return FieldUtilsKt.findFieldOrNull($this$findFieldOrNull_u24default, findSuper, condition);
    }

    public static final Field findFieldOrNull(Class<?> cls, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return FieldUtilsKt.findFieldOrNull(cls, findSuper, condition);
    }

    public static /* synthetic */ List findAllFields$default(Class $this$findAllFields_u24default, boolean findSuper, Function1 condition, int i, Object obj) {
        if ((i & 1) != 0) {
            findSuper = false;
        }
        Intrinsics.checkNotNullParameter($this$findAllFields_u24default, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return FieldUtilsKt.findAllFields($this$findAllFields_u24default, findSuper, condition);
    }

    public static final List<Field> findAllFields(Class<?> cls, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return FieldUtilsKt.findAllFields(cls, findSuper, condition);
    }

    public static final Constructor<?> findConstructor(Class<?> cls, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findConstructor(cls, condition);
    }

    public static final Constructor<?> findConstructorOrNull(Class<?> cls, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findConstructorOrNull(cls, condition);
    }

    public static final List<Constructor<?>> findAllConstructors(Class<?> cls, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return MethodUtilsKt.findAllConstructors(cls, condition);
    }
}
