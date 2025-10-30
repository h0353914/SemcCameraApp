.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    .line 89
    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 90
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    .line 91
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    .line 93
    :goto_29
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v1, v3, :cond_3b

    add-int/lit8 v3, v1, -0x1

    .line 94
    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3b
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 21

    move/from16 v0, p0

    .line 519
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x385

    const-wide/16 v3, 0x384

    const/16 v5, 0x3a0

    const/16 v6, 0x384

    const/4 v7, 0x6

    const/4 v10, 0x0

    if-eq v0, v2, :cond_5d

    const/16 v2, 0x39c

    if-eq v0, v2, :cond_1b

    move/from16 v0, p3

    goto/16 :goto_cf

    :cond_1b
    move/from16 v0, p3

    move v2, v10

    move v12, v2

    const-wide/16 v13, 0x0

    .line 579
    :cond_21
    :goto_21
    aget v15, p1, v10

    if-ge v0, v15, :cond_cf

    if-nez v2, :cond_cf

    add-int/lit8 v15, v0, 0x1

    .line 580
    aget v0, p1, v0

    if-ge v0, v6, :cond_34

    add-int/lit8 v12, v12, 0x1

    mul-long/2addr v13, v3

    int-to-long v8, v0

    add-long/2addr v13, v8

    move v0, v15

    goto :goto_42

    :cond_34
    if-eq v0, v5, :cond_3e

    packed-switch v0, :pswitch_data_e0

    packed-switch v0, :pswitch_data_ea

    move v0, v15

    goto :goto_42

    :cond_3e
    :pswitch_3e
    add-int/lit8 v15, v15, -0x1

    move v0, v15

    const/4 v2, 0x1

    .line 599
    :goto_42
    rem-int/lit8 v8, v12, 0x5

    if-nez v8, :cond_21

    if-lez v12, :cond_21

    move v8, v10

    :goto_49
    if-ge v8, v7, :cond_59

    rsub-int/lit8 v9, v8, 0x5

    mul-int/lit8 v9, v9, 0x8

    shr-long v11, v13, v9

    long-to-int v9, v11

    int-to-byte v9, v9

    .line 603
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_59
    move v12, v10

    const-wide/16 v13, 0x0

    goto :goto_21

    .line 529
    :cond_5d
    new-array v0, v7, [I

    add-int/lit8 v2, p3, 0x1

    .line 530
    aget v8, p1, p3

    move v9, v8

    move v8, v10

    move v11, v8

    const-wide/16 v12, 0x0

    .line 531
    :goto_68
    aget v14, p1, v10

    if-ge v2, v14, :cond_b8

    if-nez v8, :cond_b8

    add-int/lit8 v14, v11, 0x1

    .line 532
    aput v9, v0, v11

    mul-long/2addr v12, v3

    int-to-long v3, v9

    add-long/2addr v12, v3

    add-int/lit8 v3, v2, 0x1

    .line 535
    aget v9, p1, v2

    if-eq v9, v5, :cond_b0

    packed-switch v9, :pswitch_data_f4

    packed-switch v9, :pswitch_data_fe

    .line 549
    rem-int/lit8 v2, v14, 0x5

    if-nez v2, :cond_a6

    if-lez v14, :cond_a6

    move v2, v10

    :goto_88
    if-ge v2, v7, :cond_9d

    rsub-int/lit8 v4, v2, 0x5

    mul-int/lit8 v4, v4, 0x8

    move/from16 p0, v8

    shr-long v7, v12, v4

    long-to-int v4, v7

    int-to-byte v4, v4

    .line 553
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x6

    move/from16 v8, p0

    goto :goto_88

    :cond_9d
    move/from16 p0, v8

    move v2, v3

    move v11, v10

    const-wide/16 v3, 0x384

    const-wide/16 v12, 0x0

    goto :goto_68

    :cond_a6
    move/from16 p0, v8

    move/from16 v8, p0

    move v2, v3

    move v11, v14

    const-wide/16 v3, 0x384

    const/4 v7, 0x6

    goto :goto_68

    :cond_b0
    :pswitch_b0
    add-int/lit8 v2, v3, -0x1

    move v11, v14

    const-wide/16 v3, 0x384

    const/4 v7, 0x6

    const/4 v8, 0x1

    goto :goto_68

    .line 563
    :cond_b8
    aget v3, p1, v10

    if-ne v2, v3, :cond_c3

    if-ge v9, v6, :cond_c3

    add-int/lit8 v3, v11, 0x1

    .line 564
    aput v9, v0, v11

    move v11, v3

    :cond_c3
    :goto_c3
    if-ge v10, v11, :cond_ce

    .line 571
    aget v3, v0, v10

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_c3

    :cond_ce
    move v0, v2

    .line 611
    :cond_cf
    :goto_cf
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :pswitch_data_e0
    .packed-switch 0x384
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x39a
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_f4
    .packed-switch 0x384
        :pswitch_b0
        :pswitch_b0
        :pswitch_b0
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x39a
        :pswitch_b0
        :pswitch_b0
        :pswitch_b0
    .end packed-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    .line 108
    aget v3, p0, v3

    .line 109
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_12
    const/4 v5, 0x0

    .line 110
    aget v5, p0, v5

    if-ge v2, v5, :cond_74

    const/16 v5, 0x391

    if-eq v3, v5, :cond_5b

    packed-switch v3, :pswitch_data_8e

    packed-switch v3, :pswitch_data_98

    add-int/lit8 v2, v2, -0x1

    .line 150
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    .line 139
    :pswitch_28
    invoke-static {p0, v2, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_64

    :pswitch_2d
    add-int/lit8 v1, v2, 0x1

    .line 126
    aget v2, p0, v2

    .line 127
    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_64

    :pswitch_41
    add-int/lit8 v2, v2, 0x2

    goto :goto_64

    :pswitch_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 144
    :pswitch_47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 123
    :pswitch_4c
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    .line 117
    :pswitch_51
    invoke-static {v3, p0, v1, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    .line 113
    :pswitch_56
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    :cond_5b
    add-int/lit8 v3, v2, 0x1

    .line 120
    aget v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 153
    :goto_64
    array-length v3, p0

    if-ge v2, v3, :cond_6f

    add-int/lit8 v3, v2, 0x1

    .line 154
    aget v2, p0, v2

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_12

    .line 156
    :cond_6f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 159
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_88

    .line 162
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    .line 160
    :cond_88
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_8e
    .packed-switch 0x384
        :pswitch_56
        :pswitch_51
        :pswitch_4c
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x39a
        :pswitch_47
        :pswitch_47
        :pswitch_51
        :pswitch_44
        :pswitch_41
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 706
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_5
    const/4 v3, 0x1

    if-ge v0, p1, :cond_21

    .line 708
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 710
    :cond_21
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 711
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_32

    .line 714
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 712
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 170
    aget v2, p0, v1

    if-gt v0, v2, :cond_10c

    const/4 v0, 0x2

    .line 174
    new-array v2, v0, [I

    move v3, p1

    move p1, v1

    :goto_c
    if-ge p1, v0, :cond_17

    .line 176
    aget v4, p0, v3

    aput v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 178
    :cond_17
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-static {p0, v3, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 186
    aget p1, p0, v0

    const/16 v2, 0x39b

    const/4 v3, -0x1

    if-ne p1, v2, :cond_3c

    add-int/lit8 p1, v0, 0x1

    goto :goto_3d

    :cond_3c
    move p1, v3

    .line 190
    :goto_3d
    aget v2, p0, v1

    if-ge v0, v2, :cond_f7

    .line 191
    aget v2, p0, v0

    packed-switch v2, :pswitch_data_112

    .line 239
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_4b
    add-int/lit8 v0, v0, 0x1

    .line 194
    aget v2, p0, v0

    packed-switch v2, :pswitch_data_11a

    .line 231
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 221
    :pswitch_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 222
    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V

    goto :goto_3d

    .line 226
    :pswitch_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 227
    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V

    goto :goto_3d

    .line 206
    :pswitch_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 207
    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    goto :goto_3d

    .line 201
    :pswitch_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 202
    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    goto :goto_3d

    .line 216
    :pswitch_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 217
    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V

    goto/16 :goto_3d

    .line 211
    :pswitch_c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 212
    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V

    goto/16 :goto_3d

    .line 196
    :pswitch_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 197
    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_3d

    :pswitch_ef
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    .line 236
    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    goto/16 :goto_3d

    :cond_f7
    if-eq p1, v3, :cond_10b

    sub-int v1, v0, p1

    .line 246
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v2

    if-eqz v2, :cond_103

    add-int/lit8 v1, v1, -0x1

    :cond_103
    add-int/2addr v1, p1

    .line 250
    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    :cond_10b
    return v0

    .line 172
    :cond_10c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_112
    .packed-switch 0x39a
        :pswitch_ef
        :pswitch_4b
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_db
        :pswitch_c3
        :pswitch_ab
        :pswitch_98
        :pswitch_85
        :pswitch_6e
        :pswitch_57
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 16

    .line 338
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 339
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, v0

    move v0, v2

    :goto_8
    if-ge v0, p2, :cond_106

    .line 342
    aget v4, p0, v0

    .line 344
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x20

    const/16 v7, 0x1d

    const/16 v8, 0x1a

    const/16 v9, 0x391

    const/16 v10, 0x384

    packed-switch v5, :pswitch_data_108

    move v4, v2

    goto/16 :goto_fd

    :pswitch_24
    if-ge v4, v7, :cond_2e

    .line 478
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v1, v1, v4

    move v4, v1

    move-object v1, v3

    goto/16 :goto_fd

    :cond_2e
    if-eq v4, v7, :cond_3f

    if-eq v4, v10, :cond_3f

    if-eq v4, v9, :cond_35

    goto :goto_3b

    .line 488
    :cond_35
    aget v1, p1, v0

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3b
    move v4, v2

    move-object v1, v3

    goto/16 :goto_fd

    .line 483
    :cond_3f
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v4, v2

    goto/16 :goto_fd

    :pswitch_44
    if-ge v4, v8, :cond_4d

    add-int/lit8 v4, v4, 0x41

    int-to-char v1, v4

    move v4, v1

    move-object v1, v3

    goto/16 :goto_fd

    :cond_4d
    if-eq v4, v8, :cond_58

    if-eq v4, v10, :cond_54

    move v6, v2

    move-object v1, v3

    goto :goto_59

    .line 468
    :cond_54
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    goto :goto_59

    :cond_58
    move-object v1, v3

    :goto_59
    move v4, v6

    goto/16 :goto_fd

    :pswitch_5c
    if-ge v4, v7, :cond_64

    .line 443
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v4

    goto/16 :goto_fd

    :cond_64
    if-eq v4, v7, :cond_72

    if-eq v4, v10, :cond_72

    if-eq v4, v9, :cond_6b

    goto :goto_74

    .line 451
    :cond_6b
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 448
    :cond_72
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_74
    move v4, v2

    goto/16 :goto_fd

    :pswitch_77
    const/16 v5, 0x19

    if-ge v4, v5, :cond_81

    .line 412
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v4

    goto/16 :goto_fd

    :cond_81
    if-eq v4, v10, :cond_a0

    if-eq v4, v9, :cond_98

    packed-switch v4, :pswitch_data_118

    goto :goto_9e

    .line 431
    :pswitch_89
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_a3

    .line 422
    :pswitch_90
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    goto :goto_a3

    .line 416
    :pswitch_94
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    goto :goto_a3

    .line 434
    :cond_98
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9e
    move v6, v2

    goto :goto_a3

    .line 426
    :cond_a0
    :pswitch_a0
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    :goto_a3
    :pswitch_a3
    move v4, v6

    goto/16 :goto_fd

    :pswitch_a6
    if-ge v4, v8, :cond_ad

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    goto/16 :goto_fd

    :cond_ad
    if-eq v4, v10, :cond_cf

    if-eq v4, v9, :cond_c7

    packed-switch v4, :pswitch_data_126

    goto :goto_cd

    .line 396
    :pswitch_b5
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_d2

    .line 391
    :pswitch_bc
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    goto :goto_d2

    .line 388
    :pswitch_c0
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_d2

    .line 400
    :cond_c7
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_cd
    move v6, v2

    goto :goto_d2

    .line 403
    :cond_cf
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    :goto_d2
    :pswitch_d2
    move v4, v6

    goto :goto_fd

    :pswitch_d4
    if-ge v4, v8, :cond_da

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    goto :goto_fd

    :cond_da
    if-eq v4, v10, :cond_f9

    if-eq v4, v9, :cond_f1

    packed-switch v4, :pswitch_data_132

    goto :goto_f7

    .line 364
    :pswitch_e2
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_fc

    .line 359
    :pswitch_e9
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    goto :goto_fc

    .line 356
    :pswitch_ed
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    goto :goto_fc

    .line 367
    :cond_f1
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_f7
    move v6, v2

    goto :goto_fc

    .line 370
    :cond_f9
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v6, v2

    :goto_fc
    :pswitch_fc
    move v4, v6

    :goto_fd
    if-eqz v4, :cond_102

    .line 496
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_102
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_a6
        :pswitch_77
        :pswitch_5c
        :pswitch_44
        :pswitch_24
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x19
        :pswitch_94
        :pswitch_a3
        :pswitch_90
        :pswitch_a0
        :pswitch_89
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x1a
        :pswitch_d2
        :pswitch_c0
        :pswitch_bc
        :pswitch_b5
    .end packed-switch

    :pswitch_data_132
    .packed-switch 0x1a
        :pswitch_fc
        :pswitch_ed
        :pswitch_e9
        :pswitch_e2
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 627
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 629
    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_44

    if-nez v2, :cond_44

    add-int/lit8 v4, p1, 0x1

    .line 630
    aget p1, p0, p1

    .line 631
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    move v2, v6

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    .line 635
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_20
    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2b

    packed-switch p1, :pswitch_data_46

    packed-switch p1, :pswitch_data_4e

    goto :goto_2e

    :cond_2b
    :pswitch_2b
    add-int/lit8 v4, v4, -0x1

    move v2, v6

    .line 650
    :goto_2e
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_38

    const/16 v5, 0x386

    if-eq p1, v5, :cond_38

    if-eqz v2, :cond_42

    :cond_38
    if-lez v3, :cond_42

    .line 655
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_42
    move p1, v4

    goto :goto_7

    :cond_44
    return p1

    nop

    :pswitch_data_46
    .packed-switch 0x384
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x39a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 11

    const/4 v0, 0x0

    .line 268
    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 270
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move v3, v0

    move v4, v3

    .line 274
    :goto_11
    aget v5, p0, v0

    if-ge p1, v5, :cond_55

    if-nez v3, :cond_55

    add-int/lit8 v5, p1, 0x1

    .line 275
    aget p1, p0, p1

    const/16 v6, 0x384

    if-ge p1, v6, :cond_2d

    .line 277
    div-int/lit8 v6, p1, 0x1e

    aput v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    .line 278
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v6

    add-int/lit8 v4, v4, 0x2

    move p1, v5

    goto :goto_11

    :cond_2d
    const/16 v7, 0x391

    if-eq p1, v7, :cond_4a

    const/16 v7, 0x3a0

    if-eq p1, v7, :cond_44

    packed-switch p1, :pswitch_data_5a

    packed-switch p1, :pswitch_data_64

    move p1, v5

    goto :goto_11

    :pswitch_3d
    add-int/lit8 p1, v4, 0x1

    .line 284
    aput v6, v1, v4

    move v4, p1

    move p1, v5

    goto :goto_11

    :cond_44
    :pswitch_44
    add-int/lit8 v5, v5, -0x1

    const/4 p1, 0x1

    move v3, p1

    move p1, v5

    goto :goto_11

    .line 302
    :cond_4a
    aput v7, v1, v4

    add-int/lit8 p1, v5, 0x1

    .line 303
    aget v5, p0, v5

    .line 304
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 310
    :cond_55
    invoke-static {v1, v2, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    nop

    :pswitch_data_5a
    .packed-switch 0x384
        :pswitch_3d
        :pswitch_44
        :pswitch_44
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x39a
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method
