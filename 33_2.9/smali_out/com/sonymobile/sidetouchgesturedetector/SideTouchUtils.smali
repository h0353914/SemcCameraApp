.class public Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;
.super Ljava/lang/Object;
.source "SideTouchUtils.java"


# static fields
.field public static final SIDE_BOTTOM:I = 0x8

.field public static final SIDE_LEFT:I = 0x1

.field public static final SIDE_RIGHT:I = 0x2

.field public static final SIDE_TOP:I = 0x4

.field public static final SIDE_UNKNOWN:I = 0x0

.field public static final SOURCE_SIDETOUCH:I = 0x20000000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clip(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static getLocalPos(Landroid/view/View;FFZ)Landroid/graphics/PointF;
    .registers 5

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 77
    invoke-static {v0, p0, p1, p2, p3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLocalPos(Landroid/graphics/PointF;Landroid/view/View;FFZ)V

    return-object v0
.end method

.method public static getLocalPos(Landroid/graphics/PointF;Landroid/view/View;FFZ)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 93
    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x1

    .line 94
    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p3, v0

    if-eqz p4, :cond_25

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-static {p2, v0, p4}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->clip(FFF)F

    move-result p2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p3, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->clip(FFF)F

    move-result p3

    .line 101
    :cond_25
    invoke-virtual {p0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static getLogicalScreenSide(Landroid/view/MotionEvent;)I
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 30
    invoke-static {p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLogicalScreenSide(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0
.end method

.method public static getLogicalScreenSide(Landroid/view/MotionEvent;I)I
    .registers 7

    .line 34
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    const/4 p1, 0x0

    const/high16 v2, 0x20000000

    .line 41
    invoke-virtual {v0, p1, v2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    const/4 v4, 0x1

    .line 43
    invoke-virtual {v0, v4, v2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v3, :cond_4e

    if-nez v0, :cond_1d

    goto :goto_4e

    .line 48
    :cond_1d
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_27

    move v2, v4

    goto :goto_28

    :cond_27
    move v2, p1

    .line 51
    :goto_28
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_32

    or-int/lit8 v2, v2, 0x2

    .line 54
    :cond_32
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v1

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_3c

    or-int/lit8 v2, v2, 0x4

    .line 57
    :cond_3c
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_46

    or-int/lit8 v2, v2, 0x8

    .line 62
    :cond_46
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    if-le p0, v4, :cond_4d

    return p1

    :cond_4d
    return v2

    :cond_4e
    :goto_4e
    return p1
.end method
