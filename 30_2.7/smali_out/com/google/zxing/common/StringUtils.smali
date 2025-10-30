.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v0, "SJIS"

    .line 38
    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_19

    .line 52
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 53
    sget-object v0, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_19
    array-length v1, v0

    .line 73
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_35

    aget-byte v2, v0, v6

    const/16 v7, -0x11

    if-ne v2, v7, :cond_35

    aget-byte v2, v0, v5

    const/16 v7, -0x45

    if-ne v2, v7, :cond_35

    aget-byte v2, v0, v3

    const/16 v7, -0x41

    if-ne v2, v7, :cond_35

    move v2, v5

    goto :goto_36

    :cond_35
    move v2, v6

    :goto_36
    move v7, v5

    move v8, v7

    move v9, v8

    move v3, v6

    move v5, v3

    move v10, v5

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_47
    if-ge v5, v1, :cond_102

    if-nez v7, :cond_4f

    if-nez v8, :cond_4f

    if-eqz v9, :cond_102

    .line 82
    :cond_4f
    aget-byte v4, v0, v5

    and-int/lit16 v4, v4, 0xff

    if-eqz v9, :cond_86

    if-lez v10, :cond_60

    and-int/lit16 v0, v4, 0x80

    if-nez v0, :cond_5d

    const/4 v9, 0x0

    goto :goto_86

    :cond_5d
    add-int/lit8 v10, v10, -0x1

    goto :goto_86

    :cond_60
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_86

    and-int/lit8 v0, v4, 0x40

    if-nez v0, :cond_6a

    const/4 v9, 0x0

    goto :goto_86

    :cond_6a
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x20

    if-nez v0, :cond_73

    add-int/lit8 v12, v12, 0x1

    goto :goto_86

    :cond_73
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x10

    if-nez v0, :cond_7c

    add-int/lit8 v13, v13, 0x1

    goto :goto_86

    :cond_7c
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x8

    if-nez v0, :cond_85

    add-int/lit8 v14, v14, 0x1

    goto :goto_86

    :cond_85
    const/4 v9, 0x0

    :cond_86
    :goto_86
    const/16 v0, 0x7f

    if-eqz v7, :cond_a4

    if-le v4, v0, :cond_92

    const/16 v0, 0xa0

    if-ge v4, v0, :cond_92

    const/4 v7, 0x0

    goto :goto_a4

    :cond_92
    const/16 v0, 0x9f

    if-le v4, v0, :cond_a4

    const/16 v0, 0xc0

    if-lt v4, v0, :cond_a2

    const/16 v0, 0xd7

    if-eq v4, v0, :cond_a2

    const/16 v0, 0xf7

    if-ne v4, v0, :cond_a4

    :cond_a2
    add-int/lit8 v16, v16, 0x1

    :cond_a4
    :goto_a4
    if-eqz v8, :cond_fb

    if-lez v11, :cond_ba

    const/16 v0, 0x40

    if-lt v4, v0, :cond_b8

    const/16 v0, 0x7f

    if-eq v4, v0, :cond_b8

    const/16 v0, 0xfc

    if-le v4, v0, :cond_b5

    goto :goto_b8

    :cond_b5
    add-int/lit8 v11, v11, -0x1

    goto :goto_fb

    :cond_b8
    :goto_b8
    const/4 v8, 0x0

    goto :goto_fb

    :cond_ba
    const/16 v0, 0x80

    if-eq v4, v0, :cond_fa

    const/16 v0, 0xa0

    if-eq v4, v0, :cond_fa

    const/16 v0, 0xef

    if-le v4, v0, :cond_c7

    goto :goto_fa

    :cond_c7
    const/16 v0, 0xa0

    if-le v4, v0, :cond_e0

    const/16 v0, 0xe0

    if-ge v4, v0, :cond_e0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_db

    move v15, v0

    move/from16 v18, v15

    const/16 v17, 0x0

    goto :goto_fb

    :cond_db
    move/from16 v18, v0

    const/16 v17, 0x0

    goto :goto_fb

    :cond_e0
    const/16 v0, 0x7f

    if-le v4, v0, :cond_f5

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v17, 0x1

    if-le v0, v6, :cond_f0

    move v6, v0

    move/from16 v17, v6

    const/16 v18, 0x0

    goto :goto_fb

    :cond_f0
    move/from16 v17, v0

    const/16 v18, 0x0

    goto :goto_fb

    :cond_f5
    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_fb

    :cond_fa
    :goto_fa
    const/4 v8, 0x0

    :cond_fb
    :goto_fb
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x3

    goto/16 :goto_47

    :cond_102
    if-eqz v9, :cond_107

    if-lez v10, :cond_107

    const/4 v9, 0x0

    :cond_107
    if-eqz v8, :cond_10c

    if-lez v11, :cond_10c

    const/4 v8, 0x0

    :cond_10c
    if-eqz v9, :cond_117

    if-nez v2, :cond_114

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_117

    :cond_114
    const-string v0, "UTF8"

    return-object v0

    :cond_117
    if-eqz v8, :cond_125

    .line 170
    sget-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v0, :cond_122

    const/4 v0, 0x3

    if-ge v15, v0, :cond_122

    if-lt v6, v0, :cond_125

    :cond_122
    const-string v0, "SJIS"

    return-object v0

    :cond_125
    if-eqz v7, :cond_138

    if-eqz v8, :cond_138

    const/4 v0, 0x2

    if-ne v15, v0, :cond_12e

    if-eq v3, v0, :cond_132

    :cond_12e
    mul-int/lit8 v0, v16, 0xa

    if-lt v0, v1, :cond_135

    :cond_132
    const-string v0, "SJIS"

    goto :goto_137

    :cond_135
    const-string v0, "ISO8859_1"

    :goto_137
    return-object v0

    :cond_138
    if-eqz v7, :cond_13d

    const-string v0, "ISO8859_1"

    return-object v0

    :cond_13d
    if-eqz v8, :cond_142

    const-string v0, "SJIS"

    return-object v0

    :cond_142
    if-eqz v9, :cond_147

    const-string v0, "UTF8"

    return-object v0

    .line 194
    :cond_147
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method
