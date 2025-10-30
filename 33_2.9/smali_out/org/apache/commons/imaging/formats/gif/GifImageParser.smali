.class public Lorg/apache/commons/imaging/formats/gif/GifImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "GifImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final APPLICATION_EXTENSION_LABEL:I = 0xff

.field private static final COMMENT_EXTENSION:I = 0xfe

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".gif"

.field private static final EXTENSION_CODE:I = 0x21

.field private static final GIF_HEADER_SIGNATURE:[B

.field private static final GRAPHIC_CONTROL_EXTENSION:I = 0x21f9

.field private static final IMAGE_SEPARATOR:I = 0x2c

.field private static final INTERLACE_FLAG_MASK:I = 0x40

.field private static final LOCAL_COLOR_TABLE_FLAG_MASK:I = 0x80

.field private static final PLAIN_TEXT_EXTENSION:I = 0x1

.field private static final SORT_FLAG_MASK:I = 0x20

.field private static final TERMINATOR_BYTE:I = 0x3b

.field private static final XMP_APPLICATION_ID_AND_AUTH_CODE:[B

.field private static final XMP_COMPLETE_CODE:I = 0x21ff

.field private static final XMP_EXTENSION:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".gif"

    .line 55
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 56
    fill-array-data v0, :array_1a

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 70
    fill-array-data v0, :array_20

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    return-void

    :array_1a
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_20
    .array-data 1
        0x58t
        0x4dt
        0x50t
        0x20t
        0x44t
        0x61t
        0x74t
        0x61t
        0x58t
        0x4dt
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 85
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private convertColorTableSize(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    .line 415
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->simplePow(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;I)",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;"
        }
    .end annotation

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 426
    iget v0, p1, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    if-ne v0, p2, :cond_4

    return-object p1

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private getColorTable([B)[I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 611
    array-length p0, p1

    rem-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_32

    .line 615
    array-length p0, p1

    div-int/lit8 p0, p0, 0x3

    .line 617
    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, p0, :cond_31

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v4, v3, 0x0

    .line 620
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    .line 621
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v3, 0x2

    .line 622
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/high16 v6, -0x1000000

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    shl-int/2addr v3, v1

    or-int/2addr v3, v4

    .line 627
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_31
    return-object v0

    .line 612
    :cond_32
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad Color Table Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getComments(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 511
    iget v1, v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/16 v2, 0x21fe

    if-ne v1, v2, :cond_9

    .line 512
    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks()[B

    move-result-object v0

    .line 513
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2c
    return-object p0
.end method

.method private readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;",
            "Ljava/io/InputStream;",
            "Z",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    :cond_5
    :goto_5
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v1, -0x1

    if-eq v3, v1, :cond_b3

    if-eqz v3, :cond_5

    const/16 v1, 0x21

    if-eq v3, v1, :cond_41

    const/16 v1, 0x2c

    if-eq v3, v1, :cond_34

    const/16 p0, 0x3b

    if-ne v3, p0, :cond_1b

    return-object v0

    .line 328
    :cond_1b
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GIF: unknown code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 251
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readImageDescriptor(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    move-result-object v1

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 261
    :cond_41
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v1, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_aa

    const/16 v3, 0xf9

    if-eq v1, v3, :cond_a1

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_aa

    const/16 v3, 0xff

    if-eq v1, v3, :cond_6a

    if-eqz p4, :cond_62

    const-string v1, "Unknown block"

    .line 308
    invoke-virtual {p4, v1, v2}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    .line 312
    :cond_62
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v1

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 283
    :cond_6a
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz p4, :cond_93

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Application Extension ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3, v2}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    :cond_93
    if-eqz v1, :cond_5

    .line 297
    array-length v3, v1

    if-lez v3, :cond_5

    .line 298
    invoke-direct {p0, p2, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v1

    .line 300
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 267
    :cond_a1
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    move-result-object v1

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 274
    :cond_aa
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v1

    .line 276
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 248
    :cond_b3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: unexpected end of data"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readColorTable(Ljava/io/InputStream;I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result p0

    const-string p2, "block"

    const-string v0, "GIF: corrupt Color Table"

    .line 421
    invoke-static {p2, p1, p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object p0

    return-object p0
.end method

.method private readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 445
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    .line 447
    :try_start_7
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-result-object v3

    .line 450
    iget-boolean v4, v3, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    if-eqz v4, :cond_15

    .line 451
    iget-byte v0, v3, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 455
    :cond_15
    invoke-direct {p0, v3, p1, p2, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object p0

    .line 458
    new-instance p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;

    invoke-direct {p2, v3, v0, p0}, Lorg/apache/commons/imaging/formats/gif/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;[BLjava/util/List;)V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_26

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v2

    .line 463
    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p2

    :catchall_26
    move-exception p0

    move-object v0, p1

    goto :goto_2a

    :catchall_29
    move-exception p0

    :goto_2a
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {v2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object p0

    return-object p0
.end method

.method private readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_a

    .line 224
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_a
    :goto_a
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 229
    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_18

    .line 235
    new-instance p0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;-><init>(ILjava/util/List;)V

    return-object p0

    .line 232
    :cond_18
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method private readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "block_size"

    const-string v1, "GIF: corrupt GraphicControlExt"

    .line 192
    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    const-string v0, "packed fields"

    .line 193
    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    and-int/lit8 v0, v4, 0x1c

    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v6, v0

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    const-string v0, "delay in milliseconds"

    invoke-static {v0, p2, v1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string p0, "transparent color index"

    .line 200
    invoke-static {p0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p0

    and-int/lit16 v8, p0, 0xff

    const-string p0, "block terminator"

    .line 202
    invoke-static {p0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 204
    new-instance p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;-><init>(IIIZII)V

    return-object p0
.end method

.method private readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "identifier1"

    const-string v3, "Not a Valid GIF File"

    .line 112
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    const-string v2, "identifier2"

    .line 113
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v2, "identifier3"

    .line 114
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const-string/jumbo v2, "version1"

    .line 116
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    const-string/jumbo v2, "version2"

    .line 117
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    const-string/jumbo v2, "version3"

    .line 118
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v10

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_57

    .line 121
    sget-object v11, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/4 v12, 0x3

    new-array v12, v12, [B

    aput-byte v5, v12, v4

    aput-byte v6, v12, v2

    const/4 v13, 0x2

    aput-byte v7, v12, v13

    const-string v14, "Signature"

    invoke-virtual {v1, v14, v11, v12}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    const/16 v11, 0x38

    const-string/jumbo v12, "version"

    .line 123
    invoke-virtual {v1, v12, v11, v8}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    new-array v11, v13, [I

    .line 124
    fill-array-data v11, :array_180

    invoke-virtual {v1, v12, v11, v9}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;[II)Z

    const/16 v11, 0x61

    .line 126
    invoke-virtual {v1, v12, v11, v10}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    .line 129
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_78

    shl-int/lit8 v11, v5, 0x10

    shl-int/lit8 v12, v6, 0x8

    or-int/2addr v11, v12

    shl-int/lit8 v12, v7, 0x0

    or-int/2addr v11, v12

    const-string v12, "identifier: "

    .line 130
    invoke-static {v12, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    shl-int/lit8 v11, v8, 0x10

    shl-int/lit8 v12, v9, 0x8

    or-int/2addr v11, v12

    shl-int/lit8 v12, v10, 0x0

    or-int/2addr v11, v12

    const-string/jumbo v12, "version: "

    .line 132
    invoke-static {v12, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 136
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    const-string v12, "Logical Screen Width"

    invoke-static {v12, v0, v3, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    const-string v13, "Logical Screen Height"

    invoke-static {v13, v0, v3, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    if-eqz v1, :cond_9b

    const-string v13, "Width"

    const v14, 0x7fffffff

    .line 140
    invoke-virtual {v1, v13, v2, v14, v11}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v13, "Height"

    .line 142
    invoke-virtual {v1, v13, v2, v14, v12}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    :cond_9b
    const-string v13, "Packed Fields"

    .line 146
    invoke-static {v13, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v13

    const-string v14, "Background Color Index"

    .line 148
    invoke-static {v14, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v15

    const-string v2, "Pixel Aspect Ratio"

    .line 150
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_b8

    const-string v2, "PackedFields bits"

    .line 154
    invoke-static {v2, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_b8
    and-int/lit16 v2, v13, 0x80

    if-lez v2, :cond_be

    const/4 v2, 0x1

    goto :goto_bf

    :cond_be
    move v2, v4

    .line 158
    :goto_bf
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 159
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v0

    const-string v0, "GlobalColorTableFlag: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e2

    :cond_e0
    move/from16 p1, v0

    :goto_e2
    shr-int/lit8 v0, v13, 0x4

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_108

    .line 163
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v12

    const-string v12, "ColorResolution: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10a

    :cond_108
    move/from16 v18, v12

    :goto_10a
    and-int/lit8 v3, v13, 0x8

    if-lez v3, :cond_110

    const/4 v3, 0x1

    goto :goto_111

    :cond_110
    const/4 v3, 0x0

    .line 166
    :goto_111
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 167
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    const-string v0, "SortFlag: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_134

    :cond_132
    move/from16 v19, v0

    :goto_134
    and-int/lit8 v0, v13, 0x7

    int-to-byte v0, v0

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_158

    .line 171
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    const-string v3, "SizeofGlobalColorTable: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_15a

    :cond_158
    move/from16 v20, v3

    :goto_15a
    if-eqz v1, :cond_16b

    if-eqz v2, :cond_16b

    const/4 v3, -0x1

    if-eq v15, v3, :cond_16b

    move-object/from16 v3, p0

    .line 177
    invoke-direct {v3, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4, v3, v15}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 183
    :cond_16b
    new-instance v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-object v4, v1

    move/from16 v12, v18

    move v14, v15

    move/from16 v15, p1

    move/from16 v16, v2

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;-><init>(BBBBBBIIBBBZBZB)V

    return-object v1

    nop

    :array_180
    .array-data 4
        0x37
        0x39
    .end array-data
.end method

.method private readImageDescriptor(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 337
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Left Position"

    const-string v6, "Not a Valid GIF File"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 338
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Top Position"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 339
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Width"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 340
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Height"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    const-string v4, "Packed Fields"

    .line 341
    invoke-static {v4, v2, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v13

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5a

    .line 344
    iget v6, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    const-string v7, "Width"

    invoke-virtual {v3, v7, v5, v6, v11}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 345
    iget v6, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    const-string v7, "Height"

    invoke-virtual {v3, v7, v5, v6, v12}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 346
    iget v6, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    sub-int/2addr v6, v11

    const-string v7, "Left Position"

    invoke-virtual {v3, v7, v4, v6, v9}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 347
    iget v1, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    sub-int/2addr v1, v12

    const-string v6, "Top Position"

    invoke-virtual {v3, v6, v4, v1, v10}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 350
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "PackedFields bits"

    .line 351
    invoke-static {v1, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_65
    shr-int/lit8 v1, v13, 0x7

    and-int/2addr v1, v5

    if-lez v1, :cond_6c

    move v14, v5

    goto :goto_6d

    :cond_6c
    move v14, v4

    .line 355
    :goto_6d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 356
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalColorTableFlag: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8b
    shr-int/lit8 v1, v13, 0x6

    and-int/2addr v1, v5

    if-lez v1, :cond_92

    move v15, v5

    goto :goto_93

    :cond_92
    move v15, v4

    .line 359
    :goto_93
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 360
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interlace Flag: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b1
    shr-int/lit8 v1, v13, 0x5

    and-int/2addr v1, v5

    if-lez v1, :cond_b7

    move v4, v5

    .line 363
    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 364
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sort Flag: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d5
    and-int/lit8 v1, v13, 0x7

    int-to-byte v1, v1

    .line 368
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 369
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SizeofLocalColorTable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f6
    if-eqz v14, :cond_ff

    .line 374
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_101

    :cond_ff
    const/16 v18, 0x0

    :goto_101
    const/4 v5, -0x1

    if-nez p4, :cond_125

    .line 379
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 381
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks()[B

    move-result-object v0

    .line 383
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    mul-int v0, v11, v12

    .line 386
    new-instance v5, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v5, v3, v6}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    .line 388
    invoke-virtual {v5, v2, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_14c

    .line 390
    :cond_125
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 391
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_147

    .line 392
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LZWMinimumCodeSize: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    :cond_147
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    const/16 v19, 0x0

    .line 398
    :goto_14c
    new-instance v0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    move-object v7, v0

    move/from16 v8, p2

    move/from16 v16, v4

    move/from16 v17, v1

    invoke-direct/range {v7 .. v19}, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;-><init>(IIIIIBZZZB[B[B)V

    return-object v0
.end method

.method private readSubBlock(Ljava/io/InputStream;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "block_size"

    const-string v0, "GIF: corrupt block"

    .line 209
    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    const-string v1, "block"

    .line 211
    invoke-static {v1, p1, p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private simplePow(II)I
    .registers 4

    const/4 p0, 0x1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_8

    mul-int/2addr p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return p0
.end method

.method private writeAsSubBlocks(Ljava/io/OutputStream;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 748
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_15

    .line 749
    array-length v1, p2

    sub-int/2addr v1, v0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 750
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 751
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    goto :goto_2

    .line 754
    :cond_15
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gif.dumpImageFile"

    .line 586
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    const-string v2, ""

    .line 593
    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, p2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object p2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gif.blocks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    :goto_32
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_76

    .line 599
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/4 v4, 0x4

    invoke-virtual {p0, p1, v3, v0, v4}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 605
    :cond_76
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .registers 1

    .line 100
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .registers 3

    const/4 p0, 0x1

    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 105
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 647
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v2

    if-eqz v2, :cond_ca

    .line 653
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-eqz v3, :cond_c2

    .line 658
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v4, 0x2c

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-eqz v3, :cond_ba

    .line 663
    iget-object v4, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v5, 0x21f9

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    .line 669
    iget v5, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    .line 670
    iget v6, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    const/4 v7, 0x1

    if-eqz v4, :cond_32

    .line 673
    iget-boolean v8, v4, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    if-eqz v8, :cond_32

    move v8, v7

    goto :goto_33

    :cond_32
    move v8, v1

    .line 677
    :goto_33
    new-instance v9, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v9, v5, v6, v8}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 680
    iget-object v10, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    if-eqz v10, :cond_43

    .line 681
    iget-object v2, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v0

    goto :goto_4d

    .line 682
    :cond_43
    iget-object v10, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->globalColorTable:[B

    if-eqz v10, :cond_b2

    .line 683
    iget-object v2, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->globalColorTable:[B

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v0

    :goto_4d
    const/4 v2, -0x1

    if-eqz v4, :cond_54

    if-eqz v8, :cond_54

    .line 690
    iget v2, v4, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    :cond_54
    add-int/lit8 v4, v6, 0x7

    .line 695
    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v8, v6, 0x3

    .line 696
    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v10, v6, 0x1

    .line 697
    div-int/lit8 v10, v10, 0x4

    .line 698
    div-int/lit8 v11, v6, 0x2

    move v12, v1

    move v13, v12

    :goto_64
    if-ge v12, v6, :cond_ad

    .line 702
    iget-boolean v14, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    if-eqz v14, :cond_8f

    if-ge v12, v4, :cond_6f

    mul-int/lit8 v14, v12, 0x8

    goto :goto_90

    :cond_6f
    sub-int v14, v12, v4

    if-ge v14, v8, :cond_78

    mul-int/lit8 v14, v14, 0x8

    add-int/lit8 v14, v14, 0x4

    goto :goto_90

    :cond_78
    sub-int/2addr v14, v8

    if-ge v14, v10, :cond_80

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x2

    goto :goto_90

    :cond_80
    sub-int/2addr v14, v10

    if-ge v14, v11, :cond_87

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v7

    goto :goto_90

    .line 719
    :cond_87
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Gif: Strange Row"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    move v14, v12

    :goto_90
    move v15, v1

    :goto_91
    if-ge v15, v5, :cond_a9

    .line 729
    iget-object v1, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageData:[B

    add-int/lit8 v16, v13, 0x1

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    .line 730
    aget v13, v0, v1

    if-ne v2, v1, :cond_a0

    const/4 v13, 0x0

    .line 736
    :cond_a0
    invoke-virtual {v9, v15, v14, v13}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    const/4 v1, 0x0

    goto :goto_91

    :cond_a9
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_64

    .line 741
    :cond_ad
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    .line 685
    :cond_b2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Gif: No Color Table"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_ba
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Image Descriptor"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_c2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_ca
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read blocks"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .registers 1

    const-string p0, ".gif"

    return-object p0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    new-instance v0, Lorg/apache/commons/imaging/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 639
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 523
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v2

    if-eqz v2, :cond_a7

    .line 529
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-eqz v3, :cond_9f

    .line 534
    iget-object v4, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v5, 0x2c

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-eqz v4, :cond_97

    .line 540
    iget-object v5, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v6, 0x21f9

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    .line 545
    iget v12, v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    .line 546
    iget v10, v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    .line 548
    iget-object v6, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-direct {v0, v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getComments(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 549
    iget-byte v0, v3, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->colorResolution:B

    const/4 v3, 0x1

    add-int/lit8 v8, v0, 0x1

    .line 550
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    .line 556
    iget-boolean v4, v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    int-to-double v6, v10

    const-wide/high16 v13, 0x4052000000000000L    # 72.0

    div-double/2addr v6, v13

    double-to-float v7, v6

    move/from16 v20, v4

    int-to-double v3, v12

    div-double/2addr v3, v13

    double-to-float v3, v3

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gif "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v6, v6, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version1:B

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v6, v6, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version2:B

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v2, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version3:B

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_75

    .line 568
    iget-boolean v4, v5, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    if-eqz v4, :cond_75

    const/16 v21, 0x1

    goto :goto_77

    :cond_75
    move/from16 v21, v1

    .line 573
    :goto_77
    sget-object v23, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 574
    sget-object v24, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 576
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    move-object v6, v1

    const/4 v14, -0x1

    const/16 v15, 0x48

    const/16 v17, 0x48

    const/16 v22, 0x1

    const-string v11, "GIF Graphics Interchange Format"

    const-string v13, "image/gif"

    move v4, v7

    move-object v7, v2

    move v2, v10

    move-object v10, v0

    move/from16 v16, v3

    move/from16 v18, v4

    move/from16 v19, v2

    invoke-direct/range {v6 .. v24}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v1

    .line 537
    :cond_97
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_9f
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_a7
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read blocks"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 476
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 482
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-eqz p2, :cond_29

    .line 487
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 p2, 0x2c

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-eqz p0, :cond_21

    .line 496
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 490
    :cond_21
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :cond_29
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: Couldn\'t read Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_31
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: Couldn\'t read blocks"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "Graphics Interchange Format"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1022
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_bd

    .line 1025
    :try_start_7
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-result-object v2

    .line 1027
    iget-boolean v3, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    if-eqz v3, :cond_14

    .line 1028
    iget-byte v3, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    .line 1031
    :cond_14
    invoke-direct {p0, v2, p1, v0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object p0

    .line 1033
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 1035
    iget v4, v3, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/16 v5, 0x21ff

    if-eq v4, v5, :cond_34

    goto :goto_21

    .line 1039
    :cond_34
    check-cast v3, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    .line 1041
    invoke-virtual {v3, v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks(Z)[B

    move-result-object v3

    .line 1042
    array-length v4, v3

    sget-object v5, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v6, v5

    if-ge v4, v6, :cond_41

    goto :goto_21

    .line 1046
    :cond_41
    array-length v4, v5

    invoke-static {v3, v1, v5, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_21

    :cond_49
    const/16 v4, 0x100

    new-array v5, v4, [B

    move v6, v1

    :goto_4e
    const/16 v7, 0xff

    if-gt v6, v7, :cond_5a

    rsub-int v7, v6, 0xff

    int-to-byte v7, v7

    .line 1054
    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 1057
    :cond_5a
    array-length v6, v3

    sget-object v7, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v8, v7

    add-int/2addr v8, v4

    if-ge v6, v8, :cond_62

    goto :goto_21

    .line 1061
    :cond_62
    array-length v6, v3

    sub-int/2addr v6, v4

    invoke-static {v3, v6, v5, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v5
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_ba

    if-eqz v5, :cond_84

    .line 1070
    :try_start_6a
    new-instance v5, Ljava/lang/String;

    array-length v6, v7

    array-length v8, v3

    array-length v7, v7

    add-int/2addr v7, v4

    sub-int/2addr v8, v7

    const-string/jumbo v4, "utf-8"

    invoke-direct {v5, v3, v6, v8, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1076
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6a .. :try_end_7a} :catch_7b
    .catchall {:try_start_6a .. :try_end_7a} :catchall_ba

    goto :goto_21

    :catch_7b
    move-exception p0

    .line 1078
    :try_start_7c
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid XMP Block in GIF."

    invoke-direct {p2, v2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1064
    :cond_84
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "XMP block in GIF missing magic trailer."

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1082
    :cond_8c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_ba

    if-ge p0, v0, :cond_9a

    new-array p0, v0, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    .line 1092
    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p2

    .line 1085
    :cond_9a
    :try_start_9a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_ba

    if-gt p0, v0, :cond_b2

    .line 1089
    :try_start_a0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_ae

    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    .line 1092
    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_ae
    move-exception p0

    move-object p2, p1

    move p1, v0

    goto :goto_bf

    .line 1086
    :cond_b2
    :try_start_b2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "More than one XMP Block in GIF."

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception p0

    move-object p2, p1

    goto :goto_be

    :catchall_bd
    move-exception p0

    :goto_be
    move p1, v1

    :goto_bf
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p2, v0, v1

    .line 1092
    invoke-static {p1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 761
    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 763
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "VERBOSE"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "FORMAT"

    .line 766
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 767
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_22
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 770
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const/4 v4, 0x0

    const-string v5, "XMP_XML"

    .line 774
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 775
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 776
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    :cond_3d
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e4

    .line 784
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 785
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 787
    new-instance v6, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v6, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v6

    const/16 v7, 0xff

    if-eqz v6, :cond_5a

    move v8, v7

    goto :goto_5c

    :cond_5a
    const/16 v8, 0x100

    .line 791
    :goto_5c
    new-instance v9, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v9, v0, v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v9

    if-nez v9, :cond_7a

    .line 796
    new-instance v9, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v9, v0, v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v9

    if-eqz v3, :cond_83

    .line 798
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "quantizing"

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_83

    :cond_7a
    if-eqz v3, :cond_83

    .line 801
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "exact palette"

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_83
    :goto_83
    if-eqz v9, :cond_1dc

    .line 807
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v3

    add-int/2addr v3, v6

    .line 809
    new-instance v8, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v8, v1, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v10, 0x47

    .line 812
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x49

    .line 813
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x46

    .line 814
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x38

    .line 816
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x39

    .line 817
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x61

    .line 818
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 822
    invoke-virtual {v8, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 823
    invoke-virtual {v8, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v10, 0x80

    const/4 v11, 0x7

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-le v3, v10, :cond_c0

    move v3, v11

    goto :goto_e1

    :cond_c0
    const/16 v10, 0x40

    if-le v3, v10, :cond_c6

    const/4 v3, 0x6

    goto :goto_e1

    :cond_c6
    const/16 v10, 0x20

    if-le v3, v10, :cond_cc

    const/4 v3, 0x5

    goto :goto_e1

    :cond_cc
    const/16 v10, 0x10

    if-le v3, v10, :cond_d2

    move v3, v13

    goto :goto_e1

    :cond_d2
    const/16 v10, 0x8

    if-le v3, v10, :cond_d8

    const/4 v3, 0x3

    goto :goto_e1

    :cond_d8
    if-le v3, v13, :cond_dc

    move v3, v12

    goto :goto_e1

    :cond_dc
    if-le v3, v12, :cond_e0

    move v3, v14

    goto :goto_e1

    :cond_e0
    move v3, v15

    :goto_e1
    add-int/lit8 v10, v3, 0x1

    shl-int/2addr v14, v10

    int-to-byte v12, v3

    and-int/2addr v12, v11

    shl-int/2addr v12, v13

    or-int/2addr v12, v15

    or-int/2addr v12, v15

    .line 845
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 849
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 853
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v12, 0x21

    .line 862
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v11, -0x7

    .line 863
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 867
    invoke-virtual {v8, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    int-to-byte v11, v6

    .line 869
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 870
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 871
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v6, :cond_10f

    .line 872
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v11

    goto :goto_110

    :cond_10f
    move v11, v15

    :goto_110
    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 875
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v4, :cond_140

    .line 879
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 880
    invoke-virtual {v8, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 882
    sget-object v11, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v12, v11

    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 883
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    const-string/jumbo v11, "utf-8"

    .line 885
    invoke-virtual {v4, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 886
    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    move v4, v15

    :goto_133
    if-gt v4, v7, :cond_13d

    rsub-int v11, v4, 0xff

    .line 890
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_133

    .line 893
    :cond_13d
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_140
    const/16 v4, 0x2c

    .line 898
    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 899
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 900
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 901
    invoke-virtual {v8, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 902
    invoke-virtual {v8, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v4, 0x7

    and-int/2addr v3, v4

    const/16 v4, 0x80

    or-int/2addr v3, v4

    .line 925
    invoke-virtual {v8, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v3, v15

    :goto_15a
    if-ge v3, v14, :cond_184

    .line 931
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v4

    if-ge v3, v4, :cond_178

    .line 932
    invoke-interface {v9, v3}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v4

    shr-int/lit8 v11, v4, 0x10

    and-int/2addr v11, v7

    shr-int/lit8 v12, v4, 0x8

    and-int/2addr v12, v7

    shr-int/2addr v4, v15

    and-int/2addr v4, v7

    .line 938
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 939
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 940
    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_181

    .line 942
    :cond_178
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 943
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 944
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_181
    add-int/lit8 v3, v3, 0x1

    goto :goto_15a

    :cond_184
    const/4 v3, 0x2

    if-ge v10, v3, :cond_189

    move v12, v3

    goto :goto_18a

    :cond_189
    move v12, v10

    .line 963
    :goto_18a
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 965
    new-instance v3, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v12, v4, v15}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;Z)V

    mul-int v4, v2, v5

    .line 969
    new-array v4, v4, [B

    move v10, v15

    :goto_199
    if-ge v10, v5, :cond_1c7

    move v11, v15

    :goto_19c
    if-ge v11, v2, :cond_1c4

    .line 972
    invoke-virtual {v0, v11, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v12

    const v13, 0xffffff

    and-int/2addr v13, v12

    if-eqz v6, :cond_1b7

    shr-int/lit8 v12, v12, 0x18

    and-int/2addr v12, v7

    if-ge v12, v7, :cond_1b2

    .line 980
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v12

    goto :goto_1bb

    .line 982
    :cond_1b2
    invoke-interface {v9, v13}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v12

    goto :goto_1bb

    .line 985
    :cond_1b7
    invoke-interface {v9, v13}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v12

    :goto_1bb
    mul-int v13, v10, v2

    add-int/2addr v13, v11

    int-to-byte v12, v12

    .line 988
    aput-byte v12, v4, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_19c

    :cond_1c4
    add-int/lit8 v10, v10, 0x1

    goto :goto_199

    .line 992
    :cond_1c7
    invoke-virtual {v3, v4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->compress([B)[B

    move-result-object v0

    move-object/from16 v2, p0

    .line 993
    invoke-direct {v2, v8, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->writeAsSubBlocks(Ljava/io/OutputStream;[B)V

    const/16 v0, 0x3b

    .line 999
    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 1001
    invoke-virtual {v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    .line 1002
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 805
    :cond_1dc
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Gif: can\'t write images with more than 256 colors"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_1e4
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 781
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
