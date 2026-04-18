package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.internal.StreamGobbler;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public abstract class JobTask extends Shell.Job implements Shell.Task {
    private static final byte[] END_CMD;
    static final String END_UUID;
    static final List<String> UNSET_LIST = new ArrayList(0);
    static final int UUID_LEN = 36;
    protected Shell.ResultCallback callback;
    protected Executor callbackExecutor;
    private final List<ShellInputSource> sources = new ArrayList();
    private List<String> out = null;
    private List<String> err = UNSET_LIST;

    static {
        String uuid = UUID.randomUUID().toString();
        END_UUID = uuid;
        END_CMD = String.format("__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n", uuid).getBytes(StandardCharsets.UTF_8);
    }

    private void setResult(final ResultImpl result) {
        Shell.ResultCallback resultCallback = this.callback;
        if (resultCallback != null) {
            Executor executor = this.callbackExecutor;
            if (executor == null) {
                resultCallback.onResult(result);
            } else {
                executor.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.JobTask$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        JobTask.this.m995lambda$setResult$0$comtopjohnwusuperuserinternalJobTask(result);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setResult$0$com-topjohnwu-superuser-internal-JobTask, reason: not valid java name */
    public /* synthetic */ void m995lambda$setResult$0$comtopjohnwusuperuserinternalJobTask(ResultImpl result) {
        this.callback.onResult(result);
    }

    private void close() {
        for (ShellInputSource src : this.sources) {
            src.close();
        }
    }

    @Override // com.topjohnwu.superuser.Shell.Task
    public void run(OutputStream stdin, InputStream stdout, InputStream stderr) {
        List<String> errList;
        List<String> outList = this.out;
        List<String> list = UNSET_LIST;
        boolean noOut = outList == list;
        boolean noErr = this.err == list;
        List<String> list2 = null;
        if (noOut) {
            outList = this.callback == null ? null : new ArrayList<>();
        }
        if (noErr) {
            errList = Shell.enableLegacyStderrRedirection ? outList : null;
        } else {
            errList = this.err;
        }
        if (outList != null && outList == errList && !Utils.isSynchronized(outList)) {
            List<String> list3 = Collections.synchronizedList(outList);
            outList = list3;
            errList = list3;
        }
        FutureTask<Integer> outGobbler = new FutureTask<>(new StreamGobbler.OUT(stdout, outList));
        FutureTask<Void> errGobbler = new FutureTask<>(new StreamGobbler.ERR(stderr, errList));
        Shell.EXECUTOR.execute(outGobbler);
        Shell.EXECUTOR.execute(errGobbler);
        ResultImpl result = new ResultImpl();
        try {
            for (ShellInputSource src : this.sources) {
                src.serve(stdin);
            }
            stdin.write(END_CMD);
            stdin.flush();
            int code = outGobbler.get().intValue();
            errGobbler.get();
            result.code = code;
            result.out = outList;
            if (!noErr) {
                list2 = this.err;
            }
            result.err = list2;
        } catch (IOException | InterruptedException | ExecutionException e) {
            Utils.err(e);
        }
        close();
        setResult(result);
    }

    @Override // com.topjohnwu.superuser.Shell.Task
    public void shellDied() {
        close();
        setResult(new ResultImpl());
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Shell.Job to(List<String> stdout) {
        this.out = stdout;
        this.err = UNSET_LIST;
        return this;
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Shell.Job to(List<String> stdout, List<String> stderr) {
        this.out = stdout;
        this.err = stderr;
        return this;
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Shell.Job add(InputStream in) {
        if (in != null) {
            this.sources.add(new InputStreamSource(in));
        }
        return this;
    }

    @Override // com.topjohnwu.superuser.Shell.Job
    public Shell.Job add(String... cmds) {
        if (cmds != null && cmds.length > 0) {
            this.sources.add(new CommandSource(cmds));
        }
        return this;
    }
}
