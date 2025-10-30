.class public final Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CountDownIcon"
.end annotation


# static fields
.field private static final PUT_IN_ANIMATION_DURATION:J = 0x78L


# instance fields
.field private mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

.field private mSideTouchCountDownView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 191
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00a0

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090198

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    .line 198
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    const v0, 0x7f090199

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    .line 200
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setVisibility(I)V

    return-void
.end method

.method protected getIconView()Landroid/view/View;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setUiOrientation(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 227
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setRotation(F)V

    goto :goto_11

    .line 229
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setRotation(F)V

    :goto_11
    return-void
.end method

.method public show()V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SIDE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownCircleView:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->startAnimation()V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    .line 217
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-nez v1, :cond_27

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    neg-int v0, v0

    goto :goto_29

    :cond_27
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_29
    int-to-float v0, v0

    .line 219
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x78

    .line 220
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;->mSideTouchCountDownView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
