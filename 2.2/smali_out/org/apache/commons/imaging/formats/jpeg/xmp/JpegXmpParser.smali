.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegXmpParser.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method public isXmpJpegSegment([B)Z
    .registers 2

    .line 35
    sget-object p0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p0

    return p0
.end method

.method public parseXmpJpegSegment([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;->isXmpJpegSegment([B)Z

    move-result p0

    if-nez p0, :cond_e

    .line 41
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Invalid JPEG XMP Segment."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_e
    sget-object p0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result p0

    .line 47
    :try_start_14
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    sub-int/2addr v1, p0

    const-string v2, "utf-8"

    invoke-direct {v0, p1, p0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception p0

    .line 49
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Invalid JPEG XMP Segment."

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
