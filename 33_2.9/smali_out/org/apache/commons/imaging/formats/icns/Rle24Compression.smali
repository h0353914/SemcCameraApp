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

    move v4, p1

    :goto_12
    const/4 v5, 0x3

    if-gt v4, v5, :cond_58

    move v5, v0

    move v6, v3

    :goto_17
    if-lez v5, :cond_55

    .line 48
    aget-byte v7, p2, p0

    and-int/2addr v7, v2

    if-eqz v7, :cond_39

    .line 49
    aget-byte v7, p2, p0

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v7, v7, -0x7d

    move v8, v3

    :goto_25
    if-ge v8, v7, :cond_36

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    add-int/lit8 v10, p0, 0x1

    .line 51
    aget-byte v10, p2, v10

    aput-byte v10, v1, v6

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_25

    :cond_36
    add-int/lit8 p0, p0, 0x2

    goto :goto_53

    .line 56
    :cond_39
    aget-byte v7, p2, p0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, p1

    add-int/lit8 p0, p0, 0x1

    move v8, v3

    :goto_41
    if-ge v8, v7, :cond_53

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    add-int/lit8 v10, p0, 0x1

    .line 59
    aget-byte p0, p2, p0

    aput-byte p0, v1, v6

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    move p0, v10

    goto :goto_41

    :cond_53
    :goto_53
    sub-int/2addr v5, v7

    goto :goto_17

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_58
    return-object v1
.end method
