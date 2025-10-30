.class public Lorg/apache/commons/imaging/common/BinaryConstant;
.super Ljava/lang/Object;
.source "BinaryConstant.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final value:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->clone()Lorg/apache/commons/imaging/common/BinaryConstant;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/imaging/common/BinaryConstant;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 40
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/imaging/common/BinaryConstant;

    if-nez v1, :cond_9

    return v0

    .line 43
    :cond_9
    check-cast p1, Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 44
    iget-object p1, p1, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result p1

    return p1
.end method

.method public equals([B)Z
    .registers 3

    .line 48
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public equals([BII)Z
    .registers 8

    .line 52
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_7

    return v1

    :cond_7
    move v0, v1

    :goto_8
    if-ge v0, p3, :cond_18

    .line 56
    iget-object v2, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)B
    .registers 3

    .line 69
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-byte v3, v0, v2

    .line 82
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
