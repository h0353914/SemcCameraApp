.class public final Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LensServiceEventData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;


# instance fields
.field private bitField0_:I

.field private serviceApiVersion_:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->clear()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
    .registers 2

    .line 12
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->_emptyArray:[Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->_emptyArray:[Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    sput-object v1, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->_emptyArray:[Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    .line 18
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 20
    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->_emptyArray:[Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
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

    .line 120
    new-instance v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
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

    .line 114
    new-instance v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
    .registers 2

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    .line 52
    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->serviceApiVersion_:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->cachedSize:I

    return-object p0
.end method

.method public clearServiceApiVersion()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
    .registers 2

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->serviceApiVersion_:I

    .line 35
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
    .registers 3

    .line 61
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .registers 4

    .line 80
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 81
    iget v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 82
    iget v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->serviceApiVersion_:I

    .line 83
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    return v0
.end method

.method public getServiceApiVersion()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->serviceApiVersion_:I

    return v0
.end method

.method public hasServiceApiVersion()Z
    .registers 3

    .line 31
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
    .registers 4
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

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 98
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 104
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->serviceApiVersion_:I

    .line 105
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    goto :goto_0

    :cond_1e
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    move-result-object p1

    return-object p1
.end method

.method public setServiceApiVersion(I)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    .line 40
    iput p1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->serviceApiVersion_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
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

    .line 72
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 73
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->serviceApiVersion_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 75
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
