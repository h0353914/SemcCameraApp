.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .registers 10

    add-int v0, p3, p4

    .line 172
    div-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_5
    if-lt v1, p3, :cond_3a

    .line 177
    iget-object v2, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_12

    invoke-virtual {v2, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_18

    :cond_12
    invoke-virtual {v2, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1b
    move v2, v1

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p3, :cond_31

    .line 183
    iget-object v3, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_2b

    invoke-virtual {v3, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_31

    .line 184
    :cond_2b
    invoke-virtual {v3, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_31
    :goto_31
    sub-int v3, v1, v2

    if-lt v2, p3, :cond_3a

    if-le v3, p2, :cond_38

    goto :goto_3a

    :cond_38
    move v1, v2

    goto :goto_5

    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    :goto_3c
    if-ge v0, p4, :cond_71

    .line 197
    iget-object p3, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_49

    invoke-virtual {p3, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-eqz p3, :cond_52

    goto :goto_4f

    :cond_49
    invoke-virtual {p3, p1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-eqz p3, :cond_52

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_52
    move p3, v0

    :cond_53
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_68

    .line 203
    iget-object v2, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_62

    invoke-virtual {v2, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_68

    .line 204
    :cond_62
    invoke-virtual {v2, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_68
    :goto_68
    sub-int v2, p3, v0

    if-ge p3, p4, :cond_71

    if-le v2, p2, :cond_6f

    goto :goto_71

    :cond_6f
    move v0, p3

    goto :goto_3c

    :cond_71
    :goto_71
    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_7a

    .line 214
    filled-new-array {v1, v0}, [I

    move-result-object p0

    goto :goto_7b

    :cond_7a
    const/4 p0, 0x0

    :goto_7b
    return-object p0
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p5

    const/4 v2, 0x0

    move/from16 v9, p8

    move v11, v0

    move v10, v1

    :goto_9
    if-ge v10, v9, :cond_9e

    move/from16 v12, p7

    if-lt v10, v12, :cond_9e

    move/from16 v13, p4

    if-ge v11, v13, :cond_9e

    move/from16 v14, p3

    if-lt v11, v14, :cond_9e

    if-nez p2, :cond_27

    const/4 v8, 0x1

    move-object v3, p0

    move v4, v10

    move/from16 v5, p9

    move/from16 v6, p3

    move/from16 v7, p4

    .line 118
    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    goto :goto_34

    :cond_27
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v11

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    .line 121
    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    :goto_34
    if-nez v3, :cond_97

    if-eqz v2, :cond_92

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_67

    sub-int v10, v10, p6

    .line 130
    aget v1, v2, v4

    if-ge v1, v0, :cond_5d

    .line 131
    aget v1, v2, v3

    if-le v1, v0, :cond_53

    .line 133
    new-instance v0, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_4b

    move v3, v4

    :cond_4b
    aget v1, v2, v3

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    .line 135
    :cond_53
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v1, v2, v4

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    .line 137
    :cond_5d
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v1, v2, v3

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    :cond_67
    sub-int v11, v11, p2

    .line 141
    aget v0, v2, v4

    if-ge v0, v1, :cond_88

    .line 142
    aget v0, v2, v3

    if-le v0, v1, :cond_7e

    .line 143
    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v11

    if-gez p2, :cond_77

    move v3, v4

    :cond_77
    aget v2, v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    .line 145
    :cond_7e
    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v11

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    .line 147
    :cond_88
    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v11

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    .line 125
    :cond_92
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_97
    add-int v10, v10, p6

    add-int v11, v11, p2

    move-object v2, v3

    goto/16 :goto_9

    .line 153
    :cond_9e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 53
    iget-object v0, v10, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    .line 54
    iget-object v0, v10, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    .line 55
    div-int/lit8 v13, v11, 0x2

    .line 56
    div-int/lit8 v14, v12, 0x2

    .line 57
    div-int/lit16 v0, v11, 0x100

    const/4 v15, 0x1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 58
    div-int/lit16 v0, v12, 0x100

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v7, v9

    .line 64
    div-int/lit8 v16, v14, 0x2

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v3, v17

    move v4, v12

    move v5, v13

    move v6, v7

    move/from16 v19, v7

    move/from16 v7, v18

    move/from16 v20, v8

    move v8, v11

    move/from16 v18, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v21, v0, -0x1

    move/from16 v9, v20

    neg-int v2, v9

    .line 67
    div-int/lit8 v20, v13, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v21

    move/from16 v17, v9

    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 69
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v22, v0, -0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v22

    move-object v12, v9

    move/from16 v9, v20

    .line 70
    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 72
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v17, v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v17

    move/from16 v6, v18

    move-object v11, v9

    move/from16 v9, v16

    .line 73
    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 75
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v8, v0, 0x1

    .line 78
    div-int/lit8 v15, v14, 0x4

    move-object/from16 v0, p0

    move/from16 v6, v19

    move-object v10, v9

    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 81
    filled-new-array {v0, v12, v11, v10}, [Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method
