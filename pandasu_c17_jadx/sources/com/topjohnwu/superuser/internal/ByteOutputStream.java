package com.topjohnwu.superuser.internal;

import java.io.ByteArrayOutputStream;
import java.io.DataOutput;
import java.io.IOException;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
class ByteOutputStream extends ByteArrayOutputStream {
    public byte[] getBuf() {
        return this.buf;
    }

    public void writeTo(DataOutput out) throws IOException {
        out.write(this.buf, 0, this.count);
    }
}
