package com.topjohnwu.superuser.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShellInputSource.java */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class InputStreamSource implements ShellInputSource {
    private final InputStream in;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStreamSource(InputStream in) {
        this.in = in;
    }

    @Override // com.topjohnwu.superuser.internal.ShellInputSource
    public void serve(OutputStream out) throws IOException {
        Utils.pump(this.in, out);
        this.in.close();
        out.write(10);
        Utils.log(ShellInputSource.TAG, "<InputStream>");
    }

    @Override // com.topjohnwu.superuser.internal.ShellInputSource, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.in.close();
        } catch (IOException e) {
        }
    }
}
