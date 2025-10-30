.class final Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;
.super Ljava/lang/Object;
.source "MyLzwCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArray"
.end annotation


# instance fields
.field private final bytes:[B

.field private final hash:I

.field private final length:I

.field private final start:I


# direct methods
.method public constructor <init>([BII)V
    .registers 8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->bytes:[B

    .line 98
    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->start:I

    .line 99
    iput p3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    const/4 v0, 0x0

    move v1, p3

    :goto_b
    if-ge v0, p3, :cond_1c

    const/16 v2, 0xff

    add-int v3, v0, p2

    .line 104
    aget-byte v3, p1, v3

    and-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    add-int/2addr v1, v3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 108
    :cond_1c
    iput v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 118
    instance-of v0, p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 119
    check-cast p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    .line 120
    iget v0, p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    if-eq v0, v2, :cond_e

    return v1

    .line 123
    :cond_e
    iget v0, p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    if-eq v0, v2, :cond_15

    return v1

    :cond_15
    move v0, v1

    .line 127
    :goto_16
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    if-ge v0, v2, :cond_2e

    .line 128
    iget-object v2, p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->bytes:[B

    iget v3, p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->start:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->bytes:[B

    iget v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->start:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    return v1
.end method

.method public hashCode()I
    .registers 1

    .line 113
    iget p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    return p0
.end method
