package com.rootguard.app.data.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/rootguard/app/data/model/DetectionItem;", "", "(Ljava/lang/String;I)V", "SU_BINARY", "MAGISK_FILES", "BUSYBOX", "XPOSED", "MAGISK_APP", "ROOT_PACKAGES", "TEST_KEYS", "DEBUGGABLE", "SUPERUSER_APK", "DAEMON_SU", "DENYLIST_ENFORCE", "PROP_SPOOF", "RECOVERY_MODE", "SHAMIKO", "TRICKY_STORE", "PIF", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class DetectionItem {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DetectionItem[] $VALUES;
    public static final DetectionItem SU_BINARY = new DetectionItem("SU_BINARY", 0);
    public static final DetectionItem MAGISK_FILES = new DetectionItem("MAGISK_FILES", 1);
    public static final DetectionItem BUSYBOX = new DetectionItem("BUSYBOX", 2);
    public static final DetectionItem XPOSED = new DetectionItem("XPOSED", 3);
    public static final DetectionItem MAGISK_APP = new DetectionItem("MAGISK_APP", 4);
    public static final DetectionItem ROOT_PACKAGES = new DetectionItem("ROOT_PACKAGES", 5);
    public static final DetectionItem TEST_KEYS = new DetectionItem("TEST_KEYS", 6);
    public static final DetectionItem DEBUGGABLE = new DetectionItem("DEBUGGABLE", 7);
    public static final DetectionItem SUPERUSER_APK = new DetectionItem("SUPERUSER_APK", 8);
    public static final DetectionItem DAEMON_SU = new DetectionItem("DAEMON_SU", 9);
    public static final DetectionItem DENYLIST_ENFORCE = new DetectionItem("DENYLIST_ENFORCE", 10);
    public static final DetectionItem PROP_SPOOF = new DetectionItem("PROP_SPOOF", 11);
    public static final DetectionItem RECOVERY_MODE = new DetectionItem("RECOVERY_MODE", 12);
    public static final DetectionItem SHAMIKO = new DetectionItem("SHAMIKO", 13);
    public static final DetectionItem TRICKY_STORE = new DetectionItem("TRICKY_STORE", 14);
    public static final DetectionItem PIF = new DetectionItem("PIF", 15);

    private static final /* synthetic */ DetectionItem[] $values() {
        return new DetectionItem[]{SU_BINARY, MAGISK_FILES, BUSYBOX, XPOSED, MAGISK_APP, ROOT_PACKAGES, TEST_KEYS, DEBUGGABLE, SUPERUSER_APK, DAEMON_SU, DENYLIST_ENFORCE, PROP_SPOOF, RECOVERY_MODE, SHAMIKO, TRICKY_STORE, PIF};
    }

    public static EnumEntries<DetectionItem> getEntries() {
        return $ENTRIES;
    }

    public static DetectionItem valueOf(String str) {
        return (DetectionItem) Enum.valueOf(DetectionItem.class, str);
    }

    public static DetectionItem[] values() {
        return (DetectionItem[]) $VALUES.clone();
    }

    private DetectionItem(String $enum$name, int $enum$ordinal) {
    }

    static {
        DetectionItem[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
