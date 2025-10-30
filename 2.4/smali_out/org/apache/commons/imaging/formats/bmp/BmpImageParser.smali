.class public Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "BmpImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final BITMAP_FILE_HEADER_SIZE:I = 0xe

.field private static final BITMAP_INFO_HEADER_SIZE:I = 0x28

.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final BMP_HEADER_SIGNATURE:[B

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".bmp"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".bmp"

    .line 53
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 63
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private getBmpTypeDescription(II)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x42

    if-ne p1, v0, :cond_b

    const/16 v1, 0x4d

    if-ne p2, v1, :cond_b

    const-string p1, "Windows 3.1x, 95, NT,"

    return-object p1

    :cond_b
    if-ne p1, v0, :cond_14

    const/16 v0, 0x41

    if-ne p2, v0, :cond_14

    const-string p1, "OS/2 Bitmap Array"

    return-object p1

    :cond_14
    const/16 v0, 0x49

    const/16 v1, 0x43

    if-ne p1, v1, :cond_1f

    if-ne p2, v0, :cond_1f

    const-string p1, "OS/2 Color Icon"

    return-object p1

    :cond_1f
    const/16 v2, 0x50

    if-ne p1, v1, :cond_28

    if-ne p2, v2, :cond_28

    const-string p1, "OS/2 Color Pointer"

    return-object p1

    :cond_28
    if-ne p1, v0, :cond_2f

    if-ne p2, v1, :cond_2f

    const-string p1, "OS/2 Icon"

    return-object p1

    :cond_2f
    if-ne p1, v2, :cond_38

    const/16 p1, 0x54

    if-ne p2, p1, :cond_38

    const-string p1, "OS/2 Pointer"

    return-object p1

    :cond_38
    const-string p1, "Unknown"

    return-object p1
.end method

.method private getRLEBytes(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :cond_6
    :goto_6
    :pswitch_6
    if-nez v1, :cond_5e

    const-string v2, "RLE a"

    const-string v3, "BMP: Bad RLE"

    .line 246
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 247
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v3, "RLE b"

    const-string v4, "BMP: Bad RLE"

    .line 248
    invoke-static {v3, p1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 249
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez v2, :cond_6

    packed-switch v3, :pswitch_data_64

    .line 271
    div-int v2, v3, p2

    .line 272
    rem-int/2addr v3, p2

    if-lez v3, :cond_4c

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :pswitch_2f
    const-string v2, "RLE c"

    const-string v3, "BMP: Bad RLE"

    .line 263
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 264
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v2, "RLE d"

    const-string v3, "BMP: Bad RLE"

    .line 265
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 266
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    :pswitch_4a
    const/4 v1, 0x1

    goto :goto_6

    .line 275
    :cond_4c
    :goto_4c
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_52

    add-int/lit8 v2, v2, 0x1

    :cond_52
    const-string v3, "bytes"

    const-string v4, "RLE: Absolute Mode"

    .line 285
    invoke-static {v3, p1, v2, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v2

    .line 287
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_6

    .line 294
    :cond_5e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4a
        :pswitch_2f
    .end packed-switch
.end method

.method private readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Identifier1"

    const-string v4, "Not a Valid BMP File"

    .line 90
    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v3, "Identifier2"

    const-string v4, "Not a Valid BMP File"

    .line 91
    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_28

    const-string v8, "Signature"

    .line 94
    sget-object v9, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    new-array v10, v3, [B

    aput-byte v6, v10, v5

    aput-byte v7, v10, v4

    invoke-virtual {v2, v8, v9, v10}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    :cond_28
    const-string v2, "File Size"

    const-string v8, "Not a Valid BMP File"

    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v2, v1, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v2, "Reserved"

    const-string v9, "Not a Valid BMP File"

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v2, v1, v9, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v2, "Bitmap Data Offset"

    const-string v10, "Not a Valid BMP File"

    .line 100
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-static {v2, v1, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    const-string v2, "Bitmap Header Size"

    const-string v11, "Not a Valid BMP File"

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v2, v1, v11, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 118
    new-instance v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;-><init>()V

    .line 119
    new-instance v12, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v12}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v12, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    .line 120
    new-instance v12, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v12}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v12, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    .line 121
    new-instance v12, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v12}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    iput-object v12, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const/16 v12, 0x28

    if-lt v11, v12, :cond_42a

    const-string v12, "Width"

    const-string v13, "Not a Valid BMP File"

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v12, v1, v13, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    const-string v13, "Height"

    const-string v14, "Not a Valid BMP File"

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v13, v1, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    const-string v14, "Planes"

    const-string v15, "Not a Valid BMP File"

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v14, v1, v15, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    const-string v5, "Bits Per Pixel"

    const-string v15, "Not a Valid BMP File"

    .line 135
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v15, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    const-string v3, "Compression"

    const-string v5, "Not a Valid BMP File"

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, v1, v5, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v4, "Bitmap Data Size"

    const-string v5, "Not a Valid BMP File"

    move/from16 p2, v15

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "HResolution"

    const-string v15, "Not a Valid BMP File"

    move/from16 v19, v4

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "VResolution"

    const-string v15, "Not a Valid BMP File"

    move/from16 v20, v4

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ColorsUsed"

    const-string v15, "Not a Valid BMP File"

    move/from16 v21, v4

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ColorsImportant"

    const-string v15, "Not a Valid BMP File"

    move/from16 v22, v4

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const/4 v5, 0x3

    const/16 v15, 0x34

    if-ge v11, v15, :cond_107

    if-ne v3, v5, :cond_100

    goto :goto_107

    :cond_100
    move/from16 v25, v4

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v26, 0x0

    goto :goto_139

    :cond_107
    :goto_107
    const-string v5, "RedMask"

    const-string v15, "Not a Valid BMP File"

    move/from16 v25, v4

    .line 145
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "GreenMask"

    const-string v15, "Not a Valid BMP File"

    move/from16 v26, v4

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "BlueMask"

    const-string v15, "Not a Valid BMP File"

    move/from16 v27, v4

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    move/from16 v15, v27

    move/from16 v39, v26

    move/from16 v26, v4

    move/from16 v4, v39

    :goto_139
    const/16 v5, 0x38

    if-lt v11, v5, :cond_14e

    const-string v5, "AlphaMask"

    move/from16 v28, v15

    const-string v15, "Not a Valid BMP File"

    move/from16 v29, v4

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    goto :goto_153

    :cond_14e
    move/from16 v29, v4

    move/from16 v28, v15

    const/4 v4, 0x0

    :goto_153
    const/16 v5, 0x6c

    if-lt v11, v5, :cond_229

    const-string v15, "ColorSpaceType"

    const-string v5, "Not a Valid BMP File"

    move/from16 v31, v4

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v15, v1, v5, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 158
    iget-object v5, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v15, "ColorSpaceRedX"

    move/from16 v32, v4

    const-string v4, "Not a Valid BMP File"

    move/from16 v33, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v15, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    iput v3, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 159
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceRedY"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 160
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceRedZ"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    .line 161
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceGreenX"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 162
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceGreenY"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 163
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceGreenZ"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    .line 164
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceBlueX"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    .line 165
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceBlueY"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    .line 166
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v4, "ColorSpaceBlueZ"

    const-string v5, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    iput v4, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    const-string v3, "GammaRed"

    const-string v4, "Not a Valid BMP File"

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v4, "GammaGreen"

    const-string v5, "Not a Valid BMP File"

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v4, v1, v5, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "GammaBlue"

    const-string v15, "Not a Valid BMP File"

    move/from16 v34, v3

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v15, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    move v15, v4

    move/from16 v4, v34

    move/from16 v39, v32

    move/from16 v32, v3

    move/from16 v3, v39

    goto :goto_232

    :cond_229
    move/from16 v33, v3

    move/from16 v31, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v32, 0x0

    :goto_232
    const/16 v5, 0x7c

    if-lt v11, v5, :cond_278

    const-string v5, "Intent"

    move/from16 v35, v15

    const-string v15, "Not a Valid BMP File"

    move/from16 v36, v4

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ProfileData"

    const-string v15, "Not a Valid BMP File"

    move/from16 v16, v4

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "ProfileSize"

    const-string v15, "Not a Valid BMP File"

    move/from16 v37, v4

    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "Reserved"

    const-string v15, "Not a Valid BMP File"

    move/from16 v38, v4

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v5, v1, v15, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    move v5, v1

    move/from16 v1, v16

    move/from16 v4, v37

    move/from16 v15, v38

    goto :goto_280

    :cond_278
    move/from16 v36, v4

    move/from16 v35, v15

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_280
    if-eqz p3, :cond_3d7

    move/from16 v16, v5

    const-string v5, "identifier1"

    move/from16 v37, v15

    const/4 v15, 0x1

    .line 183
    invoke-virtual {v0, v5, v6, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "identifier2"

    .line 184
    invoke-virtual {v0, v5, v7, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "fileSize"

    const/4 v15, 0x4

    .line 185
    invoke-virtual {v0, v5, v8, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "reserved"

    .line 186
    invoke-virtual {v0, v5, v9, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitmapDataOffset"

    .line 187
    invoke-virtual {v0, v5, v10, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitmapHeaderSize"

    .line 188
    invoke-virtual {v0, v5, v11, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "width"

    .line 189
    invoke-virtual {v0, v5, v12, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "height"

    .line 190
    invoke-virtual {v0, v5, v13, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "planes"

    const/4 v15, 0x2

    .line 191
    invoke-virtual {v0, v5, v14, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitsPerPixel"

    move/from16 v17, v14

    move/from16 v14, p2

    .line 192
    invoke-virtual {v0, v5, v14, v15}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "compression"

    move/from16 v15, v33

    const/4 v14, 0x4

    .line 193
    invoke-virtual {v0, v5, v15, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitmapDataSize"

    move/from16 v33, v13

    move/from16 v13, v19

    .line 194
    invoke-virtual {v0, v5, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "hResolution"

    move/from16 v13, v20

    .line 195
    invoke-virtual {v0, v5, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "vResolution"

    move/from16 v13, v21

    .line 196
    invoke-virtual {v0, v5, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorsUsed"

    move/from16 v13, v22

    .line 197
    invoke-virtual {v0, v5, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorsImportant"

    move/from16 v13, v25

    .line 198
    invoke-virtual {v0, v5, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v5, 0x34

    if-ge v11, v5, :cond_2ff

    const/4 v5, 0x3

    if-ne v15, v5, :cond_2f4

    goto :goto_2ff

    :cond_2f4
    move/from16 v25, v13

    move/from16 v23, v15

    move/from16 v13, v26

    move/from16 v15, v28

    const/16 v5, 0x38

    goto :goto_31a

    :cond_2ff
    :goto_2ff
    const-string v5, "redMask"

    move/from16 v23, v15

    move/from16 v15, v29

    .line 200
    invoke-virtual {v0, v5, v15, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "greenMask"

    move/from16 v15, v28

    .line 201
    invoke-virtual {v0, v5, v15, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "blueMask"

    move/from16 v25, v13

    move/from16 v13, v26

    .line 202
    invoke-virtual {v0, v5, v13, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v5, 0x38

    :goto_31a
    if-lt v11, v5, :cond_328

    const-string v5, "alphaMask"

    move/from16 v28, v15

    move/from16 v15, v31

    .line 205
    invoke-virtual {v0, v5, v15, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v5, 0x6c

    goto :goto_32e

    :cond_328
    move/from16 v28, v15

    move/from16 v15, v31

    const/16 v5, 0x6c

    :goto_32e
    if-lt v11, v5, :cond_3a4

    const-string v5, "colorSpaceType"

    .line 208
    invoke-virtual {v0, v5, v3, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.red.x"

    .line 209
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move/from16 v24, v13

    const/4 v13, 0x1

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.red.y"

    .line 210
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.red.z"

    .line 211
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.green.x"

    .line 212
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.green.y"

    .line 213
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.green.z"

    .line 214
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.blue.x"

    .line 215
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.blue.y"

    .line 216
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorSpace.blue.z"

    .line 217
    iget-object v14, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    iget v14, v14, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "gammaRed"

    move/from16 v14, v36

    const/4 v13, 0x4

    .line 218
    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "gammaGreen"

    move/from16 v31, v15

    move/from16 v15, v35

    .line 219
    invoke-virtual {v0, v5, v15, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "gammaBlue"

    move/from16 v14, v32

    .line 220
    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v5, 0x7c

    goto :goto_3af

    :cond_3a4
    move/from16 v24, v13

    move v13, v14

    move/from16 v31, v15

    move/from16 v14, v32

    move/from16 v15, v35

    const/16 v5, 0x7c

    :goto_3af
    if-lt v11, v5, :cond_3ce

    const-string v5, "intent"

    .line 223
    invoke-virtual {v0, v5, v1, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "profileData"

    .line 224
    invoke-virtual {v0, v5, v4, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "profileSize"

    move/from16 v35, v15

    move/from16 v15, v37

    .line 225
    invoke-virtual {v0, v5, v15, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "reservedV5"

    move/from16 v18, v14

    move/from16 v14, v16

    .line 226
    invoke-virtual {v0, v5, v14, v13}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_3e2

    :cond_3ce
    move/from16 v18, v14

    move/from16 v35, v15

    move/from16 v14, v16

    move/from16 v15, v37

    goto :goto_3e2

    :cond_3d7
    move/from16 v17, v14

    move/from16 v24, v26

    move/from16 v18, v32

    move/from16 v23, v33

    move v14, v5

    move/from16 v33, v13

    .line 230
    :goto_3e2
    new-instance v37, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move/from16 v34, v14

    move/from16 v30, v18

    move-object/from16 v5, v37

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v25

    move/from16 v13, v33

    move/from16 v16, p2

    move/from16 v32, v36

    move/from16 v14, v17

    move/from16 v38, v15

    move/from16 v17, v23

    move/from16 v27, v28

    move/from16 v26, v29

    move/from16 v25, v31

    move/from16 v29, v35

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v26

    move/from16 v23, v27

    move/from16 v26, v3

    move-object/from16 v27, v2

    move/from16 v28, v32

    move/from16 v31, v1

    move/from16 v32, v4

    move/from16 v33, v38

    invoke-direct/range {v5 .. v34}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;-><init>(BBIIIIIIIIIIIIIIIIIIILorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;IIIIIII)V

    return-object v37

    .line 179
    :cond_42a
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid/unsupported BMP file"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readBmpHeaderInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_15

    .line 480
    :try_start_7
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_13

    .line 484
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p2

    :catchall_13
    move-exception p2

    goto :goto_17

    :catchall_15
    move-exception p2

    move-object p1, v0

    :goto_17
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p2
.end method

.method private readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p2

    .line 302
    iget v0, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 304
    iget v0, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v0, v1, v0

    :cond_d
    const/4 v2, 0x4

    if-eqz p3, :cond_31

    const-string v3, "ColorsUsed"

    .line 308
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "BitsPerPixel"

    .line 309
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "ColorTableSize"

    .line 310
    invoke-virtual {p0, v3, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "bhi.colorsUsed"

    .line 311
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "Compression"

    .line 312
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 322
    :cond_31
    iget v3, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_1b0

    .line 376
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BMP: Unknown Compression: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_52
    if-eqz p3, :cond_5b

    .line 364
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Compression: BI_BITFIELDS"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    :cond_5b
    iget v1, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-gt v1, v4, :cond_63

    mul-int/2addr v0, v2

    move v1, v5

    move v3, v1

    goto :goto_93

    :cond_63
    move v0, v5

    move v1, v0

    move v3, v1

    goto :goto_93

    :pswitch_67
    if-eqz p3, :cond_70

    .line 340
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Compression: BI_RLE4"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_70
    mul-int/2addr v0, v2

    const/4 v3, 0x2

    goto :goto_93

    :pswitch_73
    if-eqz p3, :cond_7c

    .line 352
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Compression: BI_RLE8"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7c
    mul-int/2addr v0, v2

    move v3, v1

    goto :goto_93

    :pswitch_7f
    if-eqz p3, :cond_88

    .line 325
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Compression: BI_RGB"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    :cond_88
    iget v1, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-gt v1, v4, :cond_90

    mul-int/2addr v0, v2

    move v1, v5

    move v3, v1

    goto :goto_93

    :cond_90
    move v0, v5

    move v1, v0

    move v3, v1

    :goto_93
    const/4 v6, 0x0

    if-lez v0, :cond_9e

    const-string v6, "ColorTable"

    const-string v7, "Not a Valid BMP File"

    .line 382
    invoke-static {v6, p1, v0, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v6

    :cond_9e
    if-eqz p3, :cond_c5

    const-string v7, "paletteLength"

    .line 387
    invoke-virtual {p0, v7, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 388
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ColorTable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_b6

    const-string v9, "null"

    goto :goto_bb

    :cond_b6
    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_bb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    :cond_c5
    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget v8, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    mul-int/2addr v7, v8

    .line 394
    iget v8, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    mul-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x7

    div-int/2addr v8, v4

    if-eqz p3, :cond_ec

    const-string v4, "bhi.Width"

    .line 402
    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    invoke-virtual {p0, v4, v9, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "bhi.Height"

    .line 403
    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    invoke-virtual {p0, v4, v9, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "ImageLineLength"

    .line 404
    invoke-virtual {p0, v4, v8, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "PixelCount"

    .line 406
    invoke-virtual {p0, v4, v7, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 409
    :cond_ec
    :goto_ec
    rem-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_f3

    add-int/lit8 v8, v8, 0x1

    goto :goto_ec

    .line 413
    :cond_f3
    iget v4, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    add-int/lit8 v4, v4, 0xe

    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    const/16 v9, 0x28

    if-ne v7, v9, :cond_104

    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_104

    const/16 v5, 0xc

    :cond_104
    add-int/2addr v4, v5

    add-int v5, v4, v0

    if-eqz p3, :cond_115

    const-string v7, "bhi.BitmapDataOffset"

    .line 420
    iget v9, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {p0, v7, v9, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v7, "expectedDataOffset"

    .line 421
    invoke-virtual {p0, v7, v5, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 423
    :cond_115
    iget v7, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    sub-int/2addr v7, v5

    if-ltz v7, :cond_179

    if-lez v7, :cond_123

    const-string v0, "BitmapDataOffset"

    const-string v4, "Not a Valid BMP File"

    .line 430
    invoke-static {v0, p1, v7, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    .line 433
    :cond_123
    iget v0, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    mul-int/2addr v0, v8

    if-eqz p3, :cond_12d

    const-string v4, "imageDataSize"

    .line 436
    invoke-virtual {p0, v4, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_12d
    if-eqz v1, :cond_134

    .line 441
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object p1

    goto :goto_13c

    :cond_134
    const-string v1, "ImageData"

    const-string v3, "Not a Valid BMP File"

    .line 443
    invoke-static {v1, p1, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    :goto_13c
    if-eqz p3, :cond_144

    const-string p3, "ImageData.length"

    .line 448
    array-length v0, p1

    invoke-virtual {p0, p3, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 453
    :cond_144
    iget p3, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    packed-switch p3, :pswitch_data_1bc

    .line 465
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BMP: Unknown Compression: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 462
    :pswitch_162
    new-instance p3, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;

    invoke-direct {p3, p2, v6, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_173

    .line 456
    :pswitch_168
    new-instance p3, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;

    invoke-direct {p3, p2, v6, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_173

    .line 459
    :pswitch_16e
    new-instance p3, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;

    invoke-direct {p3, p2, v6, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 469
    :goto_173
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    invoke-direct {v0, p2, v6, p1, p3}, Lorg/apache/commons/imaging/formats/bmp/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/commons/imaging/formats/bmp/PixelParser;)V

    return-object v0

    .line 425
    :cond_179
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BMP has invalid image data offset: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", paletteLength: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", headerSize: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_73
        :pswitch_67
        :pswitch_52
    .end packed-switch

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_16e
        :pswitch_168
        :pswitch_168
        :pswitch_162
    .end packed-switch
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bmp.dumpImageFile"

    .line 633
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p2

    const-string v0, ""

    .line 637
    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, ""

    .line 639
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .registers 2

    .line 78
    sget-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .registers 4

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 683
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 685
    :goto_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "VERBOSE"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VERBOSE"

    .line 687
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "VERBOSE"

    .line 688
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string v1, "BUFFERED_IMAGE_FACTORY"

    .line 690
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "BUFFERED_IMAGE_FACTORY"

    .line 691
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_34
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 699
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-result-object p1

    if-eqz p1, :cond_b8

    .line 705
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 709
    iget v1, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    .line 710
    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    if-eqz v0, :cond_a8

    .line 713
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width*height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v3, v1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width*height*4: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 719
    :cond_a8
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->pixelParser:Lorg/apache/commons/imaging/formats/bmp/PixelParser;

    .line 720
    new-instance v0, Lorg/apache/commons/imaging/common/ImageBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 721
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V

    .line 723
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    .line 702
    :cond_b8
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Couldn\'t read BMP Data"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :cond_c0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 696
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 671
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_14

    .line 672
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object p2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_12

    .line 676
    new-array v2, v0, [Ljava/io/Closeable;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p2

    :catchall_12
    move-exception p2

    goto :goto_16

    :catchall_14
    move-exception p2

    const/4 p1, 0x0

    :goto_16
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p2
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .registers 2

    const-string v0, ".bmp"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    new-instance v0, Lorg/apache/commons/imaging/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 655
    :try_start_b
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_1c

    .line 656
    :try_start_f
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    .line 659
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v0

    :catchall_1a
    move-exception v0

    goto :goto_1e

    :catchall_1c
    move-exception v0

    const/4 p1, 0x0

    :goto_1e
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p1, v1, v2

    invoke-static {v2, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    if-nez v0, :cond_c

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_12

    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v2

    .line 557
    :goto_12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "VERBOSE"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "VERBOSE"

    .line 559
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "VERBOSE"

    .line 560
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_2b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 572
    :try_start_34
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 573
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_d8

    .line 576
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v3, v2, v5

    invoke-static {v4, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    if-eqz v0, :cond_d0

    .line 583
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 584
    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->colorTable:[B

    if-eqz v2, :cond_c8

    .line 590
    iget v12, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    .line 591
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    .line 593
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 596
    iget v8, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    .line 597
    sget-object v10, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 607
    iget v6, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->hResolution:I

    int-to-double v6, v6

    const-wide v13, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v6, v13

    double-to-int v15, v6

    int-to-double v6, v3

    int-to-double v4, v15

    div-double/2addr v6, v4

    double-to-float v4, v6

    .line 610
    iget v5, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->vResolution:I

    int-to-double v5, v5

    mul-double/2addr v5, v13

    double-to-int v5, v5

    int-to-double v6, v12

    int-to-double v13, v5

    div-double/2addr v6, v13

    double-to-float v7, v6

    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bmp ("

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v13, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v13, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v13, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    iget-byte v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    invoke-direct {v1, v13, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBmpTypeDescription(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_a7

    const/16 v22, 0x1

    goto :goto_a9

    :cond_a7
    const/16 v22, 0x0

    .line 620
    :goto_a9
    sget-object v23, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 621
    sget-object v24, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 623
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    move-object v6, v0

    const-string v11, "BMP Windows Bitmap"

    const-string v13, "image/x-ms-bmp"

    const/4 v14, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v7

    move-object v7, v2

    move v2, v15

    move v15, v5

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v3

    invoke-direct/range {v6 .. v24}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v0

    .line 587
    :cond_c8
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "BMP: couldn\'t read header"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_d0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Couldn\'t read BMP Data"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d8
    move-exception v0

    move v2, v4

    .line 576
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v4, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0

    .line 564
    :cond_e3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 565
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 498
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 500
    :goto_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "VERBOSE"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VERBOSE"

    .line 502
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "VERBOSE"

    .line 503
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_27
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 511
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 517
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 514
    :cond_3d
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "BMP: couldn\'t read header"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 507
    :cond_45
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 508
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "Bmp-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 10
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

    if-nez p3, :cond_8

    .line 731
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v0

    :goto_e
    const/4 v0, 0x0

    const-string v1, "FORMAT"

    .line 736
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "FORMAT"

    .line 737
    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v1, "PIXEL_DENSITY"

    .line 739
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, "PIXEL_DENSITY"

    .line 740
    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/PixelDensity;

    .line 743
    :cond_2c
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 748
    new-instance p3, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {p3, p1, v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object p3

    if-nez p3, :cond_45

    .line 753
    new-instance v1, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;-><init>()V

    goto :goto_4a

    .line 755
    :cond_45
    new-instance v1, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;

    invoke-direct {v1, p3}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;-><init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V

    .line 758
    :goto_4a
    invoke-interface {v1, p1}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getImageData(Ljava/awt/image/BufferedImage;)[B

    move-result-object v2

    .line 759
    new-instance v3, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, p2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v4, 0x42

    .line 762
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    const/16 v4, 0x4d

    .line 763
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 765
    invoke-interface {v1}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getPaletteSize()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x36

    array-length v4, v2

    add-int/2addr p2, v4

    .line 769
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    .line 771
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 772
    invoke-interface {v1}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getPaletteSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x36

    invoke-virtual {v3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 775
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 776
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/16 v5, 0x28

    .line 779
    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 780
    invoke-virtual {v3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 781
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p1, 0x1

    .line 782
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 783
    invoke-interface {v1}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getBitsPerPixel()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 785
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 786
    array-length p1, v2

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v0, :cond_ac

    .line 787
    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    goto :goto_ad

    :cond_ac
    move p1, p2

    :goto_ad
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v0, :cond_bc

    .line 789
    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    goto :goto_bd

    :cond_bc
    move p1, p2

    :goto_bd
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez p3, :cond_c6

    .line 792
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_cd

    .line 794
    :cond_c6
    invoke-virtual {p3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 796
    :goto_cd
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 800
    invoke-interface {v1, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    .line 802
    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    return-void

    .line 744
    :cond_d7
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 745
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown parameter: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
