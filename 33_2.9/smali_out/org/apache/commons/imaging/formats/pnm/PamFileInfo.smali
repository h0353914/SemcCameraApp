.class Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;,
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;,
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
    }
.end annotation


# instance fields
.field private final bytesPerSample:I

.field private final depth:I

.field private final hasAlpha:Z

.field private final maxval:I

.field private final scale:F

.field private final tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    .line 38
    iput p3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->depth:I

    .line 39
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    const-string p1, " is out of range [1;65535]"

    const-string p2, "PAM maxVal "

    if-lez p4, :cond_b8

    const/16 p3, 0xff

    if-gt p4, p3, :cond_19

    const/high16 p1, 0x437f0000    # 255.0f

    .line 44
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    .line 45
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    goto :goto_26

    :cond_19
    const p3, 0xffff

    if-gt p4, p3, :cond_9d

    const p1, 0x477fff00    # 65535.0f

    .line 47
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    :goto_26
    const-string p1, "_ALPHA"

    .line 54
    invoke-virtual {p5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    const-string p1, "BLACKANDWHITE"

    .line 55
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    const-string p1, "BLACKANDWHITE_ALPHA"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_93

    :cond_3f
    const-string p1, "GRAYSCALE"

    .line 57
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    const-string p1, "GRAYSCALE_ALPHA"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_89

    :cond_50
    const-string p1, "RGB"

    .line 59
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "RGB_ALPHA"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_80

    .line 62
    :cond_61
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown PAM tupletype \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_80
    :goto_80
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    goto :goto_9c

    .line 58
    :cond_89
    :goto_89
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;

    sget-object p2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    goto :goto_9c

    .line 56
    :cond_93
    :goto_93
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;

    sget-object p2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    :goto_9c
    return-void

    .line 50
    :cond_9d
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_b8
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I
    .registers 1

    .line 28
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F
    .registers 1

    .line 28
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I
    .registers 1

    .line 28
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    return p0
.end method


# virtual methods
.method public getBitDepth()I
    .registers 1

    .line 78
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    return p0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .registers 1

    .line 98
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;->getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object p0

    return-object p0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .registers 1

    .line 83
    sget-object p0, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    return-object p0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .registers 1

    const-string p0, "PAM: portable arbitrary map file format"

    return-object p0
.end method

.method public getMIMEType()Ljava/lang/String;
    .registers 1

    const-string p0, "image/x-portable-arbitrary-map"

    return-object p0
.end method

.method public getNumComponents()I
    .registers 1

    .line 73
    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->depth:I

    return p0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;->getRGB(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "PAM files are only ever binary"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasAlpha()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    return p0
.end method
