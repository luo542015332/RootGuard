package com.rootguard.app.data.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/rootguard/app/data/model/AppCategory;", "", "(Ljava/lang/String;I)V", "FINANCE", "SOCIAL", "GAME", "SYSTEM_TOOL", "UTILITY", "UNKNOWN", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class AppCategory {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AppCategory[] $VALUES;
    public static final AppCategory FINANCE = new AppCategory("FINANCE", 0);
    public static final AppCategory SOCIAL = new AppCategory("SOCIAL", 1);
    public static final AppCategory GAME = new AppCategory("GAME", 2);
    public static final AppCategory SYSTEM_TOOL = new AppCategory("SYSTEM_TOOL", 3);
    public static final AppCategory UTILITY = new AppCategory("UTILITY", 4);
    public static final AppCategory UNKNOWN = new AppCategory("UNKNOWN", 5);

    private static final /* synthetic */ AppCategory[] $values() {
        return new AppCategory[]{FINANCE, SOCIAL, GAME, SYSTEM_TOOL, UTILITY, UNKNOWN};
    }

    public static EnumEntries<AppCategory> getEntries() {
        return $ENTRIES;
    }

    public static AppCategory valueOf(String str) {
        return (AppCategory) Enum.valueOf(AppCategory.class, str);
    }

    public static AppCategory[] values() {
        return (AppCategory[]) $VALUES.clone();
    }

    private AppCategory(String $enum$name, int $enum$ordinal) {
    }

    static {
        AppCategory[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
