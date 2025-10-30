.class public Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;
.super Ljava/lang/Object;
.source "KeyZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_1_MILLIS:I = 0x7d

.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_2_MILLIS:I = 0xb5

.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_3_MILLIS:I = 0xfa


# instance fields
.field final mIsZoomIn:Z

.field final mZoomStartTimeMillis:J


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mZoomStartTimeMillis:J

    .line 22
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mIsZoomIn:Z

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .registers 9

    const/4 v0, 0x0

    .line 33
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 34
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mIsZoomIn:Z

    if-eqz p2, :cond_10

    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    goto :goto_12

    :cond_10
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 36
    :goto_12
    iget v3, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    if-ne v3, p2, :cond_17

    return-object p1

    .line 40
    :cond_17
    iget-wide v3, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mZoomStartTimeMillis:J

    sub-long/2addr v1, v3

    .line 41
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    .line 43
    iget v3, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    sub-int/2addr v3, p2

    if-gez v3, :cond_22

    const/4 v0, 0x1

    :cond_22
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    const-wide/16 v4, 0x7d

    if-gtz v3, :cond_36

    cmp-long v3, v1, v4

    if-gez v3, :cond_36

    if-eqz v0, :cond_33

    add-int/lit8 p0, p0, 0x2

    goto :goto_61

    :cond_33
    add-int/lit8 p0, p0, -0x2

    goto :goto_61

    :cond_36
    cmp-long v3, v4, v1

    const-wide/16 v4, 0xb5

    if-gtz v3, :cond_48

    cmp-long v3, v1, v4

    if-gez v3, :cond_48

    if-eqz v0, :cond_45

    add-int/lit8 p0, p0, 0x4

    goto :goto_61

    :cond_45
    add-int/lit8 p0, p0, -0x4

    goto :goto_61

    :cond_48
    cmp-long v3, v4, v1

    if-gtz v3, :cond_5a

    const-wide/16 v3, 0xfa

    cmp-long v1, v1, v3

    if-gez v1, :cond_5a

    if-eqz v0, :cond_57

    add-int/lit8 p0, p0, 0x6

    goto :goto_61

    :cond_57
    add-int/lit8 p0, p0, -0x6

    goto :goto_61

    :cond_5a
    if-eqz v0, :cond_5f

    add-int/lit8 p0, p0, 0x8

    goto :goto_61

    :cond_5f
    add-int/lit8 p0, p0, -0x8

    :goto_61
    if-eqz v0, :cond_66

    if-le p0, p2, :cond_66

    goto :goto_70

    :cond_66
    if-nez v0, :cond_6f

    .line 63
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-le p2, p0, :cond_6f

    .line 64
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    goto :goto_70

    :cond_6f
    move p2, p0

    .line 67
    :goto_70
    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
