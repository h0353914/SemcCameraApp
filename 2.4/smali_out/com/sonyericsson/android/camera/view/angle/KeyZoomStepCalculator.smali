.class public Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;
.super Ljava/lang/Object;
.source "KeyZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_1_MILLIS:I = 0x1f4

.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_2_MILLIS:I = 0x2ee

.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_3_MILLIS:I = 0x3e8


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
    .registers 11

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
    iget v3, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    .line 43
    iget v4, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    sub-int/2addr v4, p2

    const/4 v5, 0x1

    if-gez v4, :cond_23

    move v0, v5

    :cond_23
    const-wide/16 v6, 0x0

    cmp-long v4, v6, v1

    const-wide/16 v6, 0x1f4

    if-gtz v4, :cond_35

    cmp-long v4, v1, v6

    if-gez v4, :cond_35

    if-eqz v0, :cond_33

    add-int/2addr v3, v5

    goto :goto_60

    :cond_33
    sub-int/2addr v3, v5

    goto :goto_60

    :cond_35
    cmp-long v4, v6, v1

    const-wide/16 v5, 0x2ee

    if-gtz v4, :cond_47

    cmp-long v4, v1, v5

    if-gez v4, :cond_47

    if-eqz v0, :cond_44

    add-int/lit8 v3, v3, 0x2

    goto :goto_60

    :cond_44
    add-int/lit8 v3, v3, -0x2

    goto :goto_60

    :cond_47
    cmp-long v4, v5, v1

    if-gtz v4, :cond_59

    const-wide/16 v4, 0x3e8

    cmp-long v1, v1, v4

    if-gez v1, :cond_59

    if-eqz v0, :cond_56

    add-int/lit8 v3, v3, 0x3

    goto :goto_60

    :cond_56
    add-int/lit8 v3, v3, -0x3

    goto :goto_60

    :cond_59
    if-eqz v0, :cond_5e

    add-int/lit8 v3, v3, 0x4

    goto :goto_60

    :cond_5e
    add-int/lit8 v3, v3, -0x4

    :goto_60
    if-eqz v0, :cond_65

    if-le v3, p2, :cond_65

    goto :goto_6f

    :cond_65
    if-nez v0, :cond_6e

    .line 63
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-le p2, v3, :cond_6e

    .line 64
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    goto :goto_6f

    :cond_6e
    move p2, v3

    .line 67
    :goto_6f
    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
