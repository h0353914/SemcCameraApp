.class public final Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;


# instance fields
.field public method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

.field public stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2289
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2290
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .registers 2

    .line 2264
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v0, :cond_15

    .line 2265
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2267
    :try_start_7
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 2268
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 2270
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2272
    :cond_15
    :goto_15
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2441
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2435
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .registers 2

    const-string v0, ""

    .line 2294
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    .line 2295
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    .line 2296
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    const/4 v0, 0x0

    .line 2297
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    .line 2298
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2299
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 6

    .line 2333
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2334
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_18

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2335
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2336
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2338
    :cond_18
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    array-length v1, v1

    if-lez v1, :cond_35

    move v1, v0

    move v0, v2

    .line 2339
    :goto_22
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v4, v3

    if-ge v0, v4, :cond_34

    .line 2340
    aget-object v3, v3, v0

    if-eqz v3, :cond_31

    const/4 v4, 0x2

    .line 2343
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_34
    move v0, v1

    .line 2347
    :cond_35
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-eqz v1, :cond_3f

    const/4 v3, 0x3

    .line 2349
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2351
    :cond_3f
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v1, :cond_58

    array-length v1, v1

    if-lez v1, :cond_58

    .line 2352
    :goto_46
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v3, v1

    if-ge v2, v3, :cond_58

    .line 2353
    aget-object v1, v1, v2

    if-eqz v1, :cond_55

    const/4 v3, 0x4

    .line 2356
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_58
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2368
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_ae

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a6

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_59

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1e

    .line 2373
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2411
    :cond_1e
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2412
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-nez v1, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    array-length v1, v1

    :goto_29
    add-int/2addr v0, v1

    .line 2413
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v1, :cond_33

    .line 2416
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2418
    :cond_33
    :goto_33
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4a

    .line 2419
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    aput-object v2, v0, v1

    .line 2420
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2421
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 2424
    :cond_4a
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    aput-object v2, v0, v1

    .line 2425
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2426
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    goto :goto_0

    .line 2403
    :cond_59
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_64

    .line 2404
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    .line 2406
    :cond_64
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2384
    :cond_6a
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2385
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-nez v1, :cond_74

    move v1, v2

    goto :goto_75

    :cond_74
    array-length v1, v1

    :goto_75
    add-int/2addr v0, v1

    .line 2386
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-eqz v1, :cond_7f

    .line 2389
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2391
    :cond_7f
    :goto_7f
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_96

    .line 2392
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    aput-object v2, v0, v1

    .line 2393
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2394
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 2397
    :cond_96
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    aput-object v2, v0, v1

    .line 2398
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2399
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    goto/16 :goto_0

    .line 2379
    :cond_a6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_ae
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2258
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2306
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2307
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2309
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    array-length v0, v0

    if-lez v0, :cond_2b

    move v0, v1

    .line 2310
    :goto_1b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_2b

    .line 2311
    aget-object v2, v2, v0

    if-eqz v2, :cond_28

    const/4 v3, 0x2

    .line 2313
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 2317
    :cond_2b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_33

    const/4 v2, 0x3

    .line 2318
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2320
    :cond_33
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v0, :cond_4a

    array-length v0, v0

    if-lez v0, :cond_4a

    .line 2321
    :goto_3a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v2, v0

    if-ge v1, v2, :cond_4a

    .line 2322
    aget-object v0, v0, v1

    if-eqz v0, :cond_47

    const/4 v2, 0x4

    .line 2324
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 2328
    :cond_4a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
