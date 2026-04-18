package com.google.gson;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
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
