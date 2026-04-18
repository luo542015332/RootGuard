package androidx.tracing;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
final class TraceApi18Impl {
    private TraceApi18Impl() {
    }

    public static void beginSection(String label) {
        android.os.Trace.beginSection(label);
    }

    public static void endSection() {
        android.os.Trace.endSection();
    }
}
