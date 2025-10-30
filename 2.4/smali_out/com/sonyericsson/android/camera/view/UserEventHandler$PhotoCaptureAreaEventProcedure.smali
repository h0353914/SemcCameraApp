.class Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoCaptureAreaEventProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 3

    .line 1726
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 3

    .line 1726
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private startAutoFocusAfterObjectTrackedIfPossible(Landroid/graphics/Point;)V
    .registers 7

    .line 1729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1732
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1733
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p1

    aput-object p1, v2, v3

    .line 1732
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_26
    return-void
.end method


# virtual methods
.method public doTouchAreaScaleReady()V
    .registers 2

    .line 1807
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->preparePinchZooming()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$5700(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    return-void
.end method

.method public doTouchAreaScaling(F)V
    .registers 3

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performPinchZooming(F)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$5800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z

    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .registers 6

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1743
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoReviewShowing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 1744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    move v0, v1

    goto :goto_27

    :cond_26
    move v0, v2

    .line 1748
    :goto_27
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v3

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v3

    if-eqz v3, :cond_34

    move v0, v1

    :cond_34
    if-eqz v0, :cond_37

    return-void

    .line 1756
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->canFocusRectanglesBeUpdated()Z

    move-result v0

    if-nez v0, :cond_44

    return-void

    .line 1760
    :cond_44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isZoomDialShown()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1761
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFullZoomDialViewShown()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showZoomDialSimpleView(Landroid/graphics/Point;)V

    return-void

    .line 1767
    :cond_66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->canObjectTracking()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$5600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1768
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->setSelectedObjectPositionToDeviceAndViewFinder(Landroid/graphics/Point;)V

    goto :goto_97

    .line 1769
    :cond_72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCurrentStorageWritable()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1771
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1774
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1777
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchSemiAutoStateByTouch(Z)V

    goto :goto_97

    .line 1780
    :cond_8e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchSemiAutoStateByTouch(Z)V

    .line 1783
    :goto_97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isTouchCaptureEnabled()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$5400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_a0

    return-void

    .line 1787
    :cond_a0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->canObjectTracking()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$5600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1788
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->startAutoFocusAfterObjectTrackedIfPossible(Landroid/graphics/Point;)V

    .line 1791
    :cond_ab
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSwitchingAnimationProgress()Z

    move-result p1

    if-eqz p1, :cond_b8

    return-void

    .line 1795
    :cond_b8
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->mIsBurst:Z

    if-eqz p1, :cond_d3

    .line 1796
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1797
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onCaptureCancel()V

    goto :goto_e4

    .line 1799
    :cond_d3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3900(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1801
    :goto_e4
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1802
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    return-void
.end method
