package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
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
