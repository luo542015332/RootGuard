package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class MessageLiteToString {
    private static final String BUILDER_LIST_SUFFIX = "OrBuilderList";
    private static final String BYTES_SUFFIX = "Bytes";
    private static final String LIST_SUFFIX = "List";
    private static final String MAP_SUFFIX = "Map";

    MessageLiteToString() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toString(MessageLite messageLite, String commentString) {
        StringBuilder buffer = new StringBuilder();
        buffer.append("# ").append(commentString);
        reflectivePrintWithIndent(messageLite, buffer, 0);
        return buffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void reflectivePrintWithIndent(MessageLite messageLite, StringBuilder sb, int i) {
        HashMap hashMap;
        int i2;
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        int i3 = 0;
        for (java.lang.reflect.Method method : messageLite.getClass().getDeclaredMethods()) {
            hashMap3.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap2.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String replaceFirst = str.replaceFirst("get", "");
            if (replaceFirst.endsWith(LIST_SUFFIX) && !replaceFirst.endsWith(BUILDER_LIST_SUFFIX) && !replaceFirst.equals(LIST_SUFFIX)) {
                String str2 = replaceFirst.substring(i3, 1).toLowerCase() + replaceFirst.substring(1, replaceFirst.length() - LIST_SUFFIX.length());
                java.lang.reflect.Method method2 = (java.lang.reflect.Method) hashMap2.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    printField(sb, i, camelCaseToSnakeCase(str2), GeneratedMessageLite.invokeOrDie(method2, messageLite, new Object[i3]));
                }
            }
            if (replaceFirst.endsWith(MAP_SUFFIX) && !replaceFirst.equals(MAP_SUFFIX)) {
                String str3 = replaceFirst.substring(i3, 1).toLowerCase() + replaceFirst.substring(1, replaceFirst.length() - MAP_SUFFIX.length());
                java.lang.reflect.Method method3 = (java.lang.reflect.Method) hashMap2.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    printField(sb, i, camelCaseToSnakeCase(str3), GeneratedMessageLite.invokeOrDie(method3, messageLite, new Object[i3]));
                }
            }
            if (((java.lang.reflect.Method) hashMap3.get("set" + replaceFirst)) != null && (!replaceFirst.endsWith(BYTES_SUFFIX) || !hashMap2.containsKey("get" + replaceFirst.substring(i3, replaceFirst.length() - BYTES_SUFFIX.length())))) {
                String str4 = replaceFirst.substring(i3, 1).toLowerCase() + replaceFirst.substring(1);
                java.lang.reflect.Method method4 = (java.lang.reflect.Method) hashMap2.get("get" + replaceFirst);
                java.lang.reflect.Method method5 = (java.lang.reflect.Method) hashMap2.get("has" + replaceFirst);
                if (method4 != null) {
                    Object invokeOrDie = GeneratedMessageLite.invokeOrDie(method4, messageLite, new Object[i3]);
                    if (method5 == null) {
                        hashMap = hashMap2;
                        i2 = !isDefaultValue(invokeOrDie) ? 1 : i3;
                    } else {
                        hashMap = hashMap2;
                        i2 = ((Boolean) GeneratedMessageLite.invokeOrDie(method5, messageLite, new Object[i3])).booleanValue();
                    }
                    if (i2 == 0) {
                        hashMap2 = hashMap;
                        i3 = 0;
                    } else {
                        printField(sb, i, camelCaseToSnakeCase(str4), invokeOrDie);
                        hashMap2 = hashMap;
                        i3 = 0;
                    }
                } else {
                    i3 = 0;
                }
            }
        }
        if (messageLite instanceof GeneratedMessageLite.ExtendableMessage) {
            Iterator<Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object>> it = ((GeneratedMessageLite.ExtendableMessage) messageLite).extensions.iterator();
            while (it.hasNext()) {
                Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object> next = it.next();
                printField(sb, i, "[" + next.getKey().getNumber() + "]", next.getValue());
            }
        }
        if (((GeneratedMessageLite) messageLite).unknownFields != null) {
            ((GeneratedMessageLite) messageLite).unknownFields.printWithIndent(sb, i);
        }
    }

    private static boolean isDefaultValue(Object o) {
        if (o instanceof Boolean) {
            return !((Boolean) o).booleanValue();
        }
        if (o instanceof Integer) {
            return ((Integer) o).intValue() == 0;
        }
        if (o instanceof Float) {
            return ((Float) o).floatValue() == 0.0f;
        }
        if (o instanceof Double) {
            return ((Double) o).doubleValue() == 0.0d;
        }
        if (o instanceof String) {
            return o.equals("");
        }
        if (o instanceof ByteString) {
            return o.equals(ByteString.EMPTY);
        }
        return o instanceof MessageLite ? o == ((MessageLite) o).getDefaultInstanceForType() : (o instanceof java.lang.Enum) && ((java.lang.Enum) o).ordinal() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void printField(StringBuilder buffer, int indent, String name, Object object) {
        if (object instanceof List) {
            List<?> list = (List) object;
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                printField(buffer, indent, name, it.next());
            }
            return;
        }
        if (object instanceof Map) {
            Map<?, ?> map = (Map) object;
            Iterator<Map.Entry<?, ?>> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                printField(buffer, indent, name, it2.next());
            }
            return;
        }
        buffer.append('\n');
        for (int i = 0; i < indent; i++) {
            buffer.append(' ');
        }
        buffer.append(name);
        if (object instanceof String) {
            buffer.append(": \"").append(TextFormatEscaper.escapeText((String) object)).append('\"');
            return;
        }
        if (object instanceof ByteString) {
            buffer.append(": \"").append(TextFormatEscaper.escapeBytes((ByteString) object)).append('\"');
            return;
        }
        if (object instanceof GeneratedMessageLite) {
            buffer.append(" {");
            reflectivePrintWithIndent((GeneratedMessageLite) object, buffer, indent + 2);
            buffer.append("\n");
            for (int i2 = 0; i2 < indent; i2++) {
                buffer.append(' ');
            }
            buffer.append("}");
            return;
        }
        if (object instanceof Map.Entry) {
            buffer.append(" {");
            Map.Entry<?, ?> entry = (Map.Entry) object;
            printField(buffer, indent + 2, "key", entry.getKey());
            printField(buffer, indent + 2, "value", entry.getValue());
            buffer.append("\n");
            for (int i3 = 0; i3 < indent; i3++) {
                buffer.append(' ');
            }
            buffer.append("}");
            return;
        }
        buffer.append(": ").append(object.toString());
    }

    private static final String camelCaseToSnakeCase(String camelCase) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < camelCase.length(); i++) {
            char ch = camelCase.charAt(i);
            if (Character.isUpperCase(ch)) {
                builder.append("_");
            }
            builder.append(Character.toLowerCase(ch));
        }
        return builder.toString();
    }
}
