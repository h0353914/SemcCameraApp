.class public Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".ico"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, ".ico"

    const-string v1, ".cur"

    .line 54
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 57
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readBitmapIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "size"

    const-string v2, "Not a Valid ICO File"

    .line 323
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    const-string v1, "width"

    const-string v2, "Not a Valid ICO File"

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const-string v2, "height"

    const-string v3, "Not a Valid ICO File"

    .line 337
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    const-string v3, "planes"

    const-string v4, "Not a Valid ICO File"

    .line 348
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v3, v0, v4, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v4, "bitCount"

    const-string v6, "Not a Valid ICO File"

    .line 353
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v4, v0, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    const-string v4, "compression"

    const-string v6, "Not a Valid ICO File"

    .line 361
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v4, v0, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v6, "sizeImage"

    const-string v7, "Not a Valid ICO File"

    .line 369
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, v0, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    const-string v6, "xPelsPerMeter"

    const-string v7, "Not a Valid ICO File"

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, v0, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    const-string v6, "yPelsPerMeter"

    const-string v7, "Not a Valid ICO File"

    .line 380
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, v0, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    const-string v6, "colorsUsed"

    const-string v7, "Not a Valid ICO File"

    .line 383
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, v0, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    const-string v6, "ColorsImportant"

    const-string v7, "Not a Valid ICO File"

    .line 391
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, v0, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    const/4 v6, 0x3

    if-ne v4, v6, :cond_b5

    const-string v7, "redMask"

    const-string v8, "Not a Valid ICO File"

    .line 399
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v7, v0, v8, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    const-string v7, "greenMask"

    const-string v8, "Not a Valid ICO File"

    .line 400
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v7, v0, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v7, "blueMask"

    const-string v8, "Not a Valid ICO File"

    move/from16 v17, v6

    .line 401
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v7, v0, v8, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    goto :goto_b9

    :cond_b5
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_b9
    const-string v7, "RestOfFile"

    .line 403
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    invoke-static {v7, v0, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v0

    const/16 v7, 0x28

    if-ne v5, v7, :cond_278

    const/4 v8, 0x1

    if-ne v3, v8, :cond_261

    const/high16 v18, -0x1000000

    const/16 v7, 0x20

    move/from16 v19, v12

    if-nez v4, :cond_e2

    if-ne v15, v7, :cond_e2

    const/high16 v17, 0xff0000

    const v9, 0xff00

    move v4, v9

    move/from16 v6, v17

    move/from16 v21, v18

    const/4 v9, 0x3

    const/16 v20, 0xff

    goto :goto_ed

    :cond_e2
    move/from16 v20, v6

    move/from16 v6, v17

    const/16 v21, 0x0

    move/from16 v30, v9

    move v9, v4

    move/from16 v4, v30

    .line 422
    :goto_ed
    new-instance v12, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;

    move/from16 v22, v4

    move-object v4, v12

    move/from16 v23, v6

    move v6, v1

    move v7, v2

    move/from16 v17, v2

    move v2, v8

    move v8, v3

    move/from16 v24, v9

    move v9, v15

    move/from16 v16, v10

    move/from16 v10, v24

    move/from16 v25, v11

    move v11, v14

    move-object/from16 v27, v12

    move/from16 v26, v19

    move v12, v13

    move/from16 v28, v13

    move/from16 v13, v26

    move/from16 v29, v14

    move/from16 v14, v25

    move v2, v15

    move/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;-><init>(IIIIIIIIIII)V

    const/16 v4, 0x8

    move/from16 v5, v25

    if-nez v5, :cond_123

    if-gt v2, v4, :cond_123

    const/4 v6, 0x1

    shl-int v11, v6, v2

    goto :goto_124

    :cond_123
    move v11, v5

    :goto_124
    const/4 v6, 0x4

    mul-int/2addr v11, v6

    const/16 v7, 0x46

    add-int/2addr v11, v7

    .line 428
    array-length v8, v0

    add-int/2addr v8, v7

    .line 430
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v9, 0x0

    .line 434
    :try_start_131
    new-instance v10, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v10, v7, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    :try_end_138
    .catchall {:try_start_131 .. :try_end_138} :catchall_255

    const/16 v12, 0x42

    .line 437
    :try_start_13a
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v12, 0x4d

    .line 438
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 439
    invoke-virtual {v10, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V
    :try_end_145
    .catchall {:try_start_13a .. :try_end_145} :catchall_252

    const/4 v8, 0x0

    .line 440
    :try_start_146
    invoke-virtual {v10, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 441
    invoke-virtual {v10, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v11, 0x38

    .line 443
    invoke-virtual {v10, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 444
    invoke-virtual {v10, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 445
    div-int/lit8 v11, v17, 0x2

    invoke-virtual {v10, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 446
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 447
    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move/from16 v3, v24

    .line 448
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v3, v29

    .line 449
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v3, v28

    .line 450
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v3, v26

    .line 451
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 452
    invoke-virtual {v10, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v3, v16

    .line 453
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v3, v23

    .line 454
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v3, v22

    .line 455
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v12, v20

    .line 456
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v3, v21

    .line 457
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 458
    invoke-virtual {v10, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 459
    invoke-virtual {v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->flush()V
    :try_end_195
    .catchall {:try_start_146 .. :try_end_195} :catchall_250

    const/4 v3, 0x1

    .line 462
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v10, v0, v8

    invoke-static {v3, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 465
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 466
    new-instance v3, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;-><init>()V

    invoke-virtual {v3, v0, v9}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    add-int/lit8 v1, v1, 0x7

    .line 475
    div-int/2addr v1, v4

    .line 476
    rem-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1b8

    sub-int/2addr v6, v4

    add-int/2addr v1, v6

    :cond_1b8
    const/4 v4, 0x2

    .line 480
    div-int/lit8 v5, v17, 0x2

    mul-int/2addr v5, v1

    :try_start_1bc
    const-string v6, "transparency_map"

    const-string v7, "Not a Valid ICO File"

    .line 483
    invoke-static {v6, v0, v5, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v9
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c4} :catch_1c7

    const/16 v5, 0x20

    goto :goto_1cc

    :catch_1c7
    move-exception v0

    const/16 v5, 0x20

    if-ne v2, v5, :cond_24f

    :goto_1cc
    if-ne v2, v5, :cond_1ef

    move v2, v8

    const/4 v0, 0x1

    :goto_1d0
    if-eqz v0, :cond_1f0

    .line 494
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_1f0

    move v5, v8

    .line 495
    :goto_1d9
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_1ec

    .line 496
    invoke-virtual {v3, v5, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    and-int v6, v6, v18

    if-eqz v6, :cond_1e9

    move v0, v8

    goto :goto_1ec

    :cond_1e9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d9

    :cond_1ec
    :goto_1ec
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d0

    :cond_1ef
    const/4 v0, 0x1

    :cond_1f0
    if-eqz v0, :cond_244

    .line 505
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    invoke-direct {v0, v2, v5, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move v2, v8

    .line 507
    :goto_200
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_245

    move v4, v8

    .line 508
    :goto_207
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_23f

    if-eqz v9, :cond_22b

    .line 511
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    div-int/lit8 v7, v4, 0x8

    add-int/2addr v5, v7

    aget-byte v5, v9, v5

    const/16 v7, 0xff

    and-int/2addr v5, v7

    .line 513
    rem-int/lit8 v10, v4, 0x8

    rsub-int/lit8 v10, v10, 0x7

    shr-int/2addr v5, v10

    and-int/2addr v5, v6

    if-nez v5, :cond_229

    move v12, v7

    goto :goto_22e

    :cond_229
    move v12, v8

    goto :goto_22e

    :cond_22b
    const/16 v7, 0xff

    move v12, v7

    :goto_22e
    shl-int/lit8 v5, v12, 0x18

    const v6, 0xffffff

    .line 516
    invoke-virtual {v3, v4, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v10

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    invoke-virtual {v0, v4, v2, v5}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_207

    :cond_23f
    const/16 v7, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_200

    :cond_244
    move-object v0, v3

    .line 523
    :cond_245
    new-instance v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;

    move-object/from16 v2, p2

    move-object/from16 v3, v27

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;Ljava/awt/image/BufferedImage;)V

    return-object v1

    .line 488
    :cond_24f
    throw v0

    :catchall_250
    move-exception v0

    goto :goto_258

    :catchall_252
    move-exception v0

    const/4 v8, 0x0

    goto :goto_258

    :catchall_255
    move-exception v0

    const/4 v8, 0x0

    move-object v10, v9

    :goto_258
    const/4 v1, 0x1

    .line 462
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v10, v1, v8

    invoke-static {v8, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0

    .line 409
    :cond_261
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: Planes can\'t be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_278
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: Wrong bitmap header size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFileHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Reserved"

    const-string v1, "Not a Valid ICO File"

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    const-string v1, "IconType"

    const-string v2, "Not a Valid ICO File"

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const-string v2, "IconCount"

    const-string v3, "Not a Valid ICO File"

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    if-nez v0, :cond_4a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    goto :goto_44

    .line 140
    :cond_2d
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: icon type is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_44
    :goto_44
    new-instance v2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    invoke-direct {v2, v0, v1, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;-><init>(III)V

    return-object v2

    .line 137
    :cond_4a
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: reserved is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->guessFormat([B)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v0

    .line 529
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 530
    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 531
    new-instance v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Ljava/awt/image/BufferedImage;)V

    return-object v0

    .line 533
    :cond_16
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readBitmapIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move-result-object p1

    return-object p1
.end method

.method private readIconInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Width"

    const-string v1, "Not a Valid ICO File"

    .line 185
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    const-string v0, "Height"

    const-string v1, "Not a Valid ICO File"

    .line 187
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    const-string v0, "ColorCount"

    const-string v1, "Not a Valid ICO File"

    .line 191
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    const-string v0, "Reserved"

    const-string v1, "Not a Valid ICO File"

    .line 193
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v0, "Planes"

    const-string v1, "Not a Valid ICO File"

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v0, "BitCount"

    const-string v1, "Not a Valid ICO File"

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v0, "ImageSize"

    const-string v1, "Not a Valid ICO File"

    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v0, "ImageOffset"

    const-string v1, "Not a Valid ICO File"

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 205
    new-instance p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;-><init>(BBBBIIII)V

    return-object p1
.end method

.method private readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_4b

    .line 554
    :try_start_6
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readFileHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    move-result-object v3

    .line 556
    iget v4, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v4, v4, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    move v5, v1

    .line 557
    :goto_f
    iget v6, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v5, v6, :cond_1c

    .line 558
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readIconInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 561
    :cond_1c
    iget v5, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v5, v5, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move v6, v1

    .line 562
    :goto_21
    iget v7, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v6, v7, :cond_3c

    .line 563
    aget-object v7, v4, v6

    iget v7, v7, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;->imageOffset:I

    aget-object v8, v4, v6

    iget v8, v8, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;->imageSize:I

    invoke-virtual {p1, v7, v8}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(II)[B

    move-result-object v7

    .line 565
    aget-object v8, v4, v6

    invoke-direct {p0, v7, v8}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 568
    :cond_3c
    new-instance p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    invoke-direct {p1, v3, v5}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;)V
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_49

    .line 572
    new-array v3, v0, [Ljava/io/Closeable;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p1

    :catchall_49
    move-exception p1

    goto :goto_4d

    :catchall_4b
    move-exception p1

    const/4 v2, 0x0

    :goto_4d
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object p2

    .line 580
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->dump(Ljava/io/PrintWriter;)V

    .line 581
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-object v2, p2, v1

    .line 582
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .registers 2

    .line 72
    sget-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .registers 4

    const/4 v0, 0x1

    .line 77
    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object p1

    .line 604
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    const/4 v2, 0x0

    .line 605
    :goto_c
    iget v3, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v2, v3, :cond_1e

    .line 606
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    aget-object v3, v3, v2

    .line 608
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->readBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 610
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .registers 3
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

    .line 590
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object p1

    .line 591
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    .line 592
    iget p2, p2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-lez p2, :cond_14

    .line 593
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->readBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    .line 595
    :cond_14
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "No icons in ICO file"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .registers 2

    const-string v0, ".ico"

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .registers 3
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

    const/4 p1, 0x0

    return-object p1
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

    const/4 p1, 0x0

    return-object p1
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "ico-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 21
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

    move-object/from16 v1, p3

    if-nez v1, :cond_c

    .line 644
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_12

    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    :goto_12
    const-string v2, "FORMAT"

    .line 647
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "FORMAT"

    .line 648
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-string v2, "PIXEL_DENSITY"

    .line 651
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/PixelDensity;

    .line 653
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_238

    .line 658
    new-instance v1, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v3, 0x100

    .line 659
    invoke-virtual {v1, v0, v3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v3

    .line 662
    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v1

    const/4 v5, 0x2

    const/16 v7, 0x10

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-nez v3, :cond_4d

    if-eqz v1, :cond_4a

    const/16 v1, 0x20

    goto :goto_5e

    :cond_4a
    const/16 v1, 0x18

    goto :goto_5e

    .line 669
    :cond_4d
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v1

    if-gt v1, v5, :cond_55

    move v1, v10

    goto :goto_5e

    .line 671
    :cond_55
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v1

    if-gt v1, v7, :cond_5d

    move v1, v8

    goto :goto_5e

    :cond_5d
    move v1, v9

    .line 677
    :goto_5e
    new-instance v11, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v13, p2

    invoke-direct {v11, v13, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 679
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    mul-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x7

    div-int/2addr v12, v9

    .line 680
    rem-int/lit8 v13, v12, 0x4

    if-eqz v13, :cond_76

    rsub-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    .line 684
    :cond_76
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v13

    add-int/lit8 v13, v13, 0x7

    div-int/2addr v13, v9

    .line 685
    rem-int/lit8 v14, v13, 0x4

    if-eqz v14, :cond_84

    rsub-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    :cond_84
    const/4 v14, 0x0

    if-gt v1, v9, :cond_8a

    shl-int v15, v10, v1

    goto :goto_8b

    :cond_8a
    move v15, v14

    :goto_8b
    mul-int/2addr v15, v8

    const/16 v8, 0x28

    add-int/2addr v15, v8

    .line 689
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v16

    mul-int v16, v16, v12

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v16

    mul-int v16, v16, v13

    add-int v15, v15, v16

    .line 694
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 695
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 696
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 699
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 700
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    const/16 v7, 0xff

    if-gt v4, v7, :cond_b6

    if-le v6, v7, :cond_b8

    :cond_b6
    move v4, v14

    move v6, v4

    .line 705
    :cond_b8
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 706
    invoke-virtual {v11, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-lt v1, v9, :cond_c2

    move v4, v14

    goto :goto_c4

    :cond_c2
    shl-int v4, v10, v1

    .line 707
    :goto_c4
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 708
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 709
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 710
    invoke-virtual {v11, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 711
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v4, 0x16

    .line 712
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 715
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 717
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    mul-int/2addr v4, v5

    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 718
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 719
    invoke-virtual {v11, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 720
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 721
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v2, :cond_fa

    move v4, v14

    goto :goto_103

    .line 722
    :cond_fa
    invoke-virtual {v2}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_103
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v2, :cond_10a

    move v2, v14

    goto :goto_113

    .line 723
    :cond_10a
    invoke-virtual {v2}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    :goto_113
    invoke-virtual {v11, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 724
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 725
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v3, :cond_154

    move v2, v14

    :goto_11f
    shl-int v4, v10, v1

    if-ge v2, v4, :cond_154

    .line 729
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v4

    if-ge v2, v4, :cond_143

    .line 730
    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v4

    and-int/lit16 v5, v4, 0xff

    .line 731
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v5, v4, 0x8

    and-int/2addr v5, v7

    .line 732
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v5, 0x10

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    .line 733
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 734
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_151

    :cond_143
    const/16 v5, 0x10

    .line 736
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 737
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 738
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 739
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_151
    add-int/lit8 v2, v2, 0x1

    goto :goto_11f

    .line 746
    :cond_154
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x7

    div-int/2addr v2, v9

    sub-int/2addr v12, v2

    .line 747
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    sub-int/2addr v2, v10

    move v4, v14

    move v5, v4

    :goto_164
    if-ltz v2, :cond_1e3

    move v6, v4

    move v4, v14

    .line 748
    :goto_168
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    if-ge v4, v8, :cond_1c9

    .line 749
    invoke-virtual {v0, v4, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    const v15, 0xffffff

    if-ge v1, v9, :cond_189

    and-int/2addr v8, v15

    .line 752
    invoke-virtual {v3, v8}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v8

    shl-int/2addr v6, v1

    or-int/2addr v6, v8

    add-int/2addr v5, v1

    if-lt v5, v9, :cond_1c6

    and-int/lit16 v5, v6, 0xff

    .line 757
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v5, v14

    move v6, v5

    goto :goto_1c6

    :cond_189
    if-ne v1, v9, :cond_195

    and-int/2addr v8, v15

    .line 763
    invoke-virtual {v3, v8}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v8

    and-int/2addr v8, v7

    .line 764
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_1c6

    :cond_195
    const/16 v15, 0x18

    if-ne v1, v15, :cond_1ab

    and-int/lit16 v15, v8, 0xff

    .line 766
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v15, v8, 0x8

    and-int/2addr v15, v7

    .line 767
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v8, v8, 0x10

    and-int/2addr v8, v7

    .line 768
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_1c6

    :cond_1ab
    const/16 v15, 0x20

    if-ne v1, v15, :cond_1c6

    and-int/lit16 v15, v8, 0xff

    .line 770
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v15, v8, 0x8

    and-int/2addr v15, v7

    .line 771
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v15, v8, 0x10

    and-int/2addr v15, v7

    .line 772
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v8, v8, 0x18

    and-int/2addr v8, v7

    .line 773
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_1c6
    :goto_1c6
    add-int/lit8 v4, v4, 0x1

    goto :goto_168

    :cond_1c9
    if-lez v5, :cond_1d6

    rsub-int/lit8 v4, v5, 0x8

    shl-int v4, v6, v4

    and-int/2addr v4, v7

    .line 779
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v4, v14

    move v5, v4

    goto :goto_1d7

    :cond_1d6
    move v4, v6

    :goto_1d7
    move v6, v14

    :goto_1d8
    if-ge v6, v12, :cond_1e0

    .line 785
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d8

    :cond_1e0
    add-int/lit8 v2, v2, -0x1

    goto :goto_164

    .line 789
    :cond_1e3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v9

    sub-int/2addr v13, v1

    .line 790
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    sub-int/2addr v1, v10

    :goto_1f0
    if-ltz v1, :cond_234

    move v2, v14

    .line 791
    :goto_1f3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_21a

    .line 792
    invoke-virtual {v0, v2, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    const/16 v6, 0x18

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    shl-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_208

    or-int/lit8 v3, v4, 0x1

    goto :goto_209

    :cond_208
    move v3, v4

    :goto_209
    add-int/lit8 v4, v5, 0x1

    if-lt v4, v9, :cond_215

    and-int/lit16 v3, v3, 0xff

    .line 800
    invoke-virtual {v11, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v4, v14

    move v5, v4

    goto :goto_217

    :cond_215
    move v5, v4

    move v4, v3

    :goto_217
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f3

    :cond_21a
    const/16 v6, 0x18

    if-lez v5, :cond_228

    rsub-int/lit8 v2, v5, 0x8

    shl-int v2, v4, v2

    and-int/2addr v2, v7

    .line 808
    invoke-virtual {v11, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v4, v14

    move v5, v4

    :cond_228
    move v2, v14

    :goto_229
    if-ge v2, v13, :cond_231

    .line 814
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_229

    :cond_231
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f0

    .line 817
    :cond_234
    invoke-virtual {v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    return-void

    .line 654
    :cond_238
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 655
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
