.class public Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PnmImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".pnm"

.field public static final PARAM_KEY_PNM_RAWBITS:Ljava/lang/String; = "PNM_RAWBITS"

.field public static final PARAM_VALUE_PNM_RAWBITS_NO:Ljava/lang/String; = "NO"

.field public static final PARAM_VALUE_PNM_RAWBITS_YES:Ljava/lang/String; = "YES"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, ".pbm"

    const-string v1, ".pgm"

    const-string v2, ".ppm"

    const-string v3, ".pnm"

    const-string v4, ".pam"

    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 56
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "Identifier1"

    const-string v2, "Not a Valid PNM File"

    .line 88
    invoke-static {v1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    const-string v2, "Identifier2"

    const-string v3, "Not a Valid PNM File"

    .line 89
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    const/16 v3, 0x50

    if-ne v1, v3, :cond_195

    .line 95
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x36

    const/16 v3, 0x33

    const/16 v4, 0x35

    const/16 v5, 0x32

    const/16 v6, 0x34

    const/16 v7, 0x31

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v7, :cond_12d

    if-eq v2, v6, :cond_12d

    if-eq v2, v5, :cond_12d

    if-eq v2, v4, :cond_12d

    if-eq v2, v3, :cond_12d

    if-ne v2, v0, :cond_37

    goto/16 :goto_12d

    :cond_37
    const/16 v0, 0x37

    if-ne v2, v0, :cond_125

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readLine()Ljava/lang/String;

    const/4 v2, -0x1

    move v11, v2

    move v12, v11

    move v13, v12

    move v14, v13

    move v2, v9

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 141
    :goto_4d
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e8

    .line 142
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 143
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v15, 0x23

    if-ne v10, v15, :cond_60

    goto :goto_4d

    .line 146
    :cond_60
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v15, " "

    invoke-direct {v10, v7, v15, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v15, "WIDTH"

    .line 148
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7e

    .line 150
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    move v3, v8

    goto :goto_4d

    :cond_7e
    const-string v15, "HEIGHT"

    .line 151
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_91

    .line 153
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v12, v4

    move v4, v8

    goto :goto_4d

    :cond_91
    const-string v15, "DEPTH"

    .line 154
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 156
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v13, v5

    move v5, v8

    goto :goto_4d

    :cond_a4
    const-string v15, "MAXVAL"

    .line 157
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b7

    .line 159
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v14, v6

    move v6, v8

    goto :goto_4d

    :cond_b7
    const-string v15, "TUPLTYPE"

    .line 160
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c8

    .line 162
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v8

    goto :goto_4d

    :cond_c8
    const-string v1, "ENDHDR"

    .line 163
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    goto :goto_e8

    .line 166
    :cond_d1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PAM file header type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e8
    :goto_e8
    if-eqz v3, :cond_11d

    if-eqz v4, :cond_115

    if-eqz v5, :cond_10d

    if-eqz v6, :cond_105

    if-eqz v2, :cond_fd

    .line 182
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;-><init>(IIIILjava/lang/String;)V

    return-object v1

    .line 179
    :cond_fd
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no TUPLTYPE"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_105
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no MAXVAL"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_10d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no DEPTH"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_115
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no HEIGHT"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_11d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no WIDTH"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_125
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNM file has invalid prefix byte 2"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_12d
    :goto_12d
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 105
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v2, v7, :cond_145

    .line 108
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;

    invoke-direct {v0, v10, v11, v9}, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;-><init>(IIZ)V

    return-object v0

    :cond_145
    if-ne v2, v6, :cond_14d

    .line 110
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;

    invoke-direct {v0, v10, v11, v8}, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;-><init>(IIZ)V

    return-object v0

    :cond_14d
    if-ne v2, v5, :cond_15d

    .line 112
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;

    invoke-direct {v1, v10, v11, v9, v0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;-><init>(IIZI)V

    return-object v1

    :cond_15d
    if-ne v2, v4, :cond_16d

    .line 115
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;

    invoke-direct {v1, v10, v11, v8, v0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;-><init>(IIZI)V

    return-object v1

    :cond_16d
    if-ne v2, v3, :cond_17d

    .line 118
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;

    invoke-direct {v1, v10, v11, v9, v0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;-><init>(IIZI)V

    return-object v1

    :cond_17d
    if-ne v2, v0, :cond_18d

    .line 121
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;

    invoke-direct {v1, v10, v11, v8, v0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;-><init>(IIZI)V

    return-object v1

    .line 124
    :cond_18d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNM file has invalid header."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_195
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNM file has invalid prefix byte 1"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_14

    .line 195
    :try_start_6
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_12

    .line 199
    new-array v3, v0, [Ljava/io/Closeable;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_12
    move-exception v2

    goto :goto_16

    :catchall_14
    move-exception v2

    const/4 p1, 0x0

    :goto_16
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v2
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

    const-string v0, "pnm.dumpImageFile"

    .line 270
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p2

    if-nez p2, :cond_d

    const/4 p1, 0x0

    return p1

    :cond_d
    const-string v0, ""

    .line 277
    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, ""

    .line 279
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .registers 2

    .line 72
    sget-object v0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .registers 4

    const/4 v0, 0x5

    .line 77
    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .registers 9
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

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 290
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_28

    .line 292
    :try_start_6
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object v1

    .line 294
    iget v2, v1, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    .line 295
    iget v3, v1, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    .line 297
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->hasAlpha()Z

    move-result v4

    .line 298
    new-instance v5, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v5, v2, v3, v4}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 300
    invoke-virtual {v1, v5, p1}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readImage(Lorg/apache/commons/imaging/common/ImageBuilder;Ljava/io/InputStream;)V

    .line 302
    invoke-virtual {v5}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_26

    .line 306
    new-array v2, p2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    invoke-static {p2, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v1

    :catchall_26
    move-exception v1

    goto :goto_2a

    :catchall_28
    move-exception v1

    const/4 p1, 0x0

    :goto_2a
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .registers 2

    const-string v0, ".pnm"

    return-object v0
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
    .registers 24
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

    .line 230
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getBitDepth()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getNumComponents()I

    move-result v2

    mul-int v3, v1, v2

    .line 239
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageType()Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v5

    .line 240
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v6

    .line 241
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getMIMEType()Ljava/lang/String;

    move-result-object v8

    .line 248
    iget v1, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    int-to-double v1, v1

    const-wide/high16 v9, 0x4052000000000000L    # 72.0

    div-double/2addr v1, v9

    double-to-float v13, v1

    .line 250
    iget v1, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    int-to-double v1, v1

    div-double/2addr v1, v9

    double-to-float v11, v1

    .line 252
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->hasAlpha()Z

    move-result v16

    .line 257
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object v18

    .line 258
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 260
    new-instance v20, Lorg/apache/commons/imaging/ImageInfo;

    move-object/from16 v1, v20

    iget v7, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    const/4 v9, 0x1

    const/16 v10, 0x48

    const/16 v12, 0x48

    iget v14, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v20

    .line 233
    :cond_50
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNM: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .registers 4
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

    .line 212
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 218
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 215
    :cond_10
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNM: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const-string v0, "Pbm-Custom"

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
    .registers 9
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

    .line 315
    new-instance v0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_5d

    const-string v3, "PNM_RAWBITS"

    .line 318
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    const-string v4, "NO"

    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x0

    :cond_1e
    const-string v3, "FORMAT"

    .line 325
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 327
    sget-object v4, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 328
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;-><init>(Z)V

    goto :goto_5d

    .line 329
    :cond_34
    sget-object v4, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 330
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;-><init>(Z)V

    goto :goto_5d

    .line 331
    :cond_42
    sget-object v4, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 332
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;-><init>(Z)V

    goto :goto_5d

    .line 333
    :cond_50
    sget-object v4, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 334
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PamWriter;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/pnm/PamWriter;-><init>()V

    :cond_5d
    :goto_5d
    if-nez v1, :cond_6c

    if-eqz v0, :cond_67

    .line 341
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PamWriter;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/pnm/PamWriter;-><init>()V

    goto :goto_6c

    .line 343
    :cond_67
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;-><init>(Z)V

    :cond_6c
    :goto_6c
    if-eqz p3, :cond_74

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_79

    .line 351
    :cond_74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_79
    const-string p3, "FORMAT"

    .line 355
    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_86

    const-string p3, "FORMAT"

    .line 356
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_86
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_90

    .line 364
    invoke-interface {v1, p1, p2, v0}, Lorg/apache/commons/imaging/formats/pnm/PnmWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void

    .line 360
    :cond_90
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 361
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
