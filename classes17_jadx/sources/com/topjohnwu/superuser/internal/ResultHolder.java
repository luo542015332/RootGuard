package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class ResultHolder implements Shell.ResultCallback {
    private Shell.Result result;

    @Override // com.topjohnwu.superuser.Shell.ResultCallback
    public void onResult(Shell.Result out) {
        this.result = out;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Shell.Result getResult() {
        Shell.Result result = this.result;
        return result == null ? new ResultImpl() : result;
    }
}
