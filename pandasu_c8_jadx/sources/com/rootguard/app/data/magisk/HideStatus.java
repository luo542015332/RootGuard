package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/rootguard/app/data/magisk/HideStatus;", "", "(Ljava/lang/String;I)V", "ACTIVE", "PARTIAL", "INACTIVE", "UNKNOWN", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class HideStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HideStatus[] $VALUES;
    public static final HideStatus ACTIVE = new HideStatus("ACTIVE", 0);
    public static final HideStatus PARTIAL = new HideStatus("PARTIAL", 1);
    public static final HideStatus INACTIVE = new HideStatus("INACTIVE", 2);
    public static final HideStatus UNKNOWN = new HideStatus("UNKNOWN", 3);

    private static final /* synthetic */ HideStatus[] $values() {
        return new HideStatus[]{ACTIVE, PARTIAL, INACTIVE, UNKNOWN};
    }

    public static EnumEntries<HideStatus> getEntries() {
        return $ENTRIES;
    }

    public static HideStatus valueOf(String str) {
        return (HideStatus) Enum.valueOf(HideStatus.class, str);
    }

    public static HideStatus[] values() {
        return (HideStatus[]) $VALUES.clone();
    }

    static {
        HideStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HideStatus(String $enum$name, int $enum$ordinal) {
    }
}
