.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeRational.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0x8

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .registers 7

    .line 33
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    .line 35
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BLjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p1

    return-object p1

    .line 38
    :cond_17
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRationals([BLjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p1

    return-object p1
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 43
    instance-of v0, p1, Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz v0, :cond_b

    .line 44
    check-cast p1, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 45
    :cond_b
    instance-of v0, p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz v0, :cond_16

    .line 46
    check-cast p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 47
    :cond_16
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_29

    .line 48
    check-cast p1, Ljava/lang/Number;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p1

    .line 50
    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 51
    :cond_29
    instance-of v0, p1, [Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 52
    check-cast p1, [Ljava/lang/Number;

    .line 53
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 54
    :goto_33
    array-length v2, p1

    if-ge v1, v2, :cond_45

    .line 55
    aget-object v2, p1, v1

    .line 56
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 58
    :cond_45
    invoke-static {v0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 59
    :cond_4a
    instance-of v0, p1, [D

    if-eqz v0, :cond_66

    .line 60
    check-cast p1, [D

    .line 61
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 62
    :goto_53
    array-length v2, p1

    if-ge v1, v2, :cond_61

    .line 63
    aget-wide v2, p1, v1

    .line 64
    invoke-static {v2, v3}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 66
    :cond_61
    invoke-static {v0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 68
    :cond_66
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v0, "Invalid data"

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
.end method
