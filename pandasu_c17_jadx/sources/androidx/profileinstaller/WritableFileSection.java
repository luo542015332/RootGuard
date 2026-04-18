package androidx.profileinstaller;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
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
