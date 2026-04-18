package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.NoShellException;
import com.topjohnwu.superuser.Shell;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class PendingJob extends JobTask {
    private Runnable retryTask;

    public PendingJob() {
        to(UNSET_LIST);
    }

    @Override // com.topjohnwu.superuser.internal.JobTask, com.topjohnwu.superuser.Shell.Task
    public void shellDied() {
        if (this.retryTask != null) {
            Runnable r = this.retryTask;
            this.retryTask = null;
            r.run();
            return;
        }
        super.shellDied();
    }

    public void exec0() {
        try {
            ShellImpl shell = MainShell.get();
            try {
                shell.execTask(this);
            } catch (IOException e) {
            }
        } catch (NoShellException e2) {
            super.shellDied();
        }
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Shell.Result exec() {
        this.retryTask = new Runnable() { // from class: com.topjohnwu.superuser.internal.PendingJob$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PendingJob.this.exec0();
            }
        };
        ResultHolder holder = new ResultHolder();
        this.callback = holder;
        this.callbackExecutor = null;
        exec0();
        return holder.getResult();
    }

    public void submit0() {
        MainShell.get(null, new Shell.GetShellCallback() { // from class: com.topjohnwu.superuser.internal.PendingJob$$ExternalSyntheticLambda0
            @Override // com.topjohnwu.superuser.Shell.GetShellCallback
            public final void onShell(Shell shell) {
                PendingJob.this.m996lambda$submit0$0$comtopjohnwusuperuserinternalPendingJob(shell);
            }
        });
    }

    /* renamed from: lambda$submit0$0$com-topjohnwu-superuser-internal-PendingJob */
    public /* synthetic */ void m996lambda$submit0$0$comtopjohnwusuperuserinternalPendingJob(Shell s) {
        ShellImpl shell = (ShellImpl) s;
        shell.submitTask(this);
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Future<Shell.Result> enqueue() {
        this.retryTask = new PendingJob$$ExternalSyntheticLambda2(this);
        ResultFuture future = new ResultFuture();
        this.callback = future;
        this.callbackExecutor = null;
        submit0();
        return future;
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public void submit(Executor executor, Shell.ResultCallback cb) {
        this.retryTask = new PendingJob$$ExternalSyntheticLambda2(this);
        this.callbackExecutor = executor;
        this.callback = cb;
        submit0();
    }
}
