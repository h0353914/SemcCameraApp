.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 2

    .line 1418
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .line 1421
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    .line 1477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1479
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1480
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1481
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1482
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1483
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$4000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1486
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$4500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1487
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1488
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1489
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$2202(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I

    .line 1492
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$4200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1494
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$4500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$4800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1496
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5800(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%,d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1495
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$5900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1498
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1497
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1501
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
