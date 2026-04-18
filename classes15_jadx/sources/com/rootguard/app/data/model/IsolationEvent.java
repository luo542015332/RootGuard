package com.rootguard.app.data.model;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 12\u00020\u0001:\u000201BS\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010B;\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u0011J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003J\t\u0010!\u001a\u00020\rHÆ\u0003JE\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rHÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020\u0005HÖ\u0001J&\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.HÁ\u0001¢\u0006\u0002\b/R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u00062"}, d2 = {"Lcom/rootguard/app/data/model/IsolationEvent;", "", "seen1", "", "packageName", "", "type", "Lcom/rootguard/app/data/model/IsolationEventType;", "command", "path", "timestamp", "", "action", "Lcom/rootguard/app/data/model/IsolationAction;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/rootguard/app/data/model/IsolationEventType;Ljava/lang/String;Ljava/lang/String;JLcom/rootguard/app/data/model/IsolationAction;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/rootguard/app/data/model/IsolationEventType;Ljava/lang/String;Ljava/lang/String;JLcom/rootguard/app/data/model/IsolationAction;)V", "getAction", "()Lcom/rootguard/app/data/model/IsolationAction;", "getCommand", "()Ljava/lang/String;", "getPackageName", "getPath", "getTimestamp", "()J", "getType", "()Lcom/rootguard/app/data/model/IsolationEventType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$app_debug", "$serializer", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final /* data */ class IsolationEvent {
    public static final int $stable = 0;
    private final IsolationAction action;
    private final String command;
    private final String packageName;
    private final String path;
    private final long timestamp;
    private final IsolationEventType type;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, IsolationEventType.INSTANCE.serializer(), null, null, null, IsolationAction.INSTANCE.serializer()};

    public static /* synthetic */ IsolationEvent copy$default(IsolationEvent isolationEvent, String str, IsolationEventType isolationEventType, String str2, String str3, long j, IsolationAction isolationAction, int i, Object obj) {
        if ((i & 1) != 0) {
            str = isolationEvent.packageName;
        }
        if ((i & 2) != 0) {
            isolationEventType = isolationEvent.type;
        }
        IsolationEventType isolationEventType2 = isolationEventType;
        if ((i & 4) != 0) {
            str2 = isolationEvent.command;
        }
        String str4 = str2;
        if ((i & 8) != 0) {
            str3 = isolationEvent.path;
        }
        String str5 = str3;
        if ((i & 16) != 0) {
            j = isolationEvent.timestamp;
        }
        long j2 = j;
        if ((i & 32) != 0) {
            isolationAction = isolationEvent.action;
        }
        return isolationEvent.copy(str, isolationEventType2, str4, str5, j2, isolationAction);
    }

    /* renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* renamed from: component2, reason: from getter */
    public final IsolationEventType getType() {
        return this.type;
    }

    /* renamed from: component3, reason: from getter */
    public final String getCommand() {
        return this.command;
    }

    /* renamed from: component4, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    /* renamed from: component5, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* renamed from: component6, reason: from getter */
    public final IsolationAction getAction() {
        return this.action;
    }

    public final IsolationEvent copy(String packageName, IsolationEventType type, String command, String path, long timestamp, IsolationAction action) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(action, "action");
        return new IsolationEvent(packageName, type, command, path, timestamp, action);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IsolationEvent)) {
            return false;
        }
        IsolationEvent isolationEvent = (IsolationEvent) other;
        return Intrinsics.areEqual(this.packageName, isolationEvent.packageName) && this.type == isolationEvent.type && Intrinsics.areEqual(this.command, isolationEvent.command) && Intrinsics.areEqual(this.path, isolationEvent.path) && this.timestamp == isolationEvent.timestamp && this.action == isolationEvent.action;
    }

    public int hashCode() {
        return (((((((((this.packageName.hashCode() * 31) + this.type.hashCode()) * 31) + this.command.hashCode()) * 31) + this.path.hashCode()) * 31) + Long.hashCode(this.timestamp)) * 31) + this.action.hashCode();
    }

    public String toString() {
        return "IsolationEvent(packageName=" + this.packageName + ", type=" + this.type + ", command=" + this.command + ", path=" + this.path + ", timestamp=" + this.timestamp + ", action=" + this.action + ")";
    }

    /* compiled from: IsolationConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/rootguard/app/data/model/IsolationEvent$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/rootguard/app/data/model/IsolationEvent;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<IsolationEvent> serializer() {
            return IsolationEvent$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ IsolationEvent(int seen1, String packageName, IsolationEventType type, String command, String path, long timestamp, IsolationAction action, SerializationConstructorMarker serializationConstructorMarker) {
        if (35 != (seen1 & 35)) {
            PluginExceptionsKt.throwMissingFieldException(seen1, 35, IsolationEvent$$serializer.INSTANCE.getDescriptor());
        }
        this.packageName = packageName;
        this.type = type;
        if ((seen1 & 4) == 0) {
            this.command = "";
        } else {
            this.command = command;
        }
        if ((seen1 & 8) == 0) {
            this.path = "";
        } else {
            this.path = path;
        }
        if ((seen1 & 16) == 0) {
            this.timestamp = System.currentTimeMillis();
        } else {
            this.timestamp = timestamp;
        }
        this.action = action;
    }

    public IsolationEvent(String packageName, IsolationEventType type, String command, String path, long timestamp, IsolationAction action) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(action, "action");
        this.packageName = packageName;
        this.type = type;
        this.command = command;
        this.path = path;
        this.timestamp = timestamp;
        this.action = action;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$app_debug(IsolationEvent self, CompositeEncoder output, SerialDescriptor serialDesc) {
        SerializationStrategy[] serializationStrategyArr = $childSerializers;
        boolean z = false;
        output.encodeStringElement(serialDesc, 0, self.packageName);
        output.encodeSerializableElement(serialDesc, 1, serializationStrategyArr[1], self.type);
        if (output.shouldEncodeElementDefault(serialDesc, 2) ? true : !Intrinsics.areEqual(self.command, "")) {
            output.encodeStringElement(serialDesc, 2, self.command);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) ? true : !Intrinsics.areEqual(self.path, "")) {
            output.encodeStringElement(serialDesc, 3, self.path);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4)) {
            z = true;
        } else if (self.timestamp != System.currentTimeMillis()) {
            z = true;
        }
        if (z) {
            output.encodeLongElement(serialDesc, 4, self.timestamp);
        }
        output.encodeSerializableElement(serialDesc, 5, serializationStrategyArr[5], self.action);
    }

    public /* synthetic */ IsolationEvent(String str, IsolationEventType isolationEventType, String str2, String str3, long j, IsolationAction isolationAction, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, isolationEventType, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? System.currentTimeMillis() : j, isolationAction);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final IsolationEventType getType() {
        return this.type;
    }

    public final String getCommand() {
        return this.command;
    }

    public final String getPath() {
        return this.path;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final IsolationAction getAction() {
        return this.action;
    }
}
