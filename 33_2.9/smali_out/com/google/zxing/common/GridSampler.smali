.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p0

    .line 125
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_e
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ge v4, v1, :cond_49

    if-eqz v5, :cond_49

    .line 127
    aget v5, p1, v4

    float-to-int v5, v5

    add-int/lit8 v8, v4, 0x1

    .line 128
    aget v9, p1, v8

    float-to-int v9, v9

    if-lt v5, v7, :cond_44

    if-gt v5, v0, :cond_44

    if-lt v9, v7, :cond_44

    if-gt v9, p0, :cond_44

    if-ne v5, v7, :cond_2a

    .line 134
    aput v6, p1, v4

    :goto_28
    move v5, v2

    goto :goto_33

    :cond_2a
    if-ne v5, v0, :cond_32

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    .line 137
    aput v5, p1, v4

    goto :goto_28

    :cond_32
    move v5, v3

    :goto_33
    if-ne v9, v7, :cond_39

    .line 141
    aput v6, p1, v8

    :goto_37
    move v5, v2

    goto :goto_41

    :cond_39
    if-ne v9, p0, :cond_41

    add-int/lit8 v5, p0, -0x1

    int-to-float v5, v5

    .line 144
    aput v5, p1, v8

    goto :goto_37

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x2

    goto :goto_e

    .line 130
    :cond_44
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 150
    :cond_49
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    move v4, v2

    :goto_4d
    if-ltz v1, :cond_86

    if-eqz v4, :cond_86

    .line 151
    aget v4, p1, v1

    float-to-int v4, v4

    add-int/lit8 v5, v1, 0x1

    .line 152
    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_81

    if-gt v4, v0, :cond_81

    if-lt v8, v7, :cond_81

    if-gt v8, p0, :cond_81

    if-ne v4, v7, :cond_67

    .line 158
    aput v6, p1, v1

    :goto_65
    move v4, v2

    goto :goto_70

    :cond_67
    if-ne v4, v0, :cond_6f

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    .line 161
    aput v4, p1, v1

    goto :goto_65

    :cond_6f
    move v4, v3

    :goto_70
    if-ne v8, v7, :cond_76

    .line 165
    aput v6, p1, v5

    :goto_74
    move v4, v2

    goto :goto_7e

    :cond_76
    if-ne v8, p0, :cond_7e

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    .line 168
    aput v4, p1, v5

    goto :goto_74

    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, -0x2

    goto :goto_4d

    .line 154
    :cond_81
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_86
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .registers 1

    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .registers 1

    .line 48
    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
