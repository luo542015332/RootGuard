package androidx.datastore.preferences.protobuf;

import androidx.core.text.HtmlCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.datastore.preferences.protobuf.ArrayDecoders;
import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.WireFormat;
import androidx.datastore.preferences.protobuf.Writer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import rikka.hidden.compat.AppOpsApis;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class MessageSchema<T> implements Schema<T> {
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int INTS_PER_FIELD = 3;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_MASK = 268435456;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final ExtensionSchema<?> extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final ListFieldSchema listFieldSchema;
    private final boolean lite;
    private final MapFieldSchema mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final NewInstanceSchema newInstanceSchema;
    private final Object[] objects;
    private final boolean proto3;
    private final int repeatedFieldOffsetStart;
    private final UnknownFieldSchema<?, ?> unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();

    private MessageSchema(int[] buffer, Object[] objects, int minFieldNumber, int maxFieldNumber, MessageLite defaultInstance, boolean proto3, boolean useCachedSizeField, int[] intArray, int checkInitialized, int mapFieldPositions, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        this.buffer = buffer;
        this.objects = objects;
        this.minFieldNumber = minFieldNumber;
        this.maxFieldNumber = maxFieldNumber;
        this.lite = defaultInstance instanceof GeneratedMessageLite;
        this.proto3 = proto3;
        this.hasExtensions = extensionSchema != null && extensionSchema.hasExtensions(defaultInstance);
        this.useCachedSizeField = useCachedSizeField;
        this.intArray = intArray;
        this.checkInitializedCount = checkInitialized;
        this.repeatedFieldOffsetStart = mapFieldPositions;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = defaultInstance;
        this.mapFieldSchema = mapFieldSchema;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> MessageSchema<T> newSchema(Class<T> messageClass, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        if (messageInfo instanceof RawMessageInfo) {
            return newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
        }
        return newSchemaForMessageInfo((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> androidx.datastore.preferences.protobuf.MessageSchema<T> newSchemaForRawMessageInfo(androidx.datastore.preferences.protobuf.RawMessageInfo r43, androidx.datastore.preferences.protobuf.NewInstanceSchema r44, androidx.datastore.preferences.protobuf.ListFieldSchema r45, androidx.datastore.preferences.protobuf.UnknownFieldSchema<?, ?> r46, androidx.datastore.preferences.protobuf.ExtensionSchema<?> r47, androidx.datastore.preferences.protobuf.MapFieldSchema r48) {
        /*
            Method dump skipped, instructions count: 1117
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.newSchemaForRawMessageInfo(androidx.datastore.preferences.protobuf.RawMessageInfo, androidx.datastore.preferences.protobuf.NewInstanceSchema, androidx.datastore.preferences.protobuf.ListFieldSchema, androidx.datastore.preferences.protobuf.UnknownFieldSchema, androidx.datastore.preferences.protobuf.ExtensionSchema, androidx.datastore.preferences.protobuf.MapFieldSchema):androidx.datastore.preferences.protobuf.MessageSchema");
    }

    private static java.lang.reflect.Field reflectField(Class<?> messageClass, String fieldName) {
        try {
            return messageClass.getDeclaredField(fieldName);
        } catch (NoSuchFieldException e) {
            java.lang.reflect.Field[] fields = messageClass.getDeclaredFields();
            for (java.lang.reflect.Field field : fields) {
                if (fieldName.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + fieldName + " for " + messageClass.getName() + " not found. Known fields are " + Arrays.toString(fields));
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:34:0x008b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> androidx.datastore.preferences.protobuf.MessageSchema<T> newSchemaForMessageInfo(androidx.datastore.preferences.protobuf.StructuralMessageInfo r33, androidx.datastore.preferences.protobuf.NewInstanceSchema r34, androidx.datastore.preferences.protobuf.ListFieldSchema r35, androidx.datastore.preferences.protobuf.UnknownFieldSchema<?, ?> r36, androidx.datastore.preferences.protobuf.ExtensionSchema<?> r37, androidx.datastore.preferences.protobuf.MapFieldSchema r38) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.newSchemaForMessageInfo(androidx.datastore.preferences.protobuf.StructuralMessageInfo, androidx.datastore.preferences.protobuf.NewInstanceSchema, androidx.datastore.preferences.protobuf.ListFieldSchema, androidx.datastore.preferences.protobuf.UnknownFieldSchema, androidx.datastore.preferences.protobuf.ExtensionSchema, androidx.datastore.preferences.protobuf.MapFieldSchema):androidx.datastore.preferences.protobuf.MessageSchema");
    }

    private static void storeFieldData(FieldInfo fi, int[] buffer, int bufferIndex, boolean proto3, Object[] objects) {
        int fieldOffset;
        int typeId;
        int typeId2;
        int presenceFieldOffset;
        OneofInfo oneof = fi.getOneof();
        if (oneof != null) {
            typeId = fi.getType().id() + ONEOF_TYPE_OFFSET;
            fieldOffset = (int) UnsafeUtil.objectFieldOffset(oneof.getValueField());
            typeId2 = (int) UnsafeUtil.objectFieldOffset(oneof.getCaseField());
            presenceFieldOffset = 0;
        } else {
            FieldType type = fi.getType();
            fieldOffset = (int) UnsafeUtil.objectFieldOffset(fi.getField());
            int typeId3 = type.id();
            if (!proto3 && !type.isList() && !type.isMap()) {
                int presenceFieldOffset2 = (int) UnsafeUtil.objectFieldOffset(fi.getPresenceField());
                typeId = typeId3;
                typeId2 = presenceFieldOffset2;
                presenceFieldOffset = Integer.numberOfTrailingZeros(fi.getPresenceMask());
            } else if (fi.getCachedSizeField() == null) {
                typeId = typeId3;
                typeId2 = 0;
                presenceFieldOffset = 0;
            } else {
                int presenceFieldOffset3 = (int) UnsafeUtil.objectFieldOffset(fi.getCachedSizeField());
                typeId = typeId3;
                typeId2 = presenceFieldOffset3;
                presenceFieldOffset = 0;
            }
        }
        buffer[bufferIndex] = fi.getFieldNumber();
        buffer[bufferIndex + 1] = (fi.isEnforceUtf8() ? 536870912 : 0) | (fi.isRequired() ? 268435456 : 0) | (typeId << 20) | fieldOffset;
        buffer[bufferIndex + 2] = (presenceFieldOffset << 20) | typeId2;
        Object messageFieldClass = fi.getMessageFieldClass();
        if (fi.getMapDefaultEntry() != null) {
            objects[(bufferIndex / 3) * 2] = fi.getMapDefaultEntry();
            if (messageFieldClass != null) {
                objects[((bufferIndex / 3) * 2) + 1] = messageFieldClass;
                return;
            } else {
                if (fi.getEnumVerifier() != null) {
                    objects[((bufferIndex / 3) * 2) + 1] = fi.getEnumVerifier();
                    return;
                }
                return;
            }
        }
        if (messageFieldClass != null) {
            objects[((bufferIndex / 3) * 2) + 1] = messageFieldClass;
        } else if (fi.getEnumVerifier() != null) {
            objects[((bufferIndex / 3) * 2) + 1] = fi.getEnumVerifier();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public T newInstance() {
        return (T) this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public boolean equals(T message, T other) {
        int bufferLength = this.buffer.length;
        for (int pos = 0; pos < bufferLength; pos += 3) {
            if (!equals(message, other, pos)) {
                return false;
            }
        }
        Object messageUnknown = this.unknownFieldSchema.getFromMessage(message);
        Object otherUnknown = this.unknownFieldSchema.getFromMessage(other);
        if (!messageUnknown.equals(otherUnknown)) {
            return false;
        }
        if (this.hasExtensions) {
            FieldSet<?> messageExtensions = this.extensionSchema.getExtensions(message);
            FieldSet<?> otherExtensions = this.extensionSchema.getExtensions(other);
            return messageExtensions.equals(otherExtensions);
        }
        return true;
    }

    private boolean equals(T message, T other, int pos) {
        int typeAndOffset = typeAndOffsetAt(pos);
        long offset = offset(typeAndOffset);
        switch (type(typeAndOffset)) {
            case 0:
                return arePresentForEquals(message, other, pos) && Double.doubleToLongBits(UnsafeUtil.getDouble(message, offset)) == Double.doubleToLongBits(UnsafeUtil.getDouble(other, offset));
            case 1:
                return arePresentForEquals(message, other, pos) && Float.floatToIntBits(UnsafeUtil.getFloat(message, offset)) == Float.floatToIntBits(UnsafeUtil.getFloat(other, offset));
            case 2:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getLong(message, offset) == UnsafeUtil.getLong(other, offset);
            case 3:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getLong(message, offset) == UnsafeUtil.getLong(other, offset);
            case 4:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getInt(message, offset) == UnsafeUtil.getInt(other, offset);
            case 5:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getLong(message, offset) == UnsafeUtil.getLong(other, offset);
            case 6:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getInt(message, offset) == UnsafeUtil.getInt(other, offset);
            case 7:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getBoolean(message, offset) == UnsafeUtil.getBoolean(other, offset);
            case 8:
                return arePresentForEquals(message, other, pos) && SchemaUtil.safeEquals(UnsafeUtil.getObject(message, offset), UnsafeUtil.getObject(other, offset));
            case 9:
                return arePresentForEquals(message, other, pos) && SchemaUtil.safeEquals(UnsafeUtil.getObject(message, offset), UnsafeUtil.getObject(other, offset));
            case 10:
                return arePresentForEquals(message, other, pos) && SchemaUtil.safeEquals(UnsafeUtil.getObject(message, offset), UnsafeUtil.getObject(other, offset));
            case 11:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getInt(message, offset) == UnsafeUtil.getInt(other, offset);
            case 12:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getInt(message, offset) == UnsafeUtil.getInt(other, offset);
            case 13:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getInt(message, offset) == UnsafeUtil.getInt(other, offset);
            case 14:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getLong(message, offset) == UnsafeUtil.getLong(other, offset);
            case 15:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getInt(message, offset) == UnsafeUtil.getInt(other, offset);
            case 16:
                return arePresentForEquals(message, other, pos) && UnsafeUtil.getLong(message, offset) == UnsafeUtil.getLong(other, offset);
            case 17:
                return arePresentForEquals(message, other, pos) && SchemaUtil.safeEquals(UnsafeUtil.getObject(message, offset), UnsafeUtil.getObject(other, offset));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
            case 29:
            case 30:
            case AppOpsApis.OP_FLAGS_ALL /* 31 */:
            case 32:
            case 33:
            case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
            case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
            case 36:
            case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
            case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
            case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
            case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
            case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
            case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
            case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
            case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
            case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
            case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
            case 48:
            case 49:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(message, offset), UnsafeUtil.getObject(other, offset));
            case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(message, offset), UnsafeUtil.getObject(other, offset));
            case ONEOF_TYPE_OFFSET /* 51 */:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
            case 62:
            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return isOneofCaseEqual(message, other, pos) && SchemaUtil.safeEquals(UnsafeUtil.getObject(message, offset), UnsafeUtil.getObject(other, offset));
            default:
                return true;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int hashCode(T message) {
        int hashCode = 0;
        int bufferLength = this.buffer.length;
        for (int pos = 0; pos < bufferLength; pos += 3) {
            int typeAndOffset = typeAndOffsetAt(pos);
            int entryNumber = numberAt(pos);
            long offset = offset(typeAndOffset);
            switch (type(typeAndOffset)) {
                case 0:
                    hashCode = (hashCode * 53) + Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(message, offset)));
                    break;
                case 1:
                    hashCode = (hashCode * 53) + Float.floatToIntBits(UnsafeUtil.getFloat(message, offset));
                    break;
                case 2:
                    hashCode = (hashCode * 53) + Internal.hashLong(UnsafeUtil.getLong(message, offset));
                    break;
                case 3:
                    hashCode = (hashCode * 53) + Internal.hashLong(UnsafeUtil.getLong(message, offset));
                    break;
                case 4:
                    hashCode = (hashCode * 53) + UnsafeUtil.getInt(message, offset);
                    break;
                case 5:
                    hashCode = (hashCode * 53) + Internal.hashLong(UnsafeUtil.getLong(message, offset));
                    break;
                case 6:
                    hashCode = (hashCode * 53) + UnsafeUtil.getInt(message, offset);
                    break;
                case 7:
                    hashCode = (hashCode * 53) + Internal.hashBoolean(UnsafeUtil.getBoolean(message, offset));
                    break;
                case 8:
                    int protoHash = hashCode * 53;
                    int hashCode2 = protoHash + ((String) UnsafeUtil.getObject(message, offset)).hashCode();
                    hashCode = hashCode2;
                    break;
                case 9:
                    int protoHash2 = 37;
                    Object submessage = UnsafeUtil.getObject(message, offset);
                    if (submessage != null) {
                        protoHash2 = submessage.hashCode();
                    }
                    hashCode = (hashCode * 53) + protoHash2;
                    break;
                case 10:
                    hashCode = (hashCode * 53) + UnsafeUtil.getObject(message, offset).hashCode();
                    break;
                case 11:
                    hashCode = (hashCode * 53) + UnsafeUtil.getInt(message, offset);
                    break;
                case 12:
                    hashCode = (hashCode * 53) + UnsafeUtil.getInt(message, offset);
                    break;
                case 13:
                    hashCode = (hashCode * 53) + UnsafeUtil.getInt(message, offset);
                    break;
                case 14:
                    hashCode = (hashCode * 53) + Internal.hashLong(UnsafeUtil.getLong(message, offset));
                    break;
                case 15:
                    hashCode = (hashCode * 53) + UnsafeUtil.getInt(message, offset);
                    break;
                case 16:
                    int protoHash3 = hashCode * 53;
                    int hashCode3 = protoHash3 + Internal.hashLong(UnsafeUtil.getLong(message, offset));
                    hashCode = hashCode3;
                    break;
                case 17:
                    int protoHash4 = 37;
                    Object submessage2 = UnsafeUtil.getObject(message, offset);
                    if (submessage2 != null) {
                        protoHash4 = submessage2.hashCode();
                    }
                    hashCode = (hashCode * 53) + protoHash4;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                case 29:
                case 30:
                case AppOpsApis.OP_FLAGS_ALL /* 31 */:
                case 32:
                case 33:
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                case 36:
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                case 48:
                case 49:
                    hashCode = (hashCode * 53) + UnsafeUtil.getObject(message, offset).hashCode();
                    break;
                case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                    hashCode = (hashCode * 53) + UnsafeUtil.getObject(message, offset).hashCode();
                    break;
                case ONEOF_TYPE_OFFSET /* 51 */:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(message, offset)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Float.floatToIntBits(oneofFloatAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Internal.hashLong(oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Internal.hashLong(oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + oneofIntAt(message, offset);
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Internal.hashLong(oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + oneofIntAt(message, offset);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Internal.hashBoolean(oneofBooleanAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + ((String) UnsafeUtil.getObject(message, offset)).hashCode();
                        break;
                    } else {
                        break;
                    }
                case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + UnsafeUtil.getObject(message, offset).hashCode();
                        break;
                    } else {
                        break;
                    }
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + UnsafeUtil.getObject(message, offset).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + oneofIntAt(message, offset);
                        break;
                    } else {
                        break;
                    }
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + oneofIntAt(message, offset);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + oneofIntAt(message, offset);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Internal.hashLong(oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + oneofIntAt(message, offset);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + Internal.hashLong(oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (isOneofPresent(message, entryNumber, pos)) {
                        hashCode = (hashCode * 53) + UnsafeUtil.getObject(message, offset).hashCode();
                        break;
                    } else {
                        break;
                    }
            }
        }
        int pos2 = hashCode * 53;
        int hashCode4 = pos2 + this.unknownFieldSchema.getFromMessage(message).hashCode();
        if (this.hasExtensions) {
            return (hashCode4 * 53) + this.extensionSchema.getExtensions(message).hashCode();
        }
        return hashCode4;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(T message, T other) {
        if (other == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.buffer.length; i += 3) {
            mergeSingleField(message, other, i);
        }
        if (!this.proto3) {
            SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, message, other);
            if (this.hasExtensions) {
                SchemaUtil.mergeExtensions(this.extensionSchema, message, other);
            }
        }
    }

    private void mergeSingleField(T message, T other, int pos) {
        int typeAndOffset = typeAndOffsetAt(pos);
        long offset = offset(typeAndOffset);
        int number = numberAt(pos);
        switch (type(typeAndOffset)) {
            case 0:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putDouble(message, offset, UnsafeUtil.getDouble(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 1:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putFloat(message, offset, UnsafeUtil.getFloat(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 2:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putLong(message, offset, UnsafeUtil.getLong(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 3:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putLong(message, offset, UnsafeUtil.getLong(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 4:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putInt(message, offset, UnsafeUtil.getInt(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 5:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putLong(message, offset, UnsafeUtil.getLong(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 6:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putInt(message, offset, UnsafeUtil.getInt(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 7:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putBoolean(message, offset, UnsafeUtil.getBoolean(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 8:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putObject(message, offset, UnsafeUtil.getObject(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 9:
                mergeMessage(message, other, pos);
                return;
            case 10:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putObject(message, offset, UnsafeUtil.getObject(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 11:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putInt(message, offset, UnsafeUtil.getInt(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 12:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putInt(message, offset, UnsafeUtil.getInt(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 13:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putInt(message, offset, UnsafeUtil.getInt(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 14:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putLong(message, offset, UnsafeUtil.getLong(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 15:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putInt(message, offset, UnsafeUtil.getInt(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 16:
                if (isFieldPresent(other, pos)) {
                    UnsafeUtil.putLong(message, offset, UnsafeUtil.getLong(other, offset));
                    setFieldPresent(message, pos);
                    return;
                }
                return;
            case 17:
                mergeMessage(message, other, pos);
                return;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
            case 29:
            case 30:
            case AppOpsApis.OP_FLAGS_ALL /* 31 */:
            case 32:
            case 33:
            case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
            case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
            case 36:
            case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
            case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
            case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
            case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
            case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
            case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
            case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
            case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
            case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
            case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
            case 48:
            case 49:
                this.listFieldSchema.mergeListsAt(message, other, offset);
                return;
            case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                SchemaUtil.mergeMap(this.mapFieldSchema, message, other, offset);
                return;
            case ONEOF_TYPE_OFFSET /* 51 */:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (isOneofPresent(other, number, pos)) {
                    UnsafeUtil.putObject(message, offset, UnsafeUtil.getObject(other, offset));
                    setOneofPresent(message, number, pos);
                    return;
                }
                return;
            case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                mergeOneofMessage(message, other, pos);
                return;
            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
            case 62:
            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
            case 64:
            case 65:
            case 66:
            case 67:
                if (isOneofPresent(other, number, pos)) {
                    UnsafeUtil.putObject(message, offset, UnsafeUtil.getObject(other, offset));
                    setOneofPresent(message, number, pos);
                    return;
                }
                return;
            case 68:
                mergeOneofMessage(message, other, pos);
                return;
            default:
                return;
        }
    }

    private void mergeMessage(T message, T other, int pos) {
        int typeAndOffset = typeAndOffsetAt(pos);
        long offset = offset(typeAndOffset);
        if (!isFieldPresent(other, pos)) {
            return;
        }
        Object mine = UnsafeUtil.getObject(message, offset);
        Object theirs = UnsafeUtil.getObject(other, offset);
        if (mine != null && theirs != null) {
            Object merged = Internal.mergeMessage(mine, theirs);
            UnsafeUtil.putObject(message, offset, merged);
            setFieldPresent(message, pos);
        } else if (theirs != null) {
            UnsafeUtil.putObject(message, offset, theirs);
            setFieldPresent(message, pos);
        }
    }

    private void mergeOneofMessage(T message, T other, int pos) {
        int typeAndOffset = typeAndOffsetAt(pos);
        int number = numberAt(pos);
        long offset = offset(typeAndOffset);
        if (!isOneofPresent(other, number, pos)) {
            return;
        }
        Object mine = UnsafeUtil.getObject(message, offset);
        Object theirs = UnsafeUtil.getObject(other, offset);
        if (mine != null && theirs != null) {
            Object merged = Internal.mergeMessage(mine, theirs);
            UnsafeUtil.putObject(message, offset, merged);
            setOneofPresent(message, number, pos);
        } else if (theirs != null) {
            UnsafeUtil.putObject(message, offset, theirs);
            setOneofPresent(message, number, pos);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int getSerializedSize(T message) {
        return this.proto3 ? getSerializedSizeProto3(message) : getSerializedSizeProto2(message);
    }

    private int getSerializedSizeProto2(T message) {
        int currentPresenceFieldOffset;
        int size = 0;
        Unsafe unsafe = UNSAFE;
        int currentPresenceFieldOffset2 = -1;
        int currentPresenceField = 0;
        int i = 0;
        while (i < this.buffer.length) {
            int typeAndOffset = typeAndOffsetAt(i);
            int number = numberAt(i);
            int fieldType = type(typeAndOffset);
            int presenceMaskAndOffset = 0;
            int presenceMask = 0;
            if (fieldType > 17) {
                if (this.useCachedSizeField && fieldType >= FieldType.DOUBLE_LIST_PACKED.id() && fieldType <= FieldType.SINT64_LIST_PACKED.id()) {
                    presenceMaskAndOffset = this.buffer[i + 2] & OFFSET_MASK;
                }
            } else {
                presenceMaskAndOffset = this.buffer[i + 2];
                int presenceFieldOffset = presenceMaskAndOffset & OFFSET_MASK;
                presenceMask = 1 << (presenceMaskAndOffset >>> 20);
                if (presenceFieldOffset != currentPresenceFieldOffset2) {
                    currentPresenceFieldOffset2 = presenceFieldOffset;
                    currentPresenceField = unsafe.getInt(message, presenceFieldOffset);
                }
            }
            long offset = offset(typeAndOffset);
            switch (fieldType) {
                case 0:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset3 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset3 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeDoubleSize(number, 0.0d);
                        break;
                    }
                case 1:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset4 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset4 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeFloatSize(number, 0.0f);
                        break;
                    }
                case 2:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset5 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset5 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeInt64Size(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 3:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset6 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset6 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeUInt64Size(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 4:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset7 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset7 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeInt32Size(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 5:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset8 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset8 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeFixed64Size(number, 0L);
                        break;
                    }
                case 6:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset9 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset9 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeFixed32Size(number, 0);
                        break;
                    }
                case 7:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset10 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset10 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeBoolSize(number, true);
                        break;
                    }
                case 8:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset11 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset11 == 0) {
                        break;
                    } else {
                        Object value = unsafe.getObject(message, offset);
                        if (value instanceof ByteString) {
                            size += CodedOutputStream.computeBytesSize(number, (ByteString) value);
                            break;
                        } else {
                            size += CodedOutputStream.computeStringSize(number, (String) value);
                            break;
                        }
                    }
                case 9:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset12 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset12 == 0) {
                        break;
                    } else {
                        size += SchemaUtil.computeSizeMessage(number, unsafe.getObject(message, offset), getMessageFieldSchema(i));
                        break;
                    }
                case 10:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset13 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset13 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeBytesSize(number, (ByteString) unsafe.getObject(message, offset));
                        break;
                    }
                case 11:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset14 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset14 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeUInt32Size(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 12:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset15 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset15 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeEnumSize(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 13:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset16 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset16 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeSFixed32Size(number, 0);
                        break;
                    }
                case 14:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset17 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset17 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeSFixed64Size(number, 0L);
                        break;
                    }
                case 15:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset18 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset18 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeSInt32Size(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 16:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset19 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset19 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeSInt64Size(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 17:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int currentPresenceFieldOffset20 = currentPresenceField & presenceMask;
                    if (currentPresenceFieldOffset20 == 0) {
                        break;
                    } else {
                        size += CodedOutputStream.computeGroupSize(number, (MessageLite) unsafe.getObject(message, offset), getMessageFieldSchema(i));
                        break;
                    }
                case 18:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeFixed64List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 19:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeFixed32List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 20:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeInt64List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 21:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeUInt64List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 22:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeInt32List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 23:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeFixed64List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 24:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeFixed32List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 25:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeBoolList(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 26:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeStringList(number, (List) unsafe.getObject(message, offset));
                    break;
                case 27:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeMessageList(number, (List) unsafe.getObject(message, offset), getMessageFieldSchema(i));
                    break;
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeByteStringList(number, (List) unsafe.getObject(message, offset));
                    break;
                case 29:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeUInt32List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 30:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeEnumList(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case AppOpsApis.OP_FLAGS_ALL /* 31 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeFixed32List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 32:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeFixed64List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case 33:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeSInt32List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeSInt64List(number, (List) unsafe.getObject(message, offset), false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize) + fieldSize;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize2 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize2);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize2) + fieldSize2;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize3 = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize3 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize3);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize3) + fieldSize3;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize4 = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize4 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize4);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize4) + fieldSize4;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize5 = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize5 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize5);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize5) + fieldSize5;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize6 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize6 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize6);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize6) + fieldSize6;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize7 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize7 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize7);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize7) + fieldSize7;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize8 = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize8 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize8);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize8) + fieldSize8;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize9 = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize9 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize9);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize9) + fieldSize9;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize10 = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize10);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize10) + fieldSize10;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize11 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize11 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize11);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize11) + fieldSize11;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize12 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize12);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize12) + fieldSize12;
                        break;
                    } else {
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize13 = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize13 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize13);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize13) + fieldSize13;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    int fieldSize14 = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize14 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, presenceMaskAndOffset, fieldSize14);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize14) + fieldSize14;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += SchemaUtil.computeSizeGroupList(number, (List) unsafe.getObject(message, offset), getMessageFieldSchema(i));
                    break;
                case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    size += this.mapFieldSchema.getSerializedSize(number, unsafe.getObject(message, offset), getMapFieldDefaultEntry(i));
                    break;
                case ONEOF_TYPE_OFFSET /* 51 */:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeDoubleSize(number, 0.0d);
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 52:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeFloatSize(number, 0.0f);
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 53:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeInt64Size(number, oneofLongAt(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 54:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeUInt64Size(number, oneofLongAt(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 55:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeInt32Size(number, oneofIntAt(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 56:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeFixed64Size(number, 0L);
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 57:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeFixed32Size(number, 0);
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 58:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeBoolSize(number, true);
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 59:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        Object value2 = unsafe.getObject(message, offset);
                        if (value2 instanceof ByteString) {
                            size += CodedOutputStream.computeBytesSize(number, (ByteString) value2);
                        } else {
                            size += CodedOutputStream.computeStringSize(number, (String) value2);
                        }
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += SchemaUtil.computeSizeMessage(number, unsafe.getObject(message, offset), getMessageFieldSchema(i));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeBytesSize(number, (ByteString) unsafe.getObject(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 62:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeUInt32Size(number, oneofIntAt(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeEnumSize(number, oneofIntAt(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 64:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeSFixed32Size(number, 0);
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 65:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeSFixed64Size(number, 0L);
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 66:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeSInt32Size(number, oneofIntAt(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 67:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeSInt64Size(number, oneofLongAt(message, offset));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                case 68:
                    if (!isOneofPresent(message, number, i)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    } else {
                        size += CodedOutputStream.computeGroupSize(number, (MessageLite) unsafe.getObject(message, offset), getMessageFieldSchema(i));
                        currentPresenceFieldOffset = currentPresenceFieldOffset2;
                        break;
                    }
                default:
                    currentPresenceFieldOffset = currentPresenceFieldOffset2;
                    break;
            }
            i += 3;
            currentPresenceFieldOffset2 = currentPresenceFieldOffset;
        }
        int size2 = size + getUnknownFieldsSerializedSize(this.unknownFieldSchema, message);
        if (this.hasExtensions) {
            return size2 + this.extensionSchema.getExtensions(message).getSerializedSize();
        }
        return size2;
    }

    private int getSerializedSizeProto3(T message) {
        Unsafe unsafe = UNSAFE;
        int size = 0;
        for (int i = 0; i < this.buffer.length; i += 3) {
            int typeAndOffset = typeAndOffsetAt(i);
            int fieldType = type(typeAndOffset);
            int number = numberAt(i);
            long offset = offset(typeAndOffset);
            int cachedSizeOffset = (fieldType < FieldType.DOUBLE_LIST_PACKED.id() || fieldType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i + 2] & OFFSET_MASK;
            switch (fieldType) {
                case 0:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeDoubleSize(number, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeFloatSize(number, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeInt64Size(number, UnsafeUtil.getLong(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeUInt64Size(number, UnsafeUtil.getLong(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeInt32Size(number, UnsafeUtil.getInt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeFixed64Size(number, 0L);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeFixed32Size(number, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeBoolSize(number, true);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (isFieldPresent(message, i)) {
                        Object value = UnsafeUtil.getObject(message, offset);
                        if (value instanceof ByteString) {
                            size += CodedOutputStream.computeBytesSize(number, (ByteString) value);
                            break;
                        } else {
                            size += CodedOutputStream.computeStringSize(number, (String) value);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (isFieldPresent(message, i)) {
                        size += SchemaUtil.computeSizeMessage(number, UnsafeUtil.getObject(message, offset), getMessageFieldSchema(i));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeBytesSize(number, (ByteString) UnsafeUtil.getObject(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeUInt32Size(number, UnsafeUtil.getInt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeEnumSize(number, UnsafeUtil.getInt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeSFixed32Size(number, 0);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeSFixed64Size(number, 0L);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeSInt32Size(number, UnsafeUtil.getInt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeSInt64Size(number, UnsafeUtil.getLong(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (isFieldPresent(message, i)) {
                        size += CodedOutputStream.computeGroupSize(number, (MessageLite) UnsafeUtil.getObject(message, offset), getMessageFieldSchema(i));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    size += SchemaUtil.computeSizeFixed64List(number, listAt(message, offset), false);
                    break;
                case 19:
                    size += SchemaUtil.computeSizeFixed32List(number, listAt(message, offset), false);
                    break;
                case 20:
                    size += SchemaUtil.computeSizeInt64List(number, listAt(message, offset), false);
                    break;
                case 21:
                    size += SchemaUtil.computeSizeUInt64List(number, listAt(message, offset), false);
                    break;
                case 22:
                    size += SchemaUtil.computeSizeInt32List(number, listAt(message, offset), false);
                    break;
                case 23:
                    size += SchemaUtil.computeSizeFixed64List(number, listAt(message, offset), false);
                    break;
                case 24:
                    size += SchemaUtil.computeSizeFixed32List(number, listAt(message, offset), false);
                    break;
                case 25:
                    size += SchemaUtil.computeSizeBoolList(number, listAt(message, offset), false);
                    break;
                case 26:
                    size += SchemaUtil.computeSizeStringList(number, listAt(message, offset));
                    break;
                case 27:
                    size += SchemaUtil.computeSizeMessageList(number, listAt(message, offset), getMessageFieldSchema(i));
                    break;
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                    size += SchemaUtil.computeSizeByteStringList(number, listAt(message, offset));
                    break;
                case 29:
                    size += SchemaUtil.computeSizeUInt32List(number, listAt(message, offset), false);
                    break;
                case 30:
                    size += SchemaUtil.computeSizeEnumList(number, listAt(message, offset), false);
                    break;
                case AppOpsApis.OP_FLAGS_ALL /* 31 */:
                    size += SchemaUtil.computeSizeFixed32List(number, listAt(message, offset), false);
                    break;
                case 32:
                    size += SchemaUtil.computeSizeFixed64List(number, listAt(message, offset), false);
                    break;
                case 33:
                    size += SchemaUtil.computeSizeSInt32List(number, listAt(message, offset), false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    size += SchemaUtil.computeSizeSInt64List(number, listAt(message, offset), false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    int fieldSize = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize) + fieldSize;
                        break;
                    }
                case 36:
                    int fieldSize2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize2 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize2);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize2) + fieldSize2;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    int fieldSize3 = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize3 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize3);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize3) + fieldSize3;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                    int fieldSize4 = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize4 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize4);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize4) + fieldSize4;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    int fieldSize5 = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize5 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize5);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize5) + fieldSize5;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                    int fieldSize6 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize6 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize6);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize6) + fieldSize6;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    int fieldSize7 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize7 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize7);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize7) + fieldSize7;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    int fieldSize8 = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize8 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize8);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize8) + fieldSize8;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    int fieldSize9 = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize9 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize9);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize9) + fieldSize9;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    int fieldSize10 = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize10 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize10);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize10) + fieldSize10;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                    int fieldSize11 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize11 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize11);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize11) + fieldSize11;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                    int fieldSize12 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize12 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize12);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize12) + fieldSize12;
                        break;
                    }
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    int fieldSize13 = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize13 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize13);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize13) + fieldSize13;
                        break;
                    }
                case 48:
                    int fieldSize14 = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(message, offset));
                    if (fieldSize14 <= 0) {
                        break;
                    } else {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(message, cachedSizeOffset, fieldSize14);
                        }
                        size += CodedOutputStream.computeTagSize(number) + CodedOutputStream.computeUInt32SizeNoTag(fieldSize14) + fieldSize14;
                        break;
                    }
                case 49:
                    size += SchemaUtil.computeSizeGroupList(number, listAt(message, offset), getMessageFieldSchema(i));
                    break;
                case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                    size += this.mapFieldSchema.getSerializedSize(number, UnsafeUtil.getObject(message, offset), getMapFieldDefaultEntry(i));
                    break;
                case ONEOF_TYPE_OFFSET /* 51 */:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeDoubleSize(number, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeFloatSize(number, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeInt64Size(number, oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeUInt64Size(number, oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeInt32Size(number, oneofIntAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeFixed64Size(number, 0L);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeFixed32Size(number, 0);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeBoolSize(number, true);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (isOneofPresent(message, number, i)) {
                        Object value2 = UnsafeUtil.getObject(message, offset);
                        if (value2 instanceof ByteString) {
                            size += CodedOutputStream.computeBytesSize(number, (ByteString) value2);
                            break;
                        } else {
                            size += CodedOutputStream.computeStringSize(number, (String) value2);
                            break;
                        }
                    } else {
                        break;
                    }
                case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                    if (isOneofPresent(message, number, i)) {
                        size += SchemaUtil.computeSizeMessage(number, UnsafeUtil.getObject(message, offset), getMessageFieldSchema(i));
                        break;
                    } else {
                        break;
                    }
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeBytesSize(number, (ByteString) UnsafeUtil.getObject(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeUInt32Size(number, oneofIntAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeEnumSize(number, oneofIntAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeSFixed32Size(number, 0);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeSFixed64Size(number, 0L);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeSInt32Size(number, oneofIntAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeSInt64Size(number, oneofLongAt(message, offset));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (isOneofPresent(message, number, i)) {
                        size += CodedOutputStream.computeGroupSize(number, (MessageLite) UnsafeUtil.getObject(message, offset), getMessageFieldSchema(i));
                        break;
                    } else {
                        break;
                    }
            }
        }
        return size + getUnknownFieldsSerializedSize(this.unknownFieldSchema, message);
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(UnknownFieldSchema<UT, UB> schema, T message) {
        UT unknowns = schema.getFromMessage(message);
        return schema.getSerializedSize(unknowns);
    }

    private static List<?> listAt(Object message, long offset) {
        return (List) UnsafeUtil.getObject(message, offset);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void writeTo(T message, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(message, writer);
        } else if (this.proto3) {
            writeFieldsInAscendingOrderProto3(message, writer);
        } else {
            writeFieldsInAscendingOrderProto2(message, writer);
        }
    }

    private void writeFieldsInAscendingOrderProto2(T message, Writer writer) throws IOException {
        Map.Entry nextExtension;
        int currentPresenceFieldOffset;
        Iterator<? extends Map.Entry<?, ?>> extensionIterator = null;
        Map.Entry nextExtension2 = null;
        if (this.hasExtensions) {
            FieldSet<?> extensions = this.extensionSchema.getExtensions(message);
            if (!extensions.isEmpty()) {
                extensionIterator = extensions.iterator();
                nextExtension2 = extensionIterator.next();
            }
        }
        int currentPresenceFieldOffset2 = -1;
        int currentPresenceField = 0;
        int bufferLength = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int pos = 0;
        while (pos < bufferLength) {
            int typeAndOffset = typeAndOffsetAt(pos);
            int number = numberAt(pos);
            int fieldType = type(typeAndOffset);
            int presenceMask = 0;
            Map.Entry nextExtension3 = nextExtension2;
            if (!this.proto3 && fieldType <= 17) {
                int presenceMaskAndOffset = this.buffer[pos + 2];
                int presenceFieldOffset = OFFSET_MASK & presenceMaskAndOffset;
                if (presenceFieldOffset != currentPresenceFieldOffset2) {
                    currentPresenceField = unsafe.getInt(message, presenceFieldOffset);
                    currentPresenceFieldOffset2 = presenceFieldOffset;
                }
                presenceMask = 1 << (presenceMaskAndOffset >>> 20);
                nextExtension = nextExtension3;
            } else {
                nextExtension = nextExtension3;
            }
            while (nextExtension != null && this.extensionSchema.extensionNumber(nextExtension) <= number) {
                this.extensionSchema.serializeExtension(writer, nextExtension);
                nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
            }
            Map.Entry nextExtension4 = nextExtension;
            int currentPresenceFieldOffset3 = currentPresenceFieldOffset2;
            long offset = offset(typeAndOffset);
            int bufferLength2 = bufferLength;
            switch (fieldType) {
                case 0:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeDouble(number, doubleAt(message, offset));
                        break;
                    }
                case 1:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeFloat(number, floatAt(message, offset));
                        break;
                    }
                case 2:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeInt64(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 3:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeUInt64(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 4:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeInt32(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 5:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeFixed64(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 6:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeFixed32(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 7:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeBool(number, booleanAt(message, offset));
                        break;
                    }
                case 8:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writeString(number, unsafe.getObject(message, offset), writer);
                        break;
                    }
                case 9:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        Object value = unsafe.getObject(message, offset);
                        writer.writeMessage(number, value, getMessageFieldSchema(pos));
                        break;
                    }
                case 10:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeBytes(number, (ByteString) unsafe.getObject(message, offset));
                        break;
                    }
                case 11:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeUInt32(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 12:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeEnum(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 13:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeSFixed32(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 14:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeSFixed64(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 15:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeSInt32(number, unsafe.getInt(message, offset));
                        break;
                    }
                case 16:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeSInt64(number, unsafe.getLong(message, offset));
                        break;
                    }
                case 17:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if ((currentPresenceField & presenceMask) == 0) {
                        break;
                    } else {
                        writer.writeGroup(number, unsafe.getObject(message, offset), getMessageFieldSchema(pos));
                        break;
                    }
                case 18:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset4 = numberAt(pos);
                    SchemaUtil.writeDoubleList(currentPresenceFieldOffset4, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 19:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset5 = numberAt(pos);
                    SchemaUtil.writeFloatList(currentPresenceFieldOffset5, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 20:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset6 = numberAt(pos);
                    SchemaUtil.writeInt64List(currentPresenceFieldOffset6, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 21:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset7 = numberAt(pos);
                    SchemaUtil.writeUInt64List(currentPresenceFieldOffset7, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 22:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset8 = numberAt(pos);
                    SchemaUtil.writeInt32List(currentPresenceFieldOffset8, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 23:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset9 = numberAt(pos);
                    SchemaUtil.writeFixed64List(currentPresenceFieldOffset9, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 24:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset10 = numberAt(pos);
                    SchemaUtil.writeFixed32List(currentPresenceFieldOffset10, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 25:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset11 = numberAt(pos);
                    SchemaUtil.writeBoolList(currentPresenceFieldOffset11, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 26:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeStringList(numberAt(pos), (List) unsafe.getObject(message, offset), writer);
                    break;
                case 27:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeMessageList(numberAt(pos), (List) unsafe.getObject(message, offset), writer, getMessageFieldSchema(pos));
                    break;
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeBytesList(numberAt(pos), (List) unsafe.getObject(message, offset), writer);
                    break;
                case 29:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset12 = numberAt(pos);
                    SchemaUtil.writeUInt32List(currentPresenceFieldOffset12, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 30:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset13 = numberAt(pos);
                    SchemaUtil.writeEnumList(currentPresenceFieldOffset13, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case AppOpsApis.OP_FLAGS_ALL /* 31 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset14 = numberAt(pos);
                    SchemaUtil.writeSFixed32List(currentPresenceFieldOffset14, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 32:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset15 = numberAt(pos);
                    SchemaUtil.writeSFixed64List(currentPresenceFieldOffset15, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case 33:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset16 = numberAt(pos);
                    SchemaUtil.writeSInt32List(currentPresenceFieldOffset16, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    int currentPresenceFieldOffset17 = numberAt(pos);
                    SchemaUtil.writeSInt64List(currentPresenceFieldOffset17, (List) unsafe.getObject(message, offset), writer, false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeDoubleList(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case 36:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeFloatList(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeInt64List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeUInt64List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeInt32List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeFixed64List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeFixed32List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeBoolList(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeUInt32List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeEnumList(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeSFixed32List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeSFixed64List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeSInt32List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case 48:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeSInt64List(numberAt(pos), (List) unsafe.getObject(message, offset), writer, true);
                    break;
                case 49:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    SchemaUtil.writeGroupList(numberAt(pos), (List) unsafe.getObject(message, offset), writer, getMessageFieldSchema(pos));
                    break;
                case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    writeMapHelper(writer, number, unsafe.getObject(message, offset), pos);
                    break;
                case ONEOF_TYPE_OFFSET /* 51 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeDouble(number, oneofDoubleAt(message, offset));
                        break;
                    }
                case 52:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeFloat(number, oneofFloatAt(message, offset));
                        break;
                    }
                case 53:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeInt64(number, oneofLongAt(message, offset));
                        break;
                    }
                case 54:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeUInt64(number, oneofLongAt(message, offset));
                        break;
                    }
                case 55:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeInt32(number, oneofIntAt(message, offset));
                        break;
                    }
                case 56:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeFixed64(number, oneofLongAt(message, offset));
                        break;
                    }
                case 57:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeFixed32(number, oneofIntAt(message, offset));
                        break;
                    }
                case 58:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeBool(number, oneofBooleanAt(message, offset));
                        break;
                    }
                case 59:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writeString(number, unsafe.getObject(message, offset), writer);
                        break;
                    }
                case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        Object value2 = unsafe.getObject(message, offset);
                        writer.writeMessage(number, value2, getMessageFieldSchema(pos));
                        break;
                    }
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeBytes(number, (ByteString) unsafe.getObject(message, offset));
                        break;
                    }
                case 62:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeUInt32(number, oneofIntAt(message, offset));
                        break;
                    }
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeEnum(number, oneofIntAt(message, offset));
                        break;
                    }
                case 64:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeSFixed32(number, oneofIntAt(message, offset));
                        break;
                    }
                case 65:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeSFixed64(number, oneofLongAt(message, offset));
                        break;
                    }
                case 66:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeSInt32(number, oneofIntAt(message, offset));
                        break;
                    }
                case 67:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    if (!isOneofPresent(message, number, pos)) {
                        break;
                    } else {
                        writer.writeSInt64(number, oneofLongAt(message, offset));
                        break;
                    }
                case 68:
                    if (!isOneofPresent(message, number, pos)) {
                        currentPresenceFieldOffset = currentPresenceFieldOffset3;
                        break;
                    } else {
                        currentPresenceFieldOffset = currentPresenceFieldOffset3;
                        writer.writeGroup(number, unsafe.getObject(message, offset), getMessageFieldSchema(pos));
                        break;
                    }
                default:
                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                    break;
            }
            pos += 3;
            currentPresenceFieldOffset2 = currentPresenceFieldOffset;
            nextExtension2 = nextExtension4;
            bufferLength = bufferLength2;
        }
        while (nextExtension2 != null) {
            this.extensionSchema.serializeExtension(writer, nextExtension2);
            nextExtension2 = extensionIterator.hasNext() ? extensionIterator.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, message, writer);
    }

    private void writeFieldsInAscendingOrderProto3(T message, Writer writer) throws IOException {
        Iterator<? extends Map.Entry<?, ?>> extensionIterator = null;
        Map.Entry nextExtension = null;
        if (this.hasExtensions) {
            FieldSet<?> extensions = this.extensionSchema.getExtensions(message);
            if (!extensions.isEmpty()) {
                extensionIterator = extensions.iterator();
                nextExtension = extensionIterator.next();
            }
        }
        int bufferLength = this.buffer.length;
        for (int pos = 0; pos < bufferLength; pos += 3) {
            int typeAndOffset = typeAndOffsetAt(pos);
            int number = numberAt(pos);
            while (nextExtension != null && this.extensionSchema.extensionNumber(nextExtension) <= number) {
                this.extensionSchema.serializeExtension(writer, nextExtension);
                nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
            }
            switch (type(typeAndOffset)) {
                case 0:
                    if (isFieldPresent(message, pos)) {
                        writer.writeDouble(number, doubleAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (isFieldPresent(message, pos)) {
                        writer.writeFloat(number, floatAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (isFieldPresent(message, pos)) {
                        writer.writeInt64(number, longAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (isFieldPresent(message, pos)) {
                        writer.writeUInt64(number, longAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (isFieldPresent(message, pos)) {
                        writer.writeInt32(number, intAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (isFieldPresent(message, pos)) {
                        writer.writeFixed64(number, longAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (isFieldPresent(message, pos)) {
                        writer.writeFixed32(number, intAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (isFieldPresent(message, pos)) {
                        writer.writeBool(number, booleanAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (isFieldPresent(message, pos)) {
                        writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (isFieldPresent(message, pos)) {
                        Object value = UnsafeUtil.getObject(message, offset(typeAndOffset));
                        writer.writeMessage(number, value, getMessageFieldSchema(pos));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (isFieldPresent(message, pos)) {
                        writer.writeBytes(number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (isFieldPresent(message, pos)) {
                        writer.writeUInt32(number, intAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (isFieldPresent(message, pos)) {
                        writer.writeEnum(number, intAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (isFieldPresent(message, pos)) {
                        writer.writeSFixed32(number, intAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (isFieldPresent(message, pos)) {
                        writer.writeSFixed64(number, longAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (isFieldPresent(message, pos)) {
                        writer.writeSInt32(number, intAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (isFieldPresent(message, pos)) {
                        writer.writeSInt64(number, longAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (isFieldPresent(message, pos)) {
                        writer.writeGroup(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), getMessageFieldSchema(pos));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, getMessageFieldSchema(pos));
                    break;
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                    SchemaUtil.writeBytesList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case AppOpsApis.OP_FLAGS_ALL /* 31 */:
                    SchemaUtil.writeSFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    SchemaUtil.writeSInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    SchemaUtil.writeDoubleList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    SchemaUtil.writeInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                    SchemaUtil.writeUInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    SchemaUtil.writeInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                    SchemaUtil.writeFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    SchemaUtil.writeFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    SchemaUtil.writeBoolList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    SchemaUtil.writeUInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    SchemaUtil.writeEnumList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                    SchemaUtil.writeSFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                    SchemaUtil.writeSFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    SchemaUtil.writeSInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, getMessageFieldSchema(pos));
                    break;
                case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                    writeMapHelper(writer, number, UnsafeUtil.getObject(message, offset(typeAndOffset)), pos);
                    break;
                case ONEOF_TYPE_OFFSET /* 51 */:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeDouble(number, oneofDoubleAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeFloat(number, oneofFloatAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeInt64(number, oneofLongAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeUInt64(number, oneofLongAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeInt32(number, oneofIntAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeBool(number, oneofBooleanAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (isOneofPresent(message, number, pos)) {
                        writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                        break;
                    } else {
                        break;
                    }
                case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                    if (isOneofPresent(message, number, pos)) {
                        Object value2 = UnsafeUtil.getObject(message, offset(typeAndOffset));
                        writer.writeMessage(number, value2, getMessageFieldSchema(pos));
                        break;
                    } else {
                        break;
                    }
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeBytes(number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeUInt32(number, oneofIntAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeEnum(number, oneofIntAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeSFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeSFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeSInt32(number, oneofIntAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeSInt64(number, oneofLongAt(message, offset(typeAndOffset)));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (isOneofPresent(message, number, pos)) {
                        writer.writeGroup(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), getMessageFieldSchema(pos));
                        break;
                    } else {
                        break;
                    }
            }
        }
        while (nextExtension != null) {
            this.extensionSchema.serializeExtension(writer, nextExtension);
            nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, message, writer);
    }

    private void writeFieldsInDescendingOrder(T message, Writer writer) throws IOException {
        writeUnknownInMessageTo(this.unknownFieldSchema, message, writer);
        Iterator<? extends Map.Entry<?, ?>> extensionIterator = null;
        Map.Entry nextExtension = null;
        if (this.hasExtensions) {
            FieldSet<?> extensions = this.extensionSchema.getExtensions(message);
            if (!extensions.isEmpty()) {
                extensionIterator = extensions.descendingIterator();
                nextExtension = extensionIterator.next();
            }
        }
        int pos = this.buffer.length;
        while (true) {
            pos -= 3;
            if (pos >= 0) {
                int typeAndOffset = typeAndOffsetAt(pos);
                int number = numberAt(pos);
                while (nextExtension != null && this.extensionSchema.extensionNumber(nextExtension) > number) {
                    this.extensionSchema.serializeExtension(writer, nextExtension);
                    nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
                }
                switch (type(typeAndOffset)) {
                    case 0:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeDouble(number, doubleAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 1:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeFloat(number, floatAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 2:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeInt64(number, longAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 3:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeUInt64(number, longAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 4:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeInt32(number, intAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 5:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeFixed64(number, longAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 6:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeFixed32(number, intAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 7:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeBool(number, booleanAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 8:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                            break;
                        }
                    case 9:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            Object value = UnsafeUtil.getObject(message, offset(typeAndOffset));
                            writer.writeMessage(number, value, getMessageFieldSchema(pos));
                            break;
                        }
                    case 10:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeBytes(number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
                            break;
                        }
                    case 11:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeUInt32(number, intAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 12:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeEnum(number, intAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 13:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeSFixed32(number, intAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 14:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeSFixed64(number, longAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 15:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeSInt32(number, intAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 16:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeSInt64(number, longAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 17:
                        if (!isFieldPresent(message, pos)) {
                            break;
                        } else {
                            writer.writeGroup(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), getMessageFieldSchema(pos));
                            break;
                        }
                    case 18:
                        SchemaUtil.writeDoubleList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 19:
                        SchemaUtil.writeFloatList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 20:
                        SchemaUtil.writeInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 21:
                        SchemaUtil.writeUInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 22:
                        SchemaUtil.writeInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 23:
                        SchemaUtil.writeFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 24:
                        SchemaUtil.writeFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 25:
                        SchemaUtil.writeBoolList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 26:
                        SchemaUtil.writeStringList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                        break;
                    case 27:
                        SchemaUtil.writeMessageList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, getMessageFieldSchema(pos));
                        break;
                    case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                        SchemaUtil.writeBytesList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                        break;
                    case 29:
                        SchemaUtil.writeUInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 30:
                        SchemaUtil.writeEnumList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case AppOpsApis.OP_FLAGS_ALL /* 31 */:
                        SchemaUtil.writeSFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 32:
                        SchemaUtil.writeSFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case 33:
                        SchemaUtil.writeSInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        SchemaUtil.writeSInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, false);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                        SchemaUtil.writeDoubleList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case 36:
                        SchemaUtil.writeFloatList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                        SchemaUtil.writeInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                        SchemaUtil.writeUInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                        SchemaUtil.writeInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                        SchemaUtil.writeFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                        SchemaUtil.writeFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        SchemaUtil.writeBoolList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                        SchemaUtil.writeUInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                        SchemaUtil.writeEnumList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                        SchemaUtil.writeSFixed32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                        SchemaUtil.writeSFixed64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                        SchemaUtil.writeSInt32List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case 48:
                        SchemaUtil.writeSInt64List(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, true);
                        break;
                    case 49:
                        SchemaUtil.writeGroupList(numberAt(pos), (List) UnsafeUtil.getObject(message, offset(typeAndOffset)), writer, getMessageFieldSchema(pos));
                        break;
                    case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                        writeMapHelper(writer, number, UnsafeUtil.getObject(message, offset(typeAndOffset)), pos);
                        break;
                    case ONEOF_TYPE_OFFSET /* 51 */:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeDouble(number, oneofDoubleAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 52:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeFloat(number, oneofFloatAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 53:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeInt64(number, oneofLongAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 54:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeUInt64(number, oneofLongAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 55:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeInt32(number, oneofIntAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 56:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 57:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 58:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeBool(number, oneofBooleanAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 59:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
                            break;
                        }
                    case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            Object value2 = UnsafeUtil.getObject(message, offset(typeAndOffset));
                            writer.writeMessage(number, value2, getMessageFieldSchema(pos));
                            break;
                        }
                    case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeBytes(number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
                            break;
                        }
                    case 62:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeUInt32(number, oneofIntAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeEnum(number, oneofIntAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 64:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeSFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 65:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeSFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 66:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeSInt32(number, oneofIntAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 67:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeSInt64(number, oneofLongAt(message, offset(typeAndOffset)));
                            break;
                        }
                    case 68:
                        if (!isOneofPresent(message, number, pos)) {
                            break;
                        } else {
                            writer.writeGroup(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), getMessageFieldSchema(pos));
                            break;
                        }
                }
            } else {
                while (nextExtension != null) {
                    this.extensionSchema.serializeExtension(writer, nextExtension);
                    nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
                }
                return;
            }
        }
    }

    private <K, V> void writeMapHelper(Writer writer, int number, Object mapField, int pos) throws IOException {
        if (mapField != null) {
            writer.writeMap(number, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(pos)), this.mapFieldSchema.forMapData(mapField));
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(UnknownFieldSchema<UT, UB> schema, T message, Writer writer) throws IOException {
        schema.writeTo(schema.getFromMessage(message), writer);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(T message, Reader reader, ExtensionRegistryLite extensionRegistry) throws IOException {
        if (extensionRegistry == null) {
            throw new NullPointerException();
        }
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, message, reader, extensionRegistry);
    }

    /* JADX WARN: Code restructure failed: missing block: B:195:0x0091, code lost:
    
        r1 = r18.checkInitializedCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0095, code lost:
    
        if (r1 >= r18.repeatedFieldOffsetStart) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0097, code lost:
    
        r13 = filterMapUnknownEnumValues(r21, r18.intArray[r1], r13, r19);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x00a2, code lost:
    
        if (r13 == null) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x00a4, code lost:
    
        r19.setBuilderToMessage(r21, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x00a7, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:?, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x00b4. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0703 A[LOOP:5: B:220:0x06ff->B:222:0x0703, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:227:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x06af A[Catch: all -> 0x06f4, TRY_LEAVE, TryCatch #1 {all -> 0x06f4, blocks: (B:214:0x0066, B:185:0x006e, B:205:0x0077, B:189:0x0082, B:190:0x0087, B:8:0x00ab, B:11:0x00b0, B:32:0x00ba, B:15:0x0688, B:37:0x06a9, B:39:0x06af, B:52:0x06ce, B:53:0x06d3, B:158:0x00c1, B:65:0x00d6, B:66:0x00ec, B:67:0x0102, B:68:0x0118, B:69:0x012e, B:71:0x0138, B:74:0x013f, B:75:0x0148, B:76:0x0159, B:77:0x016f, B:78:0x0180, B:80:0x0187, B:81:0x01b6, B:82:0x01a3, B:83:0x01bc, B:84:0x01c5, B:85:0x01db, B:86:0x01f1, B:87:0x0207, B:88:0x021d, B:89:0x0233, B:90:0x0249, B:91:0x025f, B:92:0x0275, B:163:0x028e, B:166:0x02a0, B:94:0x02af, B:95:0x02c2, B:96:0x02d5, B:97:0x02e8, B:98:0x02fb, B:99:0x0318, B:100:0x032b, B:101:0x033e, B:102:0x0351, B:103:0x0364, B:104:0x0377, B:105:0x038a, B:106:0x039d, B:107:0x03b0, B:108:0x03c3, B:109:0x03d6, B:110:0x03e9, B:111:0x03fc, B:112:0x040f, B:113:0x042c, B:114:0x043f, B:115:0x0452, B:118:0x0473, B:119:0x0478, B:120:0x0488, B:121:0x0498, B:122:0x04a8, B:123:0x04b8, B:124:0x04c8, B:125:0x04d8, B:126:0x04e8, B:127:0x04f8, B:129:0x0500, B:130:0x051d, B:131:0x0532, B:132:0x0543, B:133:0x0554, B:134:0x0565, B:135:0x0576, B:137:0x0581, B:140:0x0588, B:141:0x0590, B:142:0x059c, B:143:0x05ad, B:144:0x05be, B:146:0x05c6, B:147:0x05e3, B:148:0x05f8, B:149:0x0601, B:150:0x0612, B:151:0x0623, B:152:0x0634, B:153:0x0644, B:154:0x0654, B:155:0x0664, B:156:0x0674), top: B:213:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x06cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <UT, UB, ET extends androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(androidx.datastore.preferences.protobuf.UnknownFieldSchema<UT, UB> r19, androidx.datastore.preferences.protobuf.ExtensionSchema<ET> r20, T r21, androidx.datastore.preferences.protobuf.Reader r22, androidx.datastore.preferences.protobuf.ExtensionRegistryLite r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1954
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.mergeFromHelper(androidx.datastore.preferences.protobuf.UnknownFieldSchema, androidx.datastore.preferences.protobuf.ExtensionSchema, java.lang.Object, androidx.datastore.preferences.protobuf.Reader, androidx.datastore.preferences.protobuf.ExtensionRegistryLite):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UnknownFieldSetLite getMutableUnknownFields(Object message) {
        UnknownFieldSetLite unknownFields = ((GeneratedMessageLite) message).unknownFields;
        if (unknownFields == UnknownFieldSetLite.getDefaultInstance()) {
            UnknownFieldSetLite unknownFields2 = UnknownFieldSetLite.newInstance();
            ((GeneratedMessageLite) message).unknownFields = unknownFields2;
            return unknownFields2;
        }
        return unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.datastore.preferences.protobuf.MessageSchema$1, reason: invalid class name */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    private int decodeMapEntryValue(byte[] data, int position, int limit, WireFormat.FieldType fieldType, Class<?> messageType, ArrayDecoders.Registers registers) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int position2 = ArrayDecoders.decodeVarint64(data, position, registers);
                registers.object1 = Boolean.valueOf(registers.long1 != 0);
                return position2;
            case 2:
                return ArrayDecoders.decodeBytes(data, position, registers);
            case 3:
                registers.object1 = Double.valueOf(ArrayDecoders.decodeDouble(data, position));
                return position + 8;
            case 4:
            case 5:
                registers.object1 = Integer.valueOf(ArrayDecoders.decodeFixed32(data, position));
                return position + 4;
            case 6:
            case 7:
                registers.object1 = Long.valueOf(ArrayDecoders.decodeFixed64(data, position));
                return position + 8;
            case 8:
                registers.object1 = Float.valueOf(ArrayDecoders.decodeFloat(data, position));
                return position + 4;
            case 9:
            case 10:
            case 11:
                int position3 = ArrayDecoders.decodeVarint32(data, position, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                return position3;
            case 12:
            case 13:
                int position4 = ArrayDecoders.decodeVarint64(data, position, registers);
                registers.object1 = Long.valueOf(registers.long1);
                return position4;
            case 14:
                return ArrayDecoders.decodeMessageField(Protobuf.getInstance().schemaFor((Class) messageType), data, position, limit, registers);
            case 15:
                int position5 = ArrayDecoders.decodeVarint32(data, position, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                return position5;
            case 16:
                int position6 = ArrayDecoders.decodeVarint64(data, position, registers);
                registers.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                return position6;
            case 17:
                return ArrayDecoders.decodeStringRequireUtf8(data, position, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int decodeMapEntry(byte[] data, int position, int limit, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map, ArrayDecoders.Registers registers) throws IOException {
        int tag;
        int position2;
        int position3;
        int length;
        int position4 = ArrayDecoders.decodeVarint32(data, position, registers);
        int wireType = registers.int1;
        if (wireType < 0 || wireType > limit - position4) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int end = position4 + wireType;
        K key = metadata.defaultKey;
        Object obj = key;
        Object obj2 = metadata.defaultValue;
        while (position4 < end) {
            int position5 = position4 + 1;
            int tag2 = data[position4];
            if (tag2 >= 0) {
                tag = tag2;
                position2 = position5;
            } else {
                int position6 = ArrayDecoders.decodeVarint32(tag2, data, position5, registers);
                tag = registers.int1;
                position2 = position6;
            }
            int fieldNumber = tag >>> 3;
            int wireType2 = tag & 7;
            switch (fieldNumber) {
                case 1:
                    position3 = position2;
                    length = wireType;
                    if (wireType2 != metadata.keyType.getWireType()) {
                        break;
                    } else {
                        position4 = decodeMapEntryValue(data, position3, limit, metadata.keyType, null, registers);
                        obj = registers.object1;
                        wireType = length;
                        break;
                    }
                case 2:
                    if (wireType2 != metadata.valueType.getWireType()) {
                        position3 = position2;
                        length = wireType;
                        break;
                    } else {
                        int length2 = wireType;
                        position4 = decodeMapEntryValue(data, position2, limit, metadata.valueType, metadata.defaultValue.getClass(), registers);
                        obj2 = registers.object1;
                        wireType = length2;
                        break;
                    }
                default:
                    position3 = position2;
                    length = wireType;
                    break;
            }
            position4 = ArrayDecoders.skipField(tag, data, position3, limit, registers);
            wireType = length;
        }
        if (position4 != end) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return end;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0036. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    private int parseRepeatedField(T t, byte[] data, int position, int limit, int tag, int number, int wireType, int bufferPosition, long typeAndOffset, int fieldType, long fieldOffset, ArrayDecoders.Registers registers) throws IOException {
        Internal.ProtobufList<?> list;
        int position2;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList<?> list2 = (Internal.ProtobufList) unsafe.getObject(t, fieldOffset);
        if (list2.isModifiable()) {
            list = list2;
        } else {
            int size = list2.size();
            Internal.ProtobufList<?> list3 = list2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            unsafe.putObject(t, fieldOffset, list3);
            list = list3;
        }
        switch (fieldType) {
            case 18:
            case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                Internal.ProtobufList<?> list4 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedDoubleList(data, position, list4, registers);
                }
                if (wireType == 1) {
                    return ArrayDecoders.decodeDoubleList(tag, data, position, limit, list4, registers);
                }
                return position;
            case 19:
            case 36:
                Internal.ProtobufList<?> list5 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedFloatList(data, position, list5, registers);
                }
                if (wireType == 5) {
                    return ArrayDecoders.decodeFloatList(tag, data, position, limit, list5, registers);
                }
                return position;
            case 20:
            case 21:
            case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
            case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                Internal.ProtobufList<?> list6 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedVarint64List(data, position, list6, registers);
                }
                if (wireType == 0) {
                    return ArrayDecoders.decodeVarint64List(tag, data, position, limit, list6, registers);
                }
                return position;
            case 22:
            case 29:
            case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
            case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                Internal.ProtobufList<?> list7 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedVarint32List(data, position, list7, registers);
                }
                if (wireType == 0) {
                    return ArrayDecoders.decodeVarint32List(tag, data, position, limit, list7, registers);
                }
                return position;
            case 23:
            case 32:
            case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
            case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                Internal.ProtobufList<?> list8 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedFixed64List(data, position, list8, registers);
                }
                if (wireType == 1) {
                    return ArrayDecoders.decodeFixed64List(tag, data, position, limit, list8, registers);
                }
                return position;
            case 24:
            case AppOpsApis.OP_FLAGS_ALL /* 31 */:
            case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
            case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                Internal.ProtobufList<?> list9 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedFixed32List(data, position, list9, registers);
                }
                if (wireType == 5) {
                    return ArrayDecoders.decodeFixed32List(tag, data, position, limit, list9, registers);
                }
                return position;
            case 25:
            case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                Internal.ProtobufList<?> list10 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedBoolList(data, position, list10, registers);
                }
                if (wireType == 0) {
                    return ArrayDecoders.decodeBoolList(tag, data, position, limit, list10, registers);
                }
                return position;
            case 26:
                Internal.ProtobufList<?> list11 = list;
                if (wireType == 2) {
                    if ((typeAndOffset & 536870912) == 0) {
                        return ArrayDecoders.decodeStringList(tag, data, position, limit, list11, registers);
                    }
                    return ArrayDecoders.decodeStringListRequireUtf8(tag, data, position, limit, list11, registers);
                }
                return position;
            case 27:
                Internal.ProtobufList<?> list12 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodeMessageList(getMessageFieldSchema(bufferPosition), tag, data, position, limit, list12, registers);
                }
                return position;
            case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                Internal.ProtobufList<?> list13 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodeBytesList(tag, data, position, limit, list13, registers);
                }
                return position;
            case 30:
            case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                Internal.ProtobufList<?> list14 = list;
                if (wireType == 2) {
                    position2 = ArrayDecoders.decodePackedVarint32List(data, position, list14, registers);
                } else if (wireType == 0) {
                    position2 = ArrayDecoders.decodeVarint32List(tag, data, position, limit, list14, registers);
                } else {
                    return position;
                }
                UnknownFieldSetLite unknownFields = ((GeneratedMessageLite) t).unknownFields;
                if (unknownFields == UnknownFieldSetLite.getDefaultInstance()) {
                    unknownFields = null;
                }
                UnknownFieldSetLite unknownFields2 = (UnknownFieldSetLite) SchemaUtil.filterUnknownEnumList(number, (List<Integer>) list14, getEnumFieldVerifier(bufferPosition), unknownFields, (UnknownFieldSchema<UT, UnknownFieldSetLite>) this.unknownFieldSchema);
                if (unknownFields2 == null) {
                    return position2;
                }
                ((GeneratedMessageLite) t).unknownFields = unknownFields2;
                return position2;
            case 33:
            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                Internal.ProtobufList<?> list15 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedSInt32List(data, position, list15, registers);
                }
                if (wireType == 0) {
                    return ArrayDecoders.decodeSInt32List(tag, data, position, limit, list15, registers);
                }
                return position;
            case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
            case 48:
                Internal.ProtobufList<?> list16 = list;
                if (wireType == 2) {
                    return ArrayDecoders.decodePackedSInt64List(data, position, list16, registers);
                }
                if (wireType == 0) {
                    return ArrayDecoders.decodeSInt64List(tag, data, position, limit, list16, registers);
                }
                return position;
            case 49:
                if (wireType == 3) {
                    return ArrayDecoders.decodeGroupList(getMessageFieldSchema(bufferPosition), tag, data, position, limit, list, registers);
                }
                return position;
            default:
                return position;
        }
    }

    private <K, V> int parseMapField(T message, byte[] data, int position, int limit, int bufferPosition, long fieldOffset, ArrayDecoders.Registers registers) throws IOException {
        Object mapField;
        Unsafe unsafe = UNSAFE;
        Object mapDefaultEntry = getMapFieldDefaultEntry(bufferPosition);
        Object mapField2 = unsafe.getObject(message, fieldOffset);
        if (!this.mapFieldSchema.isImmutable(mapField2)) {
            mapField = mapField2;
        } else {
            Object mapField3 = this.mapFieldSchema.newMapField(mapDefaultEntry);
            this.mapFieldSchema.mergeFrom(mapField3, mapField2);
            unsafe.putObject(message, fieldOffset, mapField3);
            mapField = mapField3;
        }
        return decodeMapEntry(data, position, limit, this.mapFieldSchema.forMapMetadata(mapDefaultEntry), this.mapFieldSchema.forMutableMapData(mapField), registers);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0025. Please report as an issue. */
    private int parseOneofField(T message, byte[] data, int position, int limit, int tag, int number, int wireType, int typeAndOffset, int fieldType, long fieldOffset, int bufferPosition, ArrayDecoders.Registers registers) throws IOException {
        int position2;
        Unsafe unsafe;
        Unsafe unsafe2 = UNSAFE;
        long oneofCaseOffset = this.buffer[bufferPosition + 2] & OFFSET_MASK;
        Object obj = null;
        switch (fieldType) {
            case ONEOF_TYPE_OFFSET /* 51 */:
                position2 = position;
                if (wireType == 1) {
                    unsafe2.putObject(message, fieldOffset, Double.valueOf(ArrayDecoders.decodeDouble(data, position)));
                    int position3 = position2 + 8;
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position3;
                }
                return position2;
            case 52:
                position2 = position;
                if (wireType == 5) {
                    unsafe2.putObject(message, fieldOffset, Float.valueOf(ArrayDecoders.decodeFloat(data, position)));
                    int position4 = position2 + 4;
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position4;
                }
                return position2;
            case 53:
            case 54:
                position2 = position;
                if (wireType == 0) {
                    int position5 = ArrayDecoders.decodeVarint64(data, position2, registers);
                    unsafe2.putObject(message, fieldOffset, Long.valueOf(registers.long1));
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position5;
                }
                return position2;
            case 55:
            case 62:
                position2 = position;
                if (wireType == 0) {
                    int position6 = ArrayDecoders.decodeVarint32(data, position2, registers);
                    unsafe2.putObject(message, fieldOffset, Integer.valueOf(registers.int1));
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position6;
                }
                return position2;
            case 56:
            case 65:
                position2 = position;
                if (wireType == 1) {
                    unsafe2.putObject(message, fieldOffset, Long.valueOf(ArrayDecoders.decodeFixed64(data, position)));
                    int position7 = position2 + 8;
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position7;
                }
                return position2;
            case 57:
            case 64:
                position2 = position;
                if (wireType == 5) {
                    unsafe2.putObject(message, fieldOffset, Integer.valueOf(ArrayDecoders.decodeFixed32(data, position)));
                    int position8 = position2 + 4;
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position8;
                }
                return position2;
            case 58:
                position2 = position;
                if (wireType == 0) {
                    int position9 = ArrayDecoders.decodeVarint64(data, position2, registers);
                    unsafe2.putObject(message, fieldOffset, Boolean.valueOf(registers.long1 != 0));
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position9;
                }
                return position2;
            case 59:
                position2 = position;
                if (wireType == 2) {
                    int position10 = ArrayDecoders.decodeVarint32(data, position2, registers);
                    int length = registers.int1;
                    if (length == 0) {
                        unsafe2.putObject(message, fieldOffset, "");
                    } else {
                        if ((typeAndOffset & 536870912) != 0 && !Utf8.isValidUtf8(data, position10, position10 + length)) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        String value = new String(data, position10, length, Internal.UTF_8);
                        unsafe2.putObject(message, fieldOffset, value);
                        position10 += length;
                    }
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position10;
                }
                return position2;
            case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                position2 = position;
                if (wireType == 2) {
                    int position11 = ArrayDecoders.decodeMessageField(getMessageFieldSchema(bufferPosition), data, position2, limit, registers);
                    if (unsafe2.getInt(message, oneofCaseOffset) == number) {
                        obj = unsafe2.getObject(message, fieldOffset);
                    }
                    Object oldValue = obj;
                    if (oldValue == null) {
                        unsafe2.putObject(message, fieldOffset, registers.object1);
                    } else {
                        unsafe2.putObject(message, fieldOffset, Internal.mergeMessage(oldValue, registers.object1));
                    }
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position11;
                }
                return position2;
            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                position2 = position;
                if (wireType == 2) {
                    int position12 = ArrayDecoders.decodeBytes(data, position2, registers);
                    unsafe2.putObject(message, fieldOffset, registers.object1);
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position12;
                }
                return position2;
            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                position2 = position;
                if (wireType == 0) {
                    int position13 = ArrayDecoders.decodeVarint32(data, position2, registers);
                    int enumValue = registers.int1;
                    Internal.EnumVerifier enumVerifier = getEnumFieldVerifier(bufferPosition);
                    if (enumVerifier == null) {
                        unsafe = unsafe2;
                    } else if (enumVerifier.isInRange(enumValue)) {
                        unsafe = unsafe2;
                    } else {
                        unsafe = unsafe2;
                        getMutableUnknownFields(message).storeField(tag, Long.valueOf(enumValue));
                        return position13;
                    }
                    unsafe.putObject(message, fieldOffset, Integer.valueOf(enumValue));
                    unsafe.putInt(message, oneofCaseOffset, number);
                    return position13;
                }
                return position2;
            case 66:
                position2 = position;
                if (wireType == 0) {
                    int position14 = ArrayDecoders.decodeVarint32(data, position2, registers);
                    unsafe2.putObject(message, fieldOffset, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1)));
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position14;
                }
                return position2;
            case 67:
                if (wireType == 0) {
                    int position15 = ArrayDecoders.decodeVarint64(data, position, registers);
                    unsafe2.putObject(message, fieldOffset, Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1)));
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position15;
                }
                position2 = position;
                return position2;
            case 68:
                if (wireType == 3) {
                    int endTag = (tag & (-8)) | 4;
                    int position16 = ArrayDecoders.decodeGroupField(getMessageFieldSchema(bufferPosition), data, position, limit, endTag, registers);
                    if (unsafe2.getInt(message, oneofCaseOffset) == number) {
                        obj = unsafe2.getObject(message, fieldOffset);
                    }
                    Object oldValue2 = obj;
                    if (oldValue2 == null) {
                        unsafe2.putObject(message, fieldOffset, registers.object1);
                    } else {
                        unsafe2.putObject(message, fieldOffset, Internal.mergeMessage(oldValue2, registers.object1));
                    }
                    unsafe2.putInt(message, oneofCaseOffset, number);
                    return position16;
                }
                position2 = position;
                return position2;
            default:
                position2 = position;
                return position2;
        }
    }

    private Schema getMessageFieldSchema(int pos) {
        int index = (pos / 3) * 2;
        Schema schema = (Schema) this.objects[index];
        if (schema != null) {
            return schema;
        }
        Schema schema2 = Protobuf.getInstance().schemaFor((Class) this.objects[index + 1]);
        this.objects[index] = schema2;
        return schema2;
    }

    private Object getMapFieldDefaultEntry(int pos) {
        return this.objects[(pos / 3) * 2];
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int pos) {
        return (Internal.EnumVerifier) this.objects[((pos / 3) * 2) + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:111:0x0092. Please report as an issue. */
    public int parseProto2Message(T message, byte[] data, int position, int limit, int endGroup, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe;
        int i;
        MessageSchema<T> messageSchema;
        T t;
        int tag;
        int position2;
        int pos;
        int tag2;
        int pos2;
        int position3;
        int currentPresenceField;
        ArrayDecoders.Registers registers2;
        int position4;
        int wireType;
        int currentPresenceFieldOffset;
        int currentPresenceFieldOffset2;
        int tag3;
        Unsafe unsafe2;
        MessageSchema<T> messageSchema2 = this;
        T t2 = message;
        byte[] bArr = data;
        int wireType2 = limit;
        int i2 = endGroup;
        ArrayDecoders.Registers registers3 = registers;
        Unsafe unsafe3 = UNSAFE;
        int tag4 = 0;
        int oldNumber = -1;
        int pos3 = 0;
        int currentPresenceFieldOffset3 = -1;
        int currentPresenceField2 = 0;
        int position5 = position;
        while (true) {
            if (position5 < wireType2) {
                int position6 = position5 + 1;
                int tag5 = bArr[position5];
                if (tag5 >= 0) {
                    tag = tag5;
                    position2 = position6;
                } else {
                    int position7 = ArrayDecoders.decodeVarint32(tag5, bArr, position6, registers3);
                    int tag6 = registers3.int1;
                    tag = tag6;
                    position2 = position7;
                }
                int position8 = tag >>> 3;
                int wireType3 = tag & 7;
                if (position8 > oldNumber) {
                    pos = messageSchema2.positionForFieldNumber(position8, pos3 / 3);
                } else {
                    int pos4 = messageSchema2.positionForFieldNumber(position8);
                    pos = pos4;
                }
                if (pos == -1) {
                    tag2 = tag;
                    pos2 = 0;
                    position3 = position2;
                    currentPresenceField = currentPresenceField2;
                    unsafe = unsafe3;
                } else {
                    int typeAndOffset = messageSchema2.buffer[pos + 1];
                    int fieldType = type(typeAndOffset);
                    long fieldOffset = offset(typeAndOffset);
                    int tag7 = tag;
                    if (fieldType <= 17) {
                        int presenceMaskAndOffset = messageSchema2.buffer[pos + 2];
                        int presenceMask = 1 << (presenceMaskAndOffset >>> 20);
                        int presenceFieldOffset = presenceMaskAndOffset & OFFSET_MASK;
                        if (presenceFieldOffset == currentPresenceFieldOffset3) {
                            position4 = position2;
                        } else {
                            if (currentPresenceFieldOffset3 == -1) {
                                position4 = position2;
                            } else {
                                position4 = position2;
                                unsafe3.putInt(t2, currentPresenceFieldOffset3, currentPresenceField2);
                            }
                            currentPresenceFieldOffset3 = presenceFieldOffset;
                            currentPresenceField2 = unsafe3.getInt(t2, presenceFieldOffset);
                        }
                        switch (fieldType) {
                            case 0:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                tag3 = tag7;
                                currentPresenceFieldOffset2 = position4;
                                unsafe2 = unsafe3;
                                bArr = data;
                                ArrayDecoders.Registers registers4 = registers3;
                                if (wireType == 1) {
                                    UnsafeUtil.putDouble(t2, fieldOffset, ArrayDecoders.decodeDouble(bArr, currentPresenceFieldOffset2));
                                    position5 = currentPresenceFieldOffset2 + 8;
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    pos3 = pos;
                                    registers3 = registers4;
                                    oldNumber = position8;
                                    unsafe3 = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag4 = tag3;
                                    i2 = endGroup;
                                } else {
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                }
                            case 1:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                tag3 = tag7;
                                currentPresenceFieldOffset2 = position4;
                                unsafe2 = unsafe3;
                                bArr = data;
                                ArrayDecoders.Registers registers5 = registers3;
                                if (wireType == 5) {
                                    UnsafeUtil.putFloat(t2, fieldOffset, ArrayDecoders.decodeFloat(bArr, currentPresenceFieldOffset2));
                                    position5 = currentPresenceFieldOffset2 + 4;
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    pos3 = pos;
                                    registers3 = registers5;
                                    oldNumber = position8;
                                    unsafe3 = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag4 = tag3;
                                    i2 = endGroup;
                                } else {
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                }
                            case 2:
                            case 3:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                bArr = data;
                                currentPresenceFieldOffset2 = position4;
                                ArrayDecoders.Registers registers6 = registers3;
                                if (wireType != 0) {
                                    tag3 = tag7;
                                    unsafe2 = unsafe3;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    int position9 = ArrayDecoders.decodeVarint64(bArr, currentPresenceFieldOffset2, registers6);
                                    unsafe3.putLong(message, fieldOffset, registers6.long1);
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    pos3 = pos;
                                    position5 = position9;
                                    registers3 = registers6;
                                    oldNumber = position8;
                                    unsafe3 = unsafe3;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag4 = tag7;
                                    i2 = endGroup;
                                }
                            case 4:
                            case 11:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                bArr = data;
                                currentPresenceFieldOffset2 = position4;
                                ArrayDecoders.Registers registers7 = registers3;
                                if (wireType == 0) {
                                    position5 = ArrayDecoders.decodeVarint32(bArr, currentPresenceFieldOffset2, registers7);
                                    unsafe3.putInt(t2, fieldOffset, registers7.int1);
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    pos3 = pos;
                                    tag4 = tag7;
                                    registers3 = registers7;
                                    oldNumber = position8;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    i2 = endGroup;
                                } else {
                                    tag3 = tag7;
                                    unsafe2 = unsafe3;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                }
                            case 5:
                            case 14:
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                bArr = data;
                                ArrayDecoders.Registers registers8 = registers3;
                                if (wireType3 != 1) {
                                    wireType = wireType3;
                                    tag3 = tag7;
                                    unsafe2 = unsafe3;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    unsafe3.putLong(message, fieldOffset, ArrayDecoders.decodeFixed64(bArr, currentPresenceFieldOffset2));
                                    position5 = currentPresenceFieldOffset2 + 8;
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    pos3 = pos;
                                    tag4 = tag7;
                                    registers3 = registers8;
                                    oldNumber = position8;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    i2 = endGroup;
                                }
                            case 6:
                            case 13:
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                bArr = data;
                                ArrayDecoders.Registers registers9 = registers3;
                                if (wireType3 != 5) {
                                    wireType = wireType3;
                                    unsafe2 = unsafe3;
                                    tag3 = tag7;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    unsafe3.putInt(t2, fieldOffset, ArrayDecoders.decodeFixed32(bArr, currentPresenceFieldOffset2));
                                    position5 = currentPresenceFieldOffset2 + 4;
                                    currentPresenceField2 |= presenceMask;
                                    pos3 = pos;
                                    tag4 = tag7;
                                    registers3 = registers9;
                                    oldNumber = position8;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    i2 = endGroup;
                                }
                            case 7:
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                bArr = data;
                                ArrayDecoders.Registers registers10 = registers3;
                                if (wireType3 != 0) {
                                    wireType = wireType3;
                                    unsafe2 = unsafe3;
                                    tag3 = tag7;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    int position10 = ArrayDecoders.decodeVarint64(bArr, currentPresenceFieldOffset2, registers10);
                                    UnsafeUtil.putBoolean(t2, fieldOffset, registers10.long1 != 0);
                                    currentPresenceField2 |= presenceMask;
                                    position5 = position10;
                                    pos3 = pos;
                                    tag4 = tag7;
                                    registers3 = registers10;
                                    oldNumber = position8;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    i2 = endGroup;
                                }
                            case 8:
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                bArr = data;
                                ArrayDecoders.Registers registers11 = registers3;
                                if (wireType3 != 2) {
                                    wireType = wireType3;
                                    tag3 = tag7;
                                    unsafe2 = unsafe3;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    if ((536870912 & typeAndOffset) == 0) {
                                        position5 = ArrayDecoders.decodeString(bArr, currentPresenceFieldOffset2, registers11);
                                    } else {
                                        position5 = ArrayDecoders.decodeStringRequireUtf8(bArr, currentPresenceFieldOffset2, registers11);
                                    }
                                    unsafe3.putObject(t2, fieldOffset, registers11.object1);
                                    currentPresenceField2 |= presenceMask;
                                    pos3 = pos;
                                    tag4 = tag7;
                                    registers3 = registers11;
                                    oldNumber = position8;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    i2 = endGroup;
                                }
                            case 9:
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                bArr = data;
                                ArrayDecoders.Registers registers12 = registers3;
                                if (wireType3 != 2) {
                                    wireType = wireType3;
                                    unsafe2 = unsafe3;
                                    tag3 = tag7;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    wireType2 = limit;
                                    position5 = ArrayDecoders.decodeMessageField(messageSchema2.getMessageFieldSchema(pos), bArr, currentPresenceFieldOffset2, wireType2, registers12);
                                    if ((currentPresenceField2 & presenceMask) == 0) {
                                        unsafe3.putObject(t2, fieldOffset, registers12.object1);
                                    } else {
                                        unsafe3.putObject(t2, fieldOffset, Internal.mergeMessage(unsafe3.getObject(t2, fieldOffset), registers12.object1));
                                    }
                                    currentPresenceField2 |= presenceMask;
                                    pos3 = pos;
                                    tag4 = tag7;
                                    registers3 = registers12;
                                    oldNumber = position8;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    i2 = endGroup;
                                }
                            case 10:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                bArr = data;
                                if (wireType == 2) {
                                    position5 = ArrayDecoders.decodeBytes(bArr, currentPresenceFieldOffset2, registers);
                                    unsafe3.putObject(t2, fieldOffset, registers.object1);
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    pos3 = pos;
                                    tag4 = tag7;
                                    registers3 = registers;
                                    oldNumber = position8;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    i2 = endGroup;
                                } else {
                                    unsafe2 = unsafe3;
                                    tag3 = tag7;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                }
                            case 12:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                bArr = data;
                                if (wireType != 0) {
                                    unsafe2 = unsafe3;
                                    tag3 = tag7;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    position5 = ArrayDecoders.decodeVarint32(bArr, currentPresenceFieldOffset2, registers3);
                                    int enumValue = registers3.int1;
                                    Internal.EnumVerifier enumVerifier = messageSchema2.getEnumFieldVerifier(pos);
                                    if (enumVerifier == null || enumVerifier.isInRange(enumValue)) {
                                        unsafe3.putInt(t2, fieldOffset, enumValue);
                                        currentPresenceField2 |= presenceMask;
                                        wireType2 = limit;
                                        i2 = endGroup;
                                        pos3 = pos;
                                        tag4 = tag7;
                                        oldNumber = position8;
                                        currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                        registers3 = registers;
                                    } else {
                                        getMutableUnknownFields(message).storeField(tag7, Long.valueOf(enumValue));
                                        wireType2 = limit;
                                        i2 = endGroup;
                                        pos3 = pos;
                                        tag4 = tag7;
                                        oldNumber = position8;
                                        currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                        registers3 = registers;
                                    }
                                }
                                break;
                            case 15:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                bArr = data;
                                currentPresenceFieldOffset2 = position4;
                                if (wireType == 0) {
                                    position5 = ArrayDecoders.decodeVarint32(bArr, currentPresenceFieldOffset2, registers3);
                                    unsafe3.putInt(t2, fieldOffset, CodedInputStream.decodeZigZag32(registers3.int1));
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    i2 = endGroup;
                                    pos3 = pos;
                                    oldNumber = position8;
                                    tag4 = tag7;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                } else {
                                    tag3 = tag7;
                                    unsafe2 = unsafe3;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                }
                            case 16:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                currentPresenceFieldOffset2 = position4;
                                if (wireType == 0) {
                                    bArr = data;
                                    int position11 = ArrayDecoders.decodeVarint64(bArr, currentPresenceFieldOffset2, registers3);
                                    unsafe3.putLong(message, fieldOffset, CodedInputStream.decodeZigZag64(registers3.long1));
                                    currentPresenceField2 |= presenceMask;
                                    wireType2 = limit;
                                    i2 = endGroup;
                                    pos3 = pos;
                                    position5 = position11;
                                    oldNumber = position8;
                                    tag4 = tag7;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                } else {
                                    tag3 = tag7;
                                    unsafe2 = unsafe3;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                }
                            case 17:
                                if (wireType3 != 3) {
                                    wireType = wireType3;
                                    currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                    currentPresenceFieldOffset2 = position4;
                                    tag3 = tag7;
                                    unsafe2 = unsafe3;
                                    pos2 = pos;
                                    currentPresenceField = currentPresenceField2;
                                    position3 = currentPresenceFieldOffset2;
                                    unsafe = unsafe2;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                    tag2 = tag3;
                                    break;
                                } else {
                                    int endTag = (position8 << 3) | 4;
                                    int currentPresenceFieldOffset4 = currentPresenceFieldOffset3;
                                    position5 = ArrayDecoders.decodeGroupField(messageSchema2.getMessageFieldSchema(pos), data, position4, limit, endTag, registers);
                                    if ((currentPresenceField2 & presenceMask) == 0) {
                                        unsafe3.putObject(t2, fieldOffset, registers3.object1);
                                    } else {
                                        unsafe3.putObject(t2, fieldOffset, Internal.mergeMessage(unsafe3.getObject(t2, fieldOffset), registers3.object1));
                                    }
                                    currentPresenceField2 |= presenceMask;
                                    bArr = data;
                                    wireType2 = limit;
                                    i2 = endGroup;
                                    pos3 = pos;
                                    oldNumber = position8;
                                    tag4 = tag7;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset4;
                                }
                            default:
                                wireType = wireType3;
                                currentPresenceFieldOffset = currentPresenceFieldOffset3;
                                tag3 = tag7;
                                currentPresenceFieldOffset2 = position4;
                                unsafe2 = unsafe3;
                                pos2 = pos;
                                currentPresenceField = currentPresenceField2;
                                position3 = currentPresenceFieldOffset2;
                                unsafe = unsafe2;
                                currentPresenceFieldOffset3 = currentPresenceFieldOffset;
                                tag2 = tag3;
                                break;
                        }
                    } else {
                        int currentPresenceFieldOffset5 = currentPresenceFieldOffset3;
                        int currentPresenceFieldOffset6 = position2;
                        Unsafe unsafe4 = unsafe3;
                        bArr = data;
                        ArrayDecoders.Registers registers13 = registers3;
                        if (fieldType == 27) {
                            if (wireType3 != 2) {
                                pos2 = pos;
                                currentPresenceField = currentPresenceField2;
                                position3 = currentPresenceFieldOffset6;
                                unsafe = unsafe4;
                                tag2 = tag7;
                                currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                            } else {
                                Internal.ProtobufList<?> list = (Internal.ProtobufList) unsafe4.getObject(t2, fieldOffset);
                                if (!list.isModifiable()) {
                                    int size = list.size();
                                    list = list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                    unsafe4.putObject(t2, fieldOffset, list);
                                }
                                position5 = ArrayDecoders.decodeMessageList(messageSchema2.getMessageFieldSchema(pos), tag7, data, currentPresenceFieldOffset6, limit, list, registers);
                                wireType2 = limit;
                                registers3 = registers13;
                                oldNumber = position8;
                                unsafe3 = unsafe4;
                                pos3 = pos;
                                currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                tag4 = tag7;
                                i2 = endGroup;
                            }
                        } else {
                            pos2 = pos;
                            if (fieldType <= 49) {
                                currentPresenceField = currentPresenceField2;
                                unsafe = unsafe4;
                                tag2 = tag7;
                                position5 = parseRepeatedField(message, data, currentPresenceFieldOffset6, limit, tag7, position8, wireType3, pos2, typeAndOffset, fieldType, fieldOffset, registers);
                                if (position5 != currentPresenceFieldOffset6) {
                                    messageSchema2 = this;
                                    t2 = message;
                                    bArr = data;
                                    wireType2 = limit;
                                    i2 = endGroup;
                                    registers3 = registers;
                                    oldNumber = position8;
                                    tag4 = tag2;
                                    pos3 = pos2;
                                    currentPresenceField2 = currentPresenceField;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                    unsafe3 = unsafe;
                                } else {
                                    position3 = position5;
                                    currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                }
                            } else {
                                currentPresenceField = currentPresenceField2;
                                position3 = currentPresenceFieldOffset6;
                                unsafe = unsafe4;
                                tag2 = tag7;
                                if (fieldType == 50) {
                                    if (wireType3 == 2) {
                                        position5 = parseMapField(message, data, position3, limit, pos2, fieldOffset, registers);
                                        if (position5 != position3) {
                                            messageSchema2 = this;
                                            t2 = message;
                                            bArr = data;
                                            wireType2 = limit;
                                            i2 = endGroup;
                                            registers3 = registers;
                                            oldNumber = position8;
                                            tag4 = tag2;
                                            pos3 = pos2;
                                            currentPresenceField2 = currentPresenceField;
                                            currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                            unsafe3 = unsafe;
                                        } else {
                                            position3 = position5;
                                            currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                        }
                                    } else {
                                        currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                    }
                                } else {
                                    position5 = parseOneofField(message, data, position3, limit, tag2, position8, wireType3, typeAndOffset, fieldType, fieldOffset, pos2, registers);
                                    if (position5 == position3) {
                                        position3 = position5;
                                        currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                    } else {
                                        messageSchema2 = this;
                                        t2 = message;
                                        bArr = data;
                                        wireType2 = limit;
                                        i2 = endGroup;
                                        registers3 = registers;
                                        oldNumber = position8;
                                        tag4 = tag2;
                                        pos3 = pos2;
                                        currentPresenceField2 = currentPresenceField;
                                        currentPresenceFieldOffset3 = currentPresenceFieldOffset5;
                                        unsafe3 = unsafe;
                                    }
                                }
                            }
                        }
                    }
                }
                i = endGroup;
                int tag8 = tag2;
                if (tag8 == i && i != 0) {
                    messageSchema = this;
                    tag4 = tag8;
                    currentPresenceField2 = currentPresenceField;
                    position5 = position3;
                } else {
                    if (!this.hasExtensions) {
                        registers2 = registers;
                    } else {
                        registers2 = registers;
                        if (registers2.extensionRegistry != ExtensionRegistryLite.getEmptyRegistry()) {
                            position5 = ArrayDecoders.decodeExtensionOrUnknownField(tag8, data, position3, limit, message, this.defaultInstance, this.unknownFieldSchema, registers);
                            t2 = message;
                            wireType2 = limit;
                            tag4 = tag8;
                            messageSchema2 = this;
                            oldNumber = position8;
                            pos3 = pos2;
                            currentPresenceField2 = currentPresenceField;
                            unsafe3 = unsafe;
                            i2 = i;
                            registers3 = registers2;
                            bArr = data;
                        }
                    }
                    position5 = ArrayDecoders.decodeUnknownField(tag8, data, position3, limit, getMutableUnknownFields(message), registers);
                    t2 = message;
                    wireType2 = limit;
                    tag4 = tag8;
                    messageSchema2 = this;
                    oldNumber = position8;
                    pos3 = pos2;
                    currentPresenceField2 = currentPresenceField;
                    unsafe3 = unsafe;
                    i2 = i;
                    registers3 = registers2;
                    bArr = data;
                }
            } else {
                unsafe = unsafe3;
                i = i2;
                messageSchema = messageSchema2;
            }
        }
        if (currentPresenceFieldOffset3 == -1) {
            t = message;
        } else {
            t = message;
            unsafe.putInt(t, currentPresenceFieldOffset3, currentPresenceField2);
        }
        UnknownFieldSetLite unknownFields = null;
        for (int i3 = messageSchema.checkInitializedCount; i3 < messageSchema.repeatedFieldOffsetStart; i3++) {
            unknownFields = (UnknownFieldSetLite) messageSchema.filterMapUnknownEnumValues(t, messageSchema.intArray[i3], unknownFields, messageSchema.unknownFieldSchema);
        }
        if (unknownFields != null) {
            messageSchema.unknownFieldSchema.setBuilderToMessage(t, unknownFields);
        }
        if (i == 0) {
            if (position5 != limit) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (position5 > limit || tag4 != i) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return position5;
    }

    private int parseProto3Message(T message, byte[] data, int position, int limit, ArrayDecoders.Registers registers) throws IOException {
        int tag;
        int position2;
        int pos;
        int pos2;
        Unsafe unsafe;
        int wireType;
        int position3;
        MessageSchema<T> messageSchema = this;
        T t = message;
        byte[] bArr = data;
        int i = limit;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe2 = UNSAFE;
        int pos3 = 0;
        int oldNumber = -1;
        int position4 = position;
        while (position4 < i) {
            int position5 = position4 + 1;
            int tag2 = bArr[position4];
            if (tag2 >= 0) {
                tag = tag2;
                position2 = position5;
            } else {
                int position6 = ArrayDecoders.decodeVarint32(tag2, bArr, position5, registers2);
                tag = registers2.int1;
                position2 = position6;
            }
            int number = tag >>> 3;
            int wireType2 = tag & 7;
            if (number > oldNumber) {
                pos = messageSchema.positionForFieldNumber(number, pos3 / 3);
            } else {
                int pos4 = messageSchema.positionForFieldNumber(number);
                pos = pos4;
            }
            if (pos == -1) {
                pos2 = 0;
                unsafe = unsafe2;
            } else {
                int typeAndOffset = messageSchema.buffer[pos + 1];
                int fieldType = type(typeAndOffset);
                long fieldOffset = offset(typeAndOffset);
                if (fieldType <= 17) {
                    switch (fieldType) {
                        case 0:
                            Unsafe unsafe3 = unsafe2;
                            if (wireType2 != 1) {
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe3;
                                pos2 = pos;
                                break;
                            } else {
                                UnsafeUtil.putDouble(t, fieldOffset, ArrayDecoders.decodeDouble(bArr, position2));
                                position4 = position2 + 8;
                                pos3 = pos;
                                oldNumber = number;
                                unsafe2 = unsafe3;
                                break;
                            }
                        case 1:
                            Unsafe unsafe4 = unsafe2;
                            if (wireType2 != 5) {
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe4;
                                pos2 = pos;
                                break;
                            } else {
                                UnsafeUtil.putFloat(t, fieldOffset, ArrayDecoders.decodeFloat(bArr, position2));
                                position4 = position2 + 4;
                                pos3 = pos;
                                oldNumber = number;
                                unsafe2 = unsafe4;
                                break;
                            }
                        case 2:
                        case 3:
                            if (wireType2 != 0) {
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                pos2 = pos;
                                break;
                            } else {
                                int position7 = ArrayDecoders.decodeVarint64(bArr, position2, registers2);
                                unsafe2.putLong(message, fieldOffset, registers2.long1);
                                pos3 = pos;
                                position4 = position7;
                                oldNumber = number;
                                unsafe2 = unsafe2;
                                break;
                            }
                        case 4:
                        case 11:
                            if (wireType2 != 0) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                position4 = ArrayDecoders.decodeVarint32(bArr, position2, registers2);
                                unsafe2.putInt(t, fieldOffset, registers2.int1);
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 5:
                        case 14:
                            if (wireType2 != 1) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                unsafe2.putLong(message, fieldOffset, ArrayDecoders.decodeFixed64(bArr, position2));
                                position4 = position2 + 8;
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 6:
                        case 13:
                            if (wireType2 != 5) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                unsafe2.putInt(t, fieldOffset, ArrayDecoders.decodeFixed32(bArr, position2));
                                position4 = position2 + 4;
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 7:
                            if (wireType2 != 0) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                int position8 = ArrayDecoders.decodeVarint64(bArr, position2, registers2);
                                UnsafeUtil.putBoolean(t, fieldOffset, registers2.long1 != 0);
                                position4 = position8;
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 8:
                            if (wireType2 != 2) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                if ((536870912 & typeAndOffset) == 0) {
                                    position4 = ArrayDecoders.decodeString(bArr, position2, registers2);
                                } else {
                                    position4 = ArrayDecoders.decodeStringRequireUtf8(bArr, position2, registers2);
                                }
                                unsafe2.putObject(t, fieldOffset, registers2.object1);
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 9:
                            if (wireType2 != 2) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                position4 = ArrayDecoders.decodeMessageField(messageSchema.getMessageFieldSchema(pos), bArr, position2, i, registers2);
                                Object oldValue = unsafe2.getObject(t, fieldOffset);
                                if (oldValue == null) {
                                    unsafe2.putObject(t, fieldOffset, registers2.object1);
                                } else {
                                    unsafe2.putObject(t, fieldOffset, Internal.mergeMessage(oldValue, registers2.object1));
                                }
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 10:
                            if (wireType2 != 2) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                position4 = ArrayDecoders.decodeBytes(bArr, position2, registers2);
                                unsafe2.putObject(t, fieldOffset, registers2.object1);
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 12:
                            if (wireType2 != 0) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                position4 = ArrayDecoders.decodeVarint32(bArr, position2, registers2);
                                unsafe2.putInt(t, fieldOffset, registers2.int1);
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 15:
                            if (wireType2 != 0) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                position4 = ArrayDecoders.decodeVarint32(bArr, position2, registers2);
                                unsafe2.putInt(t, fieldOffset, CodedInputStream.decodeZigZag32(registers2.int1));
                                pos3 = pos;
                                oldNumber = number;
                                break;
                            }
                        case 16:
                            if (wireType2 != 0) {
                                pos2 = pos;
                                wireType = wireType2;
                                position3 = position2;
                                unsafe = unsafe2;
                                break;
                            } else {
                                int position9 = ArrayDecoders.decodeVarint64(bArr, position2, registers2);
                                unsafe2.putLong(message, fieldOffset, CodedInputStream.decodeZigZag64(registers2.long1));
                                pos3 = pos;
                                position4 = position9;
                                oldNumber = number;
                                break;
                            }
                        default:
                            wireType = wireType2;
                            position3 = position2;
                            unsafe = unsafe2;
                            pos2 = pos;
                            break;
                    }
                    position2 = position3;
                } else {
                    Unsafe unsafe5 = unsafe2;
                    if (fieldType == 27) {
                        if (wireType2 == 2) {
                            Internal.ProtobufList<?> list = (Internal.ProtobufList) unsafe5.getObject(t, fieldOffset);
                            if (!list.isModifiable()) {
                                int size = list.size();
                                list = list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                unsafe5.putObject(t, fieldOffset, list);
                            }
                            position4 = ArrayDecoders.decodeMessageList(messageSchema.getMessageFieldSchema(pos), tag, data, position2, limit, list, registers);
                            messageSchema = this;
                            oldNumber = number;
                            unsafe2 = unsafe5;
                            pos3 = pos;
                        } else {
                            pos2 = pos;
                            wireType = wireType2;
                            unsafe = unsafe5;
                            position3 = position2;
                            position2 = position3;
                        }
                    } else {
                        pos2 = pos;
                        if (fieldType > 49) {
                            unsafe = unsafe5;
                            position3 = position2;
                            if (fieldType == 50) {
                                wireType = wireType2;
                                if (wireType == 2) {
                                    position4 = parseMapField(message, data, position3, limit, pos2, fieldOffset, registers);
                                    if (position4 != position3) {
                                        messageSchema = this;
                                        t = message;
                                        bArr = data;
                                        i = limit;
                                        registers2 = registers;
                                        oldNumber = number;
                                        pos3 = pos2;
                                        unsafe2 = unsafe;
                                    } else {
                                        position2 = position4;
                                    }
                                } else {
                                    position2 = position3;
                                }
                            } else {
                                position4 = parseOneofField(message, data, position3, limit, tag, number, wireType2, typeAndOffset, fieldType, fieldOffset, pos2, registers);
                                if (position4 == position3) {
                                    position2 = position4;
                                } else {
                                    messageSchema = this;
                                    t = message;
                                    bArr = data;
                                    i = limit;
                                    registers2 = registers;
                                    oldNumber = number;
                                    pos3 = pos2;
                                    unsafe2 = unsafe;
                                }
                            }
                        } else {
                            int oldPosition = position2;
                            unsafe = unsafe5;
                            position4 = parseRepeatedField(message, data, position2, limit, tag, number, wireType2, pos2, typeAndOffset, fieldType, fieldOffset, registers);
                            if (position4 != oldPosition) {
                                messageSchema = this;
                                t = message;
                                bArr = data;
                                i = limit;
                                registers2 = registers;
                                oldNumber = number;
                                pos3 = pos2;
                                unsafe2 = unsafe;
                            } else {
                                position2 = position4;
                            }
                        }
                    }
                }
            }
            position4 = ArrayDecoders.decodeUnknownField(tag, data, position2, limit, getMutableUnknownFields(message), registers);
            messageSchema = this;
            t = message;
            bArr = data;
            i = limit;
            registers2 = registers;
            oldNumber = number;
            pos3 = pos2;
            unsafe2 = unsafe;
        }
        if (position4 != limit) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return position4;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(T message, byte[] data, int position, int limit, ArrayDecoders.Registers registers) throws IOException {
        if (this.proto3) {
            parseProto3Message(message, data, position, limit, registers);
        } else {
            parseProto2Message(message, data, position, limit, 0, registers);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void makeImmutable(T message) {
        for (int i = this.checkInitializedCount; i < this.repeatedFieldOffsetStart; i++) {
            long offset = offset(typeAndOffsetAt(this.intArray[i]));
            Object mapField = UnsafeUtil.getObject(message, offset);
            if (mapField != null) {
                UnsafeUtil.putObject(message, offset, this.mapFieldSchema.toImmutable(mapField));
            }
        }
        int length = this.intArray.length;
        for (int i2 = this.repeatedFieldOffsetStart; i2 < length; i2++) {
            this.listFieldSchema.makeImmutableListAt(message, this.intArray[i2]);
        }
        this.unknownFieldSchema.makeImmutable(message);
        if (this.hasExtensions) {
            this.extensionSchema.makeImmutable(message);
        }
    }

    private final <K, V> void mergeMap(Object message, int pos, Object mapDefaultEntry, ExtensionRegistryLite extensionRegistry, Reader reader) throws IOException {
        long offset = offset(typeAndOffsetAt(pos));
        Object mapField = UnsafeUtil.getObject(message, offset);
        if (mapField == null) {
            mapField = this.mapFieldSchema.newMapField(mapDefaultEntry);
            UnsafeUtil.putObject(message, offset, mapField);
        } else if (this.mapFieldSchema.isImmutable(mapField)) {
            mapField = this.mapFieldSchema.newMapField(mapDefaultEntry);
            this.mapFieldSchema.mergeFrom(mapField, mapField);
            UnsafeUtil.putObject(message, offset, mapField);
        }
        reader.readMap(this.mapFieldSchema.forMutableMapData(mapField), this.mapFieldSchema.forMapMetadata(mapDefaultEntry), extensionRegistry);
    }

    private final <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        int numberAt = numberAt(i);
        Object object = UnsafeUtil.getObject(obj, offset(typeAndOffsetAt(i)));
        if (object == null) {
            return ub;
        }
        Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i);
        if (enumFieldVerifier == null) {
            return ub;
        }
        return (UB) filterUnknownEnumMap(i, numberAt, this.mapFieldSchema.forMutableMapData(object), enumFieldVerifier, ub, unknownFieldSchema);
    }

    private final <K, V, UT, UB> UB filterUnknownEnumMap(int i, int i2, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        MapEntryLite.Metadata<?, ?> forMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = unknownFieldSchema.newBuilder();
                }
                ByteString.CodedBuilder newCodedBuilder = ByteString.newCodedBuilder(MapEntryLite.computeSerializedSize(forMapMetadata, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.writeTo(newCodedBuilder.getCodedOutput(), forMapMetadata, next.getKey(), next.getValue());
                    unknownFieldSchema.addLengthDelimited(ub, i2, newCodedBuilder.build());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean isInitialized(T message) {
        int currentPresenceFieldOffset = -1;
        int currentPresenceField = 0;
        for (int i = 0; i < this.checkInitializedCount; i++) {
            int pos = this.intArray[i];
            int number = numberAt(pos);
            int typeAndOffset = typeAndOffsetAt(pos);
            int presenceMask = 0;
            if (!this.proto3) {
                int presenceMaskAndOffset = this.buffer[pos + 2];
                int presenceFieldOffset = OFFSET_MASK & presenceMaskAndOffset;
                presenceMask = 1 << (presenceMaskAndOffset >>> 20);
                if (presenceFieldOffset != currentPresenceFieldOffset) {
                    currentPresenceFieldOffset = presenceFieldOffset;
                    currentPresenceField = UNSAFE.getInt(message, presenceFieldOffset);
                }
            }
            if (isRequired(typeAndOffset) && !isFieldPresent(message, pos, currentPresenceField, presenceMask)) {
                return false;
            }
            switch (type(typeAndOffset)) {
                case 9:
                case 17:
                    if (isFieldPresent(message, pos, currentPresenceField, presenceMask) && !isInitialized(message, typeAndOffset, getMessageFieldSchema(pos))) {
                        return false;
                    }
                    break;
                case 27:
                case 49:
                    if (!isListInitialized(message, typeAndOffset, pos)) {
                        return false;
                    }
                    break;
                case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                    if (!isMapInitialized(message, typeAndOffset, pos)) {
                        return false;
                    }
                    break;
                case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                case 68:
                    if (isOneofPresent(message, number, pos) && !isInitialized(message, typeAndOffset, getMessageFieldSchema(pos))) {
                        return false;
                    }
                    break;
            }
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(message).isInitialized();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isInitialized(Object message, int typeAndOffset, Schema schema) {
        Object nested = UnsafeUtil.getObject(message, offset(typeAndOffset));
        return schema.isInitialized(nested);
    }

    private <N> boolean isListInitialized(Object message, int typeAndOffset, int pos) {
        List<N> list = (List) UnsafeUtil.getObject(message, offset(typeAndOffset));
        if (list.isEmpty()) {
            return true;
        }
        Schema schema = getMessageFieldSchema(pos);
        for (int i = 0; i < list.size(); i++) {
            N nested = list.get(i);
            if (!schema.isInitialized(nested)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.datastore.preferences.protobuf.Schema] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    private boolean isMapInitialized(T t, int i, int i2) {
        Map<?, ?> forMapData = this.mapFieldSchema.forMapData(UnsafeUtil.getObject(t, offset(i)));
        if (forMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        ?? r4 = 0;
        for (Object obj : forMapData.values()) {
            r4 = r4;
            if (r4 == 0) {
                r4 = Protobuf.getInstance().schemaFor((Class) obj.getClass());
            }
            if (!r4.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    private void writeString(int fieldNumber, Object value, Writer writer) throws IOException {
        if (value instanceof String) {
            writer.writeString(fieldNumber, (String) value);
        } else {
            writer.writeBytes(fieldNumber, (ByteString) value);
        }
    }

    private void readString(Object message, int typeAndOffset, Reader reader) throws IOException {
        if (isEnforceUtf8(typeAndOffset)) {
            UnsafeUtil.putObject(message, offset(typeAndOffset), reader.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.putObject(message, offset(typeAndOffset), reader.readString());
        } else {
            UnsafeUtil.putObject(message, offset(typeAndOffset), reader.readBytes());
        }
    }

    private void readStringList(Object message, int typeAndOffset, Reader reader) throws IOException {
        if (isEnforceUtf8(typeAndOffset)) {
            reader.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(message, offset(typeAndOffset)));
        } else {
            reader.readStringList(this.listFieldSchema.mutableListAt(message, offset(typeAndOffset)));
        }
    }

    private <E> void readMessageList(Object message, int typeAndOffset, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        long offset = offset(typeAndOffset);
        reader.readMessageList(this.listFieldSchema.mutableListAt(message, offset), schema, extensionRegistry);
    }

    private <E> void readGroupList(Object message, long offset, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        reader.readGroupList(this.listFieldSchema.mutableListAt(message, offset), schema, extensionRegistry);
    }

    private int numberAt(int pos) {
        return this.buffer[pos];
    }

    private int typeAndOffsetAt(int pos) {
        return this.buffer[pos + 1];
    }

    private int presenceMaskAndOffsetAt(int pos) {
        return this.buffer[pos + 2];
    }

    private static int type(int value) {
        return (FIELD_TYPE_MASK & value) >>> 20;
    }

    private static boolean isRequired(int value) {
        return (268435456 & value) != 0;
    }

    private static boolean isEnforceUtf8(int value) {
        return (536870912 & value) != 0;
    }

    private static long offset(int value) {
        return OFFSET_MASK & value;
    }

    private static <T> double doubleAt(T message, long offset) {
        return UnsafeUtil.getDouble(message, offset);
    }

    private static <T> float floatAt(T message, long offset) {
        return UnsafeUtil.getFloat(message, offset);
    }

    private static <T> int intAt(T message, long offset) {
        return UnsafeUtil.getInt(message, offset);
    }

    private static <T> long longAt(T message, long offset) {
        return UnsafeUtil.getLong(message, offset);
    }

    private static <T> boolean booleanAt(T message, long offset) {
        return UnsafeUtil.getBoolean(message, offset);
    }

    private static <T> double oneofDoubleAt(T message, long offset) {
        return ((Double) UnsafeUtil.getObject(message, offset)).doubleValue();
    }

    private static <T> float oneofFloatAt(T message, long offset) {
        return ((Float) UnsafeUtil.getObject(message, offset)).floatValue();
    }

    private static <T> int oneofIntAt(T message, long offset) {
        return ((Integer) UnsafeUtil.getObject(message, offset)).intValue();
    }

    private static <T> long oneofLongAt(T message, long offset) {
        return ((Long) UnsafeUtil.getObject(message, offset)).longValue();
    }

    private static <T> boolean oneofBooleanAt(T message, long offset) {
        return ((Boolean) UnsafeUtil.getObject(message, offset)).booleanValue();
    }

    private boolean arePresentForEquals(T message, T other, int pos) {
        return isFieldPresent(message, pos) == isFieldPresent(other, pos);
    }

    private boolean isFieldPresent(T message, int pos, int presenceField, int presenceMask) {
        if (this.proto3) {
            return isFieldPresent(message, pos);
        }
        return (presenceField & presenceMask) != 0;
    }

    private boolean isFieldPresent(T message, int pos) {
        if (this.proto3) {
            int typeAndOffset = typeAndOffsetAt(pos);
            long offset = offset(typeAndOffset);
            switch (type(typeAndOffset)) {
                case 0:
                    return UnsafeUtil.getDouble(message, offset) != 0.0d;
                case 1:
                    return UnsafeUtil.getFloat(message, offset) != 0.0f;
                case 2:
                    return UnsafeUtil.getLong(message, offset) != 0;
                case 3:
                    return UnsafeUtil.getLong(message, offset) != 0;
                case 4:
                    return UnsafeUtil.getInt(message, offset) != 0;
                case 5:
                    return UnsafeUtil.getLong(message, offset) != 0;
                case 6:
                    return UnsafeUtil.getInt(message, offset) != 0;
                case 7:
                    return UnsafeUtil.getBoolean(message, offset);
                case 8:
                    Object value = UnsafeUtil.getObject(message, offset);
                    if (value instanceof String) {
                        return true ^ ((String) value).isEmpty();
                    }
                    if (value instanceof ByteString) {
                        return true ^ ByteString.EMPTY.equals(value);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return UnsafeUtil.getObject(message, offset) != null;
                case 10:
                    return !ByteString.EMPTY.equals(UnsafeUtil.getObject(message, offset));
                case 11:
                    return UnsafeUtil.getInt(message, offset) != 0;
                case 12:
                    return UnsafeUtil.getInt(message, offset) != 0;
                case 13:
                    return UnsafeUtil.getInt(message, offset) != 0;
                case 14:
                    return UnsafeUtil.getLong(message, offset) != 0;
                case 15:
                    return UnsafeUtil.getInt(message, offset) != 0;
                case 16:
                    return UnsafeUtil.getLong(message, offset) != 0;
                case 17:
                    return UnsafeUtil.getObject(message, offset) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int presenceMaskAndOffset = presenceMaskAndOffsetAt(pos);
        int presenceMask = 1 << (presenceMaskAndOffset >>> 20);
        return (UnsafeUtil.getInt(message, (long) (OFFSET_MASK & presenceMaskAndOffset)) & presenceMask) != 0;
    }

    private void setFieldPresent(T message, int pos) {
        if (this.proto3) {
            return;
        }
        int presenceMaskAndOffset = presenceMaskAndOffsetAt(pos);
        int presenceMask = 1 << (presenceMaskAndOffset >>> 20);
        long presenceFieldOffset = OFFSET_MASK & presenceMaskAndOffset;
        UnsafeUtil.putInt(message, presenceFieldOffset, UnsafeUtil.getInt(message, presenceFieldOffset) | presenceMask);
    }

    private boolean isOneofPresent(T message, int fieldNumber, int pos) {
        int presenceMaskAndOffset = presenceMaskAndOffsetAt(pos);
        return UnsafeUtil.getInt(message, (long) (OFFSET_MASK & presenceMaskAndOffset)) == fieldNumber;
    }

    private boolean isOneofCaseEqual(T message, T other, int pos) {
        int presenceMaskAndOffset = presenceMaskAndOffsetAt(pos);
        return UnsafeUtil.getInt(message, (long) (presenceMaskAndOffset & OFFSET_MASK)) == UnsafeUtil.getInt(other, (long) (OFFSET_MASK & presenceMaskAndOffset));
    }

    private void setOneofPresent(T message, int fieldNumber, int pos) {
        int presenceMaskAndOffset = presenceMaskAndOffsetAt(pos);
        UnsafeUtil.putInt(message, OFFSET_MASK & presenceMaskAndOffset, fieldNumber);
    }

    private int positionForFieldNumber(int number) {
        if (number >= this.minFieldNumber && number <= this.maxFieldNumber) {
            return slowPositionForFieldNumber(number, 0);
        }
        return -1;
    }

    private int positionForFieldNumber(int number, int min) {
        if (number >= this.minFieldNumber && number <= this.maxFieldNumber) {
            return slowPositionForFieldNumber(number, min);
        }
        return -1;
    }

    private int slowPositionForFieldNumber(int number, int min) {
        int max = (this.buffer.length / 3) - 1;
        while (min <= max) {
            int mid = (max + min) >>> 1;
            int pos = mid * 3;
            int midFieldNumber = numberAt(pos);
            if (number == midFieldNumber) {
                return pos;
            }
            if (number < midFieldNumber) {
                max = mid - 1;
            } else {
                min = mid + 1;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSchemaSize() {
        return this.buffer.length * 3;
    }
}
