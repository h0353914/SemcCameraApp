.class public Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;
.super Ljava/lang/Object;
.source "FrontAngleChangeCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field public static final ZOOM_CHANGE_ANGLE_LOOP_COUNT:I = 0x1


# instance fields
.field private mStepInterval:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .registers 7

    const/4 v0, 0x0

    .line 25
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 27
    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 28
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-ne p2, v1, :cond_17

    .line 29
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    iput v1, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    goto :goto_19

    .line 31
    :cond_17
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    .line 35
    :cond_19
    :goto_19
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    sub-int v2, v1, p2

    .line 36
    iget v3, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-ge v2, v3, :cond_22

    const/4 v0, 0x1

    :cond_22
    if-eqz v0, :cond_28

    .line 38
    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    add-int/2addr v1, p0

    goto :goto_2b

    .line 39
    :cond_28
    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    sub-int/2addr v1, p0

    :goto_2b
    if-eqz v0, :cond_30

    if-le v1, p2, :cond_30

    goto :goto_3a

    :cond_30
    if-nez v0, :cond_39

    .line 42
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-le p0, v1, :cond_39

    .line 43
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    goto :goto_3a

    :cond_39
    move p2, v1

    .line 46
    :goto_3a
    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
