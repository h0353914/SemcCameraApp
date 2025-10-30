.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;
.super Ljava/lang/Object;
.source "YCbCrConverter.java"


# static fields
.field private static final BLUES:[I

.field private static final GREENS1:[I

.field private static final GREENS2:[I

.field private static final REDS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/high16 v0, 0x10000

    new-array v1, v0, [I

    .line 19
    sput-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    new-array v1, v0, [I

    .line 20
    sput-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    new-array v0, v0, [I

    .line 21
    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    const/high16 v0, 0x20000

    new-array v0, v0, [I

    .line 22
    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_16
    const/16 v2, 0xff

    const/16 v3, 0x100

    if-ge v1, v3, :cond_40

    move v4, v0

    :goto_1d
    if-ge v4, v3, :cond_3d

    const v5, 0x3fb374bc    # 1.402f

    add-int/lit8 v6, v4, -0x80

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 33
    invoke-static {v6}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v5

    add-int/2addr v5, v1

    if-gez v5, :cond_2e

    move v5, v0

    :cond_2e
    if-le v5, v2, :cond_31

    move v5, v2

    .line 40
    :cond_31
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v7, v1

    shl-int/lit8 v5, v5, 0x10

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_40
    move v1, v0

    :goto_41
    if-ge v1, v3, :cond_65

    move v4, v0

    :goto_44
    if-ge v4, v3, :cond_62

    const v5, 0x3fe2d0e5    # 1.772f

    add-int/lit8 v6, v4, -0x80

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 45
    invoke-static {v6}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v5

    add-int/2addr v5, v1

    if-gez v5, :cond_55

    move v5, v0

    :cond_55
    if-le v5, v2, :cond_58

    move v5, v2

    .line 52
    :cond_58
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v7, v1

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_65
    move v1, v0

    :goto_66
    if-ge v1, v3, :cond_8d

    move v4, v0

    :goto_69
    if-ge v4, v3, :cond_8a

    const v5, 0x3eb0331e    # 0.34414f

    add-int/lit8 v6, v1, -0x80

    int-to-float v6, v6

    mul-float/2addr v6, v5

    const v5, 0x3f36d1e1    # 0.71414f

    add-int/lit8 v7, v4, -0x80

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 84
    invoke-static {v6}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v5

    .line 86
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v7, v4

    add-int/lit16 v5, v5, 0x87

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_8d
    move v1, v0

    :goto_8e
    if-ge v1, v3, :cond_af

    move v4, v0

    :goto_91
    const/16 v5, 0x10e

    if-ge v4, v5, :cond_ac

    add-int/lit16 v5, v4, -0x87

    sub-int v5, v1, v5

    if-gez v5, :cond_9d

    move v5, v0

    goto :goto_a0

    :cond_9d
    if-le v5, v2, :cond_a0

    move v5, v2

    .line 97
    :cond_a0
    :goto_a0
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v7, v1

    shl-int/lit8 v5, v5, 0x8

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_af
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertYCbCrToRGB(III)I
    .registers 5

    .line 111
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v1, p0

    aget v0, v0, v1

    .line 112
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p2, p1

    aget p2, v1, p2

    .line 113
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p0

    aget p2, v1, p2

    .line 114
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    or-int/2addr p0, p1

    aget p0, v1, p0

    or-int p1, v0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private static fastRound(F)I
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
