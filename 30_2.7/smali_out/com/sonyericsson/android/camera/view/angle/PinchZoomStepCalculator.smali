.class public Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;
.super Ljava/lang/Object;
.source "PinchZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final PINCH_ZOOM_COEFFICIENT:F = 0.6f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .registers 6

    const/4 v0, 0x0

    .line 26
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 32
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    int-to-float v1, v1

    iget v2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    div-float/2addr p2, v0

    add-float/2addr v1, p2

    .line 37
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    int-to-float p2, p2

    cmpg-float p2, v1, p2

    if-gez p2, :cond_32

    .line 38
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    int-to-float v1, p2

    goto :goto_3c

    .line 40
    :cond_32
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_3c

    .line 42
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float v1, p2

    .line 46
    :cond_3c
    :goto_3c
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
