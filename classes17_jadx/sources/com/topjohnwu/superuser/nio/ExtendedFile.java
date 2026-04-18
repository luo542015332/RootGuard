package com.topjohnwu.superuser.nio;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public abstract class ExtendedFile extends File {
    public abstract boolean createNewLink(String str) throws IOException;

    public abstract boolean createNewSymlink(String str) throws IOException;

    @Override // java.io.File
    public abstract ExtendedFile getAbsoluteFile();

    @Override // java.io.File
    public abstract ExtendedFile getCanonicalFile() throws IOException;

    public abstract ExtendedFile getChildFile(String str);

    @Override // java.io.File
    public abstract ExtendedFile getParentFile();

    public abstract boolean isBlock();

    public abstract boolean isCharacter();

    public abstract boolean isNamedPipe();

    public abstract boolean isSocket();

    public abstract boolean isSymlink();

    @Override // java.io.File
    public abstract ExtendedFile[] listFiles();

    @Override // java.io.File
    public abstract ExtendedFile[] listFiles(FileFilter fileFilter);

    @Override // java.io.File
    public abstract ExtendedFile[] listFiles(FilenameFilter filenameFilter);

    public abstract InputStream newInputStream() throws IOException;

    public abstract OutputStream newOutputStream(boolean z) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public ExtendedFile(String pathname) {
        super(pathname);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExtendedFile(String parent, String child) {
        super(parent, child);
    }

    protected ExtendedFile(File parent, String child) {
        super(parent, child);
    }

    protected ExtendedFile(URI uri) {
        super(uri);
    }

    public final OutputStream newOutputStream() throws IOException {
        return newOutputStream(false);
    }
}
