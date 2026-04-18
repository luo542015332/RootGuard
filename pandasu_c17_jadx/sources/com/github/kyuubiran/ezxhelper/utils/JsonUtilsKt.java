package com.github.kyuubiran.ezxhelper.utils;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: JsonUtils.kt */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0004\u001a%\u0010\t\u001a\u00020\u00022\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u001a%\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u001a$\u0010\u0010\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00060\u000bH\u0086\bø\u0001\u0000\u001a$\u0010\u0013\u001a\u00020\f*\u00020\u00022\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f0\u000bH\u0086\bø\u0001\u0000\u001a*\u0010\u0015\u001a\u00020\f*\u00020\u00022\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f0\u0016H\u0086\bø\u0001\u0000\u001a\u001c\u0010\u0018\u001a\u00020\u0006*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u0006\u001a\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u0006*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u001e\u001a\u00020\u0017*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u0017\u001a\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u0017*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010 \u001a\u0012\u0010!\u001a\u00020\u0002*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a\u001a\u0014\u0010\"\u001a\u0004\u0018\u00010\u0002*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a\u001a\u001c\u0010#\u001a\u00020$*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020$\u001a\u0019\u0010%\u001a\u0004\u0018\u00010$*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010&\u001a\u0014\u0010'\u001a\u0004\u0018\u00010\u0012*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a\u001a\u001c\u0010(\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u0014\u0010)\u001a\u0004\u0018\u00010\u001a*\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a\u001a$\u0010*\u001a\u00020\u0002*\u00020\u00022\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u000bH\u0086\bø\u0001\u0000\u001a0\u0010,\u001a\b\u0012\u0004\u0012\u0002H.0-\"\u0004\b\u0000\u0010.*\u00020\u00022\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002H.0\u000bH\u0086\bø\u0001\u0000\u001a$\u0010/\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f0\u000bH\u0086\bø\u0001\u0000\u001a*\u00100\u001a\u00020\u0002*\u00020\u00022\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f0\u0016H\u0086\bø\u0001\u0000\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0016\u0010\u0005\u001a\u00020\u0006*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007\"\u0016\u0010\b\u001a\u00020\u0006*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00061"}, d2 = {"indices", "Lkotlin/ranges/IntRange;", "Lorg/json/JSONArray;", "getIndices", "(Lorg/json/JSONArray;)Lkotlin/ranges/IntRange;", "isEmpty", "", "(Lorg/json/JSONArray;)Z", "isNotEmpty", "buildJSONArray", "builder", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "buildJSONObject", "Lorg/json/JSONObject;", "filter", "predicate", "", "forEach", "action", "forEachIndexed", "Lkotlin/Function2;", "", "getBooleanOrDefault", "key", "", "defValue", "getBooleanOrNull", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;", "getIntOrDefault", "getIntOrNull", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;", "getJSONArrayOrEmpty", "getJSONArrayOrNull", "getLongOrDefault", "", "getLongOrNull", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;", "getObjectOrNull", "getStringOrDefault", "getStringOrNull", "map", "transform", "mapToList", "", "T", "onEach", "onEachIndexed", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class JsonUtilsKt {
    public static final boolean isEmpty(JSONArray $this$isEmpty) {
        Intrinsics.checkNotNullParameter($this$isEmpty, "<this>");
        return $this$isEmpty.length() == 0;
    }

    public static final boolean isNotEmpty(JSONArray $this$isNotEmpty) {
        Intrinsics.checkNotNullParameter($this$isNotEmpty, "<this>");
        return $this$isNotEmpty.length() != 0;
    }

    public static final IntRange getIndices(JSONArray $this$indices) {
        Intrinsics.checkNotNullParameter($this$indices, "<this>");
        return RangesKt.until(0, $this$indices.length());
    }

    public static final void forEach(JSONArray $this$forEach, Function1<Object, Unit> action) {
        Intrinsics.checkNotNullParameter($this$forEach, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        IntRange until = RangesKt.until(0, $this$forEach.length());
        int i = until.getFirst();
        int last = until.getLast();
        if (i > last) {
            return;
        }
        while (true) {
            Object obj = $this$forEach.get(i);
            Intrinsics.checkNotNullExpressionValue(obj, "this.get(i)");
            action.invoke(obj);
            if (i == last) {
                return;
            } else {
                i++;
            }
        }
    }

    public static final void forEachIndexed(JSONArray $this$forEachIndexed, Function2<? super Integer, Object, Unit> action) {
        Intrinsics.checkNotNullParameter($this$forEachIndexed, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        IntRange until = RangesKt.until(0, $this$forEachIndexed.length());
        int i = until.getFirst();
        int last = until.getLast();
        if (i > last) {
            return;
        }
        while (true) {
            Integer valueOf = Integer.valueOf(i);
            Object obj = $this$forEachIndexed.get(i);
            Intrinsics.checkNotNullExpressionValue(obj, "this.get(i)");
            action.invoke(valueOf, obj);
            if (i == last) {
                return;
            } else {
                i++;
            }
        }
    }

    public static final JSONArray onEach(JSONArray $this$onEach, Function1<Object, Unit> action) {
        Intrinsics.checkNotNullParameter($this$onEach, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        IntRange until = RangesKt.until(0, $this$onEach.length());
        int i = until.getFirst();
        int last = until.getLast();
        if (i <= last) {
            while (true) {
                Object obj = $this$onEach.get(i);
                Intrinsics.checkNotNullExpressionValue(obj, "this.get(i)");
                action.invoke(obj);
                if (i == last) {
                    break;
                }
                i++;
            }
        }
        return $this$onEach;
    }

    public static final JSONArray onEachIndexed(JSONArray $this$onEachIndexed, Function2<? super Integer, Object, Unit> action) {
        Intrinsics.checkNotNullParameter($this$onEachIndexed, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        IntRange until = RangesKt.until(0, $this$onEachIndexed.length());
        int i = until.getFirst();
        int last = until.getLast();
        if (i <= last) {
            while (true) {
                Integer valueOf = Integer.valueOf(i);
                Object obj = $this$onEachIndexed.get(i);
                Intrinsics.checkNotNullExpressionValue(obj, "this.get(i)");
                action.invoke(valueOf, obj);
                if (i == last) {
                    break;
                }
                i++;
            }
        }
        return $this$onEachIndexed;
    }

    public static final JSONArray filter(JSONArray $this$filter, Function1<Object, Boolean> predicate) {
        Intrinsics.checkNotNullParameter($this$filter, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        JSONArray result = new JSONArray();
        IntRange until = RangesKt.until(0, $this$filter.length());
        int i = until.getFirst();
        int last = until.getLast();
        if (i <= last) {
            while (true) {
                Object obj = $this$filter.get(i);
                Intrinsics.checkNotNullExpressionValue(obj, "this.get(i)");
                if (predicate.invoke(obj).booleanValue()) {
                    result.put($this$filter.get(i));
                }
                if (i == last) {
                    break;
                }
                i++;
            }
        }
        return result;
    }

    public static final JSONArray map(JSONArray $this$map, Function1<Object, ? extends Object> transform) {
        Intrinsics.checkNotNullParameter($this$map, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        JSONArray result = new JSONArray();
        IntRange until = RangesKt.until(0, $this$map.length());
        int i = until.getFirst();
        int last = until.getLast();
        if (i <= last) {
            while (true) {
                Object obj = $this$map.get(i);
                Intrinsics.checkNotNullExpressionValue(obj, "this.get(i)");
                result.put(transform.invoke(obj));
                if (i == last) {
                    break;
                }
                i++;
            }
        }
        return result;
    }

    public static final <T> List<T> mapToList(JSONArray $this$mapToList, Function1<Object, ? extends T> transform) {
        Intrinsics.checkNotNullParameter($this$mapToList, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        ArrayList result = new ArrayList($this$mapToList.length());
        IntRange until = RangesKt.until(0, $this$mapToList.length());
        int i = until.getFirst();
        int last = until.getLast();
        if (i <= last) {
            while (true) {
                Object obj = $this$mapToList.get(i);
                Intrinsics.checkNotNullExpressionValue(obj, "this.get(i)");
                result.add(transform.invoke(obj));
                if (i == last) {
                    break;
                }
                i++;
            }
        }
        return result;
    }

    public static final long getLongOrDefault(JSONObject $this$getLongOrDefault, String key, long defValue) {
        Intrinsics.checkNotNullParameter($this$getLongOrDefault, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return $this$getLongOrDefault.getLong(key);
        } catch (JSONException e) {
            return defValue;
        }
    }

    public static /* synthetic */ long getLongOrDefault$default(JSONObject jSONObject, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return getLongOrDefault(jSONObject, str, j);
    }

    public static final Long getLongOrNull(JSONObject $this$getLongOrNull, String key) {
        Intrinsics.checkNotNullParameter($this$getLongOrNull, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return Long.valueOf($this$getLongOrNull.getLong(key));
        } catch (JSONException e) {
            return null;
        }
    }

    public static final int getIntOrDefault(JSONObject $this$getIntOrDefault, String key, int defValue) {
        Intrinsics.checkNotNullParameter($this$getIntOrDefault, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return $this$getIntOrDefault.getInt(key);
        } catch (JSONException e) {
            return defValue;
        }
    }

    public static /* synthetic */ int getIntOrDefault$default(JSONObject jSONObject, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return getIntOrDefault(jSONObject, str, i);
    }

    public static final Integer getIntOrNull(JSONObject $this$getIntOrNull, String key) {
        Intrinsics.checkNotNullParameter($this$getIntOrNull, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return Integer.valueOf($this$getIntOrNull.getInt(key));
        } catch (JSONException e) {
            return null;
        }
    }

    public static final boolean getBooleanOrDefault(JSONObject $this$getBooleanOrDefault, String key, boolean defValue) {
        Intrinsics.checkNotNullParameter($this$getBooleanOrDefault, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return $this$getBooleanOrDefault.getBoolean(key);
        } catch (JSONException e) {
            return defValue;
        }
    }

    public static /* synthetic */ boolean getBooleanOrDefault$default(JSONObject jSONObject, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return getBooleanOrDefault(jSONObject, str, z);
    }

    public static final Boolean getBooleanOrNull(JSONObject $this$getBooleanOrNull, String key) {
        Intrinsics.checkNotNullParameter($this$getBooleanOrNull, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return Boolean.valueOf($this$getBooleanOrNull.getBoolean(key));
        } catch (JSONException e) {
            return null;
        }
    }

    public static final String getStringOrDefault(JSONObject $this$getStringOrDefault, String key, String defValue) {
        Intrinsics.checkNotNullParameter($this$getStringOrDefault, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defValue, "defValue");
        try {
            String string = $this$getStringOrDefault.getString(key);
            Intrinsics.checkNotNullExpressionValue(string, "{\n    this.getString(key)\n}");
            return string;
        } catch (JSONException e) {
            return defValue;
        }
    }

    public static /* synthetic */ String getStringOrDefault$default(JSONObject jSONObject, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return getStringOrDefault(jSONObject, str, str2);
    }

    public static final String getStringOrNull(JSONObject $this$getStringOrNull, String key) {
        Intrinsics.checkNotNullParameter($this$getStringOrNull, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return $this$getStringOrNull.getString(key);
        } catch (JSONException e) {
            return null;
        }
    }

    public static final Object getObjectOrNull(JSONObject $this$getObjectOrNull, String key) {
        Intrinsics.checkNotNullParameter($this$getObjectOrNull, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return $this$getObjectOrNull.get(key);
        } catch (JSONException e) {
            return null;
        }
    }

    public static final JSONArray getJSONArrayOrEmpty(JSONObject $this$getJSONArrayOrEmpty, String key) {
        Intrinsics.checkNotNullParameter($this$getJSONArrayOrEmpty, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            JSONArray jSONArray = $this$getJSONArrayOrEmpty.getJSONArray(key);
            Intrinsics.checkNotNullExpressionValue(jSONArray, "{\n    this.getJSONArray(key)\n}");
            return jSONArray;
        } catch (JSONException e) {
            return new JSONArray();
        }
    }

    public static final JSONArray getJSONArrayOrNull(JSONObject $this$getJSONArrayOrNull, String key) {
        Intrinsics.checkNotNullParameter($this$getJSONArrayOrNull, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return $this$getJSONArrayOrNull.getJSONArray(key);
        } catch (JSONException e) {
            return null;
        }
    }

    public static final JSONObject buildJSONObject(Function1<? super JSONObject, Unit> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        JSONObject jSONObject = new JSONObject();
        builder.invoke(jSONObject);
        return jSONObject;
    }

    public static final JSONArray buildJSONArray(Function1<? super JSONArray, Unit> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        JSONArray jSONArray = new JSONArray();
        builder.invoke(jSONArray);
        return jSONArray;
    }
}
