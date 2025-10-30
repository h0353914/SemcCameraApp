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
    .registers 12

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 36
    :goto_8
    array-length v4, p1

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_15

    .line 37
    aget-byte v4, p1, v2

    if-nez v4, :cond_12

    add-int/lit8 v3, v3, 0x1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 41
    :cond_15
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, ""

    .line 43
    aput-object v3, v2, v0

    move v3, v0

    move v4, v3

    move v5, v4

    .line 48
    :goto_1e
    array-length v6, p1

    if-ge v3, v6, :cond_3c

    .line 49
    aget-byte v6, p1, v3

    if-nez v6, :cond_39

    .line 51
    :try_start_25
    new-instance v6, Ljava/lang/String;

    sub-int v7, v3, v4

    const-string v8, "UTF-8"

    invoke-direct {v6, p1, v4, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2e} :catch_33

    add-int/lit8 v4, v5, 0x1

    .line 53
    :try_start_30
    aput-object v6, v2, v5
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_32} :catch_34

    goto :goto_34

    :catch_33
    move v4, v5

    :catch_34
    :goto_34
    add-int/lit8 v5, v3, 0x1

    move v9, v5

    move v5, v4

    move v4, v9

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 59
    :cond_3c
    array-length v3, p1

    if-ge v4, v3, :cond_4a

    .line 62
    :try_start_3f
    new-instance v3, Ljava/lang/String;

    array-length v6, p1

    sub-int/2addr v6, v4

    const-string v7, "UTF-8"

    invoke-direct {v3, p1, v4, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 64
    aput-object v3, v2, v5
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_4a} :catch_4a

    .line 68
    :catch_4a
    :cond_4a
    array-length p1, v2

    if-ne p1, v1, :cond_50

    .line 69
    aget-object p1, v2, v0

    return-object p1

    :cond_50
    return-object v2
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 76
    instance-of p2, p1, [B

    const/4 v0, 0x0

    if-eqz p2, :cond_16

    .line 77
    check-cast p1, [B

    .line 78
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    .line 79
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aput-byte v0, p2, p1

    return-object p2

    .line 82
    :cond_16
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3a

    .line 85
    :try_start_1a
    check-cast p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_22} :catch_31

    .line 89
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    .line 90
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aput-byte v0, p2, p1

    return-object p2

    :catch_31
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Your Java doesn\'t support UTF-8"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 93
    :cond_3a
    instance-of p2, p1, [Ljava/lang/String;

    if-eqz p2, :cond_81

    .line 94
    check-cast p1, [Ljava/lang/String;

    .line 96
    array-length p2, p1

    move v1, v0

    move v2, v1

    :goto_43
    if-ge v1, p2, :cond_5d

    aget-object v3, p1, v1

    :try_start_47
    const-string v4, "UTF-8"

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_4d} :catch_54

    .line 103
    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :catch_54
    move-exception p1

    .line 101
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Your Java doesn\'t support UTF-8"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 105
    :cond_5d
    new-array p2, v2, [B

    .line 107
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_62
    if-ge v2, v1, :cond_80

    aget-object v4, p1, v2

    :try_start_66
    const-string v5, "UTF-8"

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_6c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_66 .. :try_end_6c} :catch_77

    .line 114
    array-length v5, v4

    invoke-static {v4, v0, p2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :catch_77
    move-exception p1

    .line 112
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Your Java doesn\'t support UTF-8"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_80
    return-object p2

    .line 119
    :cond_81
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown data type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
