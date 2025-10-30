.class public Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 34
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_58

    packed-switch p0, :pswitch_data_7c

    packed-switch p0, :pswitch_data_84

    packed-switch p0, :pswitch_data_8e

    const-string p0, "Unknown"

    return-object p0

    :pswitch_f
    const-string p0, "JPEG_APP15_MARKER"

    return-object p0

    :pswitch_12
    const-string p0, "JPEG_APP14_MARKER"

    return-object p0

    :pswitch_15
    const-string p0, "JPEG_APP13_MARKER"

    return-object p0

    :pswitch_18
    const-string p0, "JPEG_APP2_MARKER"

    return-object p0

    :pswitch_1b
    const-string p0, "JPEG_APP1_MARKER"

    return-object p0

    :pswitch_1e
    const-string p0, "JFIF_MARKER"

    return-object p0

    :pswitch_21
    const-string p0, "DQT_MARKER"

    return-object p0

    :pswitch_24
    const-string p0, "SOS_MARKER"

    return-object p0

    :pswitch_27
    const-string p0, "SOF15_MARKER"

    return-object p0

    :pswitch_2a
    const-string p0, "SOF14_MARKER"

    return-object p0

    :pswitch_2d
    const-string p0, "SOF13_MARKER"

    return-object p0

    :pswitch_30
    const-string p0, "DAC_MARKER"

    return-object p0

    :pswitch_33
    const-string p0, "SOF11_MARKER"

    return-object p0

    :pswitch_36
    const-string p0, "SOF10_MARKER"

    return-object p0

    :pswitch_39
    const-string p0, "SOF9_MARKER"

    return-object p0

    :pswitch_3c
    const-string p0, "SOF8_MARKER"

    return-object p0

    :pswitch_3f
    const-string p0, "SOF7_MARKER"

    return-object p0

    :pswitch_42
    const-string p0, "SOF6_MARKER"

    return-object p0

    :pswitch_45
    const-string p0, "SOF5_MARKER"

    return-object p0

    :pswitch_48
    const-string p0, "SOF4_MARKER"

    return-object p0

    :pswitch_4b
    const-string p0, "SOF3_MARKER"

    return-object p0

    :pswitch_4e
    const-string p0, "SOF2_MARKER"

    return-object p0

    :pswitch_51
    const-string p0, "SOF1_MARKER"

    return-object p0

    :pswitch_54
    const-string p0, "SOF0_MARKER"

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0xffc0
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0xffda
        :pswitch_24
        :pswitch_21
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0xffe0
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0xffed
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public dumpJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;)V

    .line 187
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    return-void
.end method

.method public traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_9f

    .line 58
    :try_start_6
    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v3, "Not a Valid JPEG File: doesn\'t begin with 0xffd8"

    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    move v2, v0

    :goto_e
    const/4 v3, 0x2

    .line 63
    new-array v6, v3, [B

    .line 65
    :cond_11
    aget-byte v4, v6, v1

    aput-byte v4, v6, v0

    const-string v4, "marker"

    const-string v5, "Could not read marker"

    .line 66
    invoke-static {v4, p1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v6, v1

    .line 69
    aget-byte v4, v6, v0

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_11

    aget-byte v4, v6, v1

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_11

    .line 70
    aget-byte v4, v6, v0

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, v6, v1

    and-int/2addr v5, v7

    or-int/2addr v5, v4

    const v4, 0xffd9

    if-eq v5, v4, :cond_6b

    const v4, 0xffda

    if-ne v5, v4, :cond_3f

    goto :goto_6b

    :cond_3f
    const-string v4, "segmentLengthBytes"

    const-string v7, "segmentLengthBytes"

    .line 84
    invoke-static {v4, p1, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v8

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v8, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BLjava/nio/ByteOrder;)I

    move-result v7

    const-string v3, "Segment Data"

    add-int/lit8 v4, v7, -0x2

    const-string v9, "Invalid Segment: insufficient data"

    .line 87
    invoke-static {v3, p1, v4, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v9

    move-object v4, p2

    .line 91
    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSegment(I[BI[B[B)Z

    move-result v3
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_9d

    if-nez v3, :cond_68

    .line 100
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    :goto_64
    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 74
    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-interface {p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->beginSOS()Z

    move-result v3
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_9d

    if-nez v3, :cond_76

    .line 100
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    goto :goto_64

    .line 79
    :cond_76
    :try_start_76
    invoke-static {p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 80
    invoke-interface {p2, v5, v6, v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSOS(I[B[B)V

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " markers"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_76 .. :try_end_95} :catchall_9d

    .line 100
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_9d
    move-exception p2

    goto :goto_a1

    :catchall_9f
    move-exception p2

    const/4 p1, 0x0

    :goto_a1
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p1, v1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p2
.end method
