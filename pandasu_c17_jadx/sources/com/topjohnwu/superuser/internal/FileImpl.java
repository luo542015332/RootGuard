package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.nio.ExtendedFile;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
abstract class FileImpl<T extends ExtendedFile> extends ExtendedFile {
    protected abstract T create(String str);

    protected abstract T[] createArray(int i);

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public abstract T getChildFile(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public FileImpl(String pathname) {
        super(pathname);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FileImpl(String parent, String child) {
        super(parent, child);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public T getAbsoluteFile() {
        return create(getAbsolutePath());
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public T getCanonicalFile() throws IOException {
        return create(getCanonicalPath());
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public T getParentFile() {
        return create(getParent());
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public T[] listFiles() {
        String[] ss = list();
        if (ss == null) {
            return null;
        }
        int n = ss.length;
        T[] fs = createArray(n);
        for (int i = 0; i < n; i++) {
            fs[i] = getChildFile(ss[i]);
        }
        return fs;
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public T[] listFiles(FilenameFilter filenameFilter) {
        String[] list = list();
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (filenameFilter == null || filenameFilter.accept(this, str)) {
                arrayList.add(getChildFile(str));
            }
        }
        return (T[]) ((ExtendedFile[]) arrayList.toArray(createArray(0)));
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public T[] listFiles(FileFilter fileFilter) {
        String[] list = list();
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            T childFile = getChildFile(str);
            if (fileFilter == null || fileFilter.accept(childFile)) {
                arrayList.add(childFile);
            }
        }
        return (T[]) ((ExtendedFile[]) arrayList.toArray(createArray(0)));
    }
}
