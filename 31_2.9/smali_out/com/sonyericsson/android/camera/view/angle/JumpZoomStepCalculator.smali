.class public Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;
.super Ljava/lang/Object;
.source "JumpZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# instance fields
.field private INTERVAL_STEP:I

.field private final mIsZoomIn:Z

.field private mStartStep:I

.field private mStopStep:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 13
    iput v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->INTERVAL_STEP:I

    if-lt p2, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 19
    :goto_c
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mIsZoomIn:Z

    .line 20
    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStartStep:I

    .line 21
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStopStep:I

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .registers 7

    .line 26
    iget p2, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStartStep:I

    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStopStep:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 27
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStartStep:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStopStep:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 28
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mIsZoomIn:Z

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    move p2, v0

    .line 30
    :goto_16
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    if-ne v1, p2, :cond_1b

    return-object p1

    .line 34
    :cond_1b
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    .line 35
    iget v2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    sub-int/2addr v2, p2

    if-gez v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_2b

    .line 36
    iget v3, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->INTERVAL_STEP:I

    add-int/2addr v1, v3

    goto :goto_2e

    :cond_2b
    iget v3, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->INTERVAL_STEP:I

    sub-int/2addr v1, v3

    :goto_2e
    if-eqz v2, :cond_33

    if-le v1, p2, :cond_33

    goto :goto_3a

    :cond_33
    if-nez v2, :cond_39

    if-le v0, v1, :cond_39

    move p2, v0

    goto :goto_3a

    :cond_39
    move p2, v1

    .line 46
    :goto_3a
    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
