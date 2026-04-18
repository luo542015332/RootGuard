package com.topjohnwu.superuser.internal;

import android.os.Binder;
import android.util.SparseArray;
import java.io.IOException;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class FileContainer {
    private static final String ERROR_MSG = "Requested file was not opened!";
    private int nextHandle = 0;
    private final SparseArray<SparseArray<OpenFile>> files = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized OpenFile get(int handle) throws IOException {
        OpenFile h;
        int pid = Binder.getCallingPid();
        SparseArray<OpenFile> pidFiles = this.files.get(pid);
        if (pidFiles == null) {
            throw new IOException(ERROR_MSG);
        }
        h = pidFiles.get(handle);
        if (h == null) {
            throw new IOException(ERROR_MSG);
        }
        return h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int put(OpenFile h) {
        int handle;
        int pid = Binder.getCallingPid();
        SparseArray<OpenFile> pidFiles = this.files.get(pid);
        if (pidFiles == null) {
            pidFiles = new SparseArray<>();
            this.files.put(pid, pidFiles);
        }
        handle = this.nextHandle;
        this.nextHandle = handle + 1;
        pidFiles.append(handle, h);
        return handle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void remove(int handle) {
        int pid = Binder.getCallingPid();
        SparseArray<OpenFile> pidFiles = this.files.get(pid);
        if (pidFiles == null) {
            return;
        }
        OpenFile h = pidFiles.get(handle);
        if (h == null) {
            return;
        }
        pidFiles.remove(handle);
        synchronized (h) {
            try {
                h.close();
            } finally {
                th = th;
                while (true) {
                    try {
                        break;
                    } catch (Throwable th) {
                        th = th;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void pidDied(int pid) {
        SparseArray<OpenFile> pidFiles = this.files.get(pid);
        if (pidFiles == null) {
            return;
        }
        this.files.remove(pid);
        for (int i = 0; i < pidFiles.size(); i++) {
            pidFiles.valueAt(i).close();
        }
    }
}
