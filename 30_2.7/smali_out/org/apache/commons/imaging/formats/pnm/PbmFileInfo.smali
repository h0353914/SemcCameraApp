.class Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PbmFileInfo.java"


# instance fields
.field private bitcache:I

.field private bitsInCache:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .registers 2

    .line 56
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .registers 2

    .line 51
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "PBM: portable bitmap fileformat"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .registers 2

    const-string v0, "image/x-portable-bitmap"

    return-object v0
.end method

.method public getNumComponents()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1e

    .line 78
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_16

    and-int/lit16 p1, p1, 0xff

    .line 82
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    .line 83
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    goto :goto_1e

    .line 80
    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PBM: Unexpected EOF"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1e
    :goto_1e
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v1

    shl-int/2addr p1, v1

    .line 87
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    .line 88
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    if-nez v0, :cond_2f

    const/4 p1, -0x1

    return p1

    :cond_2f
    if-ne v0, v1, :cond_34

    const/high16 p1, -0x1000000

    return p1

    .line 96
    :cond_34
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PBM: bad bit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .registers 5
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

    if-nez p1, :cond_d

    const/high16 p1, -0x1000000

    return p1

    :cond_d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    const/4 p1, -0x1

    return p1

    .line 108
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PBM: bad bit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAlpha()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected newline()V
    .registers 2

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitcache:I

    .line 72
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;->bitsInCache:I

    return-void
.end method
