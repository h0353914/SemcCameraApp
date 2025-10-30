.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTouchZoomPointView:Landroid/view/View;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;F)F
    .registers 2

    .line 316
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->calcMovedRatio(F)F

    move-result p0

    return p0
.end method

.method private calcMoveStep(FF)F
    .registers 4

    div-float/2addr p1, p2

    .line 551
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    const v0, 0x3f1d70a4    # 0.615f

    mul-float/2addr p2, v0

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 554
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 553
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 554
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    return p1
.end method

.method private calcMovedRatio(F)F
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 v1, 0x43cc0000    # 408.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1d

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_29

    :cond_1d
    const v0, 0x3fa66666    # 1.3f

    .line 563
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float/2addr p1, v0

    :goto_29
    return p1
.end method

.method private cancelClickZoomPoint()V
    .registers 2

    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    .line 504
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->postZoomStarted()V

    return-void
.end method

.method private doClickZoomPoint()V
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 512
    :cond_9
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LENS_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x43280000    # 168.0f

    if-eqz v0, :cond_4d

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_3a

    .line 517
    :cond_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 519
    :goto_3a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f1

    .line 520
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    goto/16 :goto_f1

    .line 522
    :cond_4d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f1

    .line 525
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    goto/16 :goto_f1

    .line 528
    :cond_77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_a2

    .line 532
    :cond_97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const/high16 v1, 0x43cc0000    # 408.0f

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 534
    :goto_a2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f1

    .line 535
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    goto :goto_f1

    .line 537
    :cond_b4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_e0

    .line 541
    :cond_d4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const v1, 0x44718000    # 966.0f

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 543
    :goto_e0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f1

    .line 544
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    :cond_f1
    :goto_f1
    return-void
.end method

.method private finishZoomUI()V
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->doClickZoomPoint()V

    :cond_13
    return-void

    .line 449
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomEnd()V

    .line 450
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    return-void
.end method

.method private getTouchZoomPointView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 456
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_4d

    .line 457
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 458
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_4d

    .line 459
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 460
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_4d

    .line 461
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 462
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    return-object p0
.end method

.method private isChangeRatio(ILandroid/view/MotionEvent;)Z
    .registers 6

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-gez v0, :cond_16

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1902(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    move v0, v1

    goto :goto_36

    .line 573
    :cond_16
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_36

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 575
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {v2, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1902(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    .line 578
    :cond_36
    :goto_36
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 579
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p2, p0, :cond_5f

    goto :goto_60

    :cond_5f
    move p1, v1

    :goto_60
    return p1
.end method

.method private isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 481
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 486
    aget v3, v0, v2

    .line 488
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->recordingOrientation:I

    if-eq p0, v2, :cond_26

    instance-of p0, p1, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1c

    goto :goto_26

    .line 492
    :cond_1c
    aget p0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr p0, v4

    .line 493
    aget v1, v0, v1

    goto :goto_2f

    .line 489
    :cond_26
    :goto_26
    aget p0, v0, v1

    .line 490
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 495
    :goto_2f
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    .line 496
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isWithinDialbarHeight(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private postZoomStarted()V
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 321
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-boolean p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->eventEnable:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1fe

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto/16 :goto_1fe

    .line 324
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_ea

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_ea

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_ea

    .line 327
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 328
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 329
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz p1, :cond_7f

    .line 331
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getCircleStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p1, v5, :cond_7f

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7f

    .line 332
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1502(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I

    .line 333
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    :cond_7f
    if-eqz v3, :cond_aa

    .line 339
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getCircleStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p1, v3, :cond_aa

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_aa

    .line 340
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1502(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    :cond_aa
    if-eqz v4, :cond_d5

    .line 347
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getCircleStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p1, v3, :cond_d5

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d5

    .line 348
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1502(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I

    .line 349
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    .line 353
    :cond_d5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 354
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_ea
    const/4 p1, 0x0

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v3

    if-eqz v3, :cond_1fd

    .line 360
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_1d2

    if-eq v3, v0, :cond_1ce

    if-eq v3, v2, :cond_107

    if-eq v3, v1, :cond_1ce

    const/4 v1, 0x5

    if-eq v3, v1, :cond_1d2

    const/4 p2, 0x6

    if-eq v3, p2, :cond_1ce

    goto/16 :goto_1fd

    .line 374
    :cond_107
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result p1

    if-nez p1, :cond_126

    .line 375
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)Z

    .line 376
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1902(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    .line 377
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    .line 380
    :cond_126
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 381
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v3

    sub-float/2addr v1, v3

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    goto :goto_14d

    .line 383
    :cond_13f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    .line 385
    :goto_14d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->calcMoveStep(FF)F

    move-result p1

    float-to-int v1, p1

    .line 386
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isChangeRatio(ILandroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_167

    goto/16 :goto_1fe

    .line 391
    :cond_167
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    if-eqz v1, :cond_16e

    .line 392
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->cancelClickZoomPoint()V

    .line 395
    :cond_16e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v1

    if-nez v1, :cond_1aa

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1aa

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 396
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1aa

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1aa

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 398
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 401
    :cond_1aa
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c4

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    :cond_1c4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1902(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    goto :goto_1fe

    .line 417
    :cond_1ce
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->finishZoomUI()V

    goto :goto_1fe

    .line 363
    :cond_1d2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)Z

    .line 364
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1902(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    .line 365
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2002(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)F

    .line 367
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->getTouchZoomPointView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    if-nez p1, :cond_1fe

    .line 368
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p1

    if-nez p1, :cond_1fe

    .line 369
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->postZoomStarted()V

    goto :goto_1fe

    :cond_1fd
    :goto_1fd
    move v0, p1

    :cond_1fe
    :goto_1fe
    return v0
.end method
