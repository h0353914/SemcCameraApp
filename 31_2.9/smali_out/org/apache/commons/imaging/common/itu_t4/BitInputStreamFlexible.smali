.class Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;
.super Ljava/io/InputStream;
.source "BitInputStreamFlexible.java"


# instance fields
.field private bytesRead:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .registers 2

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    return-void
.end method

.method public getBytesRead()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

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
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-gtz v0, :cond_b

    .line 45
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

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
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p1, v0, :cond_79

    .line 55
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_26

    if-lt p1, v0, :cond_17

    shl-int v3, v2, v0

    sub-int/2addr v3, v2

    .line 57
    iget v4, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    and-int/2addr v3, v4

    sub-int/2addr p1, v0

    .line 59
    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    move v1, v3

    goto :goto_26

    :cond_17
    sub-int/2addr v0, p1

    .line 62
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    .line 63
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    iget v3, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shr-int/2addr v0, v3

    and-int/2addr p1, v0

    move v8, v1

    move v1, p1

    move p1, v8

    :cond_26
    :goto_26
    const-wide/16 v3, 0x1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_4d

    .line 68
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    .line 69
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    if-ltz v0, :cond_45

    .line 75
    iget-wide v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x8

    goto :goto_26

    .line 70
    :cond_45
    new-instance p1, Ljava/io/IOException;

    const-string v0, "couldn\'t read bits"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    if-lez p1, :cond_78

    .line 80
    iget-object v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    .line 81
    iget v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    if-ltz v5, :cond_70

    .line 87
    iget-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    sub-int/2addr v0, p1

    .line 88
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int v0, v1, p1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    .line 89
    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shr-int v1, v5, v1

    and-int/2addr p1, v1

    or-int v1, v0, p1

    goto :goto_78

    .line 82
    :cond_70
    new-instance p1, Ljava/io/IOException;

    const-string v0, "couldn\'t read bits"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    :goto_78
    return v1

    .line 97
    :cond_79
    new-instance p1, Ljava/io/IOException;

    const-string v0, "BitInputStream: unknown error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
