.class Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;
.super Ljava/lang/Object;
.source "RgbeInfo.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final HEADER:[B

.field private static final RESOLUTION_STRING:Ljava/util/regex/Pattern;

.field private static final TWO_TWO:[B


# instance fields
.field private height:I

.field private final in:Ljava/io/InputStream;

.field private metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    .line 35
    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->HEADER:[B

    const-string v0, "-Y (\\d+) \\+X (\\d+)"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->RESOLUTION_STRING:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->TWO_TWO:[B

    return-void

    :array_1a
    .array-data 1
        0x23t
        0x3ft
        0x52t
        0x41t
        0x44t
        0x49t
        0x41t
        0x4et
        0x43t
        0x45t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x2t
        0x2t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    .line 43
    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    .line 47
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    return-void
.end method

.method private static decompress(Ljava/io/InputStream;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_35

    .line 176
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x80

    if-le v3, v4, :cond_22

    .line 179
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    move v5, v2

    move v2, v1

    :goto_13
    and-int/lit8 v6, v3, 0x7f

    if-ge v2, v6, :cond_20

    add-int/lit8 v6, v5, 0x1

    int-to-byte v7, v4

    .line 182
    aput-byte v7, p1, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_13

    :cond_20
    move v2, v5

    goto :goto_3

    :cond_22
    move v4, v2

    move v2, v1

    :goto_24
    if-ge v2, v3, :cond_33

    add-int/lit8 v5, v4, 0x1

    .line 186
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_24

    :cond_33
    move v2, v4

    goto :goto_3

    :cond_35
    return-void
.end method

.method private readDimensions()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;

    .line 81
    new-instance v0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;-><init>(Ljava/io/InputStream;)V

    .line 82
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->RESOLUTION_STRING:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v0, 0x1

    .line 91
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    const/4 v0, 0x2

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    return-void

    .line 86
    :cond_31
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid HDR resolution string. Only \"-Y N +X M\" is supported. Found \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readMetadata()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    sget-object v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->HEADER:[B

    const-string v2, "Not a valid HDR: Incorrect Header"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 98
    new-instance v0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;-><init>(Ljava/io/InputStream;)V

    .line 100
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_79

    .line 104
    new-instance v1, Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-direct {v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    .line 106
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_78

    const/16 v2, 0x3d

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_6c

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FORMAT"

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v2, "32-bit_rle_rgbe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_66

    .line 116
    :cond_4f
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only 32-bit_rle_rgbe images are supported, trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_66
    :goto_66
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 121
    :cond_6c
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    const-string v3, "<command>"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_73
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_78
    return-void

    .line 101
    :cond_79
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Not a valid HDR: Incorrect Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method getHeight()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 67
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_8

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readDimensions()V

    .line 71
    :cond_8
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    return v0
.end method

.method getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    if-nez v0, :cond_7

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readMetadata()V

    .line 55
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    return-object v0
.end method

.method public getPixelData()[[F
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 131
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v1

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v2

    const v3, 0x8000

    if-ge v2, v3, :cond_bb

    int-to-short v3, v2

    .line 138
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v3

    mul-int/lit8 v4, v2, 0x4

    .line 140
    new-array v4, v4, [B

    mul-int v5, v2, v1

    const/4 v6, 0x3

    .line 141
    filled-new-array {v6, v5}, [I

    move-result-object v5

    const-class v7, F

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    const/4 v8, 0x0

    :goto_2a
    if-ge v8, v1, :cond_ba

    .line 144
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    sget-object v10, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->TWO_TWO:[B

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scan line "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " expected to start with 0x2 0x2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 145
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scan line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " length expected"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v3, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 147
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-static {v9, v4}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->decompress(Ljava/io/InputStream;[B)V

    const/4 v9, 0x0

    :goto_6a
    if-ge v9, v6, :cond_b1

    mul-int v10, v9, v2

    mul-int/lit8 v11, v2, 0x3

    const/4 v12, 0x0

    :goto_71
    if-ge v12, v2, :cond_a9

    add-int v13, v12, v11

    .line 154
    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    mul-int v14, v8, v2

    add-int/2addr v14, v12

    if-nez v13, :cond_86

    .line 158
    aget-object v13, v5, v9

    const/4 v15, 0x0

    aput v15, v13, v14

    move/from16 v16, v1

    goto :goto_a1

    :cond_86
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit16 v13, v13, -0x88

    move/from16 v16, v1

    int-to-double v0, v13

    .line 160
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 161
    aget-object v1, v5, v9

    add-int v6, v12, v10

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    mul-float/2addr v6, v0

    aput v6, v1, v14

    :goto_a1
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    move-object/from16 v0, p0

    const/4 v6, 0x3

    goto :goto_71

    :cond_a9
    move/from16 v16, v1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x3

    goto :goto_6a

    :cond_b1
    move/from16 v16, v1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x3

    goto/16 :goto_2a

    :cond_ba
    return-object v5

    .line 135
    :cond_bb
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Scan lines must be less than 32768 bytes long"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getWidth()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 59
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_8

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readDimensions()V

    .line 63
    :cond_8
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    return v0
.end method
