.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomDial.java"


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

    .line 1366
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 1404
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;->isMenuDialogOpened()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1405
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;->isSimpleIqControlVisible()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_3f

    .line 1408
    :cond_19
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3f

    .line 1409
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialLongTapEvent()V

    .line 1410
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 1411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 1412
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoom(I)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1369
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LENS_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 1370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;->isMenuDialogOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1371
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;->isSimpleIqControlVisible()Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_ca

    .line 1374
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    .line 1375
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 1377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1381
    :cond_4f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7f

    .line 1382
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const/high16 v3, 0x43280000    # 168.0f

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 1384
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1388
    :cond_7f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_af

    .line 1389
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const/high16 v3, 0x43cc0000    # 408.0f

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 1395
    :cond_af
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c5

    .line 1396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 1397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 1399
    :cond_c5
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_ca
    :goto_ca
    return v1
.end method
