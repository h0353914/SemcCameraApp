.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x61

.field protected static final MIN_SKIP:I = 0x3

.field private static final moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;-><init>(Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    sput-object v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 3

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 65
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 66
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method

.method private static centerFromEnd([II)F
    .registers 3

    const/4 v0, 0x4

    .line 175
    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private crossCheckDiagonal(II)Z
    .registers 13

    .line 263
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt p1, v2, :cond_20

    if-lt p2, v2, :cond_20

    .line 267
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 268
    aget v5, v0, v3

    add-int/2addr v5, v4

    aput v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 271
    :cond_20
    aget v5, v0, v3

    if-nez v5, :cond_25

    return v1

    :cond_25
    :goto_25
    if-lt p1, v2, :cond_3d

    if-lt p2, v2, :cond_3d

    .line 276
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 277
    aget v5, v0, v4

    add-int/2addr v5, v4

    aput v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 280
    :cond_3d
    aget v5, v0, v4

    if-nez v5, :cond_42

    return v1

    :cond_42
    :goto_42
    if-lt p1, v2, :cond_5a

    if-lt p2, v2, :cond_5a

    .line 285
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 286
    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v5, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 289
    :cond_5a
    aget v2, v0, v1

    if-nez v2, :cond_5f

    return v1

    .line 293
    :cond_5f
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 294
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    move v6, v4

    :goto_6c
    add-int v7, p1, v6

    if-ge v7, v2, :cond_84

    add-int v8, p2, v6

    if-ge v8, v5, :cond_84

    .line 298
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9, v8, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 299
    aget v7, v0, v3

    add-int/2addr v7, v4

    aput v7, v0, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    :cond_84
    :goto_84
    add-int v3, p1, v6

    const/4 v7, 0x3

    if-ge v3, v2, :cond_9d

    add-int v8, p2, v6

    if-ge v8, v5, :cond_9d

    .line 303
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9, v8, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 304
    aget v3, v0, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    .line 307
    :cond_9d
    aget v3, v0, v7

    if-nez v3, :cond_a2

    return v1

    :cond_a2
    :goto_a2
    add-int v3, p1, v6

    const/4 v7, 0x4

    if-ge v3, v2, :cond_bb

    add-int v8, p2, v6

    if-ge v8, v5, :cond_bb

    .line 311
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9, v8, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 312
    aget v3, v0, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_a2

    .line 315
    :cond_bb
    aget p0, v0, v7

    if-nez p0, :cond_c0

    return v1

    .line 319
    :cond_c0
    invoke-static {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternDiagonal([I)Z

    move-result p0

    return p0
.end method

.method private crossCheckHorizontal(IIII)F
    .registers 14

    .line 407
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 409
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    .line 410
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object p0

    move v2, p1

    :goto_b
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ltz v2, :cond_1d

    .line 413
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 414
    aget v5, p0, v3

    add-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_1d
    const/high16 v5, 0x7fc00000    # Float.NaN

    if-gez v2, :cond_22

    return v5

    :cond_22
    :goto_22
    if-ltz v2, :cond_36

    .line 420
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_36

    aget v6, p0, v4

    if-gt v6, p3, :cond_36

    .line 421
    aget v6, p0, v4

    add-int/2addr v6, v4

    aput v6, p0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    :cond_36
    if-ltz v2, :cond_c4

    .line 424
    aget v6, p0, v4

    if-le v6, p3, :cond_3e

    goto/16 :goto_c4

    :cond_3e
    :goto_3e
    const/4 v6, 0x0

    if-ltz v2, :cond_53

    .line 427
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_53

    aget v7, p0, v6

    if-gt v7, p3, :cond_53

    .line 428
    aget v7, p0, v6

    add-int/2addr v7, v4

    aput v7, p0, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_3e

    .line 431
    :cond_53
    aget v2, p0, v6

    if-le v2, p3, :cond_58

    return v5

    :cond_58
    add-int/2addr p1, v4

    :goto_59
    if-ge p1, v1, :cond_69

    .line 436
    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 437
    aget v2, p0, v3

    add-int/2addr v2, v4

    aput v2, p0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    :cond_69
    if-ne p1, v1, :cond_6c

    return v5

    :cond_6c
    :goto_6c
    const/4 v2, 0x3

    if-ge p1, v1, :cond_81

    .line 443
    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_81

    aget v7, p0, v2

    if-ge v7, p3, :cond_81

    .line 444
    aget v7, p0, v2

    add-int/2addr v7, v4

    aput v7, p0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_6c

    :cond_81
    if-eq p1, v1, :cond_c4

    .line 447
    aget v7, p0, v2

    if-lt v7, p3, :cond_88

    goto :goto_c4

    :cond_88
    :goto_88
    const/4 v7, 0x4

    if-ge p1, v1, :cond_9d

    .line 450
    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_9d

    aget v8, p0, v7

    if-ge v8, p3, :cond_9d

    .line 451
    aget v8, p0, v7

    add-int/2addr v8, v4

    aput v8, p0, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_88

    .line 454
    :cond_9d
    aget p2, p0, v7

    if-lt p2, p3, :cond_a2

    return v5

    .line 460
    :cond_a2
    aget p2, p0, v6

    aget p3, p0, v4

    add-int/2addr p2, p3

    aget p3, p0, v3

    add-int/2addr p2, p3

    aget p3, p0, v2

    add-int/2addr p2, p3

    aget p3, p0, v7

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 462
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    if-lt p2, p4, :cond_ba

    return v5

    .line 466
    :cond_ba
    invoke-static {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result p2

    if-eqz p2, :cond_c4

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    :cond_c4
    :goto_c4
    return v5
.end method

.method private crossCheckVertical(IIII)F
    .registers 14

    .line 335
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 337
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 338
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object p0

    move v2, p1

    :goto_b
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ltz v2, :cond_1d

    .line 342
    invoke-virtual {v0, p2, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 343
    aget v5, p0, v3

    add-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_1d
    const/high16 v5, 0x7fc00000    # Float.NaN

    if-gez v2, :cond_22

    return v5

    :cond_22
    :goto_22
    if-ltz v2, :cond_36

    .line 349
    invoke-virtual {v0, p2, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_36

    aget v6, p0, v4

    if-gt v6, p3, :cond_36

    .line 350
    aget v6, p0, v4

    add-int/2addr v6, v4

    aput v6, p0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    :cond_36
    if-ltz v2, :cond_c5

    .line 354
    aget v6, p0, v4

    if-le v6, p3, :cond_3e

    goto/16 :goto_c5

    :cond_3e
    :goto_3e
    const/4 v6, 0x0

    if-ltz v2, :cond_53

    .line 357
    invoke-virtual {v0, p2, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_53

    aget v7, p0, v6

    if-gt v7, p3, :cond_53

    .line 358
    aget v7, p0, v6

    add-int/2addr v7, v4

    aput v7, p0, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_3e

    .line 361
    :cond_53
    aget v2, p0, v6

    if-le v2, p3, :cond_58

    return v5

    :cond_58
    add-int/2addr p1, v4

    :goto_59
    if-ge p1, v1, :cond_69

    .line 367
    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 368
    aget v2, p0, v3

    add-int/2addr v2, v4

    aput v2, p0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    :cond_69
    if-ne p1, v1, :cond_6c

    return v5

    :cond_6c
    :goto_6c
    const/4 v2, 0x3

    if-ge p1, v1, :cond_81

    .line 374
    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_81

    aget v7, p0, v2

    if-ge v7, p3, :cond_81

    .line 375
    aget v7, p0, v2

    add-int/2addr v7, v4

    aput v7, p0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_6c

    :cond_81
    if-eq p1, v1, :cond_c5

    .line 378
    aget v7, p0, v2

    if-lt v7, p3, :cond_88

    goto :goto_c5

    :cond_88
    :goto_88
    const/4 v7, 0x4

    if-ge p1, v1, :cond_9d

    .line 381
    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_9d

    aget v8, p0, v7

    if-ge v8, p3, :cond_9d

    .line 382
    aget v8, p0, v7

    add-int/2addr v8, v4

    aput v8, p0, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_88

    .line 385
    :cond_9d
    aget p2, p0, v7

    if-lt p2, p3, :cond_a2

    return v5

    .line 391
    :cond_a2
    aget p2, p0, v6

    aget p3, p0, v4

    add-int/2addr p2, p3

    aget p3, p0, v3

    add-int/2addr p2, p3

    aget p3, p0, v2

    add-int/2addr p2, p3

    aget p3, p0, v7

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 393
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/2addr p4, v3

    if-lt p2, p4, :cond_bb

    return v5

    .line 397
    :cond_bb
    invoke-static {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result p2

    if-eqz p2, :cond_c5

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    :cond_c5
    :goto_c5
    return v5
.end method

.method private findRowSkip()I
    .registers 8

    .line 540
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x0

    .line 545
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 546
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_12

    if-nez v0, :cond_29

    move-object v0, v4

    goto :goto_12

    .line 555
    :cond_29
    iput-boolean v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 556
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 557
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    div-int/2addr p0, v6

    return p0

    :cond_49
    return v1
.end method

.method protected static foundPatternCross([I)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_f

    .line 186
    aget v3, p0, v1

    if-nez v3, :cond_b

    return v0

    :cond_b
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    const/4 v1, 0x7

    if-ge v2, v1, :cond_13

    return v0

    :cond_13
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 198
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 199
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    const/4 v4, 0x1

    if-gez v3, :cond_64

    aget v3, p0, v4

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 200
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_64

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v5, v1, v3

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 201
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v3, v2

    cmpg-float v3, v5, v3

    if-gez v3, :cond_64

    const/4 v3, 0x3

    aget v3, p0, v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 202
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_64

    const/4 v3, 0x4

    aget p0, p0, v3

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 203
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_64

    move v0, v4

    :cond_64
    return v0
.end method

.method protected static foundPatternDiagonal([I)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_f

    .line 214
    aget v3, p0, v1

    if-nez v3, :cond_b

    return v0

    :cond_b
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    const/4 v1, 0x7

    if-ge v2, v1, :cond_13

    return v0

    :cond_13
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const v2, 0x3faa9fbe    # 1.333f

    div-float v2, v1, v2

    .line 226
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 227
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    const/4 v4, 0x1

    if-gez v3, :cond_65

    aget v3, p0, v4

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 228
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_65

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v5, v1, v3

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 229
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v3, v2

    cmpg-float v3, v5, v3

    if-gez v3, :cond_65

    const/4 v3, 0x3

    aget v3, p0, v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 230
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_65

    const/4 v3, 0x4

    aget p0, p0, v3

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 231
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_65

    move v0, v4

    :cond_65
    return v0
.end method

.method private getCrossCheckStateCount()[I
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 236
    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object p0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .registers 10

    .line 572
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 573
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 574
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_10

    add-int/lit8 v4, v4, 0x1

    .line 576
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_10

    :cond_2b
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2f

    return v3

    :cond_2f
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 588
    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 589
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v2, v1

    goto :goto_38

    :cond_4f
    const p0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, p0

    cmpg-float p0, v2, v5

    if-gtz p0, :cond_58

    const/4 v3, 0x1

    :cond_58
    return v3
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 610
    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_b8

    .line 616
    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    sget-object v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    invoke-interface {v1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-array v1, v2, [D

    new-array v2, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v5, 0x0

    move v6, v5

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 622
    :cond_1d
    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    if-ge v6, v9, :cond_a9

    .line 623
    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 624
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    add-int/lit8 v6, v6, 0x1

    move v12, v6

    .line 626
    :cond_36
    iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_1d

    .line 627
    iget-object v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 628
    invoke-static {v9, v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v15

    add-int/lit8 v12, v12, 0x1

    move v3, v12

    .line 630
    :goto_4f
    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 631
    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 632
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v17

    const v18, 0x3fb33333    # 1.4f

    mul-float v18, v18, v11

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6d

    goto :goto_a6

    :cond_6d
    aput-wide v15, v1, v5

    .line 639
    invoke-static {v13, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v17

    aput-wide v17, v1, v14

    .line 640
    invoke-static {v9, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v17

    aput-wide v17, v1, v10

    .line 641
    invoke-static {v1}, Ljava/util/Arrays;->sort([D)V

    .line 648
    aget-wide v17, v1, v10

    aget-wide v19, v1, v14

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    aget-wide v19, v1, v10

    aget-wide v23, v1, v5

    mul-double v23, v23, v21

    sub-double v19, v19, v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    add-double v17, v17, v19

    cmpg-double v19, v17, v7

    if-gez v19, :cond_a6

    aput-object v9, v2, v5

    aput-object v13, v2, v14

    aput-object v4, v2, v10

    move-wide/from16 v7, v17

    :cond_a6
    :goto_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_a9
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v7, v3

    if-eqz v0, :cond_b3

    return-object v2

    .line 660
    :cond_b3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 613
    :cond_b8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D
    .registers 4

    .line 598
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 599
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr v0, v0

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method protected final clearCounts([I)V
    .registers 4

    const/4 p0, 0x0

    move v0, p0

    .line 240
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_a

    .line 241
    aput p0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    .line 78
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v1

    goto :goto_f

    :cond_e
    move p1, v0

    .line 79
    :goto_f
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 80
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v2, 0x3

    .line 88
    div-int/lit16 v4, v4, 0x184

    const/4 v5, 0x3

    if-lt v4, v5, :cond_24

    if-eqz p1, :cond_25

    :cond_24
    move v4, v5

    :cond_25
    const/4 p1, 0x5

    new-array p1, p1, [I

    add-int/lit8 v6, v4, -0x1

    move v7, v0

    :goto_2b
    if-ge v6, v2, :cond_ad

    if-nez v7, :cond_ad

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    move v8, v0

    move v9, v8

    :goto_34
    if-ge v8, v3, :cond_94

    .line 100
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v8, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_4b

    and-int/lit8 v10, v9, 0x1

    if-ne v10, v1, :cond_45

    add-int/lit8 v9, v9, 0x1

    .line 105
    :cond_45
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_92

    :cond_4b
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_8d

    const/4 v10, 0x4

    if-ne v9, v10, :cond_85

    .line 109
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 110
    invoke-virtual {p0, p1, v6, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 115
    iget-boolean v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v4, :cond_67

    .line 116
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v7

    goto :goto_76

    .line 118
    :cond_67
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v4

    .line 119
    aget v9, p1, v11

    if-le v4, v9, :cond_76

    .line 128
    aget v8, p1, v11

    sub-int/2addr v4, v8

    sub-int/2addr v4, v11

    add-int/2addr v6, v4

    add-int/lit8 v8, v3, -0x1

    .line 139
    :cond_76
    :goto_76
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    move v9, v0

    move v4, v11

    goto :goto_92

    .line 133
    :cond_7c
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    goto :goto_83

    .line 141
    :cond_80
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    :goto_83
    move v9, v5

    goto :goto_92

    :cond_85
    add-int/lit8 v9, v9, 0x1

    .line 145
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_92

    .line 148
    :cond_8d
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    :goto_92
    add-int/2addr v8, v1

    goto :goto_34

    .line 152
    :cond_94
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 153
    invoke-virtual {p0, p1, v6, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 155
    aget v4, p1, v0

    .line 156
    iget-boolean v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v8, :cond_aa

    .line 158
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v7

    :cond_aa
    add-int/2addr v6, v4

    goto/16 :goto_2b

    .line 164
    :cond_ad
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 167
    new-instance p1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {p1, p0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object p1
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object p0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object p0
.end method

.method protected final handlePossibleCenter([III)Z
    .registers 9

    const/4 v0, 0x0

    .line 501
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 503
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result p3

    float-to-int p3, p3

    .line 504
    aget v4, p1, v3

    invoke-direct {p0, p2, p3, v4, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result p2

    .line 505
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_75

    float-to-int v4, p2

    .line 507
    aget p1, p1, v3

    invoke-direct {p0, p3, v4, p1, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result p1

    .line 508
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_75

    float-to-int p3, p1

    invoke-direct {p0, v4, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(II)Z

    move-result p3

    if-eqz p3, :cond_75

    int-to-float p3, v1

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr p3, v1

    move v1, v0

    .line 511
    :goto_3d
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_61

    .line 512
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 514
    invoke-virtual {v3, p3, p2, p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 515
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v3, p2, p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_61

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_61
    :goto_61
    if-nez v0, :cond_74

    .line 521
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 522
    iget-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz p0, :cond_74

    .line 524
    invoke-interface {p0, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_74
    return v2

    :cond_75
    return v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result p0

    return p0
.end method

.method protected final shiftCounts2([I)V
    .registers 7

    const/4 p0, 0x2

    .line 246
    aget v0, p1, p0

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x3

    .line 247
    aget v2, p1, v0

    const/4 v3, 0x1

    aput v2, p1, v3

    const/4 v2, 0x4

    .line 248
    aget v4, p1, v2

    aput v4, p1, p0

    .line 249
    aput v3, p1, v0

    .line 250
    aput v1, p1, v2

    return-void
.end method
