package com.rootguard.app.data.model;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/rootguard/app/data/model/OneClickIsolationPreset;", "", "(Ljava/lang/String;I)V", "getDescription", "", "getDisplayName", "CONSERVATIVE", "BALANCED", "AGGRESSIVE", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class OneClickIsolationPreset {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OneClickIsolationPreset[] $VALUES;
    public static final OneClickIsolationPreset CONSERVATIVE = new OneClickIsolationPreset("CONSERVATIVE", 0);
    public static final OneClickIsolationPreset BALANCED = new OneClickIsolationPreset("BALANCED", 1);
    public static final OneClickIsolationPreset AGGRESSIVE = new OneClickIsolationPreset("AGGRESSIVE", 2);

    /* compiled from: IsolationConfig.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OneClickIsolationPreset.values().length];
            try {
                iArr[OneClickIsolationPreset.CONSERVATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[OneClickIsolationPreset.BALANCED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[OneClickIsolationPreset.AGGRESSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ OneClickIsolationPreset[] $values() {
        return new OneClickIsolationPreset[]{CONSERVATIVE, BALANCED, AGGRESSIVE};
    }

    public static EnumEntries<OneClickIsolationPreset> getEntries() {
        return $ENTRIES;
    }

    public static OneClickIsolationPreset valueOf(String str) {
        return (OneClickIsolationPreset) Enum.valueOf(OneClickIsolationPreset.class, str);
    }

    public static OneClickIsolationPreset[] values() {
        return (OneClickIsolationPreset[]) $VALUES.clone();
    }

    private OneClickIsolationPreset(String $enum$name, int $enum$ordinal) {
    }

    static {
        OneClickIsolationPreset[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    public final String getDescription() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return "仅隐藏 Root 应用，保留 Xposed 功能";
            case 2:
                return "隐藏 Root + Xposed，启用强制数据隔离";
            case 3:
                return "完整隔离，包括属性伪装、数据隔离、禁用 Root";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final String getDisplayName() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return "保守模式";
            case 2:
                return "平衡模式";
            case 3:
                return "激进模式";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
