package com.rootguard.app.ui.screens.isolation;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/rootguard/app/ui/screens/isolation/AppFilterTab;", "", "label", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "ALL", "USER", "SYSTEM", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class AppFilterTab {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AppFilterTab[] $VALUES;
    private final String label;
    public static final AppFilterTab ALL = new AppFilterTab("ALL", 0, "全部");
    public static final AppFilterTab USER = new AppFilterTab("USER", 1, "用户应用");
    public static final AppFilterTab SYSTEM = new AppFilterTab("SYSTEM", 2, "系统应用");

    private static final /* synthetic */ AppFilterTab[] $values() {
        return new AppFilterTab[]{ALL, USER, SYSTEM};
    }

    public static EnumEntries<AppFilterTab> getEntries() {
        return $ENTRIES;
    }

    public static AppFilterTab valueOf(String str) {
        return (AppFilterTab) Enum.valueOf(AppFilterTab.class, str);
    }

    public static AppFilterTab[] values() {
        return (AppFilterTab[]) $VALUES.clone();
    }

    private AppFilterTab(String $enum$name, int $enum$ordinal, String label) {
        this.label = label;
    }

    public final String getLabel() {
        return this.label;
    }

    static {
        AppFilterTab[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
