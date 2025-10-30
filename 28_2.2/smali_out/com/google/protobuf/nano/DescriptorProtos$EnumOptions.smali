.class public final Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;


# instance fields
.field public allowAlias:Z

.field public deprecated:Z

.field public proto1Name:Ljava/lang/String;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4272
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4273
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
    .registers 2

    .line 4247
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_15

    .line 4248
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4250
    :try_start_7
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 4251
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 4253
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4255
    :cond_15
    :goto_15
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
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

    .line 4395
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
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

    .line 4389
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
    .registers 2

    const-string v0, ""

    .line 4277
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4278
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    .line 4279
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    .line 4280
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, 0x0

    .line 4281
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4282
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 5

    .line 4311
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4312
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 4313
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    const/4 v2, 0x1

    .line 4314
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4316
    :cond_1a
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    .line 4317
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    .line 4318
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4320
    :cond_26
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    if-eqz v1, :cond_32

    const/4 v1, 0x3

    .line 4321
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    .line 4322
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4324
    :cond_32
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-lez v1, :cond_51

    const/4 v1, 0x0

    .line 4325
    :goto_3c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_51

    .line 4326
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4e

    const/16 v3, 0x3e7

    .line 4329
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_51
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
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

    .line 4341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_70

    const/16 v1, 0xa

    if-eq v0, v1, :cond_69

    const/16 v1, 0x10

    if-eq v0, v1, :cond_62

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5b

    const/16 v1, 0x1f3a

    if-eq v0, v1, :cond_1d

    .line 4346
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4365
    :cond_1d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4366
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v2, 0x0

    if-nez v1, :cond_28

    move v1, v2

    goto :goto_2b

    :cond_28
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    :goto_2b
    add-int/2addr v0, v1

    .line 4367
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_35

    .line 4370
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4372
    :cond_35
    :goto_35
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4c

    .line 4373
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v2, v0, v1

    .line 4374
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4375
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 4378
    :cond_4c
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v2, v0, v1

    .line 4379
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4380
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 4360
    :cond_5b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    goto :goto_0

    .line 4356
    :cond_62
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    goto :goto_0

    .line 4352
    :cond_69
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    goto :goto_0

    :cond_70
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

    .line 4241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
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

    .line 4289
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4290
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4292
    :cond_14
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    .line 4293
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4295
    :cond_1e
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    .line 4296
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4298
    :cond_28
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-lez v0, :cond_45

    const/4 v0, 0x0

    .line 4299
    :goto_32
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-ge v0, v1, :cond_45

    .line 4300
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v1, v1, v0

    if-eqz v1, :cond_42

    const/16 v2, 0x3e7

    .line 4302
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 4306
    :cond_45
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
