.class public abstract Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# instance fields
.field private final bitsPerSample:[I

.field protected final bitsPerSampleLength:I

.field protected final directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

.field protected final height:I

.field private final last:[I

.field protected final photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

.field protected final predictor:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIII)V
    .registers 8

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    .line 55
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    .line 56
    array-length p1, p3

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSampleLength:I

    .line 57
    iput p5, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->samplesPerPixel:I

    .line 58
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->predictor:I

    .line 59
    iput p6, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->width:I

    .line 60
    iput p7, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->height:I

    .line 61
    new-array p1, p5, [I

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    return-void
.end method


# virtual methods
.method protected applyPredictor([I)[I
    .registers 6

    .line 121
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->predictor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    .line 123
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 124
    aget v1, p1, v0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    aget v3, v2, v0

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    .line 125
    aget v1, p1, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    return-object p1
.end method

.method protected decompress([BIIII)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_FILL_ORDER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 139
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_16

    goto :goto_2c

    :cond_16
    if-ne v0, v2, :cond_da

    move v0, v3

    .line 144
    :goto_19
    array-length v4, p1

    if-ge v0, v4, :cond_2c

    .line 145
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->reverse(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2c
    :goto_2c
    if-eq p2, v1, :cond_d9

    if-eq p2, v2, :cond_d4

    const/4 v0, 0x3

    const/4 v4, 0x4

    if-eq p2, v0, :cond_9b

    if-eq p2, v4, :cond_77

    const/4 p0, 0x5

    if-eq p2, p0, :cond_61

    const p0, 0x8005

    if-ne p2, p0, :cond_48

    .line 211
    new-instance p0, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object p0

    return-object p0

    .line 215
    :cond_48
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tiff: unknown/unsupported compression: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_61
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 201
    new-instance p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    const/16 p2, 0x8

    sget-object p4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, p4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    .line 204
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->setTiffLZWMode()V

    .line 206
    invoke-virtual {p1, p0, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    .line 182
    :cond_77
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T6_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 185
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    goto :goto_87

    :cond_86
    move p0, v3

    :goto_87
    and-int/2addr p0, v2

    if-eqz p0, :cond_8b

    goto :goto_8c

    :cond_8b
    move v1, v3

    :goto_8c
    if-nez v1, :cond_93

    .line 192
    invoke-static {p1, p4, p5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT6([BII)[B

    move-result-object p0

    return-object p0

    .line 189
    :cond_93
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "T.6 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_9b
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T4_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_aa

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    goto :goto_ab

    :cond_aa
    move p0, v3

    :goto_ab
    and-int/lit8 p2, p0, 0x1

    if-eqz p2, :cond_b1

    move p2, v1

    goto :goto_b2

    :cond_b1
    move p2, v3

    :goto_b2
    and-int/lit8 p3, p0, 0x2

    if-eqz p3, :cond_b8

    move p3, v1

    goto :goto_b9

    :cond_b8
    move p3, v3

    :goto_b9
    if-nez p3, :cond_cc

    and-int/2addr p0, v4

    if-eqz p0, :cond_bf

    goto :goto_c0

    :cond_bf
    move v1, v3

    :goto_c0
    if-eqz p2, :cond_c7

    .line 174
    invoke-static {p1, p4, p5, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_2D([BIIZ)[B

    move-result-object p0

    return-object p0

    .line 177
    :cond_c7
    invoke-static {p1, p4, p5, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_1D([BIIZ)[B

    move-result-object p0

    return-object p0

    .line 169
    :cond_cc
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "T.4 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_d4
    invoke-static {p1, p4, p5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressModifiedHuffman([BII)[B

    move-result-object p0

    return-object p0

    :cond_d9
    return-object p1

    .line 148
    :cond_da
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TIFF FillOrder="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getSamplesAsBytes(Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 99
    aget v1, v1, v0

    .line 100
    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->readBits(I)I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v3, :cond_1e

    and-int/lit8 v3, v2, 0x1

    rsub-int/lit8 v1, v1, 0x8

    shl-int/2addr v2, v1

    if-lez v3, :cond_23

    const/4 v3, 0x1

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_23

    :cond_1e
    if-le v1, v3, :cond_23

    add-int/lit8 v1, v1, -0x8

    shr-int/2addr v2, v1

    .line 110
    :cond_23
    :goto_23
    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method protected isHomogenous(I)Z
    .registers 6

    .line 79
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_f

    aget v3, p0, v2

    if-eq v3, p1, :cond_c

    return v1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public abstract readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected resetPredictor()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 116
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method
