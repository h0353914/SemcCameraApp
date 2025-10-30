.class Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$CircleDecelerateInterpolator;
.super Landroid/view/animation/DecelerateInterpolator;
.source "SideTouchCountDownCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleDecelerateInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$CircleDecelerateInterpolator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$CircleDecelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const v0, 0x3fd55555

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_b

    move p1, v0

    .line 150
    :cond_b
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
