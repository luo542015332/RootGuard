package androidx.core.view.autofill;

import android.view.autofill.AutofillId;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class AutofillIdCompat {
    private final Object mWrappedObj;

    private AutofillIdCompat(AutofillId obj) {
        this.mWrappedObj = obj;
    }

    public static AutofillIdCompat toAutofillIdCompat(AutofillId autofillId) {
        return new AutofillIdCompat(autofillId);
    }

    public AutofillId toAutofillId() {
        return (AutofillId) this.mWrappedObj;
    }
}
