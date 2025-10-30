.class Lorg/apache/commons/imaging/formats/pcx/PcxWriter;
.super Ljava/lang/Object;
.source "PcxWriter.java"


# instance fields
.field private bitDepth:I

.field private encoding:I

.field private pixelDensity:Lorg/apache/commons/imaging/PixelDensity;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    if-nez p1, :cond_e

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_14

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_14
    const-string v0, "FORMAT"

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    const-string v0, "PCX_COMPRESSION"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 53
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_40

    .line 57
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_59

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    goto :goto_59

    .line 54
    :cond_40
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid compression parameter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    :goto_59
    const-string v0, "PCX_BIT_DEPTH"

    .line 64
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 65
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 67
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_74

    .line 71
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    goto :goto_8d

    .line 68
    :cond_74
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bit depth parameter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    :goto_8d
    const-string v0, "PIXEL_DENSITY"

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 78
    instance-of v1, v0, Lorg/apache/commons/imaging/PixelDensity;

    if-eqz v1, :cond_a4

    .line 82
    check-cast v0, Lorg/apache/commons/imaging/PixelDensity;

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    goto :goto_ac

    .line 79
    :cond_a4
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Invalid pixel density parameter"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    if-nez v0, :cond_b8

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 87
    invoke-static {v0, v1, v0, v1}, Lorg/apache/commons/imaging/PixelDensity;->createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    .line 90
    :cond_b8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_bf

    return-void

    .line 91
    :cond_bf
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 92
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private write16ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 308
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    const/16 v2, 0x30

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    const/16 v5, 0x10

    if-ge v4, v5, :cond_42

    .line 315
    invoke-virtual {p2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v5

    if-ge v4, v5, :cond_23

    .line 316
    invoke-virtual {p2, v4}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v5

    goto :goto_24

    :cond_23
    move v5, v3

    :goto_24
    mul-int/lit8 v6, v4, 0x3

    add-int/lit8 v7, v6, 0x0

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 320
    aput-byte v8, v2, v7

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 321
    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 322
    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_42
    const/16 v4, 0xa

    .line 326
    invoke-virtual {p3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x5

    .line 327
    invoke-virtual {p3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 328
    iget v4, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x4

    .line 329
    invoke-virtual {p3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 330
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 331
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 332
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p3, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 333
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p3, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 334
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v5}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {p3, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 336
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v5}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {p3, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 337
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 338
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 339
    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 340
    invoke-virtual {p3, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 341
    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 342
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 343
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v2, 0x36

    new-array v2, v2, [B

    .line 344
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 346
    new-array v0, v0, [B

    move v2, v3

    .line 347
    :goto_a7
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_da

    .line 348
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    move v5, v3

    .line 349
    :goto_b1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_d4

    .line 350
    invoke-virtual {p1, v5, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    .line 351
    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v6

    .line 352
    div-int/lit8 v7, v5, 0x2

    aget-byte v8, v0, v7

    rem-int/lit8 v9, v5, 0x2

    rsub-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v4

    shl-int/2addr v6, v9

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    .line 354
    :cond_d4
    invoke-direct {p0, p3, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_da
    return-void
.end method

.method private write24BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 218
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    goto :goto_17

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    add-int/2addr v2, v3

    :goto_17
    const/16 v4, 0xa

    .line 222
    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x5

    .line 223
    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 224
    iget v4, v0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v4, 0x8

    .line 225
    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v5, 0x0

    .line 226
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 227
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 228
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 230
    iget-object v6, v0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 232
    iget-object v6, v0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v6, 0x30

    new-array v6, v6, [B

    .line 233
    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 234
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x3

    .line 235
    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 236
    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 237
    invoke-virtual {v1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 238
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 239
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v3, 0x36

    new-array v3, v3, [B

    .line 240
    invoke-virtual {v1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    new-array v14, v3, [I

    mul-int/lit8 v6, v2, 0x3

    .line 243
    new-array v15, v6, [B

    move v13, v5

    .line 244
    :goto_8b
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    if-ge v13, v6, :cond_d0

    const/4 v7, 0x0

    .line 245
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v16

    move-object/from16 v6, p1

    move v8, v13

    move-object v11, v14

    move/from16 v17, v13

    move/from16 v13, v16

    invoke-virtual/range {v6 .. v13}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move v6, v5

    :goto_a8
    if-ge v6, v3, :cond_ca

    .line 247
    aget v7, v14, v6

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v15, v6

    add-int v7, v2, v6

    .line 248
    aget v8, v14, v6

    shr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v15, v7

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v6

    .line 249
    aget v8, v14, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v15, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 251
    :cond_ca
    invoke-direct {v0, v1, v15}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v13, v17, 0x1

    goto :goto_8b

    :cond_d0
    return-void
.end method

.method private write256ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_e

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    goto :goto_13

    :cond_e
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    :goto_13
    const/16 v2, 0xa

    .line 364
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v2, 0x5

    .line 365
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 366
    iget v2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v2, 0x8

    .line 367
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v2, 0x0

    .line 368
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 369
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 370
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 371
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 372
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 374
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v3, 0x30

    new-array v3, v3, [B

    .line 375
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 376
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 377
    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 378
    invoke-virtual {p3, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 379
    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 380
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 381
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v1, 0x36

    new-array v1, v1, [B

    .line 382
    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 384
    new-array v0, v0, [B

    move v1, v2

    .line 385
    :goto_7e
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_a3

    move v3, v2

    .line 386
    :goto_85
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_9d

    .line 387
    invoke-virtual {p1, v3, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    .line 388
    invoke-virtual {p2, v4}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v4

    int-to-byte v4, v4

    .line 389
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 391
    :cond_9d
    invoke-direct {p0, p3, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_a3
    const/16 p0, 0xc

    .line 394
    invoke-virtual {p3, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move p0, v2

    :goto_a9
    const/16 p1, 0x100

    if-ge p0, p1, :cond_cf

    .line 397
    invoke-virtual {p2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p1

    if-ge p0, p1, :cond_b8

    .line 398
    invoke-virtual {p2, p0}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result p1

    goto :goto_b9

    :cond_b8
    move p1, v2

    :goto_b9
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 402
    invoke-virtual {p3, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 403
    invoke-virtual {p3, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 404
    invoke-virtual {p3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_a9

    :cond_cf
    return-void
.end method

.method private write32BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_e

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    goto :goto_13

    :cond_e
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    :goto_13
    const/16 v2, 0xa

    .line 182
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v2, 0x5

    .line 183
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 184
    iget v2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v2, 0x20

    .line 185
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v2, 0x0

    .line 186
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 187
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 188
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 189
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 190
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 192
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v3, 0x30

    new-array v3, v3, [B

    .line 193
    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 194
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 195
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 196
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 197
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 198
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 199
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v1, 0x36

    new-array v1, v1, [B

    .line 200
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 202
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    new-array v11, v1, [I

    mul-int/lit8 v0, v0, 0x4

    .line 203
    new-array v0, v0, [B

    move v12, v2

    .line 204
    :goto_86
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ge v12, v3, :cond_ce

    const/4 v4, 0x0

    .line 205
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v10

    move-object v3, p1

    move v5, v12

    move-object v8, v11

    invoke-virtual/range {v3 .. v10}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move v3, v2

    :goto_9e
    if-ge v3, v1, :cond_c8

    mul-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v4, 0x0

    .line 207
    aget v6, v11, v3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v4, 0x1

    .line 208
    aget v6, v11, v3

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v4, 0x2

    .line 209
    aget v6, v11, v3

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x3

    .line 210
    aput-byte v2, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 212
    :cond_c8
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_86

    :cond_ce
    return-void
.end method

.method private writeBlackAndWhitePCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 259
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    const/16 v1, 0xa

    .line 264
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v1, 0x3

    .line 265
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 267
    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v1, 0x1

    .line 268
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 270
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 271
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 272
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 273
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 275
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v3, 0x30

    new-array v3, v3, [B

    .line 276
    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 277
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 278
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 279
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 280
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 281
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 282
    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v3, 0x36

    new-array v3, v3, [B

    .line 283
    invoke-virtual {p2, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 285
    new-array v0, v0, [B

    move v3, v2

    .line 286
    :goto_78
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_b5

    .line 287
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    move v4, v2

    .line 288
    :goto_82
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_af

    .line 289
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    if-nez v5, :cond_94

    move v5, v2

    goto :goto_97

    :cond_94
    if-ne v5, v6, :cond_a7

    move v5, v1

    .line 299
    :goto_97
    div-int/lit8 v6, v4, 0x8

    aget-byte v7, v0, v6

    rem-int/lit8 v8, v4, 0x8

    rsub-int/lit8 v8, v8, 0x7

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 296
    :cond_a7
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Pixel neither black nor white"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_af
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    :cond_b5
    return-void
.end method

.method private writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    if-nez v0, :cond_8

    .line 99
    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    goto :goto_4d

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    const/4 p0, -0x1

    .line 104
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    const/16 v4, 0xc0

    if-ge v2, v0, :cond_39

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    if-ne v5, p0, :cond_20

    const/16 v6, 0x3f

    if-ge v3, v6, :cond_20

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_20
    if-lez v3, :cond_34

    if-ne v3, v1, :cond_2c

    and-int/lit16 v6, p0, 0xc0

    if-eq v6, v4, :cond_2c

    .line 112
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_34

    :cond_2c
    or-int/lit16 v3, v3, 0xc0

    .line 114
    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 115
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_34
    :goto_34
    move v3, v1

    move p0, v5

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_39
    if-lez v3, :cond_4d

    if-ne v3, v1, :cond_45

    and-int/lit16 p2, p0, 0xc0

    if-eq p2, v4, :cond_45

    .line 124
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_4d

    :cond_45
    or-int/lit16 p2, v3, 0xc0

    .line 126
    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 127
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_4d
    :goto_4d
    return-void

    .line 131
    :cond_4e
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid PCX encoding "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v1, 0x100

    .line 140
    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v0

    .line 142
    new-instance v1, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 p2, 0x20

    if-eqz v0, :cond_73

    .line 144
    iget v2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    const/16 v3, 0x18

    if-eq v2, v3, :cond_73

    if-ne v2, p2, :cond_1f

    goto :goto_73

    .line 150
    :cond_1f
    invoke-virtual {v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p2

    const/16 v2, 0x10

    if-gt p2, v2, :cond_6f

    iget p2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2e

    goto :goto_6f

    .line 152
    :cond_2e
    invoke-virtual {v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p2

    const/4 v2, 0x2

    if-gt p2, v2, :cond_6b

    iget p2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_3b

    goto :goto_6b

    .line 156
    :cond_3b
    invoke-virtual {v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p2

    const v3, 0xffffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt p2, v5, :cond_50

    .line 157
    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result p2

    if-eqz p2, :cond_50

    if-eq p2, v3, :cond_50

    move p2, v4

    goto :goto_51

    :cond_50
    move p2, v5

    .line 162
    :goto_51
    invoke-virtual {v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v6

    if-ne v6, v2, :cond_60

    .line 163
    invoke-virtual {v0, v5}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v2

    if-eqz v2, :cond_60

    if-eq v2, v3, :cond_60

    goto :goto_61

    :cond_60
    move v4, p2

    :goto_61
    if-eqz v4, :cond_67

    .line 169
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeBlackAndWhitePCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_7e

    .line 171
    :cond_67
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write16ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_7e

    .line 153
    :cond_6b
    :goto_6b
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write16ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_7e

    .line 151
    :cond_6f
    :goto_6f
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write256ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_7e

    .line 145
    :cond_73
    :goto_73
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    if-ne v0, p2, :cond_7b

    .line 146
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write32BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_7e

    .line 148
    :cond_7b
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write24BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    :goto_7e
    return-void
.end method
