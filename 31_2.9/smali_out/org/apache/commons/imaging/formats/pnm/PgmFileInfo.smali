.class Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PgmFileInfo.java"


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

    .line 38
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->bytesPerSample:I

    goto :goto_1e

    :cond_11
    const p1, 0xffff

    if-gt p4, p1, :cond_21

    const p1, 0x477fff00    # 65535.0f

    .line 41
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->bytesPerSample:I

    .line 47
    :goto_1e
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    return-void

    .line 44
    :cond_21
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PGM maxVal "

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

    const-string p3, "PGM maxVal "

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

    .line 62
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    return v0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .registers 2

    .line 82
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .registers 2

    .line 67
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "PGM: portable graymap file format"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .registers 2

    const-string v0, "image/x-portable-graymap"

    return-object v0
.end method

.method public getNumComponents()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->bytesPerSample:I

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result p1

    .line 89
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    iget v1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scaleSample(IFI)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 103
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scale:F

    iget v1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->max:I

    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;->scaleSample(IFI)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public hasAlpha()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
