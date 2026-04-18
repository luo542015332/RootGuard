package com.rootguard.app.data.model;

import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 /2\u00020\u0001:\u0002./Bm\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fBW\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\u0002\u0010\u0010J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J\u000f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J]\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\t\u0010%\u001a\u00020\u0005HÖ\u0001J&\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,HÁ\u0001¢\u0006\u0002\b-R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012¨\u00060"}, d2 = {"Lcom/rootguard/app/data/model/SandboxRule;", "", "seen1", "", "packageName", "", "level", "Lcom/rootguard/app/data/model/SandboxLevel;", "commandWhitelist", "", "commandBlacklist", "pathWhitelist", "pathBlacklist", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/rootguard/app/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/rootguard/app/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getCommandBlacklist", "()Ljava/util/List;", "getCommandWhitelist", "getLevel", "()Lcom/rootguard/app/data/model/SandboxLevel;", "getPackageName", "()Ljava/lang/String;", "getPathBlacklist", "getPathWhitelist", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$app_debug", "$serializer", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final /* data */ class SandboxRule {
    private final List<String> commandBlacklist;
    private final List<String> commandWhitelist;
    private final SandboxLevel level;
    private final String packageName;
    private final List<String> pathBlacklist;
    private final List<String> pathWhitelist;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final KSerializer<Object>[] $childSerializers = {null, SandboxLevel.INSTANCE.serializer(), new ArrayListSerializer(StringSerializer.INSTANCE), new ArrayListSerializer(StringSerializer.INSTANCE), new ArrayListSerializer(StringSerializer.INSTANCE), new ArrayListSerializer(StringSerializer.INSTANCE)};

    public static /* synthetic */ SandboxRule copy$default(SandboxRule sandboxRule, String str, SandboxLevel sandboxLevel, List list, List list2, List list3, List list4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sandboxRule.packageName;
        }
        if ((i & 2) != 0) {
            sandboxLevel = sandboxRule.level;
        }
        SandboxLevel sandboxLevel2 = sandboxLevel;
        if ((i & 4) != 0) {
            list = sandboxRule.commandWhitelist;
        }
        List list5 = list;
        if ((i & 8) != 0) {
            list2 = sandboxRule.commandBlacklist;
        }
        List list6 = list2;
        if ((i & 16) != 0) {
            list3 = sandboxRule.pathWhitelist;
        }
        List list7 = list3;
        if ((i & 32) != 0) {
            list4 = sandboxRule.pathBlacklist;
        }
        return sandboxRule.copy(str, sandboxLevel2, list5, list6, list7, list4);
    }

    /* renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* renamed from: component2, reason: from getter */
    public final SandboxLevel getLevel() {
        return this.level;
    }

    public final List<String> component3() {
        return this.commandWhitelist;
    }

    public final List<String> component4() {
        return this.commandBlacklist;
    }

    public final List<String> component5() {
        return this.pathWhitelist;
    }

    public final List<String> component6() {
        return this.pathBlacklist;
    }

    public final SandboxRule copy(String packageName, SandboxLevel level, List<String> commandWhitelist, List<String> commandBlacklist, List<String> pathWhitelist, List<String> pathBlacklist) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(commandWhitelist, "commandWhitelist");
        Intrinsics.checkNotNullParameter(commandBlacklist, "commandBlacklist");
        Intrinsics.checkNotNullParameter(pathWhitelist, "pathWhitelist");
        Intrinsics.checkNotNullParameter(pathBlacklist, "pathBlacklist");
        return new SandboxRule(packageName, level, commandWhitelist, commandBlacklist, pathWhitelist, pathBlacklist);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SandboxRule)) {
            return false;
        }
        SandboxRule sandboxRule = (SandboxRule) other;
        return Intrinsics.areEqual(this.packageName, sandboxRule.packageName) && this.level == sandboxRule.level && Intrinsics.areEqual(this.commandWhitelist, sandboxRule.commandWhitelist) && Intrinsics.areEqual(this.commandBlacklist, sandboxRule.commandBlacklist) && Intrinsics.areEqual(this.pathWhitelist, sandboxRule.pathWhitelist) && Intrinsics.areEqual(this.pathBlacklist, sandboxRule.pathBlacklist);
    }

    public int hashCode() {
        return (((((((((this.packageName.hashCode() * 31) + this.level.hashCode()) * 31) + this.commandWhitelist.hashCode()) * 31) + this.commandBlacklist.hashCode()) * 31) + this.pathWhitelist.hashCode()) * 31) + this.pathBlacklist.hashCode();
    }

    public String toString() {
        return "SandboxRule(packageName=" + this.packageName + ", level=" + this.level + ", commandWhitelist=" + this.commandWhitelist + ", commandBlacklist=" + this.commandBlacklist + ", pathWhitelist=" + this.pathWhitelist + ", pathBlacklist=" + this.pathBlacklist + ")";
    }

    /* compiled from: IsolationConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/rootguard/app/data/model/SandboxRule$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/rootguard/app/data/model/SandboxRule;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SandboxRule> serializer() {
            return SandboxRule$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SandboxRule(int seen1, String packageName, SandboxLevel level, List commandWhitelist, List commandBlacklist, List pathWhitelist, List pathBlacklist, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (seen1 & 1)) {
            PluginExceptionsKt.throwMissingFieldException(seen1, 1, SandboxRule$$serializer.INSTANCE.getDescriptor());
        }
        this.packageName = packageName;
        if ((seen1 & 2) == 0) {
            this.level = SandboxLevel.MODERATE;
        } else {
            this.level = level;
        }
        if ((seen1 & 4) == 0) {
            this.commandWhitelist = CollectionsKt.emptyList();
        } else {
            this.commandWhitelist = commandWhitelist;
        }
        if ((seen1 & 8) == 0) {
            this.commandBlacklist = CollectionsKt.emptyList();
        } else {
            this.commandBlacklist = commandBlacklist;
        }
        if ((seen1 & 16) == 0) {
            this.pathWhitelist = CollectionsKt.emptyList();
        } else {
            this.pathWhitelist = pathWhitelist;
        }
        if ((seen1 & 32) == 0) {
            this.pathBlacklist = CollectionsKt.emptyList();
        } else {
            this.pathBlacklist = pathBlacklist;
        }
    }

    public SandboxRule(String packageName, SandboxLevel level, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(list, "commandWhitelist");
        Intrinsics.checkNotNullParameter(list2, "commandBlacklist");
        Intrinsics.checkNotNullParameter(list3, "pathWhitelist");
        Intrinsics.checkNotNullParameter(list4, "pathBlacklist");
        this.packageName = packageName;
        this.level = level;
        this.commandWhitelist = list;
        this.commandBlacklist = list2;
        this.pathWhitelist = list3;
        this.pathBlacklist = list4;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$app_debug(SandboxRule self, CompositeEncoder output, SerialDescriptor serialDesc) {
        SerializationStrategy[] serializationStrategyArr = $childSerializers;
        boolean z = false;
        output.encodeStringElement(serialDesc, 0, self.packageName);
        if (output.shouldEncodeElementDefault(serialDesc, 1) ? true : self.level != SandboxLevel.MODERATE) {
            output.encodeSerializableElement(serialDesc, 1, serializationStrategyArr[1], self.level);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) ? true : !Intrinsics.areEqual(self.commandWhitelist, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 2, serializationStrategyArr[2], self.commandWhitelist);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) ? true : !Intrinsics.areEqual(self.commandBlacklist, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 3, serializationStrategyArr[3], self.commandBlacklist);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) ? true : !Intrinsics.areEqual(self.pathWhitelist, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 4, serializationStrategyArr[4], self.pathWhitelist);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5)) {
            z = true;
        } else if (!Intrinsics.areEqual(self.pathBlacklist, CollectionsKt.emptyList())) {
            z = true;
        }
        if (z) {
            output.encodeSerializableElement(serialDesc, 5, serializationStrategyArr[5], self.pathBlacklist);
        }
    }

    public /* synthetic */ SandboxRule(String str, SandboxLevel sandboxLevel, List list, List list2, List list3, List list4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? SandboxLevel.MODERATE : sandboxLevel, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? CollectionsKt.emptyList() : list2, (i & 16) != 0 ? CollectionsKt.emptyList() : list3, (i & 32) != 0 ? CollectionsKt.emptyList() : list4);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final SandboxLevel getLevel() {
        return this.level;
    }

    public final List<String> getCommandWhitelist() {
        return this.commandWhitelist;
    }

    public final List<String> getCommandBlacklist() {
        return this.commandBlacklist;
    }

    public final List<String> getPathWhitelist() {
        return this.pathWhitelist;
    }

    public final List<String> getPathBlacklist() {
        return this.pathBlacklist;
    }
}
