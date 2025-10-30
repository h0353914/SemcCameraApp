.class Lorg/apache/commons/imaging/formats/pnm/PbmWriter;
.super Ljava/lang/Object;
.source "PbmWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/PnmWriter;


# instance fields
.field private rawbits:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p3, 0x50

    .line 36
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 37
    iget-boolean p3, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    if-eqz p3, :cond_c

    const/16 p3, 0x34

    goto :goto_e

    :cond_c
    const/16 p3, 0x31

    :goto_e
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/16 p3, 0x20

    .line 38
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 40
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 44
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v2, 0xa

    .line 47
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_44
    if-ge v3, v1, :cond_a1

    move v6, v4

    move v4, v2

    :goto_48
    const/16 v7, 0x8

    if-ge v4, v0, :cond_8d

    .line 54
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    shr-int/2addr v8, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 58
    div-int/lit8 v9, v9, 0x3

    const/16 v8, 0x7f

    if-le v9, v8, :cond_65

    move v8, v2

    goto :goto_66

    :cond_65
    const/4 v8, 0x1

    .line 65
    :goto_66
    iget-boolean v9, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    if-eqz v9, :cond_7a

    shl-int/lit8 v6, v6, 0x1

    and-int/lit8 v8, v8, 0x1

    or-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v7, :cond_8a

    int-to-byte v5, v6

    .line 70
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    move v5, v2

    move v6, v5

    goto :goto_8a

    .line 75
    :cond_7a
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "US-ASCII"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 78
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    :cond_8a
    :goto_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 82
    :cond_8d
    iget-boolean v4, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    if-eqz v4, :cond_9d

    if-lez v5, :cond_9d

    sub-int/2addr v7, v5

    shl-int v4, v6, v7

    int-to-byte v4, v4

    .line 84
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    move v4, v2

    move v5, v4

    goto :goto_9e

    :cond_9d
    move v4, v6

    :goto_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_a1
    return-void
.end method
