.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoAscii.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .registers 11

    .line 29
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 71
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/nio/ByteOrder;[B)[Ljava/lang/String;
    .registers 10

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 34
    :goto_3
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_11

    .line 35
    aget-byte v2, p2, v0

    if-nez v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 39
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    .line 41
    aput-object v1, v0, p1

    move v1, p1

    move v2, v1

    .line 46
    :goto_1b
    array-length v3, p2

    if-ge p1, v3, :cond_39

    .line 47
    aget-byte v3, p2, p1

    if-nez v3, :cond_36

    .line 49
    :try_start_22
    new-instance v3, Ljava/lang/String;

    sub-int v4, p1, v1

    const-string v5, "UTF-8"

    invoke-direct {v3, p2, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_2b} :catch_30

    add-int/lit8 v1, v2, 0x1

    .line 51
    :try_start_2d
    aput-object v3, v0, v2
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_2f} :catch_31

    goto :goto_31

    :catch_30
    move v1, v2

    :catch_31
    :goto_31
    add-int/lit8 v2, p1, 0x1

    move v6, v2

    move v2, v1

    move v1, v6

    :cond_36
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 57
    :cond_39
    array-length p1, p2

    if-ge v1, p1, :cond_47

    .line 60
    :try_start_3c
    new-instance p1, Ljava/lang/String;

    array-length v3, p2

    sub-int/2addr v3, v1

    const-string v4, "UTF-8"

    invoke-direct {p1, p2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 62
    aput-object p1, v0, v2
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    return-object v0
.end method
