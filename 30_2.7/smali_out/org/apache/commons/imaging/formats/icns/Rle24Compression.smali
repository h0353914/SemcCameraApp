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
    .registers 14

    mul-int v0, p0, p1

    mul-int/lit8 v1, v0, 0x4

    .line 25
    new-array v1, v1, [B

    const/16 v2, 0x80

    const/4 v3, 0x0

    if-lt p0, v2, :cond_f

    if-lt p1, v2, :cond_f

    const/4 p0, 0x4

    goto :goto_10

    :cond_f
    move p0, v3

    :goto_10
    const/4 p1, 0x1

    move v4, p0

    move p0, p1

    :goto_13
    const/4 v5, 0x3

    if-gt p0, v5, :cond_60

    move v6, v3

    move v5, v4

    move v4, v0

    :goto_19
    if-lez v4, :cond_5c

    .line 48
    aget-byte v7, p2, v5

    and-int/2addr v7, v2

    if-eqz v7, :cond_3e

    .line 49
    aget-byte v7, p2, v5

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v7, v7, -0x7d

    move v8, v6

    move v6, v3

    :goto_28
    if-ge v6, v7, :cond_39

    add-int/lit8 v9, v8, 0x1

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, p0

    add-int/lit8 v10, v5, 0x1

    .line 51
    aget-byte v10, p2, v10

    aput-byte v10, v1, v8

    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto :goto_28

    :cond_39
    add-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v7

    move v6, v8

    goto :goto_19

    .line 56
    :cond_3e
    aget-byte v7, p2, v5

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, p1

    add-int/lit8 v5, v5, 0x1

    move v8, v5

    move v5, v3

    :goto_47
    if-ge v5, v7, :cond_59

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, p0

    add-int/lit8 v10, v8, 0x1

    .line 59
    aget-byte v8, p2, v8

    aput-byte v8, v1, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    move v8, v10

    goto :goto_47

    :cond_59
    sub-int/2addr v4, v7

    move v5, v8

    goto :goto_19

    :cond_5c
    add-int/lit8 p0, p0, 0x1

    move v4, v5

    goto :goto_13

    :cond_60
    return-object v1
.end method
