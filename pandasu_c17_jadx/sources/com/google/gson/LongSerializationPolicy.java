package com.google.gson;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.google.gson.LongSerializationPolicy.1
        @Override // com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long value) {
            if (value == null) {
                return JsonNull.INSTANCE;
            }
            return new JsonPrimitive(value);
        }
    },
    STRING { // from class: com.google.gson.LongSerializationPolicy.2
        @Override // com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long value) {
            if (value == null) {
                return JsonNull.INSTANCE;
            }
            return new JsonPrimitive(value.toString());
        }
    };

    public abstract JsonElement serialize(Long l);
}
