.class Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureButtonProcedure"
.end annotation


# instance fields
.field private mIgnoreCaptureActionOnFaultPreview:Z

.field private mIsBurst:Z

.field private mIsTouched:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 3

    .line 1248
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    const/4 p1, 0x0

    .line 1249
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    .line 1250
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 3

    .line 1248
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doCancel()V
    .registers 4

    .line 1292
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1295
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    .line 1298
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1299
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearBurstShootingRejectedReason()V

    .line 1301
    :cond_1d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onCaptureCancel()V

    return-void
.end method

.method public doLongClick(Landroid/graphics/Point;)V
    .registers 2

    .line 1307
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    if-nez p1, :cond_5

    return-void

    .line 1310
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventCaptureBurst()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4100(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    return-void
.end method

.method public doTouchDown()V
    .registers 4

    const/4 v0, 0x1

    .line 1255
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    const/4 v1, 0x0

    .line 1256
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    .line 1258
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearCanceledSideTouchEventIcons()V

    .line 1259
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIgnoreCaptureActionOnFaultPreview:Z

    .line 1260
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1261
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIgnoreCaptureActionOnFaultPreview:Z

    return-void

    .line 1264
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .registers 4

    .line 1269
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->CAPTURE_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    const/4 p1, 0x0

    .line 1270
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    .line 1271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSwitchingAnimationProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 1274
    :cond_15
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIgnoreCaptureActionOnFaultPreview:Z

    if-eqz v0, :cond_1a

    return-void

    .line 1277
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 1279
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1282
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    if-eqz v0, :cond_47

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1284
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onCaptureCancel()V

    goto :goto_58

    .line 1286
    :cond_47
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3900(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_58
    return-void
.end method
