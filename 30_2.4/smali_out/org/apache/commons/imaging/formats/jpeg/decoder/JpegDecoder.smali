.class public Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegDecoder.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final block:[F

.field private final blockInt:[I

.field private final huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private final huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private image:Ljava/awt/image/BufferedImage;

.field private imageReadException:Lorg/apache/commons/imaging/ImageReadException;

.field private ioException:Ljava/io/IOException;

.field private final quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

.field private final scaledQuantizationTables:[[F

.field private sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

.field private sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

.field private final zz:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    const/4 v0, 0x4

    .line 51
    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    .line 52
    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 53
    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 56
    new-array v0, v0, [[F

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    const/16 v0, 0x40

    .line 60
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    .line 62
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    return-void
.end method

.method private allocateMCUMemory()[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    const/4 v1, 0x0

    move v2, v1

    .line 281
    :goto_8
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v3, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v2, v3, :cond_4e

    .line 282
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v1

    .line 284
    :goto_16
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v5, v6, :cond_32

    .line 285
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v6, v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v6

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iget v7, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    if-ne v6, v7, :cond_2f

    .line 286
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v4

    goto :goto_32

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_32
    :goto_32
    if-eqz v4, :cond_46

    .line 293
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    iget v5, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int/lit8 v5, v5, 0x8

    iget v4, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v5, v4}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;-><init>(II)V

    .line 296
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 291
    :cond_46
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Invalid component"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    return-object v0
.end method

.method private decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v0

    const/4 v1, 0x1

    .line 424
    :goto_5
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMaxCode()[I

    move-result-object v2

    aget v2, v2, v1

    if-le v0, v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 426
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5

    .line 428
    :cond_17
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getValPtr()[I

    move-result-object p1

    aget p1, p1, v1

    .line 429
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMinCode()[I

    move-result-object v2

    aget v1, v2, v1

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 430
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getHuffVal()[I

    move-result-object p2

    aget p1, p2, p1

    return p1
.end method

.method private extend(II)I
    .registers 5

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    :goto_5
    if-ge p1, v0, :cond_c

    const/4 v0, -0x1

    shl-int/2addr v0, p2

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    goto :goto_5

    :cond_c
    return p1
.end method

.method private static fastRound(F)I
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private readMCU(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 303
    :goto_6
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v4, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v3, v4, :cond_125

    .line 304
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    invoke-virtual {v4, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v2

    .line 306
    :goto_14
    iget-object v7, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v6, v7, :cond_30

    .line 307
    iget-object v7, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v7, v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v7

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iget v8, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    if-ne v7, v8, :cond_2d

    .line 308
    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v5

    goto :goto_30

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_30
    :goto_30
    if-eqz v5, :cond_11d

    .line 315
    aget-object v6, p3, v3

    move v7, v2

    .line 316
    :goto_35
    iget v8, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    if-ge v7, v8, :cond_118

    move v8, v2

    .line 317
    :goto_3a
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    if-ge v8, v9, :cond_113

    .line 318
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    invoke-static {v9, v2}, Ljava/util/Arrays;->fill([II)V

    .line 320
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iget v10, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->dcCodingTableSelector:I

    aget-object v9, v9, v10

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v9

    .line 323
    invoke-direct {v0, v9, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I

    move-result v10

    .line 324
    invoke-direct {v0, v10, v9}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->extend(II)I

    move-result v9

    .line 325
    iget-object v10, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    aget v11, p2, v3

    add-int/2addr v11, v9

    aput v11, v10, v2

    .line 326
    aget v9, v10, v2

    aput v9, p2, v3

    const/4 v9, 0x1

    move v10, v9

    .line 331
    :goto_62
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iget v12, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->acCodingTableSelector:I

    aget-object v11, v11, v12

    invoke-direct {v0, v1, v11}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v11

    and-int/lit8 v12, v11, 0xf

    shr-int/lit8 v11, v11, 0x4

    if-nez v12, :cond_7a

    const/16 v12, 0xf

    if-ne v11, v12, :cond_91

    add-int/lit8 v10, v10, 0x10

    goto/16 :goto_110

    :cond_7a
    add-int/2addr v10, v11

    .line 348
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    invoke-direct {v0, v12, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I

    move-result v13

    aput v13, v11, v10

    .line 349
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    aget v13, v11, v10

    invoke-direct {v0, v13, v12}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->extend(II)I

    move-result v12

    aput v12, v11, v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_10e

    .line 359
    :cond_91
    iget-object v10, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v10, v10, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    sub-int/2addr v10, v9

    shl-int v10, v9, v10

    .line 360
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v11, v11, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    shl-int v11, v9, v11

    add-int/lit8 v9, v11, -0x1

    .line 362
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    iget v12, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->quantTabDestSelector:I

    aget-object v11, v11, v12

    .line 363
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    iget-object v13, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    invoke-static {v12, v13}, Lorg/apache/commons/imaging/formats/jpeg/decoder/ZigZag;->zigZagToBlock([I[I)V

    move v12, v2

    :goto_ae
    const/16 v13, 0x40

    if-ge v12, v13, :cond_c1

    .line 365
    iget-object v13, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    iget-object v14, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    aget v14, v14, v12

    int-to-float v14, v14

    aget v15, v11, v12

    mul-float/2addr v14, v15

    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_ae

    .line 367
    :cond_c1
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    invoke-static {v11}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->inverseDCT8x8([F)V

    mul-int/lit8 v11, v7, 0x8

    const/16 v12, 0x8

    mul-int/2addr v11, v12

    .line 369
    iget v13, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int/2addr v11, v13

    mul-int/lit8 v13, v8, 0x8

    add-int/2addr v11, v13

    move v14, v2

    move v13, v11

    move v11, v14

    :goto_d4
    if-ge v11, v12, :cond_109

    move v15, v14

    move v14, v2

    :goto_d8
    if-ge v14, v12, :cond_100

    .line 374
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    add-int/lit8 v16, v15, 0x1

    aget v2, v2, v15

    int-to-float v15, v10

    add-float/2addr v2, v15

    const/4 v15, 0x0

    cmpg-float v15, v2, v15

    if-gez v15, :cond_e9

    const/4 v2, 0x0

    goto :goto_f4

    :cond_e9
    int-to-float v15, v9

    cmpl-float v15, v2, v15

    if-lez v15, :cond_f0

    move v2, v9

    goto :goto_f4

    .line 382
    :cond_f0
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->fastRound(F)I

    move-result v2

    .line 384
    :goto_f4
    iget-object v15, v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v17, v13, v14

    aput v2, v15, v17

    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    const/4 v2, 0x0

    goto :goto_d8

    .line 386
    :cond_100
    iget v2, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int/2addr v2, v12

    add-int/2addr v13, v2

    add-int/lit8 v11, v11, 0x1

    move v14, v15

    const/4 v2, 0x0

    goto :goto_d4

    :cond_109
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3a

    :cond_10e
    add-int/lit8 v10, v10, 0x1

    :goto_110
    const/4 v2, 0x0

    goto/16 :goto_62

    :cond_113
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto/16 :goto_35

    :cond_118
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 313
    :cond_11d
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid component"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_125
    return-void
.end method

.method private receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eq v0, p1, :cond_e

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 414
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_e
    return v1
.end method

.method private rescaleMCU([Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V
    .registers 21

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    move v4, v3

    .line 244
    :goto_8
    array-length v5, v0

    if-ge v4, v5, :cond_81

    .line 245
    aget-object v5, v0, v4

    .line 246
    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    if-ne v6, v1, :cond_21

    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    if-ne v6, v2, :cond_21

    .line 247
    iget-object v5, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    aget-object v6, p4, v4

    iget-object v6, v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    mul-int v7, v1, v2

    invoke-static {v5, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7e

    .line 250
    :cond_21
    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    div-int v6, v1, v6

    .line 251
    iget v7, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    div-int v7, v2, v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5c

    if-ne v7, v8, :cond_5c

    move v6, v3

    move v7, v6

    move v8, v7

    .line 255
    :goto_31
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    if-ge v6, v9, :cond_7e

    move v9, v3

    :goto_36
    if-ge v9, v1, :cond_53

    .line 257
    iget-object v10, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    shr-int/lit8 v11, v9, 0x1

    add-int/2addr v11, v7

    aget v10, v10, v11

    .line 258
    aget-object v11, p4, v4

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v12, v8, v9

    aput v10, v11, v12

    .line 259
    aget-object v11, p4, v4

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v12, v8, v1

    add-int/2addr v12, v9

    aput v10, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    .line 261
    :cond_53
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    add-int/2addr v7, v9

    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_5c
    move v8, v3

    move v9, v8

    :goto_5e
    if-ge v8, v2, :cond_7e

    move v10, v3

    :goto_61
    if-ge v10, v1, :cond_7a

    .line 269
    aget-object v11, p4, v4

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v12, v9, v10

    iget-object v13, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    div-int v14, v8, v7

    iget v15, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    mul-int/2addr v14, v15

    div-int v15, v10, v6

    add-int/2addr v14, v15

    aget v13, v13, v14

    aput v13, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    :cond_7a
    add-int/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    :cond_7e
    :goto_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_81
    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 435
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    .line 436
    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 437
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    if-nez p1, :cond_14

    .line 440
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    if-nez p1, :cond_13

    .line 443
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->image:Ljava/awt/image/BufferedImage;

    return-object p1

    .line 441
    :cond_13
    throw p1

    .line 438
    :cond_14
    throw p1
.end method

.method public visitSOS(I[B[B)V
    .registers 28

    move-object/from16 v1, p0

    .line 69
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_9
    const-string v2, "segmentLength"

    const-string v3, "Not a Valid JPEG File"

    .line 71
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    const-string v3, "SosSegment"

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    const-string v5, "Not a Valid JPEG File"

    .line 72
    invoke-static {v3, v0, v2, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v2

    .line 74
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    move/from16 v5, p1

    invoke-direct {v3, v5, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;-><init>(I[B)V

    iput-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    const/4 v2, 0x0

    move v3, v2

    move v5, v3

    move v6, v5

    .line 78
    :goto_2c
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v3, v7, :cond_4d

    .line 79
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v7, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v7

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 81
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v7, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v7

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_4d
    mul-int/lit8 v5, v5, 0x8

    mul-int/lit8 v6, v6, 0x8

    .line 87
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;

    invoke-direct {v3, v0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    add-int/2addr v0, v5

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    div-int/2addr v0, v5

    .line 89
    iget-object v8, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v8, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    add-int/2addr v8, v6

    sub-int/2addr v8, v7

    div-int/2addr v8, v6

    .line 90
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->allocateMCUMemory()[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    move-result-object v9

    .line 91
    array-length v10, v9

    new-array v10, v10, [Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    move v11, v2

    .line 92
    :goto_6d
    array-length v12, v10

    if-ge v11, v12, :cond_7a

    .line 93
    new-instance v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    invoke-direct {v12, v5, v6}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;-><init>(II)V

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6d

    .line 95
    :cond_7a
    iget-object v11, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v11, v11, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    new-array v11, v11, [I

    .line 98
    iget-object v12, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v12, v12, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    const/16 v14, 0x18

    const/16 v15, 0xff

    const v13, 0xff00

    const/high16 v4, 0xff0000

    const/4 v7, 0x3

    if-ne v12, v7, :cond_b2

    .line 99
    new-instance v12, Ljava/awt/image/DirectColorModel;

    invoke-direct {v12, v14, v4, v13, v15}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 101
    iget-object v14, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v14, v14, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget-object v15, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v15, v15, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    new-array v13, v7, [I

    aput v4, v13, v2

    const/4 v4, 0x1

    const v17, 0xff00

    aput v17, v13, v4

    const/4 v4, 0x2

    const/16 v16, 0xff

    aput v16, v13, v4

    const/4 v4, 0x0

    invoke-static {v7, v14, v15, v13, v4}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v4

    goto :goto_df

    .line 104
    :cond_b2
    iget-object v12, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v12, v12, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e5

    .line 105
    new-instance v12, Ljava/awt/image/DirectColorModel;

    const v13, 0xff00

    const/16 v15, 0xff

    invoke-direct {v12, v14, v4, v13, v15}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 107
    iget-object v13, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v13, v13, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget-object v14, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v14, v14, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    new-array v15, v7, [I

    aput v4, v15, v2

    const/4 v4, 0x1

    const v17, 0xff00

    aput v17, v15, v4

    const/4 v4, 0x2

    const/16 v16, 0xff

    aput v16, v15, v4

    const/4 v4, 0x0

    invoke-static {v7, v13, v14, v15, v4}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v4

    .line 120
    :goto_df
    invoke-virtual {v4}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v13

    move v14, v2

    :goto_e4
    mul-int v15, v6, v8

    if-ge v14, v15, :cond_1d4

    move v15, v2

    :goto_e9
    mul-int v2, v5, v0

    if-ge v15, v2, :cond_1c1

    .line 124
    invoke-direct {v1, v3, v11, v9}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->readMCU(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V

    .line 125
    invoke-direct {v1, v9, v5, v6, v10}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->rescaleMCU([Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V

    .line 127
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v2, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    mul-int/2addr v2, v14

    add-int/2addr v2, v15

    move/from16 v17, v2

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_fe
    if-ge v2, v6, :cond_1a9

    add-int v7, v14, v2

    move/from16 v18, v0

    .line 128
    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    if-ge v7, v0, :cond_1ab

    const/4 v0, 0x0

    :goto_10b
    if-ge v0, v5, :cond_18a

    add-int v7, v15, v0

    move-object/from16 v19, v3

    .line 130
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v3, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    if-ge v7, v3, :cond_18c

    .line 131
    array-length v3, v10

    const/4 v7, 0x3

    if-ne v3, v7, :cond_144

    const/4 v3, 0x0

    .line 132
    aget-object v7, v10, v3

    iget-object v3, v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v7, v16, v0

    aget v3, v3, v7

    move/from16 v21, v8

    const/16 v20, 0x1

    .line 133
    aget-object v8, v10, v20

    iget-object v8, v8, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    aget v8, v8, v7

    move-object/from16 p2, v11

    const/16 v20, 0x2

    .line 134
    aget-object v11, v10, v20

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    aget v7, v11, v7

    .line 135
    invoke-static {v3, v8, v7}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->convertYCbCrToRGB(III)I

    move-result v3

    add-int v7, v17, v0

    .line 137
    invoke-virtual {v13, v7, v3}, Ljava/awt/image/DataBuffer;->setElem(II)V

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_164

    :cond_144
    move/from16 v21, v8

    move-object/from16 p2, v11

    const/16 v20, 0x2

    .line 138
    array-length v3, v9

    const/4 v7, 0x1

    if-ne v3, v7, :cond_16d

    const/4 v3, 0x0

    .line 139
    aget-object v8, v10, v3

    iget-object v8, v8, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v11, v16, v0

    aget v8, v8, v11

    add-int v11, v17, v0

    shl-int/lit8 v22, v8, 0x10

    shl-int/lit8 v23, v8, 0x8

    or-int v22, v22, v23

    or-int v8, v22, v8

    .line 140
    invoke-virtual {v13, v11, v8}, Ljava/awt/image/DataBuffer;->setElem(II)V

    :goto_164
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, p2

    move-object/from16 v3, v19

    move/from16 v8, v21

    goto :goto_10b

    .line 143
    :cond_16d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported JPEG with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " components"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18a
    move-object/from16 v19, v3

    :cond_18c
    move/from16 v21, v8

    move-object/from16 p2, v11

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/16 v20, 0x2

    add-int v16, v16, v5

    .line 149
    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    add-int v17, v17, v0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, p2

    move/from16 v0, v18

    move-object/from16 v3, v19

    move/from16 v8, v21

    const/4 v7, 0x3

    goto/16 :goto_fe

    :cond_1a9
    move/from16 v18, v0

    :cond_1ab
    move-object/from16 v19, v3

    move/from16 v21, v8

    move-object/from16 p2, v11

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/16 v20, 0x2

    add-int/2addr v15, v5

    move-object/from16 v11, p2

    move/from16 v0, v18

    move-object/from16 v3, v19

    move/from16 v8, v21

    const/4 v7, 0x3

    goto/16 :goto_e9

    :cond_1c1
    move/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v21, v8

    move-object/from16 p2, v11

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/16 v20, 0x2

    add-int/2addr v14, v6

    move v2, v3

    move-object/from16 v3, v19

    const/4 v7, 0x3

    goto/16 :goto_e4

    .line 153
    :cond_1d4
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v12}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-direct {v0, v12, v4, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->image:Ljava/awt/image/BufferedImage;

    goto :goto_212

    .line 117
    :cond_1e5
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v3, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " components are invalid or unsupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_200
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_9 .. :try_end_200} :catch_20f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_200} :catch_20b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_200} :catch_200

    :catch_200
    move-exception v0

    .line 167
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Error parsing JPEG"

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    goto :goto_212

    :catch_20b
    move-exception v0

    .line 164
    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    goto :goto_212

    :catch_20f
    move-exception v0

    .line 162
    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    :goto_212
    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0xd

    .line 175
    new-array p2, p2, [I

    fill-array-data p2, :array_f6

    .line 191
    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    const/4 p3, 0x1

    if-ltz p2, :cond_24

    const p2, 0xffc0

    if-ne p1, p2, :cond_1c

    .line 196
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    goto/16 :goto_f5

    .line 193
    :cond_1c
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Only sequential, baseline JPEGs are supported at the moment"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    const p2, 0xffdb

    const/4 p4, 0x0

    if-ne p1, p2, :cond_8c

    .line 198
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(I[B)V

    move p1, p4

    .line 199
    :goto_30
    iget-object p5, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_f5

    .line 200
    iget-object p5, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    .line 202
    iget v0, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    if-ltz v0, :cond_73

    iget v0, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    array-length v2, v1

    if-ge v0, v2, :cond_73

    .line 208
    iget v0, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    aput-object p5, v1, v0

    const/16 v0, 0x40

    .line 209
    new-array v1, v0, [I

    .line 210
    invoke-virtual {p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->getElements()[I

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/ZigZag;->zigZagToBlock([I[I)V

    .line 211
    new-array v2, v0, [F

    move v3, p4

    :goto_5d
    if-ge v3, v0, :cond_67

    .line 213
    aget v4, v1, v3

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 215
    :cond_67
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->scaleDequantizationMatrix([F)V

    .line 216
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    iget p5, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    aput-object v2, v0, p5

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    .line 204
    :cond_73
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid quantization table identifier "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p5, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    const p2, 0xffc4

    if-ne p1, p2, :cond_f5

    .line 219
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;-><init>(I[B)V

    .line 220
    :goto_96
    iget-object p1, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p4, p1, :cond_f5

    .line 221
    iget-object p1, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 223
    iget p5, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    if-nez p5, :cond_ad

    .line 224
    iget-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    goto :goto_b3

    .line 225
    :cond_ad
    iget p5, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    if-ne p5, p3, :cond_dc

    .line 226
    iget-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 231
    :goto_b3
    iget v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    if-ltz v0, :cond_c3

    iget v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    array-length v1, p5

    if-ge v0, v1, :cond_c3

    .line 237
    iget v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    aput-object p1, p5, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_96

    .line 233
    :cond_c3
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid huffman table identifier "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 228
    :cond_dc
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid huffman table class "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f5
    :goto_f5
    return p3

    :array_f6
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method
