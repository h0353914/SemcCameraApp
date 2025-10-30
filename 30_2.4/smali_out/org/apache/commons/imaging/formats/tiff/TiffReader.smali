.class public Lorg/apache/commons/imaging/formats/tiff/TiffReader;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;
    }
.end annotation


# instance fields
.field private final strict:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 50
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    return-void
.end method

.method private getJpegRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegRawImageDataElement()Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    move-result-object p2

    .line 499
    iget-wide v0, p2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    .line 500
    iget p2, p2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    int-to-long v2, p2

    add-long/2addr v2, v0

    .line 502
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    .line 503
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p2, v2

    .line 505
    :cond_18
    invoke-virtual {p1, v0, v1, p2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object p1

    .line 507
    iget-boolean v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v2, :cond_41

    const/4 v2, 0x2

    if-lt p2, v2, :cond_39

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const v3, 0xffd9

    if-ne v2, v3, :cond_39

    goto :goto_41

    .line 510
    :cond_39
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "JPEG EOI marker could not be found at expected location"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 512
    :cond_41
    :goto_41
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    invoke-direct {v2, v0, v1, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;-><init>(JI[B)V

    return-object v2
.end method

.method private getTiffByteOrder(I)Ljava/nio/ByteOrder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p1, v0, :cond_7

    .line 68
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    :cond_7
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_e

    .line 70
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 72
    :cond_e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TIFF byte order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTiffRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    .line 437
    instance-of v2, p1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 438
    check-cast p1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    .line 439
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4d

    .line 440
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 441
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;

    iget-wide v5, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-direct {v4, v5, v6, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;-><init>(JILorg/apache/commons/imaging/common/bytesource/ByteSourceFile;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 445
    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4d

    .line 446
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 447
    iget-wide v4, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v6, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-virtual {p1, v4, v5, v6}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v4

    .line 448
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    iget-wide v6, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-direct {v5, v6, v7, v2, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 452
    :cond_4d
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->imageDataInStrips()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 453
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    const v0, 0x7fffffff

    if-eqz p1, :cond_63

    .line 462
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    goto :goto_6f

    .line 464
    :cond_63
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 471
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    .line 476
    :cond_6f
    :goto_6f
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    return-object p1

    .line 478
    :cond_75
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p1, :cond_9b

    .line 483
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 485
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p2

    if-eqz p2, :cond_93

    .line 490
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p2

    .line 492
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;II)V

    return-object v0

    .line 488
    :cond_93
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Can\'t find tile length field."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_9b
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Can\'t find tile width field."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readTiffHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    move-result-object v0

    .line 107
    invoke-interface {p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->setTiffHeader(Lorg/apache/commons/imaging/formats/tiff/TiffHeader;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 111
    :cond_b
    iget-wide v4, v0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->offsetToFirstIFD:J

    .line 114
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    .line 115
    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z

    return-void
.end method

.method private readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 122
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v4, p2

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    .line 131
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_16

    return v14

    .line 134
    :cond_16
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v15, 0x1

    .line 139
    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_24a

    cmp-long v0, v4, v2

    if-ltz v0, :cond_2f

    .line 286
    new-array v0, v15, [Ljava/io/Closeable;

    aput-object v1, v0, v14

    invoke-static {v15, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v15

    .line 144
    :cond_2f
    :try_start_2f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_24a

    .line 145
    :try_start_33
    invoke-static {v9, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 147
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_246

    :try_start_3b
    const-string v0, "DirectoryEntryCount"

    const-string v1, "Not a Valid TIFF File"

    .line 151
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, v9, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_47} :catch_231
    .catchall {:try_start_3b .. :try_end_47} :catchall_246

    move v1, v14

    :goto_48
    const-wide/16 v16, 0x0

    if-ge v1, v0, :cond_12c

    :try_start_4c
    const-string v6, "Tag"

    const-string v7, "Not a Valid TIFF File"

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v6, v9, v7, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    const-string v7, "Type"

    const-string v14, "Not a Valid TIFF File"
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_129

    .line 163
    :try_start_5c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v7, v9, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v14, "Count"

    const-string v15, "Not a Valid TIFF File"

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v14, v9, v15, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    const-wide v14, 0xffffffffL

    and-long v20, v2, v14

    const-string v2, "Offset"

    const/4 v3, 0x4

    const-string v14, "Not a Valid TIFF File"

    .line 165
    invoke-static {v2, v9, v3, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v2

    .line 166
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BLjava/nio/ByteOrder;)I

    move-result v3
    :try_end_89
    .catchall {:try_start_5c .. :try_end_89} :catchall_126

    int-to-long v14, v3

    const-wide v18, 0xffffffffL

    and-long v14, v14, v18

    if-nez v6, :cond_95

    goto/16 :goto_120

    .line 178
    :cond_95
    :try_start_95
    invoke-static {v7}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v19
    :try_end_99
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_95 .. :try_end_99} :catch_120
    .catchall {:try_start_95 .. :try_end_99} :catchall_126

    .line 185
    :try_start_99
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result v3

    move-object v7, v2

    int-to-long v2, v3

    mul-long v2, v2, v20

    const-wide/16 v22, 0x4

    cmp-long v18, v2, v22

    if-lez v18, :cond_f8

    cmp-long v7, v14, v16

    if-ltz v7, :cond_be

    add-long v16, v14, v2

    .line 188
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v22

    cmp-long v7, v16, v22

    if-lez v7, :cond_b6

    goto :goto_be

    :cond_b6
    long-to-int v2, v2

    .line 200
    invoke-virtual {v11, v14, v15, v2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v2

    move-object/from16 v24, v2

    goto :goto_fa

    .line 189
    :cond_be
    :goto_be
    iget-boolean v6, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-nez v6, :cond_c3

    goto :goto_120

    .line 190
    :cond_c3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to read byte range starting from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "of length "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "which is outside the file\'s size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    move-object/from16 v24, v7

    .line 205
    :goto_fa
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v25

    move-object/from16 v16, v2

    move/from16 v17, v6

    move/from16 v18, p4

    move-wide/from16 v22, v14

    move/from16 v26, v1

    invoke-direct/range {v16 .. v26}, Lorg/apache/commons/imaging/formats/tiff/TiffField;-><init>(IILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;JJ[BLjava/nio/ByteOrder;I)V

    .line 208
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v12, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addField(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Z

    move-result v2
    :try_end_114
    .catchall {:try_start_99 .. :try_end_114} :catchall_126

    if-nez v2, :cond_120

    const/4 v2, 0x1

    .line 286
    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-static {v2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v2

    :catch_120
    :cond_120
    :goto_120
    add-int/lit8 v1, v1, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_48

    :catchall_126
    move-exception v0

    goto/16 :goto_244

    :catchall_129
    move-exception v0

    goto/16 :goto_24c

    :cond_12c
    :try_start_12c
    const-string v0, "nextDirectoryOffset"

    const-string v1, "Not a Valid TIFF File"

    .line 216
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, v9, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 219
    new-instance v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-object v1, v14

    move/from16 v2, p4

    move-object v3, v8

    move-wide/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;-><init>(ILjava/util/List;JJ)V

    .line 222
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readImageData()Z

    move-result v0
    :try_end_14f
    .catchall {:try_start_12c .. :try_end_14f} :catchall_22d

    if-eqz v0, :cond_16b

    .line 223
    :try_start_151
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 224
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v0

    .line 226
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    .line 228
    :cond_15e
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 229
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getJpegRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v0

    .line 231
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    :try_end_16b
    .catchall {:try_start_151 .. :try_end_16b} :catchall_126

    .line 235
    :cond_16b
    :try_start_16b
    invoke-interface {v12, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z

    move-result v0
    :try_end_16f
    .catchall {:try_start_16b .. :try_end_16f} :catchall_22d

    if-nez v0, :cond_17b

    const/4 v1, 0x1

    .line 286
    new-array v0, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v9, v0, v2

    :goto_177
    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v1

    :cond_17b
    const/4 v2, 0x0

    .line 240
    :try_start_17c
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readOffsetDirectories()Z

    move-result v0

    if-eqz v0, :cond_207

    const/4 v0, 0x3

    .line 241
    new-array v15, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v1, v15, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;
    :try_end_18b
    .catchall {:try_start_17c .. :try_end_18b} :catchall_22d

    const/4 v2, 0x1

    :try_start_18c
    aput-object v1, v15, v2
    :try_end_18e
    .catchall {:try_start_18c .. :try_end_18e} :catchall_202

    :try_start_18e
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const/4 v2, 0x2

    aput-object v1, v15, v2

    .line 246
    new-array v7, v0, [I

    const/4 v0, -0x2

    const/4 v1, 0x0

    aput v0, v7, v1
    :try_end_199
    .catchall {:try_start_18e .. :try_end_199} :catchall_22d

    const/4 v0, -0x3

    const/4 v1, 0x1

    :try_start_19b
    aput v0, v7, v1
    :try_end_19d
    .catchall {:try_start_19b .. :try_end_19d} :catchall_1fe

    const/4 v0, -0x4

    :try_start_19e
    aput v0, v7, v2

    const/4 v6, 0x0

    .line 251
    :goto_1a1
    array-length v0, v15

    if-ge v6, v0, :cond_1fb

    .line 252
    aget-object v0, v15, v6

    .line 253
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5
    :try_end_1aa
    .catchall {:try_start_19e .. :try_end_1aa} :catchall_22d

    if-eqz v5, :cond_1ea

    .line 259
    :try_start_1ac
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)I

    move-result v0

    int-to-long v3, v0

    .line 260
    aget v0, v7, v6
    :try_end_1b3
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_1ac .. :try_end_1b3} :catch_1d2
    .catchall {:try_start_1ac .. :try_end_1b3} :catchall_22d

    const/16 v18, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v27, v5

    move v5, v0

    move/from16 v19, v6

    move-object/from16 v6, p5

    move-object/from16 v20, v7

    move-object/from16 v7, p6

    move-object v11, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move-object/from16 v9, p8

    .line 261
    :try_start_1cb
    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v0
    :try_end_1cf
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_1cb .. :try_end_1cf} :catch_1d0
    .catchall {:try_start_1cb .. :try_end_1cf} :catchall_241

    goto :goto_1e1

    :catch_1d0
    move-exception v0

    goto :goto_1dc

    :catch_1d2
    move-exception v0

    move-object/from16 v27, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v11, v8

    move-object/from16 v18, v9

    .line 266
    :goto_1dc
    :try_start_1dc
    iget-boolean v1, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-nez v1, :cond_1e9

    const/4 v0, 0x0

    :goto_1e1
    if-nez v0, :cond_1f1

    move-object/from16 v1, v27

    .line 271
    invoke-interface {v11, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1f1

    .line 267
    :cond_1e9
    throw v0

    :cond_1ea
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v11, v8

    move-object/from16 v18, v9

    :cond_1f1
    :goto_1f1
    add-int/lit8 v6, v19, 0x1

    move-object v8, v11

    move-object/from16 v9, v18

    move-object/from16 v7, v20

    move-object/from16 v11, p1

    goto :goto_1a1

    :cond_1fb
    move-object/from16 v18, v9

    goto :goto_209

    :catchall_1fe
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_24d

    :catchall_202
    move-exception v0

    move-object/from16 v18, v9

    move v1, v2

    goto :goto_24d

    :cond_207
    move-object/from16 v18, v9

    :goto_209
    if-nez p7, :cond_225

    .line 277
    iget-wide v0, v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    cmp-long v0, v0, v16

    if-lez v0, :cond_225

    .line 279
    iget-wide v3, v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    const/4 v1, 0x1

    add-int/lit8 v5, p4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    :try_end_223
    .catchall {:try_start_1dc .. :try_end_223} :catchall_241

    const/4 v1, 0x1

    goto :goto_226

    :cond_225
    const/4 v1, 0x1

    .line 286
    :goto_226
    new-array v0, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v18, v0, v2

    goto/16 :goto_177

    :catchall_22d
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_244

    :catch_231
    move-exception v0

    move-object/from16 v18, v9

    .line 153
    :try_start_234
    iget-boolean v1, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z
    :try_end_236
    .catchall {:try_start_234 .. :try_end_236} :catchall_241

    if-nez v1, :cond_240

    const/4 v1, 0x1

    .line 286
    new-array v0, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v18, v0, v2

    goto/16 :goto_177

    .line 154
    :cond_240
    :try_start_240
    throw v0
    :try_end_241
    .catchall {:try_start_240 .. :try_end_241} :catchall_241

    :catchall_241
    move-exception v0

    move-object/from16 v9, v18

    :goto_244
    const/4 v1, 0x1

    goto :goto_24d

    :catchall_246
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_24c

    :catchall_24a
    move-exception v0

    move-object v9, v1

    :goto_24c
    move v1, v15

    .line 286
    :goto_24d
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-static {v2, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method private readTiffHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BYTE_ORDER_1"

    const-string v1, "Not a Valid TIFF File"

    .line 77
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const-string v1, "BYTE_ORDER_2"

    const-string v2, "Not a Valid TIFF File"

    .line 78
    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    if-ne v0, v1, :cond_6f

    .line 83
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffByteOrder(I)Ljava/nio/ByteOrder;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-string v1, "tiffVersion"

    const-string v2, "Not a Valid TIFF File"

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_58

    const-wide v2, 0xffffffffL

    const-string v4, "offsetToFirstIFD"

    const-string v5, "Not a Valid TIFF File"

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, p1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long v4, v2, v4

    const-string v6, "Not a Valid TIFF File: couldn\'t find IFDs"

    .line 94
    invoke-static {p1, v4, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 97
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_52
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;-><init>(Ljava/nio/ByteOrder;IJ)V

    return-object p1

    .line 88
    :cond_58
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Tiff Version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_6f
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Byte Order bytes don\'t match ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readTiffHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_14

    .line 58
    :try_start_6
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readTiffHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_12

    .line 62
    new-array v3, v0, [Ljava/io/Closeable;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_12
    move-exception v2

    goto :goto_16

    :catchall_14
    move-exception v2

    const/4 p1, 0x0

    :goto_16
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v2
.end method


# virtual methods
.method public read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    return-void
.end method

.method public readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Lorg/apache/commons/imaging/formats/tiff/TiffContents;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    .line 419
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 420
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    return-object p1
.end method

.method public readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    .line 405
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 406
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 407
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_17

    return-object p1

    .line 408
    :cond_17
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Image did not contain any directories."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Lorg/apache/commons/imaging/formats/tiff/TiffContents;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;

    invoke-direct {v0, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;-><init>(Z)V

    .line 392
    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 393
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 394
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_16

    return-object p1

    .line 395
    :cond_16
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Image did not contain any directories."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
