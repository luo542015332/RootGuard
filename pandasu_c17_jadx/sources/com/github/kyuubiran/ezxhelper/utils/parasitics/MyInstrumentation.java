package com.github.kyuubiran.ezxhelper.utils.parasitics;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.app.UiAutomation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.PersistableBundle;
import android.os.TestLooperManager;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.github.kyuubiran.ezxhelper.utils.AndroidUtilsKt;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: ActivityHelper.kt */
@Metadata(d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J$\u0010\b\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J$\u0010\b\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0014\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0017J\u001a\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016J$\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001c\u0010\u001e\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\"\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0019H\u0017J\u001a\u0010#\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010$\u001a\u0004\u0018\u00010\u0016H\u0016J$\u0010#\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010$\u001a\u0004\u0018\u00010\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010%\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010&\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0016H\u0016J$\u0010&\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010$\u001a\u0004\u0018\u00010\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010'\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010(\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u0016H\u0016J \u0010(\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u001cH\u0016J\u0012\u0010+\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010,\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010-\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010.\u001a\u00020\t2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u001a\u00101\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u00020\tH\u0016J\u001a\u00105\u001a\u00020\t2\u0006\u00106\u001a\u0002032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u00107\u001a\u00020\u0016H\u0016J\b\u00108\u001a\u00020\u0016H\u0016J\b\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u00020<H\u0016J\b\u0010=\u001a\u00020\u0013H\u0017J\b\u0010>\u001a\u00020<H\u0016J\b\u0010?\u001a\u00020@H\u0016J\u0010\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u000203H\u0016J\u001a\u0010B\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0002J\"\u0010C\u001a\u00020\u00112\b\u0010D\u001a\u0004\u0018\u00010\u00192\u0006\u0010E\u001a\u0002032\u0006\u0010F\u001a\u000203H\u0016J\"\u0010G\u001a\u00020\u00112\b\u0010D\u001a\u0004\u0018\u00010\u00192\u0006\u0010E\u001a\u0002032\u0006\u0010F\u001a\u000203H\u0016J\b\u0010H\u001a\u00020\u0011H\u0016Jp\u0010I\u001a\u00020\u00192\f\u0010J\u001a\b\u0012\u0002\b\u0003\u0018\u00010K2\b\u0010L\u001a\u0004\u0018\u00010<2\b\u0010M\u001a\u0004\u0018\u00010N2\b\u0010O\u001a\u0004\u0018\u0001002\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010P\u001a\u0004\u0018\u00010Q2\b\u0010R\u001a\u0004\u0018\u00010S2\b\u0010T\u001a\u0004\u0018\u00010\u00192\b\u0010E\u001a\u0004\u0018\u00010\u00132\b\u0010U\u001a\u0004\u0018\u00010VH\u0016J&\u0010I\u001a\u00020\u00192\b\u0010W\u001a\u0004\u0018\u00010X2\b\u0010Y\u001a\u0004\u0018\u00010\u00132\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J&\u0010Z\u001a\u0002002\b\u0010W\u001a\u0004\u0018\u00010X2\b\u0010Y\u001a\u0004\u0018\u00010\u00132\b\u0010L\u001a\u0004\u0018\u00010<H\u0016J\u0012\u0010[\u001a\u00020\t2\b\u0010\\\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010]\u001a\u00020\tH\u0016J\u001c\u0010^\u001a\u00020\u00112\b\u0010_\u001a\u0004\u0018\u00010V2\b\u0010`\u001a\u0004\u0018\u00010aH\u0016J\b\u0010b\u001a\u00020\tH\u0016J\u0012\u0010c\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010d\u001a\u00020\t2\b\u0010e\u001a\u0004\u0018\u00010fH\u0016J\u0010\u0010g\u001a\u00020\t2\u0006\u0010h\u001a\u000203H\u0016J\u0010\u0010i\u001a\u00020\t2\u0006\u0010j\u001a\u000203H\u0016J\u0012\u0010k\u001a\u00020\t2\b\u0010l\u001a\u0004\u0018\u00010mH\u0016J\u0012\u0010n\u001a\u00020\t2\b\u0010l\u001a\u0004\u0018\u00010oH\u0016J\u001a\u0010p\u001a\u00020\t2\u0006\u00106\u001a\u0002032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010q\u001a\u00020\t2\b\u0010r\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010s\u001a\u00020\t2\b\u0010l\u001a\u0004\u0018\u00010oH\u0016J\b\u0010t\u001a\u00020\tH\u0016J\u0010\u0010u\u001a\u00020\t2\u0006\u0010v\u001a\u00020\u0011H\u0016J\b\u0010w\u001a\u00020\tH\u0016J\u001a\u0010x\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 2\b\u0010y\u001a\u0004\u0018\u00010\u0016H\u0017J\u0012\u0010x\u001a\u00020\u00192\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\b\u0010z\u001a\u00020\tH\u0017J\b\u0010{\u001a\u00020\tH\u0016J\b\u0010|\u001a\u00020\tH\u0016J\b\u0010}\u001a\u00020\tH\u0017J\b\u0010~\u001a\u00020\tH\u0016J\u0013\u0010\u007f\u001a\u00020\t2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010fH\u0016J\t\u0010\u0081\u0001\u001a\u00020\tH\u0016J\u0013\u0010\u0082\u0001\u001a\u00020\u00192\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001d\u0010\u0083\u0001\u001a\u00020\u00192\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0084\u0001\u001a\u00030\u0085\u0001H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0086\u0001"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/parasitics/MyInstrumentation;", "Landroid/app/Instrumentation;", "mBase", "(Landroid/app/Instrumentation;)V", "acquireLooperManager", "Landroid/os/TestLooperManager;", "looper", "Landroid/os/Looper;", "addMonitor", "", "monitor", "Landroid/app/Instrumentation$ActivityMonitor;", "filter", "Landroid/content/IntentFilter;", "result", "Landroid/app/Instrumentation$ActivityResult;", "block", "", "cls", "", "addResults", "results", "Landroid/os/Bundle;", "callActivityOnCreate", "activity", "Landroid/app/Activity;", "icicle", "persistentState", "Landroid/os/PersistableBundle;", "callActivityOnDestroy", "callActivityOnNewIntent", "intent", "Landroid/content/Intent;", "callActivityOnPause", "callActivityOnPictureInPictureRequested", "callActivityOnPostCreate", "savedInstanceState", "callActivityOnRestart", "callActivityOnRestoreInstanceState", "callActivityOnResume", "callActivityOnSaveInstanceState", "outState", "outPersistentState", "callActivityOnStart", "callActivityOnStop", "callActivityOnUserLeaving", "callApplicationOnCreate", "app", "Landroid/app/Application;", "checkMonitorHit", "minHits", "", "endPerformanceSnapshot", "finish", "resultCode", "getAllocCounts", "getBinderCounts", "getComponentName", "Landroid/content/ComponentName;", "getContext", "Landroid/content/Context;", "getProcessName", "getTargetContext", "getUiAutomation", "Landroid/app/UiAutomation;", "flags", "inject", "invokeContextMenuAction", "targetActivity", "id", "flag", "invokeMenuActionSync", "isProfiling", "newActivity", "clazz", "Ljava/lang/Class;", "context", "token", "Landroid/os/IBinder;", "application", "info", "Landroid/content/pm/ActivityInfo;", "title", "", "parent", "lastNonConfigurationInstance", "", "cl", "Ljava/lang/ClassLoader;", "className", "newApplication", "onCreate", "arguments", "onDestroy", "onException", "obj", "e", "", "onStart", "removeMonitor", "runOnMainSync", "runner", "Ljava/lang/Runnable;", "sendCharacterSync", "keyCode", "sendKeyDownUpSync", "key", "sendKeySync", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "sendPointerSync", "Landroid/view/MotionEvent;", "sendStatus", "sendStringSync", "text", "sendTrackballEventSync", "setAutomaticPerformanceSnapshots", "setInTouchMode", "inTouch", "start", "startActivitySync", "options", "startAllocCounting", "startPerformanceSnapshot", "startProfiling", "stopAllocCounting", "stopProfiling", "waitForIdle", "recipient", "waitForIdleSync", "waitForMonitor", "waitForMonitorWithTimeout", "timeOut", "", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class MyInstrumentation extends Instrumentation {
    private final Instrumentation mBase;

    public MyInstrumentation(Instrumentation mBase) {
        Intrinsics.checkNotNullParameter(mBase, "mBase");
        this.mBase = mBase;
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(ClassLoader cl, String className, Intent intent) {
        try {
            Activity newActivity = this.mBase.newActivity(cl, className, intent);
            Intrinsics.checkNotNullExpressionValue(newActivity, "mBase.newActivity(cl, className, intent)");
            return newActivity;
        } catch (Exception e) {
            Intrinsics.checkNotNull(className);
            if (StringsKt.startsWith$default(className, ActivityProxyManager.INSTANCE.getMODULE_PACKAGE_NAME_ID(), false, 2, (Object) null)) {
                ClassLoader classLoader = ActivityHelper.class.getClassLoader();
                Intrinsics.checkNotNull(classLoader);
                Object newInstance = classLoader.loadClass(className).newInstance();
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type android.app.Activity");
                return (Activity) newInstance;
            }
            throw e;
        }
    }

    @Override // android.app.Instrumentation
    public void onCreate(Bundle arguments) {
        this.mBase.onCreate(arguments);
    }

    @Override // android.app.Instrumentation
    public void start() {
        this.mBase.start();
    }

    @Override // android.app.Instrumentation
    public void onStart() {
        this.mBase.onStart();
    }

    @Override // android.app.Instrumentation
    public boolean onException(Object obj, Throwable e) {
        return this.mBase.onException(obj, e);
    }

    @Override // android.app.Instrumentation
    public void sendStatus(int resultCode, Bundle results) {
        this.mBase.sendStatus(resultCode, results);
    }

    @Override // android.app.Instrumentation
    public void addResults(Bundle results) {
        this.mBase.addResults(results);
    }

    @Override // android.app.Instrumentation
    public void finish(int resultCode, Bundle results) {
        this.mBase.finish(resultCode, results);
    }

    @Override // android.app.Instrumentation
    public void setAutomaticPerformanceSnapshots() {
        this.mBase.setAutomaticPerformanceSnapshots();
    }

    @Override // android.app.Instrumentation
    public void startPerformanceSnapshot() {
        this.mBase.startPerformanceSnapshot();
    }

    @Override // android.app.Instrumentation
    public void endPerformanceSnapshot() {
        this.mBase.endPerformanceSnapshot();
    }

    @Override // android.app.Instrumentation
    public void onDestroy() {
        this.mBase.onDestroy();
    }

    @Override // android.app.Instrumentation
    public Context getContext() {
        Context context = this.mBase.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "mBase.context");
        return context;
    }

    @Override // android.app.Instrumentation
    public ComponentName getComponentName() {
        ComponentName componentName = this.mBase.getComponentName();
        Intrinsics.checkNotNullExpressionValue(componentName, "mBase.componentName");
        return componentName;
    }

    @Override // android.app.Instrumentation
    public Context getTargetContext() {
        Context targetContext = this.mBase.getTargetContext();
        Intrinsics.checkNotNullExpressionValue(targetContext, "mBase.targetContext");
        return targetContext;
    }

    @Override // android.app.Instrumentation
    public String getProcessName() {
        String processName = this.mBase.getProcessName();
        Intrinsics.checkNotNullExpressionValue(processName, "mBase.processName");
        return processName;
    }

    @Override // android.app.Instrumentation
    public boolean isProfiling() {
        return this.mBase.isProfiling();
    }

    @Override // android.app.Instrumentation
    public void startProfiling() {
        this.mBase.startProfiling();
    }

    @Override // android.app.Instrumentation
    public void stopProfiling() {
        this.mBase.stopProfiling();
    }

    @Override // android.app.Instrumentation
    public void setInTouchMode(boolean inTouch) {
        this.mBase.setInTouchMode(inTouch);
    }

    @Override // android.app.Instrumentation
    public void waitForIdle(Runnable recipient) {
        this.mBase.waitForIdle(recipient);
    }

    @Override // android.app.Instrumentation
    public void waitForIdleSync() {
        this.mBase.waitForIdleSync();
    }

    @Override // android.app.Instrumentation
    public void runOnMainSync(Runnable runner) {
        this.mBase.runOnMainSync(runner);
    }

    @Override // android.app.Instrumentation
    public Activity startActivitySync(Intent intent) {
        Activity startActivitySync = this.mBase.startActivitySync(intent);
        Intrinsics.checkNotNullExpressionValue(startActivitySync, "mBase.startActivitySync(intent)");
        return startActivitySync;
    }

    @Override // android.app.Instrumentation
    public Activity startActivitySync(Intent intent, Bundle options) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Activity startActivitySync = this.mBase.startActivitySync(intent, options);
        Intrinsics.checkNotNullExpressionValue(startActivitySync, "mBase.startActivitySync(intent, options)");
        return startActivitySync;
    }

    @Override // android.app.Instrumentation
    public void addMonitor(Instrumentation.ActivityMonitor monitor) {
        this.mBase.addMonitor(monitor);
    }

    @Override // android.app.Instrumentation
    public Instrumentation.ActivityMonitor addMonitor(String cls, Instrumentation.ActivityResult result, boolean block) {
        Instrumentation.ActivityMonitor addMonitor = this.mBase.addMonitor(cls, result, block);
        Intrinsics.checkNotNullExpressionValue(addMonitor, "mBase.addMonitor(cls, result, block)");
        return addMonitor;
    }

    @Override // android.app.Instrumentation
    public Instrumentation.ActivityMonitor addMonitor(IntentFilter filter, Instrumentation.ActivityResult result, boolean block) {
        Instrumentation.ActivityMonitor addMonitor = this.mBase.addMonitor(filter, result, block);
        Intrinsics.checkNotNullExpressionValue(addMonitor, "mBase.addMonitor(filter, result, block)");
        return addMonitor;
    }

    @Override // android.app.Instrumentation
    public boolean checkMonitorHit(Instrumentation.ActivityMonitor monitor, int minHits) {
        return this.mBase.checkMonitorHit(monitor, minHits);
    }

    @Override // android.app.Instrumentation
    public Activity waitForMonitor(Instrumentation.ActivityMonitor monitor) {
        Activity waitForMonitor = this.mBase.waitForMonitor(monitor);
        Intrinsics.checkNotNullExpressionValue(waitForMonitor, "mBase.waitForMonitor(monitor)");
        return waitForMonitor;
    }

    @Override // android.app.Instrumentation
    public Activity waitForMonitorWithTimeout(Instrumentation.ActivityMonitor monitor, long timeOut) {
        Activity waitForMonitorWithTimeout = this.mBase.waitForMonitorWithTimeout(monitor, timeOut);
        Intrinsics.checkNotNullExpressionValue(waitForMonitorWithTimeout, "mBase.waitForMonitorWithTimeout(monitor, timeOut)");
        return waitForMonitorWithTimeout;
    }

    @Override // android.app.Instrumentation
    public void removeMonitor(Instrumentation.ActivityMonitor monitor) {
        this.mBase.removeMonitor(monitor);
    }

    @Override // android.app.Instrumentation
    public boolean invokeContextMenuAction(Activity targetActivity, int id, int flag) {
        return this.mBase.invokeContextMenuAction(targetActivity, id, flag);
    }

    @Override // android.app.Instrumentation
    public boolean invokeMenuActionSync(Activity targetActivity, int id, int flag) {
        return this.mBase.invokeMenuActionSync(targetActivity, id, flag);
    }

    @Override // android.app.Instrumentation
    public void sendCharacterSync(int keyCode) {
        this.mBase.sendCharacterSync(keyCode);
    }

    @Override // android.app.Instrumentation
    public void sendKeyDownUpSync(int key) {
        this.mBase.sendKeyDownUpSync(key);
    }

    @Override // android.app.Instrumentation
    public void sendKeySync(KeyEvent event) {
        this.mBase.sendKeySync(event);
    }

    @Override // android.app.Instrumentation
    public void sendPointerSync(MotionEvent event) {
        this.mBase.sendPointerSync(event);
    }

    @Override // android.app.Instrumentation
    public void sendStringSync(String text) {
        this.mBase.sendStringSync(text);
    }

    @Override // android.app.Instrumentation
    public void sendTrackballEventSync(MotionEvent event) {
        this.mBase.sendTrackballEventSync(event);
    }

    @Override // android.app.Instrumentation
    public Application newApplication(ClassLoader cl, String className, Context context) {
        Application newApplication = this.mBase.newApplication(cl, className, context);
        Intrinsics.checkNotNullExpressionValue(newApplication, "mBase.newApplication(cl, className, context)");
        return newApplication;
    }

    @Override // android.app.Instrumentation
    public void callApplicationOnCreate(Application app) {
        this.mBase.callApplicationOnCreate(app);
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(Class<?> clazz, Context context, IBinder token, Application application, Intent intent, ActivityInfo info, CharSequence title, Activity parent, String id, Object lastNonConfigurationInstance) {
        Activity newActivity = this.mBase.newActivity(clazz, context, token, application, intent, info, title, parent, id, lastNonConfigurationInstance);
        Intrinsics.checkNotNullExpressionValue(newActivity, "mBase.newActivity(\n     …urationInstance\n        )");
        return newActivity;
    }

    private final void inject(Activity activity, Bundle icicle) {
        String clzName = activity.getClass().getName();
        if (icicle != null) {
            Intrinsics.checkNotNullExpressionValue(clzName, "clzName");
            if (StringsKt.startsWith$default(clzName, ActivityProxyManager.INSTANCE.getMODULE_PACKAGE_NAME_ID(), false, 2, (Object) null)) {
                icicle.setClassLoader(ActivityProxyManager.INSTANCE.getMODULE_CLASS_LOADER());
            }
        }
        Intrinsics.checkNotNullExpressionValue(clzName, "clzName");
        if (StringsKt.startsWith$default(clzName, ActivityProxyManager.INSTANCE.getMODULE_PACKAGE_NAME_ID(), false, 2, (Object) null)) {
            Resources resources = activity.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "activity.resources");
            AndroidUtilsKt.addModuleAssetPath(resources);
        }
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle icicle, PersistableBundle persistentState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        inject(activity, icicle);
        this.mBase.callActivityOnCreate(activity, icicle, persistentState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle icicle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        inject(activity, icicle);
        this.mBase.callActivityOnCreate(activity, icicle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnDestroy(Activity activity) {
        this.mBase.callActivityOnDestroy(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestoreInstanceState(Activity activity, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
        this.mBase.callActivityOnRestoreInstanceState(activity, savedInstanceState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestoreInstanceState(Activity activity, Bundle savedInstanceState, PersistableBundle persistentState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.mBase.callActivityOnRestoreInstanceState(activity, savedInstanceState, persistentState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPostCreate(Activity activity, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.mBase.callActivityOnPostCreate(activity, savedInstanceState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPostCreate(Activity activity, Bundle savedInstanceState, PersistableBundle persistentState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.mBase.callActivityOnPostCreate(activity, savedInstanceState, persistentState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnNewIntent(Activity activity, Intent intent) {
        this.mBase.callActivityOnNewIntent(activity, intent);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStart(Activity activity) {
        this.mBase.callActivityOnStart(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestart(Activity activity) {
        this.mBase.callActivityOnRestart(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPause(Activity activity) {
        this.mBase.callActivityOnPause(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnResume(Activity activity) {
        this.mBase.callActivityOnResume(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStop(Activity activity) {
        this.mBase.callActivityOnStop(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnUserLeaving(Activity activity) {
        this.mBase.callActivityOnUserLeaving(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnSaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        this.mBase.callActivityOnSaveInstanceState(activity, outState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnSaveInstanceState(Activity activity, Bundle outState, PersistableBundle outPersistentState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        Intrinsics.checkNotNullParameter(outPersistentState, "outPersistentState");
        this.mBase.callActivityOnSaveInstanceState(activity, outState, outPersistentState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPictureInPictureRequested(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.mBase.callActivityOnPictureInPictureRequested(activity);
    }

    @Override // android.app.Instrumentation
    @Deprecated(message = "Deprecated in Java")
    public void startAllocCounting() {
        this.mBase.startAllocCounting();
    }

    @Override // android.app.Instrumentation
    @Deprecated(message = "Deprecated in Java")
    public void stopAllocCounting() {
        this.mBase.stopAllocCounting();
    }

    @Override // android.app.Instrumentation
    public Bundle getAllocCounts() {
        Bundle allocCounts = this.mBase.getAllocCounts();
        Intrinsics.checkNotNullExpressionValue(allocCounts, "mBase.allocCounts");
        return allocCounts;
    }

    @Override // android.app.Instrumentation
    public Bundle getBinderCounts() {
        Bundle binderCounts = this.mBase.getBinderCounts();
        Intrinsics.checkNotNullExpressionValue(binderCounts, "mBase.binderCounts");
        return binderCounts;
    }

    @Override // android.app.Instrumentation
    public UiAutomation getUiAutomation() {
        UiAutomation uiAutomation = this.mBase.getUiAutomation();
        Intrinsics.checkNotNullExpressionValue(uiAutomation, "mBase.uiAutomation");
        return uiAutomation;
    }

    @Override // android.app.Instrumentation
    public UiAutomation getUiAutomation(int flags) {
        UiAutomation uiAutomation = this.mBase.getUiAutomation(flags);
        Intrinsics.checkNotNullExpressionValue(uiAutomation, "mBase.getUiAutomation(flags)");
        return uiAutomation;
    }

    @Override // android.app.Instrumentation
    public TestLooperManager acquireLooperManager(Looper looper) {
        TestLooperManager acquireLooperManager = this.mBase.acquireLooperManager(looper);
        Intrinsics.checkNotNullExpressionValue(acquireLooperManager, "mBase.acquireLooperManager(looper)");
        return acquireLooperManager;
    }
}
