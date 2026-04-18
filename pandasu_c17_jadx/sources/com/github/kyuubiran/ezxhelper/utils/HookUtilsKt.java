package com.github.kyuubiran.ezxhelper.utils;

import com.github.kyuubiran.ezxhelper.init.InitFields;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HookUtils.kt */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u001aX\u0010\u0000\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u0012\u001aX\u0010\u0013\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u0012\u001aX\u0010\u0014\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u0012\u001aT\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u00112'\b\u0004\u0010\u0015\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011H\u0086\bø\u0001\u0000\u001aX\u0010\u0016\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u00182)\b\u0004\u0010\u0015\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018H\u0086\bø\u0001\u0000\u001a9\u0010\u0019\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001aC\u0010\u0019\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001a5\u0010\u0019\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001a?\u0010\u0019\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001aJ\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001c\u001aT\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001d\u001aF\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001e\u001aP\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001f\u001aL\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0!2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011H\u0007¢\u0006\u0002\b\"\u001aV\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0!2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011H\u0007¢\u0006\u0002\b\"\u001aA\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0!2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001aK\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0!2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001aD\u0010\u0000\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\u0006\u0012\u0002\b\u00030#2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010$\u001aN\u0010\u0000\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\u0006\u0012\u0002\b\u00030#2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010%\u001aD\u0010\u0013\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\u0006\u0012\u0002\b\u00030#2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010$\u001aN\u0010\u0013\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\u0006\u0012\u0002\b\u00030#2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010%\u001aF\u0010\u0014\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\u0006\u0012\u0002\b\u00030#2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018¢\u0006\u0002\u0010$\u001aP\u0010\u0014\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\u0006\u0012\u0002\b\u00030#2\b\b\u0002\u0010\b\u001a\u00020\t2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018¢\u0006\u0002\u0010%\u001a9\u0010&\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001aC\u0010&\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010'\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001a5\u0010&\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001a?\u0010&\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010'\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001aJ\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001c\u001aT\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001d\u001aF\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001e\u001aP\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011¢\u0006\u0002\u0010\u001f\u001aL\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0!2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011H\u0007¢\u0006\u0002\b(\u001aV\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0!2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011H\u0007¢\u0006\u0002\b(\u001aA\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0!2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001aK\u0010&\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0!2\b\b\u0002\u0010\b\u001a\u00020\t2%\u0010\n\u001a!\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bj\u0002`\u0011\u001a\u001a\u0010)\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2\u0006\u0010\u0015\u001a\u00020\u0003\u001a5\u0010)\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2\b\b\u0002\u0010\b\u001a\u00020\t2\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0002\b+\u001a\u0016\u0010)\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u0003\u001a1\u0010)\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2\b\b\u0002\u0010\b\u001a\u00020\t2\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0002\b+\u001aF\u0010)\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0002\b+¢\u0006\u0002\u0010\u001d\u001aB\u0010)\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0002\b+¢\u0006\u0002\u0010\u001f\u001aH\u0010)\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0!2\b\b\u0002\u0010\b\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0002\b+H\u0007¢\u0006\u0002\b,\u001a=\u0010)\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0!2\b\b\u0002\u0010\b\u001a\u00020\t2\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0002\b+\u001a;\u0010-\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018\u001aE\u0010-\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2\b\b\u0002\u0010\b\u001a\u00020\t2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018\u001a7\u0010-\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018\u001aA\u0010-\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2\b\b\u0002\u0010\b\u001a\u00020\t2'\u0010'\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018\u001aL\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018¢\u0006\u0002\u0010\u001c\u001aV\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018¢\u0006\u0002\u0010\u001d\u001aH\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018¢\u0006\u0002\u0010\u001e\u001aR\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018¢\u0006\u0002\u0010\u001f\u001aN\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0!2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018H\u0007¢\u0006\u0002\b.\u001aX\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0!2\b\b\u0002\u0010\b\u001a\u00020\t2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018H\u0007¢\u0006\u0002\b.\u001aC\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0!2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018\u001aM\u0010-\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0!2\b\b\u0002\u0010\b\u001a\u00020\t2'\u0010\n\u001a#\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bj\u0002`\u0018\u001a\u001c\u0010/\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2\b\u00100\u001a\u0004\u0018\u00010\u0017\u001a&\u0010/\u001a\u00060\u0002R\u00020\u0003*\u0006\u0012\u0002\b\u00030\u001a2\b\b\u0002\u0010\b\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u00010\u0017\u001a\u0018\u0010/\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2\b\u00100\u001a\u0004\u0018\u00010\u0017\u001a\"\u0010/\u001a\u00060\u0002R\u00020\u0003*\u00020\u001b2\b\b\u0002\u0010\b\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u00010\u0017\u001a-\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012\b\u00100\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u00101\u001a7\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u00102\u001a)\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012\b\u00100\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u00103\u001a3\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00012\b\b\u0002\u0010\b\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u00104\u001a/\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0 2\b\u00100\u001a\u0004\u0018\u00010\u0017H\u0007¢\u0006\u0002\b5\u001a9\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a0 2\b\b\u0002\u0010\b\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u00010\u0017H\u0007¢\u0006\u0002\b5\u001a$\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0 2\b\u00100\u001a\u0004\u0018\u00010\u0017\u001a.\u0010/\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00030 *\b\u0012\u0004\u0012\u00020\u001b0 2\b\b\u0002\u0010\b\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u00010\u0017\u001a\u0019\u00106\u001a\u00020\u0010*\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001¢\u0006\u0002\u00107\u001a\u0014\u00106\u001a\u00020\u0010*\f\u0012\b\u0012\u00060\u0002R\u00020\u00030!*@\u00108\"\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000b2\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000b*D\u00109\"\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000b2\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006:"}, d2 = {"hookAllConstructorAfter", "", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "clzName", "", "clzLoader", "Ljava/lang/ClassLoader;", "priority", "", "hooker", "Lkotlin/Function1;", "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;", "Lkotlin/ParameterName;", "name", "param", "", "Lcom/github/kyuubiran/ezxhelper/utils/Hooker;", "(Ljava/lang/String;Ljava/lang/ClassLoader;ILkotlin/jvm/functions/Function1;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "hookAllConstructorBefore", "hookAllConstructorReplace", "hookCallback", "replaceHooker", "", "Lcom/github/kyuubiran/ezxhelper/utils/ReplaceHooker;", "hookAfter", "Ljava/lang/reflect/Constructor;", "Ljava/lang/reflect/Method;", "([Ljava/lang/reflect/Constructor;Lkotlin/jvm/functions/Function1;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "([Ljava/lang/reflect/Constructor;ILkotlin/jvm/functions/Function1;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "([Ljava/lang/reflect/Method;Lkotlin/jvm/functions/Function1;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "([Ljava/lang/reflect/Method;ILkotlin/jvm/functions/Function1;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "", "", "hookConstructorAfter", "Ljava/lang/Class;", "(Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "(Ljava/lang/Class;ILkotlin/jvm/functions/Function1;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "hookBefore", "hook", "hookConstructorBefore", "hookMethod", "Lcom/github/kyuubiran/ezxhelper/utils/XposedHookFactory;", "Lkotlin/ExtensionFunctionType;", "hookConstructor", "hookReplace", "hookConstructorReplace", "hookReturnConstant", "obj", "([Ljava/lang/reflect/Constructor;Ljava/lang/Object;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "([Ljava/lang/reflect/Constructor;ILjava/lang/Object;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "([Ljava/lang/reflect/Method;Ljava/lang/Object;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "([Ljava/lang/reflect/Method;ILjava/lang/Object;)[Lde/robv/android/xposed/XC_MethodHook$Unhook;", "hookConstructorReturnConstant", "unhookAll", "([Lde/robv/android/xposed/XC_MethodHook$Unhook;)V", "Hooker", "ReplaceHooker", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class HookUtilsKt {
    public static final XC_MethodHook.Unhook hookMethod(Method $this$hookMethod, XC_MethodHook hookCallback) {
        Intrinsics.checkNotNullParameter($this$hookMethod, "<this>");
        Intrinsics.checkNotNullParameter(hookCallback, "hookCallback");
        XC_MethodHook.Unhook hookMethod = XposedBridge.hookMethod($this$hookMethod, hookCallback);
        Intrinsics.checkNotNullExpressionValue(hookMethod, "hookMethod(this, hookCallback)");
        return hookMethod;
    }

    public static final XC_MethodHook.Unhook hookMethod(Constructor<?> constructor, XC_MethodHook hookCallback) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hookCallback, "hookCallback");
        XC_MethodHook.Unhook hookMethod = XposedBridge.hookMethod(constructor, hookCallback);
        Intrinsics.checkNotNullExpressionValue(hookMethod, "hookMethod(this, hookCallback)");
        return hookMethod;
    }

    public static final Function1<XC_MethodHook.MethodHookParam, Unit> hooker(final Function1<? super XC_MethodHook.MethodHookParam, Unit> hookCallback) {
        Intrinsics.checkNotNullParameter(hookCallback, "hookCallback");
        return new Function1<XC_MethodHook.MethodHookParam, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$hooker$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(XC_MethodHook.MethodHookParam methodHookParam) {
                invoke2(methodHookParam);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public void invoke2(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                hookCallback.invoke(param);
            }
        };
    }

    public static final Function1<XC_MethodHook.MethodHookParam, Object> replaceHooker(final Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hookCallback) {
        Intrinsics.checkNotNullParameter(hookCallback, "hookCallback");
        return new Function1<XC_MethodHook.MethodHookParam, Object>() { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$replaceHooker$1
            @Override // kotlin.jvm.functions.Function1
            public Object invoke(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                return hookCallback.invoke(param);
            }
        };
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookBefore$default(Method method, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookBefore(method, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook hookBefore(Method $this$hookBefore, final int priority, final Function1<? super XC_MethodHook.MethodHookParam, Unit> hook) {
        Intrinsics.checkNotNullParameter($this$hookBefore, "<this>");
        Intrinsics.checkNotNullParameter(hook, "hook");
        return hookMethod($this$hookBefore, new XC_MethodHook(priority) { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$hookBefore$1
            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                try {
                    hook.invoke(param);
                } catch (Throwable thr) {
                    Log.ex$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
                }
            }
        });
    }

    public static final XC_MethodHook.Unhook hookBefore(Method $this$hookBefore, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter($this$hookBefore, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookBefore($this$hookBefore, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookBefore$default(Method[] methodArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookBefore(methodArr, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookBefore(Method[] $this$hookBefore, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter($this$hookBefore, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList($this$hookBefore.length);
        for (Method method : $this$hookBefore) {
            destination$iv$iv.add(hookBefore(method, priority, hooker));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookBefore(Method[] $this$hookBefore, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter($this$hookBefore, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookBefore($this$hookBefore, 50, hooker);
    }

    public static /* synthetic */ List hookBefore$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookBefore((Iterable<Method>) iterable, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final List<XC_MethodHook.Unhook> hookBefore(Iterable<Method> iterable, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            Method it = (Method) item$iv$iv;
            destination$iv$iv.add(hookBefore(it, priority, hooker));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookBefore(Iterable<Method> iterable, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookBefore(iterable, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookBefore$default(Constructor constructor, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookBefore((Constructor<?>) constructor, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook hookBefore(Constructor<?> constructor, final int priority, final Function1<? super XC_MethodHook.MethodHookParam, Unit> hook) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hook, "hook");
        return hookMethod(constructor, new XC_MethodHook(priority) { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$hookBefore$4
            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                try {
                    hook.invoke(param);
                } catch (Throwable thr) {
                    Log.ex$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
                }
            }
        });
    }

    public static final XC_MethodHook.Unhook hookBefore(Constructor<?> constructor, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookBefore(constructor, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookBefore$default(Constructor[] constructorArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookBefore((Constructor<?>[]) constructorArr, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookBefore(Constructor<?>[] constructorArr, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(constructorArr.length);
        for (Constructor<?> constructor : constructorArr) {
            destination$iv$iv.add(hookBefore(constructor, priority, hooker));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookBefore(Constructor<?>[] constructorArr, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookBefore(constructorArr, 50, hooker);
    }

    public static /* synthetic */ List hookConstructorBefore$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookConstructorBefore(iterable, i, function1);
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorBefore(Iterable<? extends Constructor<?>> iterable, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Constructor item$iv$iv : iterable) {
            Constructor it = item$iv$iv;
            destination$iv$iv.add(hookBefore((Constructor<?>) it, priority, hooker));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorBefore(Iterable<? extends Constructor<?>> iterable, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookConstructorBefore(iterable, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookAfter$default(Method method, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAfter(method, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook hookAfter(Method $this$hookAfter, final int priority, final Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter($this$hookAfter, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookMethod($this$hookAfter, new XC_MethodHook(priority) { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$hookAfter$1
            protected void afterHookedMethod(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                try {
                    hooker.invoke(param);
                } catch (Throwable thr) {
                    Log.ex$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
                }
            }
        });
    }

    public static final XC_MethodHook.Unhook hookAfter(Method $this$hookAfter, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter($this$hookAfter, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAfter($this$hookAfter, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAfter$default(Method[] methodArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAfter(methodArr, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookAfter(Method[] $this$hookAfter, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter($this$hookAfter, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList($this$hookAfter.length);
        for (Method method : $this$hookAfter) {
            destination$iv$iv.add(hookAfter(method, priority, hooker));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookAfter(Method[] $this$hookAfter, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter($this$hookAfter, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAfter($this$hookAfter, 50, hooker);
    }

    public static /* synthetic */ List hookAfter$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAfter((Iterable<Method>) iterable, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final List<XC_MethodHook.Unhook> hookAfter(Iterable<Method> iterable, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            Method it = (Method) item$iv$iv;
            destination$iv$iv.add(hookAfter(it, priority, hooker));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookAfter(Iterable<Method> iterable, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAfter(iterable, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookAfter$default(Constructor constructor, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAfter((Constructor<?>) constructor, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook hookAfter(Constructor<?> constructor, final int priority, final Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookMethod(constructor, new XC_MethodHook(priority) { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$hookAfter$4
            protected void afterHookedMethod(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                try {
                    hooker.invoke(param);
                } catch (Throwable thr) {
                    Log.ex$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
                }
            }
        });
    }

    public static final XC_MethodHook.Unhook hookAfter(Constructor<?> constructor, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAfter(constructor, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAfter$default(Constructor[] constructorArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAfter((Constructor<?>[]) constructorArr, i, (Function1<? super XC_MethodHook.MethodHookParam, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookAfter(Constructor<?>[] constructorArr, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(constructorArr.length);
        for (Constructor<?> constructor : constructorArr) {
            destination$iv$iv.add(hookAfter(constructor, priority, hooker));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookAfter(Constructor<?>[] constructorArr, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAfter(constructorArr, 50, hooker);
    }

    public static /* synthetic */ List hookConstructorAfter$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookConstructorAfter(iterable, i, function1);
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorAfter(Iterable<? extends Constructor<?>> iterable, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Constructor item$iv$iv : iterable) {
            Constructor it = item$iv$iv;
            destination$iv$iv.add(hookAfter((Constructor<?>) it, priority, hooker));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorAfter(Iterable<? extends Constructor<?>> iterable, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookConstructorAfter(iterable, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookReplace$default(Method method, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReplace(method, i, (Function1<? super XC_MethodHook.MethodHookParam, ? extends Object>) function1);
    }

    public static final XC_MethodHook.Unhook hookReplace(Method $this$hookReplace, final int priority, final Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hook) {
        Intrinsics.checkNotNullParameter($this$hookReplace, "<this>");
        Intrinsics.checkNotNullParameter(hook, "hook");
        return hookMethod($this$hookReplace, new XC_MethodReplacement(priority) { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$hookReplace$1
            protected Object replaceHookedMethod(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                try {
                    return hook.invoke(param);
                } catch (Throwable thr) {
                    Log.ex$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
                    return Unit.INSTANCE;
                }
            }
        });
    }

    public static final XC_MethodHook.Unhook hookReplace(Method $this$hookReplace, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter($this$hookReplace, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookReplace($this$hookReplace, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookReplace$default(Method[] methodArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReplace(methodArr, i, (Function1<? super XC_MethodHook.MethodHookParam, ? extends Object>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookReplace(Method[] $this$hookReplace, int priority, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter($this$hookReplace, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList($this$hookReplace.length);
        for (Method method : $this$hookReplace) {
            destination$iv$iv.add(hookReplace(method, priority, hooker));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookReplace(Method[] $this$hookReplace, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter($this$hookReplace, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookReplace($this$hookReplace, 50, hooker);
    }

    public static /* synthetic */ List hookReplace$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReplace((Iterable<Method>) iterable, i, (Function1<? super XC_MethodHook.MethodHookParam, ? extends Object>) function1);
    }

    public static final List<XC_MethodHook.Unhook> hookReplace(Iterable<Method> iterable, int priority, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            Method it = (Method) item$iv$iv;
            destination$iv$iv.add(hookReplace(it, priority, hooker));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookReplace(Iterable<Method> iterable, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookReplace(iterable, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookReplace$default(Constructor constructor, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReplace((Constructor<?>) constructor, i, (Function1<? super XC_MethodHook.MethodHookParam, ? extends Object>) function1);
    }

    public static final XC_MethodHook.Unhook hookReplace(Constructor<?> constructor, final int priority, final Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookMethod(constructor, new XC_MethodReplacement(priority) { // from class: com.github.kyuubiran.ezxhelper.utils.HookUtilsKt$hookReplace$4
            protected Object replaceHookedMethod(XC_MethodHook.MethodHookParam param) {
                Intrinsics.checkNotNullParameter(param, "param");
                try {
                    return hooker.invoke(param);
                } catch (Throwable thr) {
                    Log.ex$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
                    return Unit.INSTANCE;
                }
            }
        });
    }

    public static final XC_MethodHook.Unhook hookReplace(Constructor<?> constructor, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookReplace(constructor, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookReplace$default(Constructor[] constructorArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReplace((Constructor<?>[]) constructorArr, i, (Function1<? super XC_MethodHook.MethodHookParam, ? extends Object>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookReplace(Constructor<?>[] constructorArr, int priority, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(constructorArr.length);
        for (Constructor<?> constructor : constructorArr) {
            destination$iv$iv.add(hookReplace(constructor, priority, hooker));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookReplace(Constructor<?>[] constructorArr, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookReplace(constructorArr, 50, hooker);
    }

    public static /* synthetic */ List hookConstructorReplace$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookConstructorReplace(iterable, i, function1);
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorReplace(Iterable<? extends Constructor<?>> iterable, int priority, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Constructor item$iv$iv : iterable) {
            Constructor it = item$iv$iv;
            destination$iv$iv.add(hookReplace((Constructor<?>) it, priority, hooker));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorReplace(Iterable<? extends Constructor<?>> iterable, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookConstructorReplace(iterable, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAllConstructorBefore$default(Class cls, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAllConstructorBefore(cls, i, function1);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorBefore(Class<?> cls, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "this.declaredConstructors");
        return hookBefore(declaredConstructors, priority, hooker);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorBefore(Class<?> cls, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAllConstructorBefore(cls, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAllConstructorAfter$default(Class cls, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAllConstructorAfter(cls, i, function1);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorAfter(Class<?> cls, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "this.declaredConstructors");
        return hookAfter(declaredConstructors, priority, hooker);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorAfter(Class<?> cls, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAllConstructorAfter(cls, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAllConstructorReplace$default(Class cls, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookAllConstructorReplace(cls, i, function1);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorReplace(Class<?> cls, int priority, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "this.declaredConstructors");
        return hookReplace(declaredConstructors, priority, hooker);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorReplace(Class<?> cls, Function1<? super XC_MethodHook.MethodHookParam, ? extends Object> hooker) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        return hookAllConstructorReplace(cls, 50, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAllConstructorBefore$default(String str, ClassLoader classLoader, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i2 & 4) != 0) {
            i = 50;
        }
        return hookAllConstructorBefore(str, classLoader, i, function1);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorBefore(String clzName, ClassLoader clzLoader, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Constructor<?>[] declaredConstructors = ClassUtilKt.loadClass(clzName, clzLoader).getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "loadClass(clzName, clzLoader).declaredConstructors");
        return hookBefore(declaredConstructors, priority, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAllConstructorAfter$default(String str, ClassLoader classLoader, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i2 & 4) != 0) {
            i = 50;
        }
        return hookAllConstructorAfter(str, classLoader, i, function1);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorAfter(String clzName, ClassLoader clzLoader, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Constructor<?>[] declaredConstructors = ClassUtilKt.loadClass(clzName, clzLoader).getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "loadClass(clzName, clzLoader).declaredConstructors");
        return hookAfter(declaredConstructors, priority, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookAllConstructorReplace$default(String str, ClassLoader classLoader, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i2 & 4) != 0) {
            i = 50;
        }
        return hookAllConstructorReplace(str, classLoader, i, function1);
    }

    public static final XC_MethodHook.Unhook[] hookAllConstructorReplace(String clzName, ClassLoader clzLoader, int priority, Function1<? super XC_MethodHook.MethodHookParam, Unit> hooker) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Constructor<?>[] declaredConstructors = ClassUtilKt.loadClass(clzName, clzLoader).getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "loadClass(clzName, clzLoader).declaredConstructors");
        return hookReplace(declaredConstructors, priority, hooker);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookReturnConstant$default(Method method, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReturnConstant(method, i, obj);
    }

    public static final XC_MethodHook.Unhook hookReturnConstant(Method $this$hookReturnConstant, int priority, Object obj) {
        Intrinsics.checkNotNullParameter($this$hookReturnConstant, "<this>");
        XC_MethodHook.Unhook hookMethod = XposedBridge.hookMethod($this$hookReturnConstant, XC_MethodReplacement.returnConstant(priority, obj));
        Intrinsics.checkNotNullExpressionValue(hookMethod, "hookMethod(this, XC_Meth…nConstant(priority, obj))");
        return hookMethod;
    }

    public static final XC_MethodHook.Unhook hookReturnConstant(Method $this$hookReturnConstant, Object obj) {
        Intrinsics.checkNotNullParameter($this$hookReturnConstant, "<this>");
        return hookReturnConstant($this$hookReturnConstant, 50, obj);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookReturnConstant$default(Method[] methodArr, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReturnConstant(methodArr, i, obj);
    }

    public static final XC_MethodHook.Unhook[] hookReturnConstant(Method[] $this$hookReturnConstant, int priority, Object obj) {
        Intrinsics.checkNotNullParameter($this$hookReturnConstant, "<this>");
        Collection destination$iv$iv = new ArrayList($this$hookReturnConstant.length);
        for (Method method : $this$hookReturnConstant) {
            destination$iv$iv.add(XposedBridge.hookMethod(method, XC_MethodReplacement.returnConstant(priority, obj)));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookReturnConstant(Method[] $this$hookReturnConstant, Object obj) {
        Intrinsics.checkNotNullParameter($this$hookReturnConstant, "<this>");
        return hookReturnConstant($this$hookReturnConstant, 50, obj);
    }

    public static /* synthetic */ List hookReturnConstant$default(List list, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReturnConstant((List<Method>) list, i, obj);
    }

    public static final List<XC_MethodHook.Unhook> hookReturnConstant(List<Method> list, int priority, Object obj) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<Method> $this$map$iv = list;
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            Method it = (Method) item$iv$iv;
            destination$iv$iv.add(XposedBridge.hookMethod(it, XC_MethodReplacement.returnConstant(priority, obj)));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookReturnConstant(List<Method> list, Object obj) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return hookReturnConstant(list, 50, obj);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookReturnConstant$default(Constructor constructor, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReturnConstant((Constructor<?>) constructor, i, obj);
    }

    public static final XC_MethodHook.Unhook hookReturnConstant(Constructor<?> constructor, int priority, Object obj) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        XC_MethodHook.Unhook hookMethod = XposedBridge.hookMethod(constructor, XC_MethodReplacement.returnConstant(priority, obj));
        Intrinsics.checkNotNullExpressionValue(hookMethod, "hookMethod(this, XC_Meth…nConstant(priority, obj))");
        return hookMethod;
    }

    public static final XC_MethodHook.Unhook hookReturnConstant(Constructor<?> constructor, Object obj) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        return hookReturnConstant(constructor, 50, obj);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookReturnConstant$default(Constructor[] constructorArr, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookReturnConstant((Constructor<?>[]) constructorArr, i, obj);
    }

    public static final XC_MethodHook.Unhook[] hookReturnConstant(Constructor<?>[] constructorArr, int priority, Object obj) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Collection destination$iv$iv = new ArrayList(constructorArr.length);
        for (Constructor<?> constructor : constructorArr) {
            destination$iv$iv.add(XposedBridge.hookMethod(constructor, XC_MethodReplacement.returnConstant(priority, obj)));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static final XC_MethodHook.Unhook[] hookReturnConstant(Constructor<?>[] constructorArr, Object obj) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        return hookReturnConstant(constructorArr, 50, obj);
    }

    public static /* synthetic */ List hookConstructorReturnConstant$default(List list, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookConstructorReturnConstant(list, i, obj);
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorReturnConstant(List<? extends Constructor<?>> list, int priority, Object obj) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends Constructor<?>> $this$map$iv = list;
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            Constructor it = (Constructor) item$iv$iv;
            destination$iv$iv.add(XposedBridge.hookMethod(it, XC_MethodReplacement.returnConstant(priority, obj)));
        }
        return (List) destination$iv$iv;
    }

    public static final List<XC_MethodHook.Unhook> hookConstructorReturnConstant(List<? extends Constructor<?>> list, Object obj) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return hookConstructorReturnConstant(list, 50, obj);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookMethod$default(Method method, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookMethod(method, i, (Function1<? super XposedHookFactory, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook hookMethod(Method $this$hookMethod, int priority, Function1<? super XposedHookFactory, Unit> hook) {
        Intrinsics.checkNotNullParameter($this$hookMethod, "<this>");
        Intrinsics.checkNotNullParameter(hook, "hook");
        XC_MethodHook xposedHookFactory = new XposedHookFactory(priority);
        hook.invoke(xposedHookFactory);
        return hookMethod($this$hookMethod, xposedHookFactory);
    }

    public static /* synthetic */ XC_MethodHook.Unhook hookMethod$default(Constructor constructor, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookMethod((Constructor<?>) constructor, i, (Function1<? super XposedHookFactory, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook hookMethod(Constructor<?> constructor, int priority, Function1<? super XposedHookFactory, Unit> hook) {
        Intrinsics.checkNotNullParameter(constructor, "<this>");
        Intrinsics.checkNotNullParameter(hook, "hook");
        XC_MethodHook xposedHookFactory = new XposedHookFactory(priority);
        hook.invoke(xposedHookFactory);
        return hookMethod(constructor, xposedHookFactory);
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookMethod$default(Method[] methodArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookMethod(methodArr, i, (Function1<? super XposedHookFactory, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookMethod(Method[] $this$hookMethod, int priority, Function1<? super XposedHookFactory, Unit> hook) {
        Intrinsics.checkNotNullParameter($this$hookMethod, "<this>");
        Intrinsics.checkNotNullParameter(hook, "hook");
        Collection destination$iv$iv = new ArrayList($this$hookMethod.length);
        for (Method method : $this$hookMethod) {
            destination$iv$iv.add(hookMethod(method, priority, hook));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static /* synthetic */ List hookMethod$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookMethod((Iterable<Method>) iterable, i, (Function1<? super XposedHookFactory, Unit>) function1);
    }

    public static final List<XC_MethodHook.Unhook> hookMethod(Iterable<Method> iterable, int priority, Function1<? super XposedHookFactory, Unit> hook) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hook, "hook");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            Method it = (Method) item$iv$iv;
            destination$iv$iv.add(hookMethod(it, priority, hook));
        }
        return (List) destination$iv$iv;
    }

    public static /* synthetic */ XC_MethodHook.Unhook[] hookMethod$default(Constructor[] constructorArr, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookMethod((Constructor<?>[]) constructorArr, i, (Function1<? super XposedHookFactory, Unit>) function1);
    }

    public static final XC_MethodHook.Unhook[] hookMethod(Constructor<?>[] constructorArr, int priority, Function1<? super XposedHookFactory, Unit> hooker) {
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(constructorArr.length);
        for (Constructor<?> constructor : constructorArr) {
            destination$iv$iv.add(hookMethod(constructor, priority, hooker));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new XC_MethodHook.Unhook[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (XC_MethodHook.Unhook[]) array;
    }

    public static /* synthetic */ List hookConstructor$default(Iterable iterable, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return hookConstructor(iterable, i, function1);
    }

    public static final List<XC_MethodHook.Unhook> hookConstructor(Iterable<? extends Constructor<?>> iterable, int priority, Function1<? super XposedHookFactory, Unit> hooker) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(hooker, "hooker");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Constructor item$iv$iv : iterable) {
            Constructor it = item$iv$iv;
            destination$iv$iv.add(hookMethod((Constructor<?>) it, priority, hooker));
        }
        return (List) destination$iv$iv;
    }

    public static final void unhookAll(XC_MethodHook.Unhook[] $this$unhookAll) {
        Intrinsics.checkNotNullParameter($this$unhookAll, "<this>");
        for (XC_MethodHook.Unhook unhook : $this$unhookAll) {
            unhook.unhook();
        }
    }

    public static final void unhookAll(Iterable<? extends XC_MethodHook.Unhook> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        for (Object element$iv : iterable) {
            XC_MethodHook.Unhook it = (XC_MethodHook.Unhook) element$iv;
            it.unhook();
        }
    }
}
