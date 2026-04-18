package com.topjohnwu.superuser.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import com.topjohnwu.superuser.internal.IRootServiceManager;
import com.topjohnwu.superuser.internal.RootServiceManager;
import com.topjohnwu.superuser.ipc.RootService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class RootServiceManager implements Handler.Callback {
    private static final String API_27_DEBUG = "-Xrunjdwp:transport=dt_android_adb,suspend=n,server=y -Xcompiler-option --debuggable";
    private static final String API_28_DEBUG = "-XjdwpProvider:adbconnection -XjdwpOptions:suspend=n,server=y -Xcompiler-option --debuggable";
    private static final String BUNDLE_BINDER_KEY = "binder";
    private static final int DAEMON_EN_ROUTE = 2;
    static final String DEBUG_ENV = "LIBSU_DEBUGGER";
    private static final String INTENT_BUNDLE_KEY = "extra.bundle";
    private static final String INTENT_DAEMON_KEY = "extra.daemon";
    private static final String JVMTI_ERROR = " \n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n! Warning: JVMTI agent is enabled. Please enable the !\n! 'Always install with package manager' option in    !\n! Android Studio. For more details and information,  !\n! check out RootService's Javadoc.                   !\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n";
    static final String LOGGING_ENV = "LIBSU_VERBOSE_LOGGING";
    static final int MSG_STOP = 1;
    private static final String RECEIVER_BROADCAST = "com.topjohnwu.superuser.RECEIVER_BROADCAST";
    private static final int RECEIVER_REGISTERED = 4;
    private static final int REMOTE_EN_ROUTE = 1;
    static final String TAG = "IPC";
    private static RootServiceManager mInstance;
    private RemoteProcess mDaemon;
    private RemoteProcess mRemote;
    private int flags = 0;
    private final List<BindTask> pendingTasks = new ArrayList();
    private final Map<ServiceKey, RemoteServiceRecord> services = new ArrayMap();
    private final Map<ServiceConnection, ConnectionRecord> connections = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public interface BindTask {
        boolean run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public interface Predicate {
        boolean eval(RemoteServiceRecord remoteServiceRecord);
    }

    static /* synthetic */ int access$472(RootServiceManager x0, int x1) {
        int i = x0.flags & x1;
        x0.flags = i;
        return i;
    }

    public static RootServiceManager getInstance() {
        if (mInstance == null) {
            mInstance = new RootServiceManager();
        }
        return mInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent getBroadcastIntent(IBinder binder, boolean isDaemon) {
        Bundle bundle = new Bundle();
        bundle.putBinder(BUNDLE_BINDER_KEY, binder);
        return new Intent(RECEIVER_BROADCAST).setPackage(Utils.getContext().getPackageName()).addFlags(HiddenAPIs.FLAG_RECEIVER_FROM_SHELL).putExtra(INTENT_DAEMON_KEY, isDaemon).putExtra(INTENT_BUNDLE_KEY, bundle);
    }

    private static void enforceMainThread() {
        if (!ShellUtils.onMainThread()) {
            throw new IllegalStateException("This method can only be called on the main thread");
        }
    }

    private static ServiceKey parseIntent(Intent intent) {
        ComponentName name = intent.getComponent();
        if (name == null) {
            throw new IllegalArgumentException("The intent does not have a component set");
        }
        if (!name.getPackageName().equals(Utils.getContext().getPackageName())) {
            throw new IllegalArgumentException("RootServices outside of the app are not supported");
        }
        return new ServiceKey(name, intent.hasCategory(RootService.CATEGORY_DAEMON_MODE));
    }

    private RootServiceManager() {
    }

    private Shell.Task startRootProcess(final ComponentName name, final String action) {
        final Context context = Utils.getContext();
        if ((this.flags & 4) == 0) {
            IntentFilter filter = new IntentFilter(RECEIVER_BROADCAST);
            context.registerReceiver(new ServiceReceiver(), filter, "android.permission.BROADCAST_PACKAGE_REMOVED", null, 4);
            this.flags |= 4;
        }
        return new Shell.Task() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$$ExternalSyntheticLambda0
            @Override // com.topjohnwu.superuser.Shell.Task
            public final void run(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) {
                RootServiceManager.lambda$startRootProcess$0(context, action, name, outputStream, inputStream, inputStream2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static /* synthetic */ void lambda$startRootProcess$0(Context context, String action, ComponentName name, OutputStream stdin, InputStream stdout, InputStream stderr) throws IOException {
        char c;
        String niceNameCmd;
        if (Utils.hasStartupAgents(context)) {
            Log.e(TAG, JVMTI_ERROR);
        }
        Context ctx = Utils.getDeContext();
        File mainJar = new File(ctx.getCacheDir(), "main.jar");
        InputStream in = ctx.getResources().getAssets().open("main.jar");
        try {
            OutputStream out = new FileOutputStream(mainJar);
            try {
                Utils.pump(in, out);
                out.close();
                if (in != null) {
                    in.close();
                }
                String env = "";
                String params = "";
                if (Utils.vLog()) {
                    env = "LIBSU_VERBOSE_LOGGING=1 ";
                }
                if (Build.VERSION.SDK_INT >= 27 && Debug.isDebuggerConnected()) {
                    env = env + "LIBSU_DEBUGGER=1 ";
                    params = Build.VERSION.SDK_INT == 27 ? API_27_DEBUG : API_28_DEBUG;
                }
                String params2 = params + " -Xnoimage-dex2oat";
                switch (action.hashCode()) {
                    case -1339353468:
                        if (action.equals("daemon")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 109757538:
                        if (action.equals("start")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        String niceNameCmd2 = String.format(Locale.ROOT, "--nice-name=%s:root:%d", ctx.getPackageName(), Integer.valueOf(Process.myUid() / 100000));
                        niceNameCmd = niceNameCmd2;
                        break;
                    case 1:
                        String niceNameCmd3 = "--nice-name=" + ctx.getPackageName() + ":root:daemon";
                        niceNameCmd = niceNameCmd3;
                        break;
                    default:
                        niceNameCmd = "";
                        break;
                }
                String app_process = "/system/bin/app_process" + (Utils.isProcess64Bit() ? "64" : "32");
                String cmd = String.format(Locale.ROOT, "(%s CLASSPATH=%s %s %s /system/bin %s com.topjohnwu.superuser.internal.RootServerMain '%s' %d %s >/dev/null 2>&1)&", env, mainJar, app_process, params2, niceNameCmd, name.flattenToString(), Integer.valueOf(Process.myUid()), action);
                Utils.log(TAG, cmd);
                byte[] bytes = cmd.getBytes(StandardCharsets.UTF_8);
                stdin.write(bytes);
                stdin.write(10);
                stdin.flush();
            } finally {
            }
        } finally {
        }
    }

    private ServiceKey bindInternal(Intent intent, Executor executor, final ServiceConnection conn) {
        enforceMainThread();
        final ServiceKey key = parseIntent(intent);
        RemoteServiceRecord s = this.services.get(key);
        if (s != null) {
            this.connections.put(conn, new ConnectionRecord(s, executor));
            s.refCount++;
            final IBinder binder = s.binder;
            executor.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    conn.onServiceConnected(key.getName(), binder);
                }
            });
            return null;
        }
        RemoteProcess p = key.isDaemon() ? this.mDaemon : this.mRemote;
        if (p == null) {
            return key;
        }
        try {
            final IBinder binder2 = p.mgr.bind(intent);
            if (binder2 != null) {
                RemoteServiceRecord s2 = new RemoteServiceRecord(key, binder2, p);
                this.connections.put(conn, new ConnectionRecord(s2, executor));
                this.services.put(key, s2);
                executor.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        conn.onServiceConnected(key.getName(), binder2);
                    }
                });
            } else if (Build.VERSION.SDK_INT >= 28) {
                executor.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        conn.onNullBinding(key.getName());
                    }
                });
            }
            return null;
        } catch (RemoteException e) {
            Utils.err(TAG, e);
            p.binderDied();
            return key;
        }
    }

    public Shell.Task createBindTask(final Intent intent, final Executor executor, final ServiceConnection conn) {
        ServiceKey key = bindInternal(intent, executor, conn);
        if (key != null) {
            this.pendingTasks.add(new BindTask() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$$ExternalSyntheticLambda4
                @Override // com.topjohnwu.superuser.internal.RootServiceManager.BindTask
                public final boolean run() {
                    return RootServiceManager.this.m997xa045f4ef(intent, executor, conn);
                }
            });
            int mask = key.isDaemon() ? 2 : 1;
            int i = this.flags;
            if ((i & mask) == 0) {
                this.flags = i | mask;
                String action = key.isDaemon() ? "daemon" : "start";
                return startRootProcess(key.getName(), action);
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$createBindTask$4$com-topjohnwu-superuser-internal-RootServiceManager, reason: not valid java name */
    public /* synthetic */ boolean m997xa045f4ef(Intent intent, Executor executor, ServiceConnection conn) {
        return bindInternal(intent, executor, conn) == null;
    }

    public void unbind(ServiceConnection conn) {
        enforceMainThread();
        ConnectionRecord r = this.connections.remove(conn);
        if (r != null) {
            RemoteServiceRecord s = r.getService();
            s.refCount--;
            if (s.refCount == 0) {
                this.services.remove(s.key);
                try {
                    s.host.mgr.unbind(s.key.getName());
                } catch (RemoteException e) {
                    Utils.err(TAG, e);
                }
            }
            r.disconnect(conn);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dropConnections(Predicate predicate) {
        Iterator<Map.Entry<ServiceConnection, ConnectionRecord>> it = this.connections.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<ServiceConnection, ConnectionRecord> e = it.next();
            ConnectionRecord r = e.getValue();
            if (predicate.eval(r.getService())) {
                r.disconnect(e.getKey());
                it.remove();
            }
        }
    }

    private void onServiceStopped(ServiceKey key) {
        final RemoteServiceRecord s = this.services.remove(key);
        if (s != null) {
            Objects.requireNonNull(s);
            dropConnections(new Predicate() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$$ExternalSyntheticLambda5
                @Override // com.topjohnwu.superuser.internal.RootServiceManager.Predicate
                public final boolean eval(RootServiceManager.RemoteServiceRecord remoteServiceRecord) {
                    boolean equals;
                    equals = RootServiceManager.RemoteServiceRecord.this.equals(remoteServiceRecord);
                    return equals;
                }
            });
        }
    }

    public Shell.Task createStopTask(Intent intent) {
        enforceMainThread();
        ServiceKey key = parseIntent(intent);
        RemoteProcess p = key.isDaemon() ? this.mDaemon : this.mRemote;
        if (p == null) {
            if (!key.isDaemon()) {
                return null;
            }
            return startRootProcess(key.getName(), "stop");
        }
        try {
            p.mgr.stop(key.getName(), -1);
        } catch (RemoteException e) {
            Utils.err(TAG, e);
        }
        onServiceStopped(key);
        return null;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        if (msg.what == 1) {
            onServiceStopped(new ServiceKey((ComponentName) msg.obj, msg.arg1 != 0));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static class ServiceKey extends Pair<ComponentName, Boolean> {
        ServiceKey(ComponentName name, boolean isDaemon) {
            super(name, Boolean.valueOf(isDaemon));
        }

        ComponentName getName() {
            return (ComponentName) this.first;
        }

        boolean isDaemon() {
            return ((Boolean) this.second).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static class ConnectionRecord extends Pair<RemoteServiceRecord, Executor> {
        ConnectionRecord(RemoteServiceRecord s, Executor e) {
            super(s, e);
        }

        RemoteServiceRecord getService() {
            return (RemoteServiceRecord) this.first;
        }

        void disconnect(final ServiceConnection conn) {
            ((Executor) this.second).execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$ConnectionRecord$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RootServiceManager.ConnectionRecord.this.m998xb85bcd2a(conn);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$disconnect$0$com-topjohnwu-superuser-internal-RootServiceManager$ConnectionRecord, reason: not valid java name */
        public /* synthetic */ void m998xb85bcd2a(ServiceConnection conn) {
            conn.onServiceDisconnected(((RemoteServiceRecord) this.first).key.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public class RemoteProcess extends BinderHolder {
        final IRootServiceManager mgr;

        RemoteProcess(IRootServiceManager s) throws RemoteException {
            super(s.asBinder());
            this.mgr = s;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.topjohnwu.superuser.internal.BinderHolder
        public void onBinderDied() {
            if (RootServiceManager.this.mRemote == this) {
                RootServiceManager.this.mRemote = null;
            }
            if (RootServiceManager.this.mDaemon == this) {
                RootServiceManager.this.mDaemon = null;
            }
            Iterator<RemoteServiceRecord> sit = RootServiceManager.this.services.values().iterator();
            while (sit.hasNext()) {
                if (sit.next().host == this) {
                    sit.remove();
                }
            }
            RootServiceManager.this.dropConnections(new Predicate() { // from class: com.topjohnwu.superuser.internal.RootServiceManager$RemoteProcess$$ExternalSyntheticLambda0
                @Override // com.topjohnwu.superuser.internal.RootServiceManager.Predicate
                public final boolean eval(RootServiceManager.RemoteServiceRecord remoteServiceRecord) {
                    return RootServiceManager.RemoteProcess.this.m999x23acb85f(remoteServiceRecord);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onBinderDied$0$com-topjohnwu-superuser-internal-RootServiceManager$RemoteProcess, reason: not valid java name */
        public /* synthetic */ boolean m999x23acb85f(RemoteServiceRecord s) {
            return s.host == this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static class RemoteServiceRecord {
        final IBinder binder;
        final RemoteProcess host;
        final ServiceKey key;
        int refCount = 1;

        RemoteServiceRecord(ServiceKey key, IBinder binder, RemoteProcess host) {
            this.key = key;
            this.binder = binder;
            this.host = host;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public class ServiceReceiver extends BroadcastReceiver {
        private final Messenger m;

        ServiceReceiver() {
            Handler h = new Handler(Looper.getMainLooper(), RootServiceManager.this);
            this.m = new Messenger(h);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            IBinder binder;
            Bundle bundle = intent.getBundleExtra(RootServiceManager.INTENT_BUNDLE_KEY);
            if (bundle == null || (binder = bundle.getBinder(RootServiceManager.BUNDLE_BINDER_KEY)) == null) {
                return;
            }
            IRootServiceManager mgr = IRootServiceManager.Stub.asInterface(binder);
            try {
                mgr.connect(this.m.getBinder());
                RemoteProcess p = new RemoteProcess(mgr);
                if (intent.getBooleanExtra(RootServiceManager.INTENT_DAEMON_KEY, false)) {
                    RootServiceManager.this.mDaemon = p;
                    RootServiceManager.access$472(RootServiceManager.this, -3);
                } else {
                    RootServiceManager.this.mRemote = p;
                    RootServiceManager.access$472(RootServiceManager.this, -2);
                }
                for (int i = RootServiceManager.this.pendingTasks.size() - 1; i >= 0; i--) {
                    if (((BindTask) RootServiceManager.this.pendingTasks.get(i)).run()) {
                        RootServiceManager.this.pendingTasks.remove(i);
                    }
                }
            } catch (RemoteException e) {
                Utils.err(RootServiceManager.TAG, e);
            }
        }
    }
}
