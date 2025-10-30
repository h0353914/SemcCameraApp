.class public Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;
.super Landroid/widget/FrameLayout;
.source "CaptureProgressView.java"


# instance fields
.field private mAnimationProgressListener:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;

.field private mCircleViewLandscape:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

.field private mCircleViewPortrait:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

.field private mLayoutLandscape:Landroid/widget/RelativeLayout;

.field private mLayoutPortrait:Landroid/widget/RelativeLayout;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;
    .registers 3

    .line 72
    iget v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewLandscape:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    goto :goto_a

    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewPortrait:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    :goto_a
    return-object v0
.end method

.method private getCurrentLayout()Landroid/widget/RelativeLayout;
    .registers 3

    .line 77
    iget v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutLandscape:Landroid/widget/RelativeLayout;

    goto :goto_a

    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutPortrait:Landroid/widget/RelativeLayout;

    :goto_a
    return-object v0
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->setAnimationProgressListener(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;)V

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->cancelAnimation()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 34
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09005d

    .line 35
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutPortrait:Landroid/widget/RelativeLayout;

    const v0, 0x7f09005c

    .line 36
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mLayoutLandscape:Landroid/widget/RelativeLayout;

    const v0, 0x7f09005b

    .line 37
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewPortrait:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    const v0, 0x7f09005a

    .line 38
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mCircleViewLandscape:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    return-void
.end method

.method public setAnimationProgressListener(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mAnimationProgressListener:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;

    return-void
.end method

.method public setDuration(I)V
    .registers 3

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->setDuration(I)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mOrientation:I

    return-void
.end method

.method public startAnimation()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mAnimationProgressListener:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;

    if-eqz v0, :cond_15

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->mAnimationProgressListener:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->setAnimationProgressListener(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;)V

    .line 50
    :cond_15
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressView;->getCurrentCircleView()Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->startAnimation()V

    return-void
.end method
