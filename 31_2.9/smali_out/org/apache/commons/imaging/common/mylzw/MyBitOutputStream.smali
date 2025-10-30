.class public Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;
.super Ljava/io/OutputStream;
.source "MyBitOutputStream.java"


# instance fields
.field private bitCache:I

.field private bitsInCache:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesWritten:I

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 32
    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method

.method private actualWrite(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bytesWritten:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bytesWritten:I

    return-void
.end method


# virtual methods
.method public flushCache()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    if-lez v0, :cond_21

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 84
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int/2addr v0, v1

    .line 86
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1c

    .line 88
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    rsub-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    .line 89
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21

    .line 92
    :cond_1c
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    .line 97
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    return-void
.end method

.method public getBytesWritten()I
    .registers 3

    .line 101
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bytesWritten:I

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->writeBits(II)V

    return-void
.end method

.method public writeBits(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 46
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_12

    .line 48
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    shl-int/2addr v1, p2

    or-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    goto :goto_1a

    .line 51
    :cond_12
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int/2addr p1, v2

    or-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    .line 53
    :goto_1a
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    .line 55
    :goto_1f
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    const/16 p2, 0x8

    if-lt p1, p2, :cond_58

    .line 56
    iget-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v1, :cond_3c

    .line 58
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    sub-int/2addr v1, p2

    shr-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->actualWrite(I)V

    .line 61
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    goto :goto_4d

    .line 64
    :cond_3c
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int/lit16 p1, p1, 0xff

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->actualWrite(I)V

    .line 67
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    shr-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    .line 68
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    .line 70
    :goto_4d
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    .line 71
    iget p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    goto :goto_1f

    :cond_58
    return-void
.end method
