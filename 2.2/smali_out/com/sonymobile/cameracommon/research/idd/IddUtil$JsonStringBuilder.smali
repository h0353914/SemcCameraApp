.class Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
.super Ljava/lang/Object;
.source "IddUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/idd/IddUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonStringBuilder"
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    .line 489
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    const-string v1, "type"

    new-instance v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {v2, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object p1, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    const-string v0, "mode"

    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    # getter for: Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    const-string p1, "launched_by"

    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    # getter for: Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private write(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 535
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 536
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->getMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->write(Landroid/util/JsonWriter;Ljava/util/Map;)V

    goto :goto_24

    .line 538
    :cond_17
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_24
    return-void
.end method

.method private write(Landroid/util/JsonWriter;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 525
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {p0, p1, v1, v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->write(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;)V

    goto :goto_b

    .line 528
    :cond_27
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .registers 4

    .line 505
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 506
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    :try_start_a
    const-string v2, " "

    .line 509
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->write(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 511
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_21
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 515
    :try_start_18
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    return-object p0

    :catchall_1c
    move-exception p0

    :try_start_1d
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20

    .line 519
    :catch_20
    throw p0

    .line 515
    :catch_21
    :try_start_21
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    const-string p0, ""

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
    .registers 5

    .line 495
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {v1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {v1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
