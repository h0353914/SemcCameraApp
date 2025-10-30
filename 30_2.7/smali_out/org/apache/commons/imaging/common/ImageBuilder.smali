.class public Lorg/apache/commons/imaging/common/ImageBuilder;
.super Ljava/lang/Object;
.source "ImageBuilder.java"


# instance fields
.field private final data:[I

.field private final hasAlpha:Z

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1c

    if-lez p2, :cond_14

    mul-int v0, p1, p2

    .line 78
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    .line 79
    iput p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    .line 80
    iput p2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    .line 81
    iput-boolean p3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->hasAlpha:Z

    return-void

    .line 75
    :cond_14
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "zero or negative height value"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1c
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "zero or negative width value"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private makeBufferedImage([IIIZ)Ljava/awt/image/BufferedImage;
    .registers 13

    .line 193
    new-instance v0, Ljava/awt/image/DataBufferInt;

    mul-int v1, p2, p3

    invoke-direct {v0, p1, v1}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    if-eqz p4, :cond_29

    .line 195
    new-instance p1, Ljava/awt/image/DirectColorModel;

    const/16 v3, 0x20

    const/high16 v4, 0xff0000

    const v5, 0xff00

    const/16 v6, 0xff

    const/high16 v7, -0x1000000

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Ljava/awt/image/DirectColorModel;-><init>(IIIII)V

    const/4 p4, 0x4

    .line 197
    new-array v4, p4, [I

    fill-array-data v4, :array_54

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    goto :goto_45

    .line 201
    :cond_29
    new-instance p1, Ljava/awt/image/DirectColorModel;

    const/16 p4, 0x18

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    invoke-direct {p1, p4, v1, v2, v3}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    const/4 p4, 0x3

    .line 203
    new-array v4, p4, [I

    fill-array-data v4, :array_60

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    .line 207
    :goto_45
    new-instance p3, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p3, p1, p2, p4, v0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p3

    :array_54
    .array-data 4
        0xff0000
        0xff00
        0xff
        -0x1000000
    .end array-data

    :array_60
    .array-data 4
        0xff0000
        0xff00
        0xff
    .end array-data
.end method


# virtual methods
.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .registers 5

    .line 131
    iget-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    iget v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    iget v2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    iget-boolean v3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->hasAlpha:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->makeBufferedImage([IIIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 97
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    return v0
.end method

.method public getRGB(II)I
    .registers 4

    .line 109
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    mul-int/2addr p2, v0

    .line 110
    iget-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1
.end method

.method public getSubimage(IIII)Ljava/awt/image/BufferedImage;
    .registers 10

    if-lez p3, :cond_5e

    if-lez p4, :cond_56

    if-ltz p1, :cond_4e

    .line 159
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    if-ge p1, v0, :cond_4e

    add-int v1, p1, p3

    if-gt v1, v0, :cond_46

    if-ltz p2, :cond_3e

    .line 166
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    if-ge p2, v0, :cond_3e

    add-int v1, p2, p4

    if-gt v1, v0, :cond_36

    mul-int v0, p3, p4

    .line 176
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v1, p4, :cond_2f

    add-int v3, v1, p2

    .line 179
    iget v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    mul-int/2addr v3, v4

    add-int/2addr v3, p1

    .line 180
    iget-object v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    invoke-static {v4, v3, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 185
    :cond_2f
    iget-boolean p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->hasAlpha:Z

    invoke-direct {p0, v0, p3, p4, p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->makeBufferedImage([IIIZ)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    .line 170
    :cond_36
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage (y+height) is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_3e
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage y is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_46
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage (x+width) is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_4e
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage x is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_56
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "negative or zero subimage height"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_5e
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "negative or zero subimage width"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWidth()I
    .registers 2

    .line 89
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    return v0
.end method

.method public setRGB(III)V
    .registers 5

    .line 122
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    mul-int/2addr p2, v0

    .line 123
    iget-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    add-int/2addr p2, p1

    aput p3, v0, p2

    return-void
.end method
