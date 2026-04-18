package com.topjohnwu.superuser.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
interface ShellInputSource extends Closeable {
    public static final String TAG = "SHELL_IN";

    void serve(OutputStream outputStream) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    default void close() {
    }
}
