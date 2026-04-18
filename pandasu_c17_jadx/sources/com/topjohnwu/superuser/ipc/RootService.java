package com.topjohnwu.superuser.ipc;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.internal.RootServiceManager;
import com.topjohnwu.superuser.internal.RootServiceServer;
import com.topjohnwu.superuser.internal.UiThreadHandler;
import com.topjohnwu.superuser.internal.Utils;
import java.io.IOException;
import java.util.concurrent.Executor;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public abstract class RootService extends ContextWrapper {
    public static final String CATEGORY_DAEMON_MODE = "com.topjohnwu.superuser.DAEMON_MODE";

    public abstract IBinder onBind(Intent intent);

    public static void bind(Intent intent, Executor executor, ServiceConnection conn) {
        Shell.Task task;
        if (!Utils.isRootImpossible() && (task = bindOrTask(intent, executor, conn)) != null) {
            Shell.EXECUTOR.execute(asRunnable(task));
        }
    }

    public static void bind(Intent intent, ServiceConnection conn) {
        bind(intent, UiThreadHandler.executor, conn);
    }

    public static Shell.Task bindOrTask(Intent intent, Executor executor, ServiceConnection conn) {
        return RootServiceManager.getInstance().createBindTask(intent, executor, conn);
    }

    public static void unbind(ServiceConnection conn) {
        RootServiceManager.getInstance().unbind(conn);
    }

    public static void stop(Intent intent) {
        Shell.Task task;
        if (!Utils.isRootImpossible() && (task = stopOrTask(intent)) != null) {
            Shell.EXECUTOR.execute(asRunnable(task));
        }
    }

    public static Shell.Task stopOrTask(Intent intent) {
        return RootServiceManager.getInstance().createStopTask(intent);
    }

    private static Runnable asRunnable(final Shell.Task task) {
        return new Runnable() { // from class: com.topjohnwu.superuser.ipc.RootService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RootService.lambda$asRunnable$0(Shell.Task.this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$asRunnable$0(Shell.Task task) {
        try {
            Shell shell = Shell.getShell();
            if (shell.isRoot()) {
                shell.execTask(task);
            }
        } catch (IOException e) {
            Utils.err(e);
        }
    }

    public RootService() {
        super(null);
    }

    @Override // android.content.ContextWrapper
    protected final void attachBaseContext(Context base) {
        super.attachBaseContext(onAttach(Utils.getContextImpl(base)));
        RootServiceServer.getInstance(base).register(this);
        onCreate();
    }

    protected Context onAttach(Context base) {
        return base;
    }

    public ComponentName getComponentName() {
        return new ComponentName(this, getClass());
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return Utils.context;
    }

    public void onCreate() {
    }

    public boolean onUnbind(Intent intent) {
        return false;
    }

    public void onRebind(Intent intent) {
    }

    public void onDestroy() {
    }

    public final void stopSelf() {
        RootServiceServer.getInstance(this).selfStop(getComponentName());
    }

    @Deprecated
    public static Runnable createBindTask(Intent intent, Executor executor, ServiceConnection conn) {
        Shell.Task task = bindOrTask(intent, executor, conn);
        if (task == null) {
            return null;
        }
        return asRunnable(task);
    }
}
