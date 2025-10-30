.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;
.super Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setupDraggingEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Context;II)V
    .registers 5

    .line 2150
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private getModeIndexUnder(Landroid/view/MotionEvent;)I
    .registers 4

    .line 2380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mApplicationNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    .line 2384
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mApplicationNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    move-result-object v0

    .line 2385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 2384
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeIndexUnder(II)I

    move-result p1

    return p1
.end method

.method private getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 3

    .line 2418
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_20

    .line 2446
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2442
    :pswitch_e
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2438
    :pswitch_11
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2434
    :pswitch_14
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2430
    :pswitch_17
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2425
    :pswitch_1a
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2421
    :pswitch_1d
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    :goto_1f
    return-object p1

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_1d
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
    .registers 5

    .line 2389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2391
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_2a

    return v2

    .line 2405
    :pswitch_14
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, p1, :cond_19

    return v2

    :cond_19
    return v1

    .line 2395
    :pswitch_1a
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, p1, :cond_28

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, p1, :cond_28

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, p1, :cond_27

    goto :goto_28

    :cond_27
    return v1

    :cond_28
    :goto_28
    return v2

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method protected canDragging()Z
    .registers 2

    .line 2154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsSettingChangeAcceptable:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 4

    .line 2364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mZoomUiProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->access$5700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFullZoomDialViewShown()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 2367
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 2369
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->getModeIndexUnder(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2d

    .line 2371
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    goto :goto_36

    .line 2374
    :cond_2d
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    :goto_36
    return-void
.end method

.method protected sendCancelEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
    .registers 7

    .line 2329
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2330
    :cond_22
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 2333
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2334
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v1, :cond_37

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_60

    .line 2335
    :cond_37
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_44

    return-void

    .line 2338
    :cond_44
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 2339
    new-instance v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2345
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2346
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showViews()V

    .line 2350
    :cond_60
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v1, :cond_68

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_7a

    .line 2351
    :cond_68
    new-instance p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2356
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    :cond_7a
    return-void
.end method

.method protected sendFinishEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
    .registers 9

    .line 2265
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2266
    :cond_22
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 2270
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2271
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v3, :cond_37

    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_ac

    .line 2272
    :cond_37
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_44

    return-void

    .line 2276
    :cond_44
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2277
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 2276
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getNextContent(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;
    invoke-static {v3, v4, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2278
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 2276
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingModeForTarget(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 2279
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_88

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2279
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_88
    if-ne v0, v3, :cond_8d

    .line 2283
    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    goto :goto_8f

    .line 2285
    :cond_8d
    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2287
    :goto_8f
    new-instance v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v6, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-direct {v5, v6, v4, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2294
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 2296
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2299
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 2302
    :cond_ac
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_c2

    .line 2303
    new-instance v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2308
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2309
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    .line 2312
    :cond_c2
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_ea

    .line 2313
    new-instance p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2318
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-direct {p1, v1, v3, v0, v4}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 2320
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsSwitchingAnimationProgress(Z)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 2321
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 2322
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    :cond_ea
    return-void
.end method

.method protected sendProgressEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;IF)V
    .registers 8

    .line 2226
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2227
    :cond_22
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 2231
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_31

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_69

    .line 2232
    :cond_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_3e

    return-void

    .line 2236
    :cond_3e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    if-lez p2, :cond_55

    .line 2239
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2240
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->previous()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    goto :goto_61

    .line 2243
    :cond_55
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2244
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->next()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    goto :goto_61

    :cond_60
    move-object v1, v0

    :goto_61
    if-ne v0, v1, :cond_64

    return-void

    .line 2253
    :cond_64
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onModeControllableDraggingMove(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/NavigatorContents;IF)V
    invoke-static {v2, v0, v1, p2, p3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/NavigatorContents;IF)V

    .line 2257
    :cond_69
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_74

    if-gez p2, :cond_74

    .line 2258
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startDraggingSwitchAnimation(F)V
    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;F)V

    :cond_74
    return-void
.end method

.method protected sendStartEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
    .registers 9

    .line 2169
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2170
    :cond_22
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_29

    return v2

    .line 2174
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2175
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v3, :cond_37

    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_80

    .line 2176
    :cond_37
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_44

    return v2

    .line 2180
    :cond_44
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2181
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 2180
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getNextContent(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;
    invoke-static {v3, v4, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2182
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 2180
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingModeForTarget(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    if-ne v0, v3, :cond_5f

    return v2

    .line 2189
    :cond_5f
    new-instance v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2194
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 2195
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    .line 2202
    :cond_80
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v3

    if-nez v3, :cond_87

    return v2

    .line 2206
    :cond_87
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_b0

    .line 2207
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 2208
    new-instance v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v3, v4, v5, v0, p1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2213
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 2214
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p1, v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    :cond_b0
    return v2
.end method

.method protected sendTouchDownEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 2159
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mTopHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2160
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mTopHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->clearToastContent()V

    .line 2162
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBottomHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 2163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBottomHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->clearToastContent()V

    :cond_22
    return-void
.end method
