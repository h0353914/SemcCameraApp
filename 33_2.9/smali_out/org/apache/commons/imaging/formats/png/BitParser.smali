.class Lorg/apache/commons/imaging/formats/png/BitParser;
.super Ljava/lang/Object;
.source "BitParser.java"


# instance fields
.field private final bitDepth:I

.field private final bitsPerPixel:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    .line 28
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitsPerPixel:I

    .line 29
    iput p3, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    return-void
.end method


# virtual methods
.method public getSample(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitsPerPixel:I

    mul-int/2addr v0, p1

    .line 35
    iget p1, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    mul-int/2addr p2, p1

    add-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x3

    const/16 v1, 0x8

    if-ne p1, v1, :cond_14

    .line 39
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_14
    const/4 v2, 0x1

    if-ge p1, v1, :cond_27

    .line 41
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    and-int/lit8 p2, v0, 0x7

    add-int/2addr p2, p1

    sub-int/2addr v1, p2

    shr-int/2addr p0, v1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    and-int/2addr p0, p1

    return p0

    :cond_27
    const/16 v0, 0x10

    if-ne p1, v0, :cond_39

    .line 48
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    aget-byte p1, p0, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v1

    add-int/2addr p2, v2

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0

    .line 51
    :cond_39
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PNG: bad BitDepth: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleAsByte(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSample(II)I

    move-result p1

    .line 58
    iget p0, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    rsub-int/lit8 p2, p0, 0x8

    if-lez p2, :cond_12

    mul-int/lit16 p1, p1, 0xff

    const/4 p2, 0x1

    shl-int p0, p2, p0

    sub-int/2addr p0, p2

    .line 60
    div-int/2addr p1, p0

    goto :goto_16

    :cond_12
    if-gez p2, :cond_16

    neg-int p0, p2

    shr-int/2addr p1, p0

    :cond_16
    :goto_16
    and-int/lit16 p0, p1, 0xff

    return p0
.end method
