package com.github.kyuubiran.ezxhelper.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MemberExtensions.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0004\"\u001a\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00058Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0006\"\u001a\u0010\u0007\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0007\u0010\t\"\u0016\u0010\u0007\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u000b\"\u001a\u0010\f\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\f\u0010\t\"\u0016\u0010\f\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b\"\u0016\u0010\r\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b\"\u001a\u0010\u000e\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\t\"\u0016\u0010\u000e\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000b\"\u001a\u0010\u000f\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u000f\u0010\t\"\u0016\u0010\u000f\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000b\"\u0016\u0010\u0010\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000b\"\u001a\u0010\u0011\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0011\u0010\t\"\u0016\u0010\u0011\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000b\"\u001a\u0010\u0012\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0012\u0010\t\"\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000b\"\u001a\u0010\u0013\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0013\u0010\t\"\u0016\u0010\u0013\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000b\"\u001a\u0010\u0014\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\t\"\u0016\u0010\u0014\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000b\"\u0016\u0010\u0015\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000b\"\u0016\u0010\u0016\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000b\"\u0016\u0010\u0017\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000b\"\u001a\u0010\u0018\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0018\u0010\t\"\u0016\u0010\u0018\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u000b\"\u001a\u0010\u0019\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0019\u0010\t\"\u0016\u0010\u0019\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000b\"\u001a\u0010\u001a\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001a\u0010\t\"\u0016\u0010\u001a\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u000b\"\u001a\u0010\u001b\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001b\u0010\t\"\u0016\u0010\u001b\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000b\"\u0016\u0010\u001c\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u000b\"\u0016\u0010\u001d\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u000b\"\u0016\u0010\u001e\u001a\u00020\u0001*\u00020\n8Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u000b\"\u001a\u0010\u001f\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b \u0010\u0004\"\u0016\u0010\u001f\u001a\u00020\u0001*\u00020\u00058Æ\u0002¢\u0006\u0006\u001a\u0004\b \u0010\u0006\"\u001a\u0010!\u001a\u00020\"*\u0006\u0012\u0002\b\u00030\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b#\u0010$\"\u0016\u0010!\u001a\u00020\"*\u00020\u00058Æ\u0002¢\u0006\u0006\u001a\u0004\b#\u0010%¨\u0006&"}, d2 = {"emptyParam", "", "Ljava/lang/reflect/Constructor;", "getEmptyParam", "(Ljava/lang/reflect/Constructor;)Z", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)Z", "isAbstract", "Ljava/lang/Class;", "(Ljava/lang/Class;)Z", "Ljava/lang/reflect/Member;", "(Ljava/lang/reflect/Member;)Z", "isFinal", "isNative", "isNotAbstract", "isNotFinal", "isNotNative", "isNotPrivate", "isNotProtected", "isNotPublic", "isNotStatic", "isNotSynchronized", "isNotTransient", "isNotVolatile", "isPrivate", "isProtected", "isPublic", "isStatic", "isSynchronized", "isTransient", "isVolatile", "notEmptyParam", "getNotEmptyParam", "paramCount", "", "getParamCount", "(Ljava/lang/reflect/Constructor;)I", "(Ljava/lang/reflect/Method;)I", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class MemberExtensionsKt {
    public static final boolean isStatic(Member $this$isStatic) {
        Intrinsics.checkNotNullParameter($this$isStatic, "<this>");
        return Modifier.isStatic($this$isStatic.getModifiers());
    }

    public static final boolean isNotStatic(Member $this$isNotStatic) {
        Intrinsics.checkNotNullParameter($this$isNotStatic, "<this>");
        return !Modifier.isStatic($this$isNotStatic.getModifiers());
    }

    public static final boolean isStatic(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return Modifier.isStatic(cls.getModifiers());
    }

    public static final boolean isNotStatic(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return !Modifier.isStatic(cls.getModifiers());
    }

    public static final boolean isPublic(Member $this$isPublic) {
        Intrinsics.checkNotNullParameter($this$isPublic, "<this>");
        return Modifier.isPublic($this$isPublic.getModifiers());
    }

    public static final boolean isNotPublic(Member $this$isNotPublic) {
        Intrinsics.checkNotNullParameter($this$isNotPublic, "<this>");
        return !Modifier.isPublic($this$isNotPublic.getModifiers());
    }

    public static final boolean isPublic(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return Modifier.isPublic(cls.getModifiers());
    }

    public static final boolean isNotPublic(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return !Modifier.isPublic(cls.getModifiers());
    }

    public static final boolean isProtected(Member $this$isProtected) {
        Intrinsics.checkNotNullParameter($this$isProtected, "<this>");
        return Modifier.isProtected($this$isProtected.getModifiers());
    }

    public static final boolean isNotProtected(Member $this$isNotProtected) {
        Intrinsics.checkNotNullParameter($this$isNotProtected, "<this>");
        return !Modifier.isProtected($this$isNotProtected.getModifiers());
    }

    public static final boolean isProtected(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return Modifier.isProtected(cls.getModifiers());
    }

    public static final boolean isNotProtected(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return !Modifier.isProtected(cls.getModifiers());
    }

    public static final boolean isPrivate(Member $this$isPrivate) {
        Intrinsics.checkNotNullParameter($this$isPrivate, "<this>");
        return Modifier.isPrivate($this$isPrivate.getModifiers());
    }

    public static final boolean isNotPrivate(Member $this$isNotPrivate) {
        Intrinsics.checkNotNullParameter($this$isNotPrivate, "<this>");
        return !Modifier.isPrivate($this$isNotPrivate.getModifiers());
    }

    public static final boolean isPrivate(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return Modifier.isPrivate(cls.getModifiers());
    }

    public static final boolean isNotPrivate(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return !Modifier.isPrivate(cls.getModifiers());
    }

    public static final boolean isFinal(Member $this$isFinal) {
        Intrinsics.checkNotNullParameter($this$isFinal, "<this>");
        return Modifier.isFinal($this$isFinal.getModifiers());
    }

    public static final boolean isNotFinal(Member $this$isNotFinal) {
        Intrinsics.checkNotNullParameter($this$isNotFinal, "<this>");
        return !Modifier.isFinal($this$isNotFinal.getModifiers());
    }

    public static final boolean isFinal(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return Modifier.isFinal(cls.getModifiers());
    }

    public static final boolean isNotFinal(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return !Modifier.isFinal(cls.getModifiers());
    }

    public static final boolean isNative(Member $this$isNative) {
        Intrinsics.checkNotNullParameter($this$isNative, "<this>");
        return Modifier.isNative($this$isNative.getModifiers());
    }

    public static final boolean isNotNative(Member $this$isNotNative) {
        Intrinsics.checkNotNullParameter($this$isNotNative, "<this>");
        return !Modifier.isNative($this$isNotNative.getModifiers());
    }

    public static final boolean isSynchronized(Member $this$isSynchronized) {
        Intrinsics.checkNotNullParameter($this$isSynchronized, "<this>");
        return Modifier.isSynchronized($this$isSynchronized.getModifiers());
    }

    public static final boolean isNotSynchronized(Member $this$isNotSynchronized) {
        Intrinsics.checkNotNullParameter($this$isNotSynchronized, "<this>");
        return !Modifier.isSynchronized($this$isNotSynchronized.getModifiers());
    }

    public static final boolean isAbstract(Member $this$isAbstract) {
        Intrinsics.checkNotNullParameter($this$isAbstract, "<this>");
        return Modifier.isAbstract($this$isAbstract.getModifiers());
    }

    public static final boolean isNotAbstract(Member $this$isNotAbstract) {
        Intrinsics.checkNotNullParameter($this$isNotAbstract, "<this>");
        return !Modifier.isAbstract($this$isNotAbstract.getModifiers());
    }

    public static final boolean isAbstract(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return Modifier.isAbstract(cls.getModifiers());
    }

    public static final boolean isNotAbstract(Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        return !Modifier.isAbstract(cls.getModifiers());
    }

    public static final boolean isTransient(Member $this$isTransient) {
        Intrinsics.checkNotNullParameter($this$isTransient, "<this>");
        return Modifier.isTransient($this$isTransient.getModifiers());
    }

    public static final boolean isNotTransient(Member $this$isNotTransient) {
        Intrinsics.checkNotNullParameter($this$isNotTransient, "<this>");
        return !Modifier.isTransient($this$isNotTransient.getModifiers());
    }

    public static final boolean isVolatile(Member $this$isVolatile) {
        Intrinsics.checkNotNullParameter($this$isVolatile, "<this>");
        return Modifier.isVolatile($this$isVolatile.getModifiers());
    }

    public static final boolean isNotVolatile(Member $this$isNotVolatile) {
        Intrinsics.checkNotNullParameter($this$isNotVolatile, "<this>");
        return !Modifier.isVolatile($this$isNotVolatile.getModifiers());
    }

    public static final int getParamCount(Method $this$paramCount) {
        Intrinsics.checkNotNullParameter($this$paramCount, "<this>");
        return $this$paramCount.getParameterTypes().length;
    }

    public static final int getParamCount(Constructor<?> constructor) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        return constructor.getParameterTypes().length;
    }

    public static final boolean getEmptyParam(Method $this$emptyParam) {
        Intrinsics.checkNotNullParameter($this$emptyParam, "<this>");
        return $this$emptyParam.getParameterTypes().length == 0;
    }

    public static final boolean getNotEmptyParam(Method $this$notEmptyParam) {
        Intrinsics.checkNotNullParameter($this$notEmptyParam, "<this>");
        return $this$notEmptyParam.getParameterTypes().length != 0;
    }

    public static final boolean getEmptyParam(Constructor<?> constructor) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        return constructor.getParameterTypes().length == 0;
    }

    public static final boolean getNotEmptyParam(Constructor<?> constructor) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        return constructor.getParameterTypes().length != 0;
    }
}
