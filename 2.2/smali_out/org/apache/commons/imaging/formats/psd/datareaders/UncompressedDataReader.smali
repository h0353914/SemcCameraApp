.class public Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;
.super Ljava/lang/Object;
.source "UncompressedDataReader.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;


# instance fields
.field private dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p3, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    .line 45
    iget v1, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 46
    iget v2, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    const/4 v3, 0x0

    .line 48
    invoke-virtual {p4, v3}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setDebug(Z)V

    .line 50
    iget-object p4, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {p4}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result p4

    .line 51
    iget v0, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    .line 52
    new-instance v4, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v4, p1, v5}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/4 p1, 0x1

    const/4 v5, 0x0

    .line 57
    :try_start_1b
    new-instance v6, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;

    const/16 v7, 0x8

    invoke-direct {v6, v4, v7}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_5a

    .line 59
    :try_start_22
    filled-new-array {p4, v2, v1}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[I

    move v5, v3

    :goto_2f
    if-ge v5, p4, :cond_4b

    move v7, v3

    :goto_32
    if-ge v7, v2, :cond_48

    move v8, v3

    :goto_35
    if-ge v8, v1, :cond_45

    .line 63
    invoke-virtual {v6, v0}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v9

    .line 65
    aget-object v10, v4, v5

    aget-object v10, v10, v7

    int-to-byte v9, v9

    aput v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 70
    :cond_4b
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {p0, v4, p2, p3}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;)V
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_58

    .line 73
    new-array p0, p1, [Ljava/io/Closeable;

    aput-object v6, p0, v3

    invoke-static {p1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_58
    move-exception p0

    goto :goto_5c

    :catchall_5a
    move-exception p0

    move-object v6, v5

    :goto_5c
    new-array p1, p1, [Ljava/io/Closeable;

    aput-object v6, p1, v3

    invoke-static {v3, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method
