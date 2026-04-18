package androidx.profileinstaller;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class WritableFileSection {
    final byte[] mContents;
    final int mExpectedInflateSize;
    final boolean mNeedsCompression;
    final FileSectionType mType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WritableFileSection(FileSectionType type, int expectedInflateSize, byte[] contents, boolean needsCompression) {
        this.mType = type;
        this.mExpectedInflateSize = expectedInflateSize;
        this.mContents = contents;
        this.mNeedsCompression = needsCompression;
    }
}
