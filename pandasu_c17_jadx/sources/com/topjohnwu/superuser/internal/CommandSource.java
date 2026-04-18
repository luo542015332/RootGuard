package com.topjohnwu.superuser.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShellInputSource.java */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class CommandSource implements ShellInputSource {
    private final String[] cmd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CommandSource(String[] cmd) {
        this.cmd = cmd;
    }

    @Override // com.topjohnwu.superuser.internal.ShellInputSource
    public void serve(OutputStream out) throws IOException {
        for (String command : this.cmd) {
            out.write(command.getBytes(StandardCharsets.UTF_8));
            out.write(10);
            Utils.log(ShellInputSource.TAG, command);
        }
    }
}
