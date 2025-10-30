.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.5f

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3

.field private static final w:I = 0x2


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_d4

    sput-object v1, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 66
    fill-array-data v2, :array_e2

    sput-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 67
    fill-array-data v5, :array_ee

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_f8

    const/4 v7, 0x1

    aput-object v5, v3, v7

    sput-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    const/16 v3, 0x14

    new-array v3, v3, [[I

    new-array v5, v0, [I

    .line 77
    fill-array-data v5, :array_102

    aput-object v5, v3, v6

    new-array v5, v0, [I

    fill-array-data v5, :array_110

    aput-object v5, v3, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_11e

    aput-object v5, v3, v2

    new-array v2, v0, [I

    fill-array-data v2, :array_12c

    aput-object v2, v3, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_13a

    aput-object v2, v3, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_148

    aput-object v1, v3, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_156

    const/4 v2, 0x6

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_164

    const/4 v2, 0x7

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_172

    const/16 v2, 0x8

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_180

    const/16 v2, 0x9

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_18e

    const/16 v2, 0xa

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_19c

    const/16 v2, 0xb

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1aa

    const/16 v2, 0xc

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1b8

    const/16 v2, 0xd

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1c6

    const/16 v2, 0xe

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1d4

    const/16 v2, 0xf

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1e2

    const/16 v2, 0x10

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1f0

    const/16 v2, 0x11

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1fe

    const/16 v2, 0x12

    aput-object v1, v3, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_20c

    const/16 v1, 0x13

    aput-object v0, v3, v1

    sput-object v3, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    nop

    :array_d4
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    :array_e2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_ee
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_f8
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    :array_102
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_110
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_11e
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_12c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_13a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_148
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_156
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_164
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_172
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_180
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_18e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_19c
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_1aa
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_1b8
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_1c6
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_1d4
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_1e2
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_1f0
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_1fe
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_20c
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v0, v0

    const/4 v1, -0x1

    const v2, 0x3ec28f5c    # 0.38f

    const/4 v3, 0x0

    move v4, v1

    :goto_9
    if-ge v3, v0, :cond_24

    .line 359
    sget-object v5, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v5, v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    .line 360
    invoke-static {p0, v5, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1c

    move v4, v3

    move v2, v5

    goto :goto_21

    :cond_1c
    cmpl-float v5, v5, v2

    if-nez v5, :cond_21

    move v4, v1

    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_24
    if-ltz v4, :cond_29

    .line 370
    rem-int/lit8 v4, v4, 0xa

    return v4

    .line 372
    :cond_29
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 277
    :try_start_3
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_35

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    :try_start_9
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    aget-object v3, v3, v2

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0
    :try_end_11
    .catch Lcom/google/zxing/NotFoundException; {:try_start_9 .. :try_end_11} :catch_12
    .catchall {:try_start_9 .. :try_end_11} :catchall_35

    goto :goto_1a

    .line 282
    :catch_12
    :try_start_12
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    aget-object v3, v3, v1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    .line 288
    :goto_1a
    aget v3, v0, v2

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 293
    aget p0, v0, v2

    .line 294
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    aget v4, v0, v1

    sub-int/2addr v3, v4

    aput v3, v0, v2

    .line 295
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    sub-int/2addr v2, p0

    aput v2, v0, v1
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_35

    .line 300
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw p0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x5

    new-array v3, v2, [I

    new-array v4, v2, [I

    :cond_9
    if-ge p1, p2, :cond_3d

    .line 173
    invoke-static {p0, p1, v1}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v2, :cond_21

    mul-int/lit8 v7, v6, 0x2

    .line 177
    aget v8, v1, v7

    aput v8, v3, v6

    add-int/lit8 v7, v7, 0x1

    .line 178
    aget v7, v1, v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 181
    :cond_21
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 182
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 184
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_35
    if-ge v5, v0, :cond_9

    .line 186
    aget v6, v1, v5

    add-int/2addr p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_3d
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 201
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    .line 206
    aget v1, v0, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 208
    aget v1, v0, v2

    invoke-direct {p0, p1, v1}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 316
    array-length v0, p2

    .line 317
    new-array v1, v0, [I

    .line 318
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    move v5, v3

    move v6, v5

    :goto_b
    if-ge p1, v2, :cond_4e

    .line 324
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v5, :cond_1a

    .line 325
    aget v7, v1, v6

    add-int/2addr v7, v8

    aput v7, v1, v6

    goto :goto_4b

    :cond_1a
    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_45

    const/high16 v7, 0x3f000000    # 0.5f

    .line 328
    invoke-static {v1, p2, v7}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v7

    const v9, 0x3ec28f5c    # 0.38f

    cmpg-float v7, v7, v9

    const/4 v9, 0x2

    if-gez v7, :cond_33

    new-array p0, v9, [I

    aput v4, p0, v3

    aput p1, p0, v8

    return-object p0

    .line 331
    :cond_33
    aget v7, v1, v3

    aget v10, v1, v8

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    add-int/lit8 v7, v6, -0x1

    .line 332
    invoke-static {v1, v9, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    aput v3, v1, v7

    .line 334
    aput v3, v1, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_47

    :cond_45
    add-int/lit8 v6, v6, 0x1

    .line 339
    :goto_47
    aput v8, v1, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_4b
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 343
    :cond_4e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p0

    if-eq p0, v0, :cond_c

    return p0

    .line 258
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 230
    iget p0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 p0, p0, 0xa

    if-ge p0, p2, :cond_7

    goto :goto_8

    :cond_7
    move p0, p2

    :goto_8
    add-int/lit8 p2, p2, -0x1

    :goto_a
    if-lez p0, :cond_1a

    if-ltz p2, :cond_1a

    .line 236
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_1a
    :goto_1a
    if-nez p0, :cond_1d

    return-void

    .line 243
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    .line 106
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    .line 109
    aget v3, v0, v2

    const/4 v4, 0x0

    aget v5, p0, v4

    invoke-static {p2, v3, v5, v1}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p3, :cond_2a

    .line 114
    sget-object v3, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    check-cast p3, [I

    goto :goto_2b

    :cond_2a
    move-object p3, v1

    :goto_2b
    if-nez p3, :cond_2f

    .line 118
    sget-object p3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 123
    :cond_2f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 126
    array-length v5, p3

    move v6, v4

    move v7, v6

    :goto_36
    if-ge v6, v5, :cond_44

    aget v8, p3, v6

    if-ne v3, v8, :cond_3e

    move p3, v2

    goto :goto_45

    :cond_3e
    if-le v8, v7, :cond_41

    move v7, v8

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_44
    move p3, v4

    :goto_45
    if-nez p3, :cond_4a

    if-le v3, v7, :cond_4a

    move p3, v2

    :cond_4a
    if-eqz p3, :cond_6c

    .line 142
    new-instance p3, Lcom/google/zxing/Result;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v0, v0, v2

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {v5, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v3, v4

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget p0, p0, v4

    int-to-float p0, p0

    invoke-direct {v0, p0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v3, v2

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p3, p2, v1, v3, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object p3

    .line 139
    :cond_6c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method
