.class public final enum Lorg/apache/commons/imaging/formats/png/PngColorType;
.super Ljava/lang/Enum;
.source "PngColorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/png/PngColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;


# instance fields
.field private final allowedBitDepths:[I

.field private final alpha:Z

.field private final greyscale:Z

.field private final samplesPerPixel:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 26
    new-instance v8, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const/4 v9, 0x5

    new-array v7, v9, [I

    fill-array-data v7, :array_8e

    const-string v1, "GREYSCALE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v8, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 27
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_9c

    const-string v11, "TRUE_COLOR"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object v10, v0

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 28
    new-instance v2, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_a4

    const-string v18, "INDEXED_COLOR"

    const/16 v19, 0x2

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v2

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 29
    new-instance v4, Lorg/apache/commons/imaging/formats/png/PngColorType;

    new-array v5, v1, [I

    fill-array-data v5, :array_b0

    const-string v11, "GREYSCALE_WITH_ALPHA"

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x2

    move-object v10, v4

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v17}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v4, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 30
    new-instance v5, Lorg/apache/commons/imaging/formats/png/PngColorType;

    new-array v6, v1, [I

    fill-array-data v6, :array_b8

    const-string v18, "TRUE_COLOR_WITH_ALPHA"

    const/16 v19, 0x4

    const/16 v20, 0x6

    const/16 v22, 0x1

    const/16 v23, 0x4

    move-object/from16 v17, v5

    move-object/from16 v24, v6

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v5, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    new-array v6, v9, [Lorg/apache/commons/imaging/formats/png/PngColorType;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    aput-object v2, v6, v1

    const/4 v0, 0x3

    aput-object v4, v6, v0

    aput-object v5, v6, v3

    .line 22
    sput-object v6, Lorg/apache/commons/imaging/formats/png/PngColorType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-void

    nop

    :array_8e
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    :array_9c
    .array-data 4
        0x8
        0x10
    .end array-data

    :array_a4
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_b0
    .array-data 4
        0x8
        0x10
    .end array-data

    :array_b8
    .array-data 4
        0x8
        0x10
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IIZZI[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI[I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->value:I

    .line 40
    iput-boolean p4, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->greyscale:Z

    .line 41
    iput-boolean p5, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->alpha:Z

    .line 42
    iput p6, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->samplesPerPixel:I

    .line 43
    iput-object p7, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->allowedBitDepths:[I

    return-void
.end method

.method public static getColorType(I)Lorg/apache/commons/imaging/formats/png/PngColorType;
    .registers 6

    .line 67
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/PngColorType;->values()[Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 68
    iget v4, v3, Lorg/apache/commons/imaging/formats/png/PngColorType;->value:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method static getColorType(ZZ)Lorg/apache/commons/imaging/formats/png/PngColorType;
    .registers 2

    if-eqz p1, :cond_a

    if-eqz p0, :cond_7

    .line 79
    sget-object p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object p0

    .line 81
    :cond_7
    sget-object p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object p0

    :cond_a
    if-eqz p0, :cond_f

    .line 84
    sget-object p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object p0

    .line 86
    :cond_f
    sget-object p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/PngColorType;
    .registers 2

    .line 22
    const-class v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/PngColorType;
    .registers 1

    .line 22
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/PngColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object v0
.end method


# virtual methods
.method getSamplesPerPixel()I
    .registers 1

    .line 59
    iget p0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->samplesPerPixel:I

    return p0
.end method

.method getValue()I
    .registers 1

    .line 47
    iget p0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->value:I

    return p0
.end method

.method hasAlpha()Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->alpha:Z

    return p0
.end method

.method isBitDepthAllowed(I)Z
    .registers 2

    .line 63
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->allowedBitDepths:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method isGreyscale()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->greyscale:Z

    return p0
.end method
