package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
class ShellJob extends JobTask {
    private final ShellImpl shell;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShellJob(ShellImpl s) {
        this.shell = s;
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Shell.Result exec() {
        ResultHolder holder = new ResultHolder();
        this.callback = holder;
        this.callbackExecutor = null;
        try {
            this.shell.execTask(this);
        } catch (IOException e) {
        }
        return holder.getResult();
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public void submit(Executor executor, Shell.ResultCallback cb) {
        this.callbackExecutor = executor;
        this.callback = cb;
        this.shell.submitTask(this);
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Future<Shell.Result> enqueue() {
        ResultFuture future = new ResultFuture();
        this.callback = future;
        this.callbackExecutor = null;
        this.shell.submitTask(this);
        return future;
    }
}
