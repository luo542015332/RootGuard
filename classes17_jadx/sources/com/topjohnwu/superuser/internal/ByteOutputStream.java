package com.topjohnwu.superuser.internal;

import java.io.ByteArrayOutputStream;
import java.io.DataOutput;
import java.io.IOException;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class ByteOutputStream extends ByteArrayOutputStream {
    public byte[] getBuf() {
        return this.buf;
    }

    public void writeTo(DataOutput out) throws IOException {
        out.write(this.buf, 0, this.count);
    }
}
