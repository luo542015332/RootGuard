.class public final Landroidx/datastore/preferences/protobuf/Struct$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Struct.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/StructOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Struct;",
        "Landroidx/datastore/preferences/protobuf/Struct$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/StructOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 240
    # getter for: Landroidx/datastore/preferences/protobuf/Struct;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Struct;
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Struct;->access$000()Landroidx/datastore/preferences/protobuf/Struct;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Struct$1;)V
    .registers 2
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Struct$1;

    .line 233
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFields()Landroidx/datastore/preferences/protobuf/Struct$Builder;
    .registers 2

    .line 265
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    # invokes: Landroidx/datastore/preferences/protobuf/Struct;->getMutableFieldsMap()Ljava/util/Map;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Struct;->access$100(Landroidx/datastore/preferences/protobuf/Struct;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 267
    return-object p0
.end method

.method public containsFields(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 260
    if-eqz p1, :cond_f

    .line 261
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 260
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .registers 2

    .line 247
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    .line 302
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 301
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsOrDefault(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Value;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 316
    if-eqz p1, :cond_19

    .line 317
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    .line 318
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 319
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Value;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Value;

    goto :goto_18

    :cond_17
    move-object v1, p2

    :goto_18
    return-object v1

    .line 316
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Value;>;"
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getFieldsOrThrow(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Value;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 332
    if-eqz p1, :cond_1d

    .line 333
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    .line 334
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 335
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Value;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 338
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Value;

    return-object v1

    .line 336
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 332
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Value;>;"
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public putAllFields(Ljava/util/Map;)Landroidx/datastore/preferences/protobuf/Struct$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Struct$Builder;"
        }
    .end annotation

    .line 365
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Value;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    # invokes: Landroidx/datastore/preferences/protobuf/Struct;->getMutableFieldsMap()Ljava/util/Map;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Struct;->access$100(Landroidx/datastore/preferences/protobuf/Struct;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 367
    return-object p0
.end method

.method public putFields(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Value;)Landroidx/datastore/preferences/protobuf/Struct$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 350
    if-eqz p1, :cond_19

    .line 351
    if-eqz p2, :cond_13

    .line 352
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    # invokes: Landroidx/datastore/preferences/protobuf/Struct;->getMutableFieldsMap()Ljava/util/Map;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Struct;->access$100(Landroidx/datastore/preferences/protobuf/Struct;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-object p0

    .line 351
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 350
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public removeFields(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Struct$Builder;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 279
    if-eqz p1, :cond_11

    .line 280
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->copyOnWrite()V

    .line 281
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Struct$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    # invokes: Landroidx/datastore/preferences/protobuf/Struct;->getMutableFieldsMap()Ljava/util/Map;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Struct;->access$100(Landroidx/datastore/preferences/protobuf/Struct;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-object p0

    .line 279
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
