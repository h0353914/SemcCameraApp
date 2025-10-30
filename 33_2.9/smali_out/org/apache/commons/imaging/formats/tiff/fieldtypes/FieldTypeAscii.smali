.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeAscii.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .registers 11

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    .line 36
    :goto_8
    array-length v3, p0

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_15

    .line 37
    aget-byte v3, p0, v1

    if-nez v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 41
    :cond_15
    new-array v1, v2, [Ljava/lang/String;

    const-string v3, ""

    .line 43
    aput-object v3, v1, p1

    move v3, p1

    move v4, v3

    move v5, v4

    .line 48
    :goto_1e
    array-length v6, p0

    const-string v7, "UTF-8"

    if-ge v3, v6, :cond_38

    .line 49
    aget-byte v6, p0, v3

    if-nez v6, :cond_35

    .line 51
    :try_start_27
    new-instance v6, Ljava/lang/String;

    sub-int v8, v3, v4

    invoke-direct {v6, p0, v4, v8, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_2e} :catch_33

    add-int/lit8 v4, v5, 0x1

    .line 53
    :try_start_30
    aput-object v6, v1, v5
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_32} :catch_32

    :catch_32
    move v5, v4

    :catch_33
    add-int/lit8 v4, v3, 0x1

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 59
    :cond_38
    array-length v3, p0

    if-ge v4, v3, :cond_44

    .line 62
    :try_start_3b
    new-instance v3, Ljava/lang/String;

    array-length v6, p0

    sub-int/2addr v6, v4

    invoke-direct {v3, p0, v4, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 64
    aput-object v3, v1, v5
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    if-ne v2, v0, :cond_49

    .line 69
    aget-object p0, v1, p1

    return-object p0

    :cond_49
    return-object v1
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 76
    instance-of p0, p1, [B

    const/4 p2, 0x0

    if-eqz p0, :cond_17

    .line 77
    check-cast p1, [B

    check-cast p1, [B

    .line 78
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    new-array v0, p0, [B

    .line 79
    array-length v1, p1

    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p0, -0x1

    .line 80
    aput-byte p2, v0, p0

    return-object v0

    .line 82
    :cond_17
    instance-of p0, p1, Ljava/lang/String;

    const-string v0, "Your Java doesn\'t support UTF-8"

    const-string v1, "UTF-8"

    if-eqz p0, :cond_3a

    .line 85
    :try_start_1f
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_25} :catch_33

    .line 89
    array-length p1, p0

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [B

    .line 90
    array-length v1, p0

    invoke-static {p0, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    .line 91
    aput-byte p2, v0, p1

    return-object v0

    :catch_33
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 93
    :cond_3a
    instance-of p0, p1, [Ljava/lang/String;

    if-eqz p0, :cond_7b

    .line 94
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    .line 96
    array-length p0, p1

    move v2, p2

    move v3, v2

    :goto_45
    if-ge v2, p0, :cond_5b

    aget-object v4, p1, v2

    .line 99
    :try_start_49
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_49 .. :try_end_4d} :catch_54

    .line 103
    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :catch_54
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 105
    :cond_5b
    new-array p0, v3, [B

    .line 107
    array-length v2, p1

    move v3, p2

    move v4, v3

    :goto_60
    if-ge v3, v2, :cond_7a

    aget-object v5, p1, v3

    .line 110
    :try_start_64
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_68
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_64 .. :try_end_68} :catch_73

    .line 114
    array-length v6, v5

    invoke-static {v5, p2, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :catch_73
    move-exception p0

    .line 112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7a
    return-object p0

    .line 119
    :cond_7b
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown data type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
