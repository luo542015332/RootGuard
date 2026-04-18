package androidx.tracing;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
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
