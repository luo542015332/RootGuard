package androidx.core.os;

import java.util.Locale;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
interface LocaleListInterface {
    Locale get(int i);

    Locale getFirstMatch(String[] strArr);

    Object getLocaleList();

    int indexOf(Locale locale);

    boolean isEmpty();

    int size();

    String toLanguageTags();
}
