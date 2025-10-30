.class public Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;
.super Ljava/lang/Object;
.source "PinchZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final MAX_ZOOM_STEP_RANGE_FOR_SCALE:I

.field private static final PINCH_ZOOM_COEFFICIENT:F = 0.85f


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v0, 0x40400000    # 3.0f

    .line 20
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;->MAX_ZOOM_STEP_RANGE_FOR_SCALE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .registers 6

    const/4 v0, 0x0

    .line 30
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 34
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 36
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    iget v2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;->MAX_ZOOM_STEP_RANGE_FOR_SCALE:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    iget v2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float/2addr p2, v1

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    add-float/2addr v2, p2

    .line 42
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    int-to-float p2, p2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_3b

    .line 43
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    int-to-float v2, p2

    goto :goto_45

    .line 45
    :cond_3b
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float p2, p2

    cmpl-float p2, v2, p2

    if-lez p2, :cond_45

    .line 47
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float v2, p2

    .line 51
    :cond_45
    :goto_45
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
