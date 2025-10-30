.class final Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;
.super Ljava/lang/Object;
.source "PDF417CodewordDecoder.java"


# static fields
.field private static final RATIOS_TABLE:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 28
    sget-object v0, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v0, v0

    const/16 v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v2, F

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    const/4 v0, 0x0

    move v2, v0

    .line 33
    :goto_15
    sget-object v3, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v3, v3

    if-ge v2, v3, :cond_44

    .line 34
    sget-object v3, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v3, v3, v2

    and-int/lit8 v4, v3, 0x1

    move v5, v4

    move v4, v3

    move v3, v0

    :goto_23
    if-ge v3, v1, :cond_41

    const/4 v6, 0x0

    :goto_26
    and-int/lit8 v7, v4, 0x1

    if-ne v7, v5, :cond_30

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    shr-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 43
    :cond_30
    sget-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v5, v5, v2

    rsub-int/lit8 v8, v3, 0x8

    add-int/lit8 v8, v8, -0x1

    const/high16 v9, 0x41880000    # 17.0f

    div-float/2addr v6, v9

    aput v6, v5, v8

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_23

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_44
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitValue([I)I
    .registers 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, v0

    .line 84
    :goto_5
    array-length v4, p0

    if-ge v1, v4, :cond_1f

    move-wide v3, v2

    move v2, v0

    .line 85
    :goto_a
    aget v5, p0, v1

    if-ge v2, v5, :cond_1b

    const/4 v5, 0x1

    shl-long/2addr v3, v5

    .line 86
    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_15

    goto :goto_16

    :cond_15
    move v5, v0

    :goto_16
    int-to-long v5, v5

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    move-wide v2, v3

    goto :goto_5

    :cond_1f
    long-to-int p0, v2

    return p0
.end method

.method private static getClosestDecodedValue([I)I
    .registers 11

    .line 93
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    const/16 v1, 0x8

    .line 94
    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_1a

    move v4, v3

    .line 96
    :goto_d
    array-length v5, v2

    if-ge v4, v5, :cond_1a

    .line 97
    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1a
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, -0x1

    move v4, p0

    move p0, v3

    .line 102
    :goto_20
    sget-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    array-length v6, v5

    if-ge p0, v6, :cond_47

    const/4 v6, 0x0

    .line 104
    aget-object v5, v5, p0

    move v7, v6

    move v6, v3

    :goto_2a
    if-ge v6, v1, :cond_3b

    .line 106
    aget v8, v5, v6

    aget v9, v2, v6

    sub-float/2addr v8, v9

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    cmpl-float v8, v7, v4

    if-ltz v8, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_3b
    :goto_3b
    cmpg-float v5, v7, v4

    if-gez v5, :cond_44

    .line 114
    sget-object v0, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v0, v0, p0

    move v4, v7

    :cond_44
    add-int/lit8 p0, p0, 0x1

    goto :goto_20

    :cond_47
    return v0
.end method

.method private static getDecodedCodewordValue([I)I
    .registers 3

    .line 78
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getBitValue([I)I

    move-result p0

    .line 79
    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    move p0, v1

    :cond_c
    return p0
.end method

.method static getDecodedValue([I)I
    .registers 3

    .line 52
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->sampleBitCounts([I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedCodewordValue([I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    return v0

    .line 56
    :cond_c
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getClosestDecodedValue([I)I

    move-result p0

    return p0
.end method

.method private static sampleBitCounts([I)[I
    .registers 9

    .line 60
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x8

    .line 61
    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    const/16 v5, 0x11

    if-ge v2, v5, :cond_30

    const/high16 v5, 0x42080000    # 34.0f

    div-float v5, v0, v5

    int-to-float v6, v2

    mul-float/2addr v6, v0

    const/high16 v7, 0x41880000    # 17.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 68
    aget v6, p0, v4

    add-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_27

    .line 69
    aget v5, p0, v4

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 72
    :cond_27
    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_30
    return-object v1
.end method
