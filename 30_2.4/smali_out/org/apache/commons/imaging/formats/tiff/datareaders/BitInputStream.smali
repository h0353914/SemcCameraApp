.class Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;
.super Ljava/io/InputStream;
.source "BitInputStream.java"


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesRead:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    .line 37
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .registers 2

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    return-void
.end method

.method public getBytesRead()J
    .registers 3

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-gtz v0, :cond_b

    .line 45
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 43
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BitInputStream: incomplete bit read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readBits(I)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const/16 v2, 0x8

    if-ge p1, v2, :cond_46

    .line 50
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-nez v3, :cond_19

    .line 52
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cache:I

    .line 53
    iput v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    .line 54
    iget-wide v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 56
    :cond_19
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-gt p1, v3, :cond_3e

    sub-int/2addr v3, p1

    .line 62
    iput v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    .line 63
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cache:I

    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    shr-int/2addr v3, v4

    packed-switch p1, :pswitch_data_13a

    goto :goto_46

    :pswitch_29
    and-int/lit8 p1, v3, 0x7f

    return p1

    :pswitch_2c
    and-int/lit8 p1, v3, 0x3f

    return p1

    :pswitch_2f
    and-int/lit8 p1, v3, 0x1f

    return p1

    :pswitch_32
    and-int/lit8 p1, v3, 0xf

    return p1

    :pswitch_35
    and-int/lit8 p1, v3, 0x7

    return p1

    :pswitch_38
    and-int/lit8 p1, v3, 0x3

    return p1

    :pswitch_3b
    and-int/lit8 p1, v3, 0x1

    return p1

    .line 57
    :cond_3e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "BitInputStream: can\'t read bit fields across bytes"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_46
    :goto_46
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-gtz v3, :cond_132

    if-ne p1, v2, :cond_58

    .line 88
    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 89
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    return p1

    .line 97
    :cond_58
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x3

    const/16 v7, 0x20

    const-wide/16 v8, 0x2

    const/16 v10, 0x18

    const/16 v11, 0x10

    if-ne v0, v1, :cond_ca

    if-ne p1, v11, :cond_82

    .line 99
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 100
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/2addr p1, v2

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    return p1

    :cond_82
    if-ne p1, v10, :cond_a2

    .line 104
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 105
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/2addr p1, v11

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    return p1

    :cond_a2
    if-ne p1, v7, :cond_12a

    .line 109
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 110
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/2addr p1, v10

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v11

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    return p1

    :cond_ca
    if-ne p1, v11, :cond_e2

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 116
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    return p1

    :cond_e2
    if-ne p1, v10, :cond_102

    .line 120
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 121
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v11

    or-int/2addr p1, v0

    return p1

    :cond_102
    if-ne p1, v7, :cond_12a

    .line 125
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 126
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v11

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v10

    or-int/2addr p1, v0

    return p1

    .line 131
    :cond_12a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "BitInputStream: unknown error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_132
    new-instance p1, Ljava/io/IOException;

    const-string v0, "BitInputStream: incomplete bit read"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method
