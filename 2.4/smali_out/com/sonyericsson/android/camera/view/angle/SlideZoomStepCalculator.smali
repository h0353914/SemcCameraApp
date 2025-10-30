.class public Lcom/sonyericsson/android/camera/view/angle/SlideZoomStepCalculator;
.super Ljava/lang/Object;
.source "SlideZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .registers 5

    const/4 v0, 0x0

    .line 15
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_11

    .line 16
    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    goto :goto_13

    :cond_11
    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 18
    :goto_13
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    if-ne v1, v0, :cond_18

    return-object p1

    .line 22
    :cond_18
    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 23
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr p2, v0

    .line 25
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->setIndex(I)V

    return-object p1
.end method
