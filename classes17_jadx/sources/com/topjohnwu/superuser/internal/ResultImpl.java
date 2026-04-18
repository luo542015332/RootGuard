package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class ResultImpl extends Shell.Result {
    int code = -1;
    List<String> err;
    List<String> out;

    @Override // com.topjohnwu.superuser.Shell.Result
    public List<String> getOut() {
        List<String> list = this.out;
        return list == null ? Collections.emptyList() : list;
    }

    @Override // com.topjohnwu.superuser.Shell.Result
    public List<String> getErr() {
        List<String> list = this.err;
        return list == null ? Collections.emptyList() : list;
    }

    @Override // com.topjohnwu.superuser.Shell.Result
    public int getCode() {
        return this.code;
    }
}
