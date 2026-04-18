package com.github.kyuubiran.ezxhelper.utils;

import com.github.kyuubiran.ezxhelper.init.InitFields;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* compiled from: DexDescriptor.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u0000 \u001f2\u00020\u00012\u00020\u0002:\u0001\u001fB\u0017\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u0017\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0014J\u0017\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0017J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0016H\u0002J\u0014\u0010\u001a\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0004H\u0016R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;", "Ljava/io/Serializable;", "", "sig", "", "type", "Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;", "(Ljava/lang/String;Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;)V", "declaringClass", "name", "signature", "equals", "", "other", "", "getDeclaringClassName", "getField", "Ljava/lang/reflect/Field;", "clzLoader", "Ljava/lang/ClassLoader;", "getField$EzXHelper_release", "getMethod", "Ljava/lang/reflect/Method;", "getMethod$EzXHelper_release", "getMethodTypeDesc", "method", "getTypeSig", "Ljava/lang/Class;", "hashCode", "", "toString", "Companion", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class DexDescriptor implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String declaringClass;
    private String name;
    private String signature;

    /* compiled from: DexDescriptor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Companion.TYPE.values().length];
            iArr[Companion.TYPE.FIELD.ordinal()] = 1;
            iArr[Companion.TYPE.METHOD.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ DexDescriptor(String str, Companion.TYPE type, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, type);
    }

    private DexDescriptor(String sig, Companion.TYPE type) {
        switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
                int retIdx = StringsKt.indexOf$default((CharSequence) sig, "->", 0, false, 6, (Object) null);
                int typeIdx = StringsKt.indexOf$default((CharSequence) sig, AbstractJsonLexerKt.COLON, retIdx, false, 4, (Object) null);
                String substring = sig.substring(0, retIdx);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                this.declaringClass = substring;
                String substring2 = sig.substring(retIdx + 2, typeIdx);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                this.name = substring2;
                String substring3 = sig.substring(typeIdx + 1);
                Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
                this.signature = substring3;
                return;
            case 2:
                int retIdx2 = StringsKt.indexOf$default((CharSequence) sig, "->", 0, false, 6, (Object) null);
                int argsIdx = StringsKt.indexOf$default((CharSequence) sig, '(', retIdx2, false, 4, (Object) null);
                String substring4 = sig.substring(0, retIdx2);
                Intrinsics.checkNotNullExpressionValue(substring4, "this as java.lang.String…ing(startIndex, endIndex)");
                this.declaringClass = substring4;
                String substring5 = sig.substring(retIdx2 + 2, argsIdx);
                Intrinsics.checkNotNullExpressionValue(substring5, "this as java.lang.String…ing(startIndex, endIndex)");
                this.name = substring5;
                String substring6 = sig.substring(argsIdx);
                Intrinsics.checkNotNullExpressionValue(substring6, "this as java.lang.String).substring(startIndex)");
                this.signature = substring6;
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public Object clone() {
        return super.clone();
    }

    /* compiled from: DexDescriptor.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\t"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion;", "", "()V", "newFieldDesc", "Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;", "sig", "", "newMethodDesc", "TYPE", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static final class Companion {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DexDescriptor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;", "", "(Ljava/lang/String;I)V", "METHOD", "FIELD", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
        public enum TYPE {
            METHOD,
            FIELD
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DexDescriptor newMethodDesc(String sig) {
            Intrinsics.checkNotNullParameter(sig, "sig");
            return new DexDescriptor(sig, TYPE.METHOD, null);
        }

        public final DexDescriptor newFieldDesc(String sig) {
            Intrinsics.checkNotNullParameter(sig, "sig");
            return new DexDescriptor(sig, TYPE.FIELD, null);
        }
    }

    public String toString() {
        return this.declaringClass + "->" + this.name + this.signature;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        return Intrinsics.areEqual(toString(), other.toString());
    }

    public int hashCode() {
        return toString().hashCode();
    }

    private final String getDeclaringClassName() {
        String str = this.declaringClass;
        String substring = str.substring(1, str.length() - 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return StringsKt.replace$default(substring, '/', '.', false, 4, (Object) null);
    }

    private final String getTypeSig(Class<?> type) {
        if (type.isPrimitive()) {
            String name = type.getName();
            if (Intrinsics.areEqual(name, Void.TYPE.getName())) {
                return "V";
            }
            if (Intrinsics.areEqual(name, Integer.TYPE.getName())) {
                return "I";
            }
            if (Intrinsics.areEqual(name, Boolean.TYPE.getName())) {
                return "Z";
            }
            if (Intrinsics.areEqual(name, Byte.TYPE.getName())) {
                return "B";
            }
            if (Intrinsics.areEqual(name, Long.TYPE.getName())) {
                return "L";
            }
            if (Intrinsics.areEqual(name, Float.TYPE.getName())) {
                return "F";
            }
            if (Intrinsics.areEqual(name, Double.TYPE.getName())) {
                return "D";
            }
            if (Intrinsics.areEqual(name, Character.TYPE.getName())) {
                return "C";
            }
            if (Intrinsics.areEqual(name, Short.TYPE.getName())) {
                return "S";
            }
            throw new IllegalStateException("Type: " + type.getName() + " is not a primitive type");
        }
        if (type.isArray()) {
            Class<?> componentType = type.getComponentType();
            Intrinsics.checkNotNull(componentType);
            return "[" + getTypeSig(componentType);
        }
        String name2 = type.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "type.name");
        return "L" + StringsKt.replace$default(name2, '.', '/', false, 4, (Object) null) + ";";
    }

    private final String getMethodTypeDesc(Method method) {
        StringBuilder $this$getMethodTypeDesc_u24lambda_u2d1 = new StringBuilder();
        $this$getMethodTypeDesc_u24lambda_u2d1.append("(");
        Object[] parameterTypes = method.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "method.parameterTypes");
        Object[] $this$forEach$iv = parameterTypes;
        for (Object element$iv : $this$forEach$iv) {
            Class it = (Class) element$iv;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            $this$getMethodTypeDesc_u24lambda_u2d1.append(getTypeSig(it));
        }
        $this$getMethodTypeDesc_u24lambda_u2d1.append(")");
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkNotNullExpressionValue(returnType, "method.returnType");
        $this$getMethodTypeDesc_u24lambda_u2d1.append(getTypeSig(returnType));
        String sb = $this$getMethodTypeDesc_u24lambda_u2d1.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "StringBuilder().apply(builderAction).toString()");
        return sb;
    }

    public static /* synthetic */ Method getMethod$EzXHelper_release$default(DexDescriptor dexDescriptor, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return dexDescriptor.getMethod$EzXHelper_release(classLoader);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ee, code lost:
    
        throw new java.lang.NoSuchMethodException(r17.declaringClass + "->" + r17.name + r17.signature);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.reflect.Method getMethod$EzXHelper_release(java.lang.ClassLoader r18) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.kyuubiran.ezxhelper.utils.DexDescriptor.getMethod$EzXHelper_release(java.lang.ClassLoader):java.lang.reflect.Method");
    }

    public static /* synthetic */ Field getField$EzXHelper_release$default(DexDescriptor dexDescriptor, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return dexDescriptor.getField$EzXHelper_release(classLoader);
    }

    public final Field getField$EzXHelper_release(ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        try {
            String str = this.declaringClass;
            String substring = str.substring(1, str.length() - 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Class loadClass = ClassUtilKt.loadClass(StringsKt.replace$default(substring, '/', '.', false, 4, (Object) null), clzLoader);
            Field[] declaredFields = loadClass.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "clz.declaredFields");
            Field[] $this$forEach$iv = declaredFields;
            for (Object element$iv : $this$forEach$iv) {
                Field f = (Field) element$iv;
                if (Intrinsics.areEqual(f.getName(), this.name)) {
                    Class<?> type = f.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "f.type");
                    if (Intrinsics.areEqual(getTypeSig(type), this.signature)) {
                        Intrinsics.checkNotNullExpressionValue(f, "f");
                        return f;
                    }
                }
            }
            while (true) {
                Class it = loadClass.getSuperclass();
                if (it != null) {
                    loadClass = it;
                } else {
                    it = null;
                }
                if (it != null) {
                    Object[] declaredFields2 = loadClass.getDeclaredFields();
                    Intrinsics.checkNotNullExpressionValue(declaredFields2, "clz.declaredFields");
                    Object[] $this$forEach$iv2 = declaredFields2;
                    for (Object element$iv2 : $this$forEach$iv2) {
                        Field f2 = (Field) element$iv2;
                        Intrinsics.checkNotNullExpressionValue(f2, "f");
                        Field $this$isPrivate$iv = f2;
                        if (!Modifier.isPrivate($this$isPrivate$iv.getModifiers())) {
                            Field $this$isStatic$iv = f2;
                            if (!Modifier.isStatic($this$isStatic$iv.getModifiers()) && Intrinsics.areEqual(f2.getName(), this.name)) {
                                Class<?> type2 = f2.getType();
                                Intrinsics.checkNotNullExpressionValue(type2, "f.type");
                                if (Intrinsics.areEqual(getTypeSig(type2), this.signature)) {
                                    return f2;
                                }
                            }
                        }
                    }
                } else {
                    throw new NoSuchFieldException(this.declaringClass + "->" + this.name + this.signature);
                }
            }
        } catch (ClassNotFoundException e) {
            Throwable initCause = new NoSuchFieldException(this.declaringClass + "->" + this.name + this.signature).initCause(e);
            Intrinsics.checkNotNullExpressionValue(initCause, "NoSuchFieldException(\"$d…$signature\").initCause(e)");
            throw initCause;
        }
    }
}
