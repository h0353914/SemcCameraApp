.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
.super Ljava/lang/Object;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AngleActionHandler"
.end annotation


# instance fields
.field private mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

.field private mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

.field private mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

.field private mSideTouchScrollDistance:I

.field private mSlideMoveRatio:F

.field private mZoomPrepared:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 2

    .line 2274
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2283
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mZoomPrepared:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 3

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSlideZooming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performSlideZooming(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareJumpZooming(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareKeyZooming(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->switchFrontAngle()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->preparePinchZooming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performPinchZooming(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSideTouchZoom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;I)V
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->updateSideTouchZoomStrength(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)I
    .registers 1

    .line 2274
    iget p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I

    return p0
.end method

.method static synthetic access$7200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;[Ljava/lang/Object;)Z
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7300(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performKeyZooming(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)F
    .registers 1

    .line 2274
    iget p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSlideMoveRatio:F

    return p0
.end method

.method static synthetic access$7600(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;I)V
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performRatioDesignationZooming(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .registers 1

    .line 2274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->finishZoom()Z

    move-result p0

    return p0
.end method

.method private clear()V
    .registers 3

    .line 2546
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2547
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->stop()V

    .line 2548
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    .line 2550
    :cond_a
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2551
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    return-void
.end method

.method private finishZoom()Z
    .registers 5

    .line 2525
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mZoomPrepared:Z

    if-nez v0, :cond_c

    return v1

    .line 2528
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2529
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mZoomPrepared:Z

    .line 2530
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method private getFrontAngleStep(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)I
    .registers 6

    .line 2590
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne p1, p0, :cond_1f

    .line 2591
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 2592
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getWideZoomTargetRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p0

    .line 2593
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 2594
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    float-to-double p0, p1

    sub-double/2addr p0, v2

    div-double/2addr v0, p0

    const-wide p0, 0x408e300000000000L    # 966.0

    mul-double/2addr v0, p0

    double-to-int p0, v0

    goto :goto_21

    :cond_1f
    const/16 p0, 0xa8

    :goto_21
    return p0
.end method

.method private isHandling()Z
    .registers 2

    .line 2542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isZoomAvailable()Z
    .registers 3

    .line 2535
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2536
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isBokehEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2537
    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_2e

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2538
    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method private performFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2488
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->getFrontAngleStep(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private performKeyZooming(Z)Z
    .registers 5

    .line 2440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;

    if-nez v0, :cond_c

    .line 2441
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z

    .line 2442
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareKeyZooming(Z)Z

    :cond_c
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private performPinchZooming(F)Z
    .registers 4

    .line 2428
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;

    if-nez v0, :cond_c

    .line 2431
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z

    .line 2432
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->preparePinchZooming()Z

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2434
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private performRatioDesignationZooming(I)V
    .registers 7

    .line 2458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;

    if-nez v0, :cond_d

    .line 2461
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z

    int-to-float v0, p1

    .line 2462
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareJumpZooming(F)Z

    .line 2464
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v0

    .line 2465
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;->calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2466
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v3

    :goto_2a
    if-eqz v0, :cond_3e

    .line 2468
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    aput-object p0, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_76

    .line 2471
    :cond_3e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2475
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2473
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2477
    :cond_6b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v0

    if-ne v0, p1, :cond_76

    .line 2478
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z

    :cond_76
    :goto_76
    return-void
.end method

.method private performSlideZooming(F)Z
    .registers 4

    .line 2448
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/angle/SlideZoomStepCalculator;

    if-nez v0, :cond_c

    .line 2451
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z

    .line 2452
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSlideZooming()Z

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2454
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private varargs performZoom([Ljava/lang/Object;)Z
    .registers 6

    .line 2492
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2496
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v0

    .line 2498
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-interface {v2, v3, p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;->calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2500
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result p1

    const/4 v2, 0x1

    if-eq v0, p1, :cond_21

    move p1, v2

    goto :goto_22

    :cond_21
    move p1, v1

    :goto_22
    if-eqz p1, :cond_36

    .line 2503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_63

    .line 2506
    :cond_36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2508
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2510
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    .line 2508
    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_63
    :goto_63
    return p1
.end method

.method private prepareFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z
    .registers 9

    .line 2341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 2345
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAngleEventReceivable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2346
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    .line 2347
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/16 v2, 0x3c6

    const/4 v3, 0x0

    .line 2350
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->getFrontAngleStep(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)I

    move-result v4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2351
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v5

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2352
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIIFF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/4 p0, 0x1

    return p0

    :cond_4e
    return v1
.end method

.method private prepareJumpZooming(F)Z
    .registers 6

    .line 2377
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2378
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomStep()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;-><init>(II)V

    .line 2377
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2379
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(ZLcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v1, 0x21

    .line 2380
    new-instance v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)V

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    return v2

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method private prepareKeyZooming(Z)Z
    .registers 5

    .line 2321
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->showFullZoomUi()V

    .line 2324
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v1, 0x10

    .line 2325
    new-instance v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method private preparePinchZooming()Z
    .registers 3

    .line 2294
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    .line 2295
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2296
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->showFullZoomUi()V

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private prepareSideTouchZoom()Z
    .registers 4

    .line 2303
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/SideTouchZoomStepCalculator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/angle/SideTouchZoomStepCalculator;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 2304
    iput v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I

    .line 2305
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v1, 0x21

    .line 2306
    new-instance v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method private prepareSlideZooming()Z
    .registers 4

    .line 2359
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/SlideZoomStepCalculator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/angle/SlideZoomStepCalculator;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 2361
    iput v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSlideMoveRatio:F

    .line 2362
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v1, 0x21

    .line 2363
    new-instance v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$3;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z
    .registers 10

    .line 2394
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2398
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2400
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyZoomOperationRejected()V

    return v1

    .line 2404
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAngleEventReceivable()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2405
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    .line 2406
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getZoom()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 2408
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2409
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getMaxZoomStep()I

    move-result v3

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2410
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getMinZoomStep()I

    move-result v4

    .line 2411
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2412
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v6

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2413
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIFFF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2415
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2417
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mZoomPrepared:Z

    return v2

    :cond_83
    return v1
.end method

.method private stopZooming()Z
    .registers 1

    .line 2518
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->finishZoom()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private switchFrontAngle()V
    .registers 6

    .line 2555
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$5000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 2557
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2558
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2560
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_29

    .line 2561
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    goto :goto_2b

    :cond_29
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 2563
    :goto_2b
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$5000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 2564
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2566
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2567
    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2569
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v2, 0x21

    .line 2570
    new-instance v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    :cond_60
    return-void
.end method

.method private updateSideTouchZoomStrength(I)V
    .registers 2

    .line 2484
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I

    return-void
.end method


# virtual methods
.method protected getCurrentAngle()I
    .registers 1

    .line 2602
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result p0

    return p0
.end method

.method public isJumpZooming()Z
    .registers 1

    .line 2606
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    instance-of p0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;

    return p0
.end method
