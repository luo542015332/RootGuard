package com.github.kyuubiran.ezxhelper.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Observe.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0013B%\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R\u0010\u0010\b\u001a\u00028\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR$\u0010\u000e\u001a\u00028\u00002\u0006\u0010\r\u001a\u00028\u00008F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/Observe;", "T", "", "init", "onValueChanged", "Lkotlin/Function1;", "", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "_value", "Ljava/lang/Object;", "Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;", "getOnValueChanged", "()Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;", "newValue", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "ValueChangedEvent", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class Observe<T> {
    private T _value;
    private final ValueChangedEvent<T> onValueChanged;

    public Observe(T t, Function1<? super T, Unit> function1) {
        this._value = t;
        ValueChangedEvent<T> valueChangedEvent = new ValueChangedEvent<>();
        this.onValueChanged = valueChangedEvent;
        if (function1 != null) {
            valueChangedEvent.plusAssign(function1);
        }
    }

    public /* synthetic */ Observe(Object obj, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? null : function1);
    }

    public final T getValue() {
        return this._value;
    }

    public final void setValue(T t) {
        synchronized (this) {
            if (!Intrinsics.areEqual(this._value, t)) {
                this._value = t;
                if (this.onValueChanged.getUnsafeInvoke()) {
                    this.onValueChanged.unsafeInvoke(t);
                } else {
                    this.onValueChanged.invoke(t);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final ValueChangedEvent<T> getOnValueChanged() {
        return this.onValueChanged;
    }

    /* compiled from: Observe.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0002\b\t\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\u0017\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006J%\u0010\u0019\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001b¢\u0006\u0002\u0010\u001cJ \u0010\u0019\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dJ\u0006\u0010\u001e\u001a\u00020\u0007J\u0016\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00028\u0001H\u0086\u0002¢\u0006\u0002\u0010!J\u001d\u0010\"\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0002J(\u0010\"\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001bH\u0086\u0002¢\u0006\u0002\u0010\u001cJ#\u0010\"\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dH\u0086\u0002J\u001d\u0010#\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0002J(\u0010#\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001bH\u0086\u0002¢\u0006\u0002\u0010\u001cJ#\u0010#\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dH\u0086\u0002J\u001a\u0010$\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006J%\u0010%\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001b¢\u0006\u0002\u0010\u001cJ \u0010%\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dJ\u0013\u0010\u0011\u001a\u00020\u00072\u0006\u0010 \u001a\u00028\u0001¢\u0006\u0002\u0010!R \u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R7\u0010\b\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006&"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;", "T", "", "()V", "_listeners", "", "Lkotlin/Function1;", "", "onThrow", "", "Lkotlin/ParameterName;", "name", "thr", "getOnThrow", "()Lkotlin/jvm/functions/Function1;", "setOnThrow", "(Lkotlin/jvm/functions/Function1;)V", "unsafeInvoke", "", "getUnsafeInvoke", "()Z", "setUnsafeInvoke", "(Z)V", "add", "listener", "addAll", "listeners", "", "([Lkotlin/jvm/functions/Function1;)V", "", "clear", "invoke", "value", "(Ljava/lang/Object;)V", "minusAssign", "plusAssign", "remove", "removeAll", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static final class ValueChangedEvent<T> {
        private final Set<Function1<T, Unit>> _listeners = new LinkedHashSet();
        private Function1<? super Throwable, Unit> onThrow;
        private boolean unsafeInvoke;

        public final boolean getUnsafeInvoke() {
            return this.unsafeInvoke;
        }

        public final void setUnsafeInvoke(boolean z) {
            this.unsafeInvoke = z;
        }

        public final Function1<Throwable, Unit> getOnThrow() {
            return this.onThrow;
        }

        public final void setOnThrow(Function1<? super Throwable, Unit> function1) {
            this.onThrow = function1;
        }

        public final void add(Function1<? super T, Unit> listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this._listeners.add(listener);
        }

        public final void remove(Function1<? super T, Unit> listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this._listeners.remove(listener);
        }

        public final void addAll(Collection<? extends Function1<? super T, Unit>> listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            this._listeners.addAll(listeners);
        }

        public final void removeAll(Collection<? extends Function1<? super T, Unit>> listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            this._listeners.removeAll(CollectionsKt.toSet(listeners));
        }

        public final void addAll(Function1<T, Unit>[] listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            CollectionsKt.addAll(this._listeners, listeners);
        }

        public final void removeAll(Function1<T, Unit>[] listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            this._listeners.removeAll(ArraysKt.toSet(listeners));
        }

        public final void clear() {
            this._listeners.clear();
        }

        public final void plusAssign(Function1<? super T, Unit> listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            add(listener);
        }

        public final void minusAssign(Function1<? super T, Unit> listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            remove(listener);
        }

        public final void plusAssign(Collection<? extends Function1<? super T, Unit>> listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            addAll(listeners);
        }

        public final void minusAssign(Collection<? extends Function1<? super T, Unit>> listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            removeAll(listeners);
        }

        public final void plusAssign(Function1<T, Unit>[] listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            addAll(listeners);
        }

        public final void minusAssign(Function1<T, Unit>[] listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            removeAll(listeners);
        }

        public final void unsafeInvoke(T value) {
            Iterable $this$forEach$iv = this._listeners;
            for (Object element$iv : $this$forEach$iv) {
                Function1 it = (Function1) element$iv;
                it.invoke(value);
            }
        }

        public final void invoke(T value) {
            int $i$f$retainIf;
            boolean z;
            ValueChangedEvent<T> valueChangedEvent = this;
            Set $this$retainIf$iv = valueChangedEvent._listeners;
            int $i$f$retainIf2 = 0;
            Set $this$filter$iv$iv = $this$retainIf$iv;
            Collection destination$iv$iv$iv = new ArrayList();
            for (T t : $this$filter$iv$iv) {
                Function1 it = (Function1) t;
                try {
                    it.invoke(value);
                    z = true;
                    $i$f$retainIf = $i$f$retainIf2;
                } catch (Throwable e) {
                    $i$f$retainIf = $i$f$retainIf2;
                    Function1<? super Throwable, Unit> function1 = valueChangedEvent.onThrow;
                    if (function1 != null) {
                        function1.invoke(e);
                    }
                    Log.INSTANCE.e("Event invoke failed", e);
                    z = false;
                }
                if (z) {
                    destination$iv$iv$iv.add(t);
                }
                valueChangedEvent = this;
                $i$f$retainIf2 = $i$f$retainIf;
            }
            Iterable $this$forEach$iv$iv = (List) destination$iv$iv$iv;
            for (Object element$iv$iv : $this$forEach$iv$iv) {
                $this$retainIf$iv.remove(element$iv$iv);
            }
        }
    }
}
