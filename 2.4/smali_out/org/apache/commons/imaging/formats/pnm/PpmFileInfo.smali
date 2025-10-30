.class Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PpmFileInfo.java"


# instance fields
.field private final bytesPerSample:I

.field private final max:I

.field private final scale:F


# direct methods
.method public constructor <init>(IIZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    if-lez p4, :cond_3d

    const/16 p1, 0xff

    if-gt p4, p1, :cond_11

    const/high16 p1, 0x437f0000    # 255.0f

    .line 37
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    goto :goto_1e

    :cond_11
    const p1, 0xffff

    if-gt p4, p1, :cond_21

    const p1, 0x477fff00    # 65535.0f

    .line 40
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    const/4 p1, 0x2

    .line 41
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    .line 45
    :goto_1e
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    return-void

    .line 43
    :cond_21
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PPM maxVal "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is out of range [1;65535]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_3d
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PPM maxVal "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is out of range [1;65535]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBitDepth()I
    .registers 2

    .line 60
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    return v0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .registers 2

    .line 80
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .registers 2

    .line 65
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "PPM: portable pixmap file format"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .registers 2

    const-string v0, "image/x-portable-pixmap"

    return-object v0
.end method

.method public getNumComponents()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v0

    .line 86
    iget v1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v1

    .line 87
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v2}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result p1

    .line 89
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v0, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v0

    .line 90
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v1, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v1

    .line 91
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 106
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v0, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v0

    .line 107
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v1, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v1

    .line 108
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public hasAlpha()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
