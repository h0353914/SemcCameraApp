.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    :cond_a
    add-int/lit8 p0, p0, 0x1

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 185
    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 186
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_29

    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    const/16 v3, 0x30

    if-lt v1, v3, :cond_38

    const/16 v3, 0x39

    if-le v1, v3, :cond_32

    goto :goto_38

    .line 193
    :cond_32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_38
    :goto_38
    return-object v2

    .line 195
    :cond_39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 202
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_29

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_23

    .line 207
    invoke-static {p1, p0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    goto :goto_29

    .line 210
    :cond_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 212
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 215
    :cond_29
    :goto_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .registers 24

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    .line 50
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    .line 69
    :goto_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_284

    .line 70
    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return-object v2

    .line 76
    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    add-int v3, v3, v18

    .line 77
    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v3, v3, v20

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v20

    move/from16 p1, v3

    const/16 v21, -0x1

    sparse-switch v20, :sswitch_data_28e

    :goto_52
    move/from16 v19, v21

    goto/16 :goto_22b

    :sswitch_56
    const-string v3, "3933"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_52

    :cond_5f
    const/16 v19, 0x22

    goto/16 :goto_22b

    :sswitch_63
    const-string v3, "3932"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    goto :goto_52

    :cond_6c
    const/16 v19, 0x21

    goto/16 :goto_22b

    :sswitch_70
    const-string v3, "3931"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    goto :goto_52

    :cond_79
    const/16 v19, 0x20

    goto/16 :goto_22b

    :sswitch_7d
    const-string v3, "3930"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto :goto_52

    :cond_86
    const/16 v19, 0x1f

    goto/16 :goto_22b

    :sswitch_8a
    const-string v3, "3923"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    goto :goto_52

    :cond_93
    const/16 v19, 0x1e

    goto/16 :goto_22b

    :sswitch_97
    const-string v3, "3922"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    goto :goto_52

    :cond_a0
    const/16 v19, 0x1d

    goto/16 :goto_22b

    :sswitch_a4
    const-string v3, "3921"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad

    goto :goto_52

    :cond_ad
    const/16 v19, 0x1c

    goto/16 :goto_22b

    :sswitch_b1
    const-string v3, "3920"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    goto :goto_52

    :cond_ba
    const/16 v19, 0x1b

    goto/16 :goto_22b

    :sswitch_be
    const-string v3, "3209"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c7

    goto :goto_52

    :cond_c7
    const/16 v19, 0x1a

    goto/16 :goto_22b

    :sswitch_cb
    const-string v3, "3208"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    goto/16 :goto_52

    :cond_d5
    const/16 v19, 0x19

    goto/16 :goto_22b

    :sswitch_d9
    const-string v3, "3207"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e3

    goto/16 :goto_52

    :cond_e3
    const/16 v19, 0x18

    goto/16 :goto_22b

    :sswitch_e7
    const-string v3, "3206"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f1

    goto/16 :goto_52

    :cond_f1
    const/16 v19, 0x17

    goto/16 :goto_22b

    :sswitch_f5
    const-string v3, "3205"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ff

    goto/16 :goto_52

    :cond_ff
    const/16 v19, 0x16

    goto/16 :goto_22b

    :sswitch_103
    const-string v3, "3204"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10d

    goto/16 :goto_52

    :cond_10d
    const/16 v19, 0x15

    goto/16 :goto_22b

    :sswitch_111
    const-string v3, "3203"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11b

    goto/16 :goto_52

    :cond_11b
    const/16 v19, 0x14

    goto/16 :goto_22b

    :sswitch_11f
    const-string v3, "3202"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_129

    goto/16 :goto_52

    :cond_129
    const/16 v19, 0x13

    goto/16 :goto_22b

    :sswitch_12d
    const-string v3, "3201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_137

    goto/16 :goto_52

    :cond_137
    const/16 v19, 0x12

    goto/16 :goto_22b

    :sswitch_13b
    const-string v3, "3200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_145

    goto/16 :goto_52

    :cond_145
    const/16 v19, 0x11

    goto/16 :goto_22b

    :sswitch_149
    const-string v3, "3109"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_153

    goto/16 :goto_52

    :cond_153
    const/16 v19, 0x10

    goto/16 :goto_22b

    :sswitch_157
    const-string v3, "3108"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_161

    goto/16 :goto_52

    :cond_161
    const/16 v19, 0xf

    goto/16 :goto_22b

    :sswitch_165
    const-string v3, "3107"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16f

    goto/16 :goto_52

    :cond_16f
    const/16 v19, 0xe

    goto/16 :goto_22b

    :sswitch_173
    const-string v3, "3106"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17d

    goto/16 :goto_52

    :cond_17d
    const/16 v19, 0xd

    goto/16 :goto_22b

    :sswitch_181
    const-string v3, "3105"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18b

    goto/16 :goto_52

    :cond_18b
    const/16 v19, 0xc

    goto/16 :goto_22b

    :sswitch_18f
    const-string v3, "3104"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_199

    goto/16 :goto_52

    :cond_199
    const/16 v19, 0xb

    goto/16 :goto_22b

    :sswitch_19d
    const-string v3, "3103"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a7

    goto/16 :goto_52

    :cond_1a7
    const/16 v19, 0xa

    goto/16 :goto_22b

    :sswitch_1ab
    const-string v3, "3102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b5

    goto/16 :goto_52

    :cond_1b5
    const/16 v19, 0x9

    goto/16 :goto_22b

    :sswitch_1b9
    const-string v3, "3101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c3

    goto/16 :goto_52

    :cond_1c3
    const/16 v19, 0x8

    goto/16 :goto_22b

    :sswitch_1c7
    const-string v3, "3100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d1

    goto/16 :goto_52

    :cond_1d1
    const/16 v19, 0x7

    goto :goto_22b

    :sswitch_1d4
    const-string v3, "17"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1de

    goto/16 :goto_52

    :cond_1de
    const/16 v19, 0x6

    goto :goto_22b

    :sswitch_1e1
    const-string v3, "15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1eb

    goto/16 :goto_52

    :cond_1eb
    const/16 v19, 0x5

    goto :goto_22b

    :sswitch_1ee
    const-string v3, "13"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f8

    goto/16 :goto_52

    :cond_1f8
    const/16 v19, 0x4

    goto :goto_22b

    :sswitch_1fb
    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_205

    goto/16 :goto_52

    :cond_205
    const/16 v19, 0x3

    goto :goto_22b

    :sswitch_208
    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22b

    goto/16 :goto_52

    :sswitch_212
    const-string v3, "01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21c

    goto/16 :goto_52

    :cond_21c
    const/16 v19, 0x1

    goto :goto_22b

    :sswitch_21f
    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_229

    goto/16 :goto_52

    :cond_229
    const/16 v19, 0x0

    :cond_22b
    :goto_22b
    packed-switch v19, :pswitch_data_31c

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_27f

    .line 141
    :pswitch_233
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x4

    if-ge v3, v15, :cond_23c

    const/4 v3, 0x0

    return-object v3

    :cond_23c
    const/4 v3, 0x0

    const/4 v15, 0x3

    .line 147
    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v2, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 149
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    goto :goto_27f

    :pswitch_250
    const/4 v3, 0x0

    const/4 v15, 0x3

    .line 135
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v15, v2

    goto :goto_27f

    :pswitch_258
    const/4 v3, 0x0

    const/4 v12, 0x3

    .line 128
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 129
    const-string v13, "LB"

    goto :goto_269

    :pswitch_261
    const/4 v3, 0x0

    const/4 v12, 0x3

    .line 114
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    const-string v13, "KG"

    :goto_269
    move-object v12, v2

    goto :goto_27f

    :pswitch_26b
    const/4 v3, 0x0

    move-object v11, v2

    goto :goto_27f

    :pswitch_26e
    const/4 v3, 0x0

    move-object v10, v2

    goto :goto_27f

    :pswitch_271
    const/4 v3, 0x0

    move-object v9, v2

    goto :goto_27f

    :pswitch_274
    const/4 v3, 0x0

    move-object v8, v2

    goto :goto_27f

    :pswitch_277
    const/4 v3, 0x0

    move-object v7, v2

    goto :goto_27f

    :pswitch_27a
    const/4 v3, 0x0

    move-object v5, v2

    goto :goto_27f

    :pswitch_27d
    const/4 v3, 0x0

    move-object v6, v2

    :goto_27f
    move/from16 v3, p1

    const/4 v2, 0x0

    goto/16 :goto_23

    .line 158
    :cond_284
    new-instance v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    nop

    :sswitch_data_28e
    .sparse-switch
        0x600 -> :sswitch_21f
        0x601 -> :sswitch_212
        0x61f -> :sswitch_208
        0x620 -> :sswitch_1fb
        0x622 -> :sswitch_1ee
        0x624 -> :sswitch_1e1
        0x626 -> :sswitch_1d4
        0x17ecde -> :sswitch_1c7
        0x17ecdf -> :sswitch_1b9
        0x17ece0 -> :sswitch_1ab
        0x17ece1 -> :sswitch_19d
        0x17ece2 -> :sswitch_18f
        0x17ece3 -> :sswitch_181
        0x17ece4 -> :sswitch_173
        0x17ece5 -> :sswitch_165
        0x17ece6 -> :sswitch_157
        0x17ece7 -> :sswitch_149
        0x17f09f -> :sswitch_13b
        0x17f0a0 -> :sswitch_12d
        0x17f0a1 -> :sswitch_11f
        0x17f0a2 -> :sswitch_111
        0x17f0a3 -> :sswitch_103
        0x17f0a4 -> :sswitch_f5
        0x17f0a5 -> :sswitch_e7
        0x17f0a6 -> :sswitch_d9
        0x17f0a7 -> :sswitch_cb
        0x17f0a8 -> :sswitch_be
        0x180b24 -> :sswitch_b1
        0x180b25 -> :sswitch_a4
        0x180b26 -> :sswitch_97
        0x180b27 -> :sswitch_8a
        0x180b43 -> :sswitch_7d
        0x180b44 -> :sswitch_70
        0x180b45 -> :sswitch_63
        0x180b46 -> :sswitch_56
    .end sparse-switch

    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_27d
        :pswitch_27a
        :pswitch_277
        :pswitch_274
        :pswitch_271
        :pswitch_26e
        :pswitch_26b
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_261
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p0

    return-object p0
.end method
