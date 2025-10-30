.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;
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

    .line 2123
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private getModeIndexUnder(Landroid/view/MotionEvent;)I
    .registers 3

    .line 2356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mApplicationNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 2360
    :cond_a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mApplicationNavigator:Lcom/sonyericsson/android/camera/view/ApplicationNavigator;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    move-result-object p0

    .line 2361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 2360
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeIndexUnder(II)I

    move-result p0

    return p0
.end method

.method private getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 2

    .line 2394
    sget-object p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_20

    .line 2422
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2418
    :pswitch_e
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2414
    :pswitch_11
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2410
    :pswitch_14
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2406
    :pswitch_17
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2401
    :pswitch_1a
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_1f

    .line 2397
    :pswitch_1d
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    :goto_1f
    return-object p0

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

    .line 2365
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 2367
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_22

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    return v0

    .line 2381
    :cond_1c
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_21

    return v0

    :cond_21
    return v1

    .line 2371
    :cond_22
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, p1, :cond_30

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, p1, :cond_30

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    return v1

    :cond_30
    :goto_30
    return v0
.end method


# virtual methods
.method protected canDragging()Z
    .registers 2

    .line 2127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsSettingChangeAcceptable:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 4

    .line 2340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mZoomUiProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->access$3300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFullZoomDialViewShown()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 2343
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 2345
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getModeIndexUnder(Landroid/view/MotionEvent;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2d

    .line 2347
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    goto :goto_36

    .line 2350
    :cond_2d
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    :goto_36
    return-void
.end method

.method protected sendCancelEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
    .registers 7

    .line 2305
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2306
    :cond_24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    .line 2309
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2310
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v1, :cond_39

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_62

    .line 2311
    :cond_39
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_46

    return-void

    .line 2314
    :cond_46
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 2315
    new-instance v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2321
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2322
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showViews()V

    .line 2326
    :cond_62
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v1, :cond_6a

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_7c

    .line 2327
    :cond_6a
    new-instance p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2332
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2333
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    :cond_7c
    return-void
.end method

.method protected sendFinishEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
    .registers 9

    .line 2241
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2242
    :cond_24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    .line 2246
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2247
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v3, :cond_39

    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_b2

    .line 2248
    :cond_39
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_46

    return-void

    .line 2252
    :cond_46
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2253
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 2252
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getNextContent(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;
    invoke-static {v3, v4, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2254
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 2252
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingModeForTarget(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 2255
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_8e

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2256
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2255
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8e
    if-ne v0, v3, :cond_93

    .line 2259
    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    goto :goto_95

    .line 2261
    :cond_93
    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2263
    :goto_95
    new-instance v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v6, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-direct {v5, v6, v4, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2270
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 2272
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2275
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 2278
    :cond_b2
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_c8

    .line 2279
    new-instance v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2284
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2285
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    .line 2288
    :cond_c8
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_f0

    .line 2289
    new-instance p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2294
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-direct {p1, v1, v3, v0, v4}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 2296
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsSwitchingAnimationProgress(Z)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 2297
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 2298
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    :cond_f0
    return-void
.end method

.method protected sendProgressEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;IF)V
    .registers 8

    .line 2202
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2203
    :cond_24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    .line 2207
    :cond_2b
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_33

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_6b

    .line 2208
    :cond_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_40

    return-void

    .line 2212
    :cond_40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    if-lez p2, :cond_57

    .line 2215
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2216
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->previous()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    goto :goto_63

    .line 2219
    :cond_57
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2220
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->next()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    goto :goto_63

    :cond_62
    move-object v1, v0

    :goto_63
    if-ne v0, v1, :cond_66

    return-void

    .line 2229
    :cond_66
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onModeControllableDraggingMove(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/NavigatorContents;IF)V
    invoke-static {v2, v0, v1, p2, p3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/NavigatorContents;IF)V

    .line 2233
    :cond_6b
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_76

    if-gez p2, :cond_76

    .line 2234
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startDraggingSwitchAnimation(F)V
    invoke-static {p0, p3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;F)V

    :cond_76
    return-void
.end method

.method protected sendStartEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
    .registers 9

    .line 2142
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2143
    :cond_24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_2b

    return v2

    .line 2146
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isModeChanging()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_34

    return v2

    .line 2150
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2151
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v3, :cond_42

    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_8b

    .line 2152
    :cond_42
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_4f

    return v2

    .line 2156
    :cond_4f
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2157
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 2156
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getNextContent(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;
    invoke-static {v3, v4, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2158
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 2156
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingModeForTarget(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    if-ne v0, v3, :cond_6a

    return v2

    .line 2165
    :cond_6a
    new-instance v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2170
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 2171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    .line 2178
    :cond_8b
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v3

    if-nez v3, :cond_92

    return v2

    .line 2182
    :cond_92
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_bb

    .line 2183
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 2184
    new-instance v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v3, v4, v5, v0, p1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2189
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 2190
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    :cond_bb
    return v2
.end method

.method protected sendTouchDownEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 2132
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mTopHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2133
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mTopHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->clearToastContent()V

    .line 2135
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBottomHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 2136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBottomHintText:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->clearToastContent()V

    :cond_22
    return-void
.end method
