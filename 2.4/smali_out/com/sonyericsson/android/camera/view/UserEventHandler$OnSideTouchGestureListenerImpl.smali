.class Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSideTouchGestureListenerImpl"
.end annotation


# instance fields
.field private mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 2

    .line 1822
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 3

    .line 1822
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private isSideTouchAvailableMode()Z
    .registers 3

    .line 1827
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    const/4 v0, 0x0

    return v0

    :pswitch_13
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public onDoubleTap(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;II)V
    .registers 9

    .line 1849
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnSideTouchGestureListenerImpl#onDoubleTap() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1851
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 1854
    :cond_29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->isSideTouchAvailableMode()Z

    move-result v0

    if-nez v0, :cond_30

    return-void

    .line 1858
    :cond_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return-void

    .line 1862
    :cond_3d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeSettingDialogIfOpened()Z

    move-result v0

    if-nez v0, :cond_110

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1863
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1864
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-eqz v0, :cond_63

    goto/16 :goto_110

    .line 1867
    :cond_63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCurrentStorageWritable()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_6c

    return-void

    .line 1871
    :cond_6c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, v3, :cond_77

    return-void

    .line 1876
    :cond_77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1877
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 1878
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    goto :goto_9d

    .line 1880
    :cond_96
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 1882
    :goto_9d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    move-result v0

    if-eqz v0, :cond_aa

    return-void

    .line 1886
    :cond_aa
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSelfTimerCountDownViewShown()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 1887
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1888
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_10f

    .line 1890
    :cond_d0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_10f

    .line 1893
    :cond_de
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isPreviewLayout()Z

    move-result v0

    if-nez v0, :cond_eb

    return-void

    .line 1897
    :cond_eb
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onSideTapped(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 1898
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setSideSensePosition(II)V

    .line 1899
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p3, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    aput-object v0, p3, v2

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_10f
    :goto_10f
    return-void

    :cond_110
    :goto_110
    return-void
.end method

.method public onGestureFinished()V
    .registers 3

    .line 1961
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1964
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetSideTouchEventHandling()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public onGestureStart()V
    .registers 3

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6500(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    return-void
.end method

.method public onScroll(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)V
    .registers 6

    .line 1947
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSideTouchGestureListenerImpl#onScrollEnd() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1948
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 1951
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1952
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    if-eqz v0, :cond_4f

    iget-object v0, v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    if-ne v0, v1, :cond_4f

    .line 1953
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    iget p1, p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    iget v1, v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    sub-int/2addr p1, v1

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->updateSideTouchZoomStrength(I)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$6900(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;I)V

    :cond_4f
    return-void
.end method

.method public onScrollEnd()V
    .registers 3

    .line 1936
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "OnSideTouchGestureListenerImpl#onScrollEnd()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1937
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 1940
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1941
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    :cond_2d
    return-void
.end method

.method public onScrollStart(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)V
    .registers 6

    .line 1907
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSideTouchGestureListenerImpl#onScrollStart() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1909
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 1912
    :cond_29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->isSideTouchAvailableMode()Z

    move-result v0

    if-nez v0, :cond_30

    return-void

    .line 1915
    :cond_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1916
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_8d

    .line 1920
    :cond_49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1921
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_83

    .line 1922
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->mTriggerEvent:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    .line 1923
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSideTouchZoom()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$6800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1924
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1925
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->getCurrentAngle()I

    move-result v1

    .line 1924
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onSideTouchZoom(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;I)V

    goto :goto_8c

    .line 1929
    :cond_83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyZoomOperationRejected()V

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    :goto_8d
    return-void
.end method
