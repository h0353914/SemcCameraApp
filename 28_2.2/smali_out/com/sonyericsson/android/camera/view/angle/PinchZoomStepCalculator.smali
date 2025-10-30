.class public Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;
.super Ljava/lang/Object;
.source "PinchZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final PINCH_ZOOM_COEFFICIENT:F = 0.7f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .registers 5

    const/4 p0, 0x0

    .line 26
    aget-object p0, p2, p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 32
    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 34
    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    int-to-float v0, v0

    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float v1, v1

    mul-float/2addr p0, v1

    int-to-float p2, p2

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr p2, v1

    div-float/2addr p0, p2

    add-float/2addr v0, p0

    .line 37
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_32

    .line 38
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    int-to-float v0, p0

    goto :goto_3c

    .line 40
    :cond_32
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_3c

    .line 42
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float v0, p0

    .line 46
    :cond_3c
    :goto_3c
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
