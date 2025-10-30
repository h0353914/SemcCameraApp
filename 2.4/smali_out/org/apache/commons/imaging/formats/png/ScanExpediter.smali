.class abstract Lorg/apache/commons/imaging/formats/png/ScanExpediter;
.super Ljava/lang/Object;
.source "ScanExpediter.java"


# instance fields
.field protected final bi:Ljava/awt/image/BufferedImage;

.field protected final bitDepth:I

.field protected final bitsPerPixel:I

.field protected final bytesPerPixel:I

.field protected final gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

.field protected final height:I

.field protected final is:Ljava/io/InputStream;

.field protected final pngChunkPLTE:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

.field protected final pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field protected final transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

.field protected final width:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .registers 11

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->width:I

    .line 55
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->height:I

    .line 56
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->is:Ljava/io/InputStream;

    .line 57
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bi:Ljava/awt/image/BufferedImage;

    .line 58
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 59
    iput p6, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bitDepth:I

    .line 60
    invoke-virtual {p0, p7}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getBitsToBytesRoundingUp(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bytesPerPixel:I

    .line 61
    iput p7, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bitsPerPixel:I

    .line 62
    iput-object p8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    .line 63
    iput-object p9, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    .line 64
    iput-object p10, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    return-void
.end method


# virtual methods
.method public abstract drive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final getBitsToBytesRoundingUp(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x7

    .line 68
    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method protected getNextScanline(Ljava/io/InputStream;I[BI)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_37

    .line 206
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/FilterType;->values()[Lorg/apache/commons/imaging/formats/png/FilterType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_20

    const-string v1, "scanline"

    const-string v2, "PNG: missing image data"

    .line 210
    invoke-static {v1, p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    .line 212
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/FilterType;->values()[Lorg/apache/commons/imaging/formats/png/FilterType;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p0, p2, p1, p3, p4}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->unfilterScanline(Lorg/apache/commons/imaging/formats/png/FilterType;[B[BI)[B

    move-result-object p1

    return-object p1

    .line 207
    :cond_20
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PNG: unknown filterType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_37
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNG: missing filter type"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getPixelARGB(IIII)I
    .registers 5

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p2, p4, 0xff

    shl-int/lit8 p2, p2, 0x0

    or-int/2addr p1, p2

    return p1
.end method

.method protected final getPixelRGB(III)I
    .registers 5

    const/16 v0, 0xff

    .line 79
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p1

    return p1
.end method

.method protected getRGB(Lorg/apache/commons/imaging/formats/png/BitParser;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediter$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_cc

    .line 170
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PNG: unknown color type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :pswitch_29
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 157
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v2

    .line 158
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v1

    const/4 v3, 0x3

    .line 159
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 161
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_4e

    .line 162
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 163
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 164
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 167
    :cond_4e
    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p1

    return p1

    .line 145
    :pswitch_53
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 146
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 148
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_63

    .line 149
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 152
    :cond_63
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p1

    return p1

    .line 132
    :pswitch_68
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSample(II)I

    move-result p1

    .line 134
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->getRGB(I)I

    move-result p2

    .line 136
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz v0, :cond_7a

    .line 137
    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_7a
    return p2

    .line 107
    :pswitch_7b
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 108
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v2

    .line 109
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 111
    invoke-virtual {p0, v0, v2, p1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result p2

    .line 113
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz v1, :cond_94

    const/4 v3, -0x1

    .line 114
    invoke-virtual {v1, p2, v3}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    .line 117
    :cond_94
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz v1, :cond_b1

    const/high16 v3, -0x1000000

    and-int/2addr p2, v3

    shr-int/lit8 p2, p2, 0x18

    .line 120
    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 121
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 122
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 123
    invoke-virtual {p0, p2, v0, v1, p1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p2

    :cond_b1
    return p2

    .line 90
    :pswitch_b2
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 92
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_be

    .line 93
    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 96
    :cond_be
    invoke-virtual {p0, p1, p1, p1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result p2

    .line 98
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz v0, :cond_ca

    .line 99
    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_ca
    return p2

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_7b
        :pswitch_68
        :pswitch_53
        :pswitch_29
    .end packed-switch
.end method

.method protected getScanlineFilter(Lorg/apache/commons/imaging/formats/png/FilterType;I)Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 175
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediter$1;->$SwitchMap$org$apache$commons$imaging$formats$png$FilterType:[I

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/png/FilterType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2c

    const/4 p1, 0x0

    return-object p1

    .line 185
    :pswitch_d
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;-><init>(I)V

    return-object p1

    .line 183
    :pswitch_13
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;-><init>(I)V

    return-object p1

    .line 181
    :pswitch_19
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterUp;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterUp;-><init>()V

    return-object p1

    .line 179
    :pswitch_1f
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;-><init>(I)V

    return-object p1

    .line 177
    :pswitch_25
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterNone;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterNone;-><init>()V

    return-object p1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method protected unfilterScanline(Lorg/apache/commons/imaging/formats/png/FilterType;[B[BI)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getScanlineFilter(Lorg/apache/commons/imaging/formats/png/FilterType;I)Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;

    move-result-object p1

    .line 195
    array-length p4, p2

    new-array p4, p4, [B

    .line 196
    invoke-interface {p1, p2, p4, p3}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;->unfilter([B[B[B)V

    return-object p4
.end method
