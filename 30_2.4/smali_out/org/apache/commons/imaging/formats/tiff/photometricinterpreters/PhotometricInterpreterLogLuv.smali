.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterLogLuv.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .registers 6

    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method

.method private cube(F)F
    .registers 3

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 45
    aget v2, p2, v1

    const/4 v3, 0x1

    .line 46
    aget v3, p2, v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    .line 47
    aget v4, p2, v4

    int-to-byte v4, v4

    int-to-float v2, v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v2, v6

    const/high16 v7, 0x41800000    # 16.0f

    add-float/2addr v2, v7

    const/high16 v7, 0x42e80000    # 116.0f

    div-float/2addr v2, v7

    int-to-float v3, v3

    const/high16 v7, 0x43fa0000    # 500.0f

    div-float/2addr v3, v7

    add-float/2addr v3, v2

    int-to-float v4, v4

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v4, v7

    sub-float v4, v2, v4

    .line 55
    invoke-direct {v0, v3}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v7

    .line 56
    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v8

    .line 57
    invoke-direct {v0, v4}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v9

    const v10, 0x3c1118c2    # 0.008856f

    cmpl-float v11, v8, v10

    const v12, 0x40f92f1b    # 7.787f

    const v13, 0x3e0d3dcb

    if-lez v11, :cond_3f

    goto :goto_42

    :cond_3f
    sub-float/2addr v2, v13

    div-float v8, v2, v12

    :goto_42
    cmpl-float v2, v7, v10

    if-lez v2, :cond_47

    goto :goto_4a

    :cond_47
    sub-float/2addr v3, v13

    div-float v7, v3, v12

    :goto_4a
    cmpl-float v2, v9, v10

    if-lez v2, :cond_4f

    goto :goto_52

    :cond_4f
    sub-float/2addr v4, v13

    div-float v9, v4, v12

    :goto_52
    const v2, 0x42be1810

    mul-float/2addr v7, v2

    mul-float/2addr v8, v5

    const v2, 0x42d9c419

    mul-float/2addr v9, v2

    div-float/2addr v7, v5

    div-float/2addr v8, v5

    div-float/2addr v9, v5

    const v2, 0x404f65fe

    mul-float/2addr v2, v7

    const v3, -0x403b3d08    # -1.5372f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const v3, -0x4100b780    # -0.4986f

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    const v3, -0x4087f62b    # -0.9689f

    mul-float/2addr v3, v7

    const v4, 0x3ff01a37    # 1.8758f

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    const v4, 0x3d29fbe7    # 0.0415f

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    const v4, 0x3d6425af    # 0.0557f

    mul-float/2addr v7, v4

    const v4, -0x41af1aa0    # -0.204f

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    const v4, 0x3f874bc7    # 1.057f

    mul-float/2addr v9, v4

    add-float/2addr v7, v9

    float-to-double v4, v2

    const-wide v8, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v10, v4, v8

    const v11, 0x3d6147ae    # 0.055f

    const-wide v12, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const v14, 0x3f870a3d    # 1.055f

    const v15, 0x414eb852    # 12.92f

    if-lez v10, :cond_a8

    .line 102
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v2, v14

    sub-float/2addr v2, v11

    goto :goto_a9

    :cond_a8
    mul-float/2addr v2, v15

    :goto_a9
    float-to-double v4, v3

    cmpl-double v10, v4, v8

    if-lez v10, :cond_b6

    .line 107
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v14

    sub-float/2addr v3, v11

    goto :goto_b7

    :cond_b6
    mul-float/2addr v3, v15

    :goto_b7
    float-to-double v4, v7

    cmpl-double v8, v4, v8

    if-lez v8, :cond_c4

    .line 113
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v14

    sub-float/2addr v4, v11

    goto :goto_c6

    :cond_c4
    mul-float v4, v7, v15

    :goto_c6
    mul-float/2addr v2, v6

    float-to-int v2, v2

    mul-float/2addr v3, v6

    float-to-int v3, v3

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 144
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v5, 0xff

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 145
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 146
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, -0x1000000

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    shl-int/lit8 v1, v4, 0x0

    or-int/2addr v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 149
    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
