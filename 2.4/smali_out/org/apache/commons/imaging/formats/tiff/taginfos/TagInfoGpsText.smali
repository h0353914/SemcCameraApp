.class public final Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoGpsText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;
    }
.end annotation


# static fields
.field private static final TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_68

    const-string v3, "US-ASCII"

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 40
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v2, v1, [B

    fill-array-data v2, :array_70

    const-string v3, "JIS"

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v2, v1, [B

    fill-array-data v2, :array_78

    const-string v3, "UTF-16LE"

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 46
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v2, v1, [B

    fill-array-data v2, :array_80

    const-string v3, "UTF-16BE"

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 49
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v1, v1, [B

    fill-array-data v1, :array_88

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v0, 0x5

    .line 53
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    return-void

    nop

    :array_68
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_70
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_78
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_80
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_88
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .registers 11

    .line 63
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 84
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_6e

    .line 87
    check-cast p2, Ljava/lang/String;

    .line 91
    :try_start_6
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 95
    array-length p2, p1

    sget-object p3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object p3, p3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length p3, p3

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 97
    sget-object p3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object p3, p3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v0, v0

    invoke-static {p3, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    sget-object p3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object p3, p3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length p3, p3

    array-length v0, p1

    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 105
    :cond_3d
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p1, :cond_44

    .line 106
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    goto :goto_46

    .line 108
    :cond_44
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    .line 110
    :goto_46
    iget-object p3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 111
    array-length p3, p2

    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v0, v0

    add-int/2addr p3, v0

    new-array p3, p3, [B

    .line 112
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v2, v2

    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_62
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_62} :catch_63

    return-object p3

    :catch_63
    move-exception p1

    .line 116
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 85
    :cond_6e
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p3, "GPS text value not String"

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    .line 123
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object p1

    .line 124
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 125
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 126
    :cond_16
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 132
    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    .line 134
    :cond_1f
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Unexpected ASCII type decoded"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_27
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-ne v0, v1, :cond_30

    goto :goto_38

    .line 138
    :cond_30
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-ne v0, v1, :cond_a4

    .line 148
    :goto_38
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p1

    .line 149
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_52

    .line 152
    :try_start_41
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_48} :catch_49

    return-object v0

    :catch_49
    move-exception p1

    .line 154
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GPS text field missing encoding prefix."

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 158
    :cond_52
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    array-length v1, v0

    move v3, v2

    :goto_56
    if-ge v3, v1, :cond_93

    aget-object v4, v0, v3

    .line 159
    iget-object v5, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v6, v6

    invoke-static {p1, v2, v5, v2, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 162
    :try_start_65
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v6, v6

    array-length v7, p1

    iget-object v8, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v5, p1, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 166
    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 168
    iget-object v4, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v4, v4

    array-length v7, v6

    invoke-static {p1, v4, v6, v2, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v4
    :try_end_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_65 .. :try_end_82} :catch_85

    if-eqz v4, :cond_90

    return-object v5

    :catch_85
    move-exception p1

    .line 174
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 181
    :cond_93
    :try_start_93
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_93 .. :try_end_9a} :catch_9b

    return-object v0

    :catch_9b
    move-exception p1

    .line 183
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unknown GPS text encoding prefix."

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 141
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry.type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry.directoryType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDirectoryType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry.type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDescriptionWithoutValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry.type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 145
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GPS text field not encoded as bytes."

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isText()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
