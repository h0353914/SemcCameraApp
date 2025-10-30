.class Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;
.super Ljava/lang/Object;
.source "JpegInputStream.java"


# instance fields
.field private b:I

.field private cnt:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public nextBit()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 35
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    if-nez v0, :cond_46

    .line 36
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    .line 37
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    if-ltz v0, :cond_3e

    const/16 v1, 0x8

    .line 40
    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_46

    .line 42
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_36

    if-eqz v0, :cond_46

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_2e

    .line 48
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "DNL not yet supported"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Invalid marker found in entropy data"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_36
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Premature End of File"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Premature End of File"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_46
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    shr-int/lit8 v1, v0, 0x7

    and-int/lit8 v1, v1, 0x1

    .line 56
    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    shl-int/lit8 v0, v0, 0x1

    .line 57
    iput v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    return v1
.end method
