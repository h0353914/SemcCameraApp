.class public Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
.super Ljava/lang/Object;
.source "VariableIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;
    }
.end annotation


# instance fields
.field private mBaseStageNumber:F

.field protected mIndex:I

.field protected final mMaxIndex:I

.field protected final mMinIndex:I

.field private mZoomMagnificationCoefficient:F


# direct methods
.method public constructor <init>(IIFFF)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    .line 66
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 67
    iput p4, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    .line 68
    iput p5, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    .line 69
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex(FI)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method

.method public constructor <init>(IIIFF)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    .line 48
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 49
    iput p4, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    .line 50
    iput p5, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    .line 51
    iput p3, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method

.method private getIndex(FI)I
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_7
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio(I)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-double p1, p1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    float-to-double v0, v0

    div-double/2addr p1, v0

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method private getRatio(I)F
    .registers 6

    int-to-float p1, p1

    .line 100
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return v0
.end method

.method public getRatio()F
    .registers 4

    .line 96
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio(I)F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    return v0
.end method

.method setIndex(I)V
    .registers 4

    .line 107
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method
