.class abstract Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field protected final height:I

.field protected final rawbits:Z

.field protected final width:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    .line 33
    iput p2, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    .line 34
    iput-boolean p3, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->rawbits:Z

    return-void
.end method

.method protected static readSample(Ljava/io/InputStream;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_18

    .line 62
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PNM: Unexpected EOF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    return v1
.end method

.method protected static scaleSample(IFI)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p0, :cond_e

    if-le p0, p2, :cond_5

    const/4 p0, 0x0

    :cond_5
    int-to-float p0, p0

    mul-float/2addr p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 75
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Negative pixel values are invalid in PNM files"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getBitDepth()I
.end method

.method public abstract getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
.end method

.method public abstract getImageType()Lorg/apache/commons/imaging/ImageFormat;
.end method

.method public abstract getImageTypeDescription()Ljava/lang/String;
.end method

.method public abstract getMIMEType()Ljava/lang/String;
.end method

.method public abstract getNumComponents()I
.end method

.method public abstract getRGB(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasAlpha()Z
.end method

.method protected newline()V
    .registers 1

    return-void
.end method

.method public readImage(Lorg/apache/commons/imaging/common/ImageBuilder;Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->rawbits:Z

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 92
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    move p2, v1

    .line 94
    :goto_b
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    if-ge p2, v2, :cond_3e

    move v2, v1

    .line 95
    :goto_10
    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    if-ge v2, v3, :cond_1e

    .line 96
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I

    move-result v3

    .line 98
    invoke-virtual {p1, v2, p2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 101
    :cond_1e
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->newline()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_24
    move v0, v1

    .line 104
    :goto_25
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    if-ge v0, v2, :cond_3e

    move v2, v1

    .line 106
    :goto_2a
    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    if-ge v2, v3, :cond_38

    .line 107
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getRGB(Ljava/io/InputStream;)I

    move-result v3

    .line 108
    invoke-virtual {p1, v2, v0, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 111
    :cond_38
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->newline()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3e
    return-void
.end method
