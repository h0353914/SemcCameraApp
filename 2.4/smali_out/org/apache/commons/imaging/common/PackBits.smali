.class public Lorg/apache/commons/imaging/common/PackBits;
.super Ljava/lang/Object;
.source "PackBits.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findNextDuplicate([BI)I
    .registers 6

    .line 77
    array-length v0, p1

    const/4 v1, -0x1

    if-lt p2, v0, :cond_5

    return v1

    .line 81
    :cond_5
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 83
    :goto_9
    array-length v2, p1

    if-ge p2, v2, :cond_17

    .line 84
    aget-byte v2, p1, p2

    if-ne v2, v0, :cond_13

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_13
    add-int/lit8 p2, p2, 0x1

    move v0, v2

    goto :goto_9

    :cond_17
    return v1
.end method

.method private findRunLength([BI)I
    .registers 6

    .line 97
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 101
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_e

    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    sub-int/2addr v1, p2

    return v1
.end method


# virtual methods
.method public compress([B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    :try_start_3
    new-instance v3, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;-><init>(I)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_6f

    move v2, v0

    .line 116
    :goto_c
    :try_start_c
    array-length v4, p1

    if-ge v2, v4, :cond_61

    .line 117
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/common/PackBits;->findNextDuplicate([BI)I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v2, :cond_2c

    .line 121
    invoke-direct {p0, p1, v4}, Lorg/apache/commons/imaging/common/PackBits;->findRunLength([BI)I

    move-result v4

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    neg-int v5, v5

    .line 123
    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    .line 124
    aget-byte v5, p1, v2

    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    add-int/2addr v2, v4

    goto :goto_c

    :cond_2c
    sub-int v6, v4, v2

    if-lez v4, :cond_43

    .line 131
    invoke-direct {p0, p1, v4}, Lorg/apache/commons/imaging/common/PackBits;->findRunLength([BI)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_43

    add-int v8, v2, v6

    add-int/2addr v8, v7

    .line 135
    invoke-direct {p0, p1, v8}, Lorg/apache/commons/imaging/common/PackBits;->findNextDuplicate([BI)I

    move-result v7

    if-eq v7, v8, :cond_43

    sub-int v6, v7, v2

    move v4, v7

    :cond_43
    if-gez v4, :cond_48

    .line 145
    array-length v4, p1

    sub-int v6, v4, v2

    .line 147
    :cond_48
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 149
    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    move v5, v2

    move v2, v0

    :goto_53
    if-ge v2, v4, :cond_5f

    .line 151
    aget-byte v6, p1, v5

    invoke-virtual {v3, v6}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_5f
    move v2, v5

    goto :goto_c

    .line 156
    :cond_61
    invoke-virtual {v3}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_6d

    .line 160
    new-array v2, v1, [Ljava/io/Closeable;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p1

    :catchall_6d
    move-exception p1

    goto :goto_71

    :catchall_6f
    move-exception p1

    move-object v3, v2

    :goto_71
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p1
.end method

.method public decompress([BI)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-ge v2, p2, :cond_89

    .line 37
    array-length v4, p1

    if-ge v3, v4, :cond_62

    add-int/lit8 v4, v3, 0x1

    .line 44
    aget-byte v3, p1, v3

    if-ltz v3, :cond_2b

    const/16 v5, 0x7f

    if-gt v3, v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    move v5, v4

    move v4, v1

    :goto_1c
    if-ge v4, v3, :cond_29

    add-int/lit8 v6, v5, 0x1

    .line 52
    aget-byte v5, p1, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_1c

    :cond_29
    move v3, v5

    goto :goto_8

    :cond_2b
    const/16 v5, -0x7f

    if-lt v3, v5, :cond_45

    const/4 v5, -0x1

    if-gt v3, v5, :cond_45

    add-int/lit8 v5, v4, 0x1

    .line 58
    aget-byte v4, p1, v4

    neg-int v3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    move v6, v1

    :goto_3b
    if-ge v6, v3, :cond_43

    .line 63
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_43
    move v3, v5

    goto :goto_8

    :cond_45
    const/16 v5, -0x80

    if-eq v3, v5, :cond_4b

    move v3, v4

    goto :goto_8

    .line 67
    :cond_4b
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Packbits: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_62
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tiff: Unpack bits source exhausted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", done + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expected + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
