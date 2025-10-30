.class final Lorg/apache/commons/imaging/formats/icns/Rle24Compression;
.super Ljava/lang/Object;
.source "Rle24Compression.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompress(II[B)[B
    .registers 15

    mul-int v0, p0, p1

    const/4 v1, 0x4

    mul-int v2, v1, v0

    .line 25
    new-array v2, v2, [B

    const/16 v3, 0x80

    const/4 v4, 0x0

    if-lt p0, v3, :cond_10

    if-lt p1, v3, :cond_10

    move p0, v1

    goto :goto_11

    :cond_10
    move p0, v4

    :goto_11
    const/4 p1, 0x1

    move v5, p0

    move p0, p1

    :goto_14
    const/4 v6, 0x3

    if-gt p0, v6, :cond_5f

    move v7, v4

    move v6, v5

    move v5, v0

    :goto_1a
    if-lez v5, :cond_5b

    .line 48
    aget-byte v8, p2, v6

    and-int/2addr v8, v3

    const/16 v9, 0xff

    if-eqz v8, :cond_3f

    .line 49
    aget-byte v8, p2, v6

    and-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x7d

    move v9, v7

    move v7, v4

    :goto_2a
    if-ge v7, v8, :cond_3a

    add-int/lit8 v10, v9, 0x1

    mul-int/2addr v9, v1

    add-int/2addr v9, p0

    add-int/lit8 v11, v6, 0x1

    .line 51
    aget-byte v11, p2, v11

    aput-byte v11, v2, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto :goto_2a

    :cond_3a
    add-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v8

    move v7, v9

    goto :goto_1a

    .line 56
    :cond_3f
    aget-byte v8, p2, v6

    and-int/2addr v8, v9

    add-int/2addr v8, p1

    add-int/lit8 v6, v6, 0x1

    move v9, v6

    move v6, v4

    :goto_47
    if-ge v6, v8, :cond_58

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v7, v1

    add-int/2addr v7, p0

    add-int/lit8 v11, v9, 0x1

    .line 59
    aget-byte v9, p2, v9

    aput-byte v9, v2, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v10

    move v9, v11

    goto :goto_47

    :cond_58
    sub-int/2addr v5, v8

    move v6, v9

    goto :goto_1a

    :cond_5b
    add-int/lit8 p0, p0, 0x1

    move v5, v6

    goto :goto_14

    :cond_5f
    return-object v2
.end method
