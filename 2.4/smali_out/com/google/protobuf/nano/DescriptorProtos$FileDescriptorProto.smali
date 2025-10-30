.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;


# instance fields
.field public dependency:[Ljava/lang/String;

.field public enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

.field public extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

.field public package_:Ljava/lang/String;

.field public publicDependency:[I

.field public service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

.field public sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

.field public syntax:Ljava/lang/String;

.field public weakDependency:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .registers 2

    .line 130
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_15

    .line 131
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_7
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 134
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    .line 136
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 138
    :cond_15
    :goto_15
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
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

    .line 598
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
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

    .line 592
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .registers 3

    const-string v0, ""

    .line 184
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const-string v0, ""

    .line 185
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 188
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 189
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 190
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 191
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 192
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 194
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    const-string v1, ""

    .line 195
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 197
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 9

    .line 274
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 276
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    .line 277
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_18
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const/4 v1, 0x2

    .line 280
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 281
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_2c
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    array-length v1, v1

    if-lez v1, :cond_4d

    move v1, v3

    move v4, v1

    move v5, v4

    .line 286
    :goto_37
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_4a

    .line 287
    aget-object v6, v6, v1

    if-eqz v6, :cond_47

    add-int/lit8 v5, v5, 0x1

    .line 291
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4a
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    .line 297
    :cond_4d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v1, :cond_69

    array-length v1, v1

    if-lez v1, :cond_69

    move v1, v0

    move v0, v3

    .line 298
    :goto_56
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_68

    .line 299
    aget-object v4, v4, v0

    if-eqz v4, :cond_65

    const/4 v5, 0x4

    .line 302
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_68
    move v0, v1

    .line 306
    :cond_69
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v1, :cond_85

    array-length v1, v1

    if-lez v1, :cond_85

    move v1, v0

    move v0, v3

    .line 307
    :goto_72
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_84

    .line 308
    aget-object v4, v4, v0

    if-eqz v4, :cond_81

    const/4 v5, 0x5

    .line 311
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_84
    move v0, v1

    .line 315
    :cond_85
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v1, :cond_a1

    array-length v1, v1

    if-lez v1, :cond_a1

    move v1, v0

    move v0, v3

    .line 316
    :goto_8e
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_a0

    .line 317
    aget-object v4, v4, v0

    if-eqz v4, :cond_9d

    const/4 v5, 0x6

    .line 320
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_a0
    move v0, v1

    .line 324
    :cond_a1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v1, :cond_bd

    array-length v1, v1

    if-lez v1, :cond_bd

    move v1, v0

    move v0, v3

    .line 325
    :goto_aa
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_bc

    .line 326
    aget-object v4, v4, v0

    if-eqz v4, :cond_b9

    const/4 v5, 0x7

    .line 329
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    :cond_bc
    move v0, v1

    .line 333
    :cond_bd
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v1, :cond_c8

    const/16 v4, 0x8

    .line 335
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_c8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v1, :cond_d3

    const/16 v4, 0x9

    .line 339
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_d3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v1, :cond_ef

    array-length v1, v1

    if-lez v1, :cond_ef

    move v1, v3

    move v4, v1

    .line 343
    :goto_dc
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v6, v5

    if-ge v1, v6, :cond_eb

    .line 344
    aget v5, v5, v1

    .line 346
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    :cond_eb
    add-int/2addr v0, v4

    .line 349
    array-length v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 351
    :cond_ef
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v1, :cond_10a

    array-length v1, v1

    if-lez v1, :cond_10a

    move v1, v3

    .line 353
    :goto_f7
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v5, v4

    if-ge v3, v5, :cond_106

    .line 354
    aget v4, v4, v3

    .line 356
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_f7

    :cond_106
    add-int/2addr v0, v1

    .line 359
    array-length v1, v4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 361
    :cond_10a
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v1, :cond_11f

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11f

    const/16 v1, 0xc

    .line 362
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 363
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11f
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .registers 7
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

    .line 373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_258

    .line 378
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 583
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    goto :goto_0

    .line 560
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 561
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 564
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 565
    :goto_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_2f

    .line 566
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 569
    :cond_2f
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 570
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v2, :cond_38

    move v2, v1

    goto :goto_39

    :cond_38
    array-length v2, v2

    :goto_39
    add-int/2addr v3, v2

    .line 571
    new-array v3, v3, [I

    if-eqz v2, :cond_43

    .line 573
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    :cond_43
    :goto_43
    array-length v1, v3

    if-ge v2, v1, :cond_4f

    .line 576
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 578
    :cond_4f
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 579
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_55
    const/16 v0, 0x58

    .line 544
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 545
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v2, :cond_61

    move v2, v1

    goto :goto_62

    :cond_61
    array-length v2, v2

    :goto_62
    add-int/2addr v0, v2

    .line 546
    new-array v0, v0, [I

    if-eqz v2, :cond_6c

    .line 548
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    :cond_6c
    :goto_6c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7d

    .line 551
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 552
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 555
    :cond_7d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 556
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    goto/16 :goto_0

    .line 520
    :sswitch_87
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 521
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 524
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 525
    :goto_94
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_a0

    .line 526
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 529
    :cond_a0
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 530
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v2, :cond_a9

    move v2, v1

    goto :goto_aa

    :cond_a9
    array-length v2, v2

    :goto_aa
    add-int/2addr v3, v2

    .line 531
    new-array v3, v3, [I

    if-eqz v2, :cond_b4

    .line 533
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    :cond_b4
    :goto_b4
    array-length v1, v3

    if-ge v2, v1, :cond_c0

    .line 536
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 538
    :cond_c0
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 539
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_c7
    const/16 v0, 0x50

    .line 504
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 505
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v2, :cond_d3

    move v2, v1

    goto :goto_d4

    :cond_d3
    array-length v2, v2

    :goto_d4
    add-int/2addr v0, v2

    .line 506
    new-array v0, v0, [I

    if-eqz v2, :cond_de

    .line 508
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    :cond_de
    :goto_de
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_ef

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 512
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 515
    :cond_ef
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 516
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    goto/16 :goto_0

    .line 496
    :sswitch_f9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_104

    .line 497
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 499
    :cond_104
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 489
    :sswitch_10b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_116

    .line 490
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 492
    :cond_116
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_11d
    const/16 v0, 0x3a

    .line 470
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 471
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v2, :cond_129

    move v2, v1

    goto :goto_12a

    :cond_129
    array-length v2, v2

    :goto_12a
    add-int/2addr v0, v2

    .line 472
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_134

    .line 475
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :cond_134
    :goto_134
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_14b

    .line 478
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 479
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 480
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_134

    .line 483
    :cond_14b
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 484
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 485
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    :sswitch_15b
    const/16 v0, 0x32

    .line 450
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 451
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v2, :cond_167

    move v2, v1

    goto :goto_168

    :cond_167
    array-length v2, v2

    :goto_168
    add-int/2addr v0, v2

    .line 452
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v2, :cond_172

    .line 455
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    :cond_172
    :goto_172
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_189

    .line 458
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 459
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_172

    .line 463
    :cond_189
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 464
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 465
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    goto/16 :goto_0

    :sswitch_199
    const/16 v0, 0x2a

    .line 430
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 431
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v2, :cond_1a5

    move v2, v1

    goto :goto_1a6

    :cond_1a5
    array-length v2, v2

    :goto_1a6
    add-int/2addr v0, v2

    .line 432
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v2, :cond_1b0

    .line 435
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    :cond_1b0
    :goto_1b0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1c7

    .line 438
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 439
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 440
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b0

    .line 443
    :cond_1c7
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 444
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 445
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    goto/16 :goto_0

    :sswitch_1d7
    const/16 v0, 0x22

    .line 410
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 411
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v2, :cond_1e3

    move v2, v1

    goto :goto_1e4

    :cond_1e3
    array-length v2, v2

    :goto_1e4
    add-int/2addr v0, v2

    .line 412
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v2, :cond_1ee

    .line 415
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_1ee
    :goto_1ee
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_205

    .line 418
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 419
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 420
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ee

    .line 423
    :cond_205
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 424
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 425
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    goto/16 :goto_0

    :sswitch_215
    const/16 v0, 0x1a

    .line 393
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 394
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-nez v2, :cond_221

    move v2, v1

    goto :goto_222

    :cond_221
    array-length v2, v2

    :goto_222
    add-int/2addr v0, v2

    .line 395
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_22c

    .line 397
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_22c
    :goto_22c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_23d

    .line 400
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 401
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_22c

    .line 404
    :cond_23d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 405
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    goto/16 :goto_0

    .line 388
    :sswitch_247
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    goto/16 :goto_0

    .line 384
    :sswitch_24f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_257
    return-object p0

    :sswitch_data_258
    .sparse-switch
        0x0 -> :sswitch_257
        0xa -> :sswitch_24f
        0x12 -> :sswitch_247
        0x1a -> :sswitch_215
        0x22 -> :sswitch_1d7
        0x2a -> :sswitch_199
        0x32 -> :sswitch_15b
        0x3a -> :sswitch_11d
        0x42 -> :sswitch_10b
        0x4a -> :sswitch_f9
        0x50 -> :sswitch_c7
        0x52 -> :sswitch_87
        0x58 -> :sswitch_55
        0x5a -> :sswitch_16
        0x62 -> :sswitch_f
    .end sparse-switch
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

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

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

    .line 204
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 205
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 207
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x2

    .line 208
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 210
    :cond_24
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    array-length v0, v0

    if-lez v0, :cond_3d

    move v0, v1

    .line 211
    :goto_2d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3d

    .line 212
    aget-object v2, v2, v0

    if-eqz v2, :cond_3a

    const/4 v3, 0x3

    .line 214
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 218
    :cond_3d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_55

    array-length v0, v0

    if-lez v0, :cond_55

    move v0, v1

    .line 219
    :goto_45
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_55

    .line 220
    aget-object v2, v2, v0

    if-eqz v2, :cond_52

    const/4 v3, 0x4

    .line 222
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 226
    :cond_55
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_6d

    array-length v0, v0

    if-lez v0, :cond_6d

    move v0, v1

    .line 227
    :goto_5d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_6d

    .line 228
    aget-object v2, v2, v0

    if-eqz v2, :cond_6a

    const/4 v3, 0x5

    .line 230
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 234
    :cond_6d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v0, :cond_85

    array-length v0, v0

    if-lez v0, :cond_85

    move v0, v1

    .line 235
    :goto_75
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_85

    .line 236
    aget-object v2, v2, v0

    if-eqz v2, :cond_82

    const/4 v3, 0x6

    .line 238
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 242
    :cond_85
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_9d

    array-length v0, v0

    if-lez v0, :cond_9d

    move v0, v1

    .line 243
    :goto_8d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_9d

    .line 244
    aget-object v2, v2, v0

    if-eqz v2, :cond_9a

    const/4 v3, 0x7

    .line 246
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 250
    :cond_9d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_a6

    const/16 v2, 0x8

    .line 251
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 253
    :cond_a6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v0, :cond_af

    const/16 v2, 0x9

    .line 254
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 256
    :cond_af
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v0, :cond_c6

    array-length v0, v0

    if-lez v0, :cond_c6

    move v0, v1

    .line 257
    :goto_b7
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v3, v2

    if-ge v0, v3, :cond_c6

    const/16 v3, 0xa

    .line 258
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 261
    :cond_c6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v0, :cond_dc

    array-length v0, v0

    if-lez v0, :cond_dc

    .line 262
    :goto_cd
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v2, v0

    if-ge v1, v2, :cond_dc

    const/16 v2, 0xb

    .line 263
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    .line 266
    :cond_dc
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v0, :cond_ef

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    const/16 v0, 0xc

    .line 267
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_ef
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
