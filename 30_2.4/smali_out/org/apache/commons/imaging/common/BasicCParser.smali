.class public Lorg/apache/commons/imaging/common/BasicCParser;
.super Ljava/lang/Object;
.source "BasicCParser.java"


# instance fields
.field private final is:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    return-void
.end method

.method public static preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 113
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v0, :cond_d

    const/4 v5, 0x1

    goto :goto_e

    :cond_d
    const/4 v5, 0x0

    .line 115
    :goto_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    move v14, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1f
    const/4 v15, -0x1

    const/16 v3, 0x2a

    const/16 v4, 0x2f

    if-eq v7, v15, :cond_1d1

    if-eqz v8, :cond_61

    if-ne v7, v3, :cond_36

    if-eqz v9, :cond_31

    if-nez v14, :cond_31

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_31
    const/4 v9, 0x1

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_36
    if-ne v7, v4, :cond_4f

    if-eqz v9, :cond_41

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_41
    if-nez v14, :cond_4b

    int-to-char v3, v7

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_4b
    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_4f
    if-eqz v9, :cond_56

    if-nez v14, :cond_56

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_56
    if-nez v14, :cond_5c

    int-to-char v3, v7

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5c
    const/4 v9, 0x0

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_61
    const/16 v15, 0x27

    const/16 v4, 0xd

    const/16 v3, 0x5c

    if-eqz v10, :cond_ae

    if-ne v7, v3, :cond_7d

    if-eqz v13, :cond_78

    .line 145
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 146
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v13, 0x0

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_78
    const/4 v13, 0x1

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_7d
    if-ne v7, v15, :cond_90

    if-eqz v13, :cond_87

    .line 153
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v10

    const/4 v13, 0x0

    goto :goto_88

    :cond_87
    const/4 v3, 0x0

    .line 158
    :goto_88
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v10, v3

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_90
    if-eq v7, v4, :cond_a6

    const/16 v4, 0xa

    if-eq v7, v4, :cond_a6

    if-eqz v13, :cond_9d

    .line 163
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    goto :goto_9e

    :cond_9d
    move v3, v13

    .line 166
    :goto_9e
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v13, v3

    const/16 v16, 0x1

    goto/16 :goto_1cb

    .line 160
    :cond_a6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated single quote in file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    const/16 v15, 0x22

    if-eqz v11, :cond_f7

    if-ne v7, v3, :cond_c6

    if-eqz v13, :cond_c1

    .line 171
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v13, 0x0

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_c1
    const/4 v13, 0x1

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_c6
    if-ne v7, v15, :cond_d9

    if-eqz v13, :cond_d0

    .line 179
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v11

    const/4 v13, 0x0

    goto :goto_d1

    :cond_d0
    const/4 v3, 0x0

    .line 184
    :goto_d1
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v11, v3

    const/16 v16, 0x1

    goto/16 :goto_1cb

    :cond_d9
    if-eq v7, v4, :cond_ef

    const/16 v4, 0xa

    if-eq v7, v4, :cond_ef

    if-eqz v13, :cond_e6

    .line 189
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    goto :goto_e7

    :cond_e6
    move v3, v13

    .line 192
    :goto_e7
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v13, v3

    const/16 v16, 0x1

    goto/16 :goto_1cb

    .line 186
    :cond_ef
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string in file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f7
    if-eqz v12, :cond_15f

    if-eq v7, v4, :cond_108

    const/16 v3, 0xa

    if-ne v7, v3, :cond_100

    goto :goto_108

    :cond_100
    int-to-char v3, v7

    .line 209
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    goto/16 :goto_1cb

    .line 197
    :cond_108
    :goto_108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    array-length v4, v3

    const/4 v7, 0x2

    if-lt v4, v7, :cond_157

    array-length v4, v3

    const/4 v12, 0x3

    if-gt v4, v12, :cond_157

    const/4 v4, 0x0

    .line 201
    aget-object v15, v3, v4

    const-string v4, "define"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_138

    const/16 v16, 0x1

    .line 205
    aget-object v4, v3, v16

    array-length v15, v3

    if-ne v15, v12, :cond_12d

    aget-object v3, v3, v7

    goto :goto_12e

    :cond_12d
    const/4 v3, 0x0

    :goto_12e
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 207
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v12, v4

    goto/16 :goto_1cb

    :cond_138
    const/4 v4, 0x0

    .line 202
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid/unsupported preprocessor directive \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_157
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Bad preprocessor directive"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15f
    const/16 v3, 0x2f

    const/16 v16, 0x1

    if-ne v7, v3, :cond_16d

    if-eqz v5, :cond_16a

    .line 214
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_16a
    move/from16 v5, v16

    goto :goto_1cb

    :cond_16d
    const/16 v3, 0x2a

    if-ne v7, v3, :cond_17b

    if-eqz v5, :cond_177

    move/from16 v8, v16

    const/4 v5, 0x0

    goto :goto_1cb

    .line 222
    :cond_177
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1cb

    :cond_17b
    const/16 v3, 0x27

    if-ne v7, v3, :cond_18d

    if-eqz v5, :cond_186

    const/16 v3, 0x2f

    .line 226
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    :cond_186
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v10, v16

    const/4 v5, 0x0

    goto :goto_1cb

    :cond_18d
    const/16 v3, 0x2f

    if-ne v7, v15, :cond_19d

    if-eqz v5, :cond_196

    .line 233
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 236
    :cond_196
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v11, v16

    const/4 v5, 0x0

    goto :goto_1cb

    :cond_19d
    const/16 v3, 0x23

    if-ne v7, v3, :cond_1ae

    if-eqz v1, :cond_1a6

    move/from16 v12, v16

    goto :goto_1cb

    .line 240
    :cond_1a6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unexpected preprocessor directive"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ae
    if-eqz v5, :cond_1b5

    const/16 v3, 0x2f

    .line 245
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    :cond_1b5
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x20

    if-eq v7, v3, :cond_1ca

    const/16 v3, 0x9

    if-eq v7, v3, :cond_1ca

    if-eq v7, v4, :cond_1ca

    const/16 v3, 0xa

    if-eq v7, v3, :cond_1ca

    move/from16 v14, v16

    const/4 v5, 0x0

    goto :goto_1cb

    :cond_1ca
    const/4 v5, 0x0

    .line 116
    :goto_1cb
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    goto/16 :goto_1f

    :cond_1d1
    if-eqz v5, :cond_1d8

    const/16 v0, 0x2f

    .line 257
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1d8
    if-eqz v9, :cond_1df

    const/16 v0, 0x2a

    .line 260
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1df
    if-nez v11, :cond_1ec

    if-nez v8, :cond_1e4

    return-object v2

    .line 266
    :cond_1e4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated comment at the end of file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1ec
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string at the end of file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const-string v0, "[ \t]"

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 274
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_1b

    aget-object v4, p0, v2

    if-eqz v4, :cond_18

    .line 275
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_18

    add-int/lit8 v3, v3, 0x1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 279
    :cond_1b
    new-array v0, v3, [Ljava/lang/String;

    .line 281
    array-length v2, p0

    move v3, v1

    :goto_1f
    if-ge v1, v2, :cond_33

    aget-object v4, p0, v1

    if-eqz v4, :cond_30

    .line 282
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30

    add-int/lit8 v5, v3, 0x1

    .line 283
    aput-object v4, v0, v3

    move v3, v5

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return-object v0
.end method

.method public static unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_16f

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_167

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_167

    move v5, v0

    move v2, v4

    .line 301
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v2, v6, :cond_15c

    .line 302
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eqz v5, :cond_148

    if-ne v6, v7, :cond_34

    .line 305
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_146

    :cond_34
    if-ne v6, v3, :cond_3b

    .line 307
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_146

    :cond_3b
    const/16 v5, 0x27

    if-ne v6, v5, :cond_44

    .line 309
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_146

    :cond_44
    const/16 v5, 0x78

    if-ne v6, v5, :cond_8f

    add-int/lit8 v5, v2, 0x2

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_87

    add-int/lit8 v2, v2, 0x1

    .line 316
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 317
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 321
    :try_start_5a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_77} :catch_7e

    int-to-char v2, v2

    .line 327
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto/16 :goto_146

    :catch_7e
    move-exception p0

    .line 323
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, hex constant invalid"

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 312
    :cond_87
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, hex constant in string too short"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    const/16 v5, 0x37

    const/16 v7, 0x30

    if-eq v6, v7, :cond_101

    const/16 v8, 0x31

    if-eq v6, v8, :cond_101

    const/16 v8, 0x32

    if-eq v6, v8, :cond_101

    const/16 v8, 0x33

    if-eq v6, v8, :cond_101

    const/16 v8, 0x34

    if-eq v6, v8, :cond_101

    const/16 v8, 0x35

    if-eq v6, v8, :cond_101

    const/16 v8, 0x36

    if-eq v6, v8, :cond_101

    if-ne v6, v5, :cond_b0

    goto :goto_101

    :cond_b0
    const/16 v5, 0x61

    if-ne v6, v5, :cond_ba

    const/4 v5, 0x7

    .line 347
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_146

    :cond_ba
    const/16 v5, 0x62

    if-ne v6, v5, :cond_c5

    const/16 v5, 0x8

    .line 349
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_146

    :cond_c5
    const/16 v5, 0x66

    if-ne v6, v5, :cond_d0

    const/16 v5, 0xc

    .line 351
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_146

    :cond_d0
    const/16 v5, 0x6e

    if-ne v6, v5, :cond_db

    const/16 v5, 0xa

    .line 353
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_146

    :cond_db
    const/16 v5, 0x72

    if-ne v6, v5, :cond_e5

    const/16 v5, 0xd

    .line 355
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_146

    :cond_e5
    const/16 v5, 0x74

    if-ne v6, v5, :cond_ef

    const/16 v5, 0x9

    .line 357
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_146

    :cond_ef
    const/16 v5, 0x76

    if-ne v6, v5, :cond_f9

    const/16 v5, 0xb

    .line 359
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_146

    .line 361
    :cond_f9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, invalid escape sequence"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_101
    :goto_101
    add-int/lit8 v6, v2, 0x1

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_117

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v7, v8, :cond_117

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_117

    move v6, v1

    goto :goto_118

    :cond_117
    move v6, v4

    :goto_118
    add-int/lit8 v8, v2, 0x2

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_12e

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v7, v9, :cond_12e

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v5, :cond_12e

    add-int/lit8 v6, v6, 0x1

    :cond_12e
    move v5, v0

    move v8, v5

    :goto_130
    if-ge v5, v6, :cond_13f

    mul-int/lit8 v8, v8, 0x8

    add-int v9, v2, v5

    .line 342
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v7

    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    :cond_13f
    add-int/lit8 v6, v6, -0x1

    add-int/2addr v2, v6

    int-to-char v5, v8

    .line 345
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_146
    move v5, v0

    goto :goto_151

    :cond_148
    if-ne v6, v7, :cond_14c

    move v5, v4

    goto :goto_151

    :cond_14c
    if-eq v6, v3, :cond_154

    .line 372
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_151
    add-int/2addr v2, v4

    goto/16 :goto_1e

    .line 369
    :cond_154
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, extra \'\"\' found in string"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15c
    if-nez v5, :cond_15f

    return-void

    .line 377
    :cond_15f
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, unterminated escape sequence found in string"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_167
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, string not surrounded by \'\"\'"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_16f
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, string is too short"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v1, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_f
    const/4 v6, -0x1

    if-eq v1, v6, :cond_d7

    const/16 v6, 0xa

    const/16 v7, 0xd

    const/4 v8, 0x1

    const/16 v9, 0x22

    if-eqz v4, :cond_49

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_27

    .line 51
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_cf

    :cond_27
    if-ne v1, v9, :cond_36

    .line 54
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v5, :cond_33

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    move v5, v2

    goto/16 :goto_cf

    :cond_36
    if-eq v1, v7, :cond_41

    if-eq v1, v6, :cond_41

    int-to-char v1, v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v2

    goto/16 :goto_cf

    .line 60
    :cond_41
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string in XPM file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v10, 0x5f

    if-eqz v3, :cond_66

    .line 67
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-nez v6, :cond_60

    if-ne v1, v10, :cond_56

    goto :goto_60

    .line 70
    :cond_56
    iget-object v2, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_60
    :goto_60
    int-to-char v1, v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_cf

    :cond_66
    if-ne v1, v9, :cond_6d

    .line 75
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v8

    goto :goto_cf

    .line 77
    :cond_6d
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-nez v9, :cond_ca

    if-ne v1, v10, :cond_76

    goto :goto_ca

    :cond_76
    const/16 v8, 0x7b

    if-eq v1, v8, :cond_c1

    const/16 v8, 0x7d

    if-eq v1, v8, :cond_c1

    const/16 v8, 0x5b

    if-eq v1, v8, :cond_c1

    const/16 v8, 0x5d

    if-eq v1, v8, :cond_c1

    const/16 v8, 0x2a

    if-eq v1, v8, :cond_c1

    const/16 v8, 0x3b

    if-eq v1, v8, :cond_c1

    const/16 v8, 0x3d

    if-eq v1, v8, :cond_c1

    const/16 v8, 0x2c

    if-ne v1, v8, :cond_97

    goto :goto_c1

    :cond_97
    const/16 v8, 0x20

    if-eq v1, v8, :cond_cf

    const/16 v8, 0x9

    if-eq v1, v8, :cond_cf

    if-eq v1, v7, :cond_cf

    if-ne v1, v6, :cond_a4

    goto :goto_cf

    .line 87
    :cond_a4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled/invalid character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' found in XPM file"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    :goto_c1
    int-to-char v1, v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ca
    :goto_ca
    int-to-char v1, v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v8

    .line 48
    :cond_cf
    :goto_cf
    iget-object v1, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    goto/16 :goto_f

    :cond_d7
    if-eqz v3, :cond_de

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_de
    if-nez v4, :cond_e2

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_e2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string ends XMP file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
