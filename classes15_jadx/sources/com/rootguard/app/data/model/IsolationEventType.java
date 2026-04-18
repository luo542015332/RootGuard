package com.rootguard.app.data.model;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0087\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/rootguard/app/data/model/IsolationEventType;", "", "(Ljava/lang/String;I)V", "COMMAND_BLOCKED", "COMMAND_ALLOWED", "PATH_BLOCKED", "PATH_ALLOWED", "ISOLATION_ENABLED", "ISOLATION_DISABLED", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class IsolationEventType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ IsolationEventType[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final IsolationEventType COMMAND_BLOCKED = new IsolationEventType("COMMAND_BLOCKED", 0);
    public static final IsolationEventType COMMAND_ALLOWED = new IsolationEventType("COMMAND_ALLOWED", 1);
    public static final IsolationEventType PATH_BLOCKED = new IsolationEventType("PATH_BLOCKED", 2);
    public static final IsolationEventType PATH_ALLOWED = new IsolationEventType("PATH_ALLOWED", 3);
    public static final IsolationEventType ISOLATION_ENABLED = new IsolationEventType("ISOLATION_ENABLED", 4);
    public static final IsolationEventType ISOLATION_DISABLED = new IsolationEventType("ISOLATION_DISABLED", 5);

    private static final /* synthetic */ IsolationEventType[] $values() {
        return new IsolationEventType[]{COMMAND_BLOCKED, COMMAND_ALLOWED, PATH_BLOCKED, PATH_ALLOWED, ISOLATION_ENABLED, ISOLATION_DISABLED};
    }

    public static EnumEntries<IsolationEventType> getEntries() {
        return $ENTRIES;
    }

    public static IsolationEventType valueOf(String str) {
        return (IsolationEventType) Enum.valueOf(IsolationEventType.class, str);
    }

    public static IsolationEventType[] values() {
        return (IsolationEventType[]) $VALUES.clone();
    }

    /* compiled from: IsolationConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/rootguard/app/data/model/IsolationEventType$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/rootguard/app/data/model/IsolationEventType;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) IsolationEventType.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<IsolationEventType> serializer() {
            return get$cachedSerializer();
        }
    }

    private IsolationEventType(String $enum$name, int $enum$ordinal) {
    }

    static {
        IsolationEventType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: com.rootguard.app.data.model.IsolationEventType.Companion.1
            public final KSerializer<Object> invoke() {
                return EnumsKt.createSimpleEnumSerializer("com.rootguard.app.data.model.IsolationEventType", IsolationEventType.values());
            }
        });
    }
}
