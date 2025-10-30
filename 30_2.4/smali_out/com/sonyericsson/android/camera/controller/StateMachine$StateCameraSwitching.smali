.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCameraSwitching"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateCameraSwitching"


# instance fields
.field private final mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private mIsCameraOpened:Z

.field private mIsEvfPrepared:Z

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .registers 6

    .line 2385
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v0, 0x0

    .line 2381
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    .line 2382
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    .line 2386
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 2387
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2388
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 2390
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p2

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$6200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2391
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p2

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$6200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1b58

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 5

    .line 2374
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    return-void
.end method

.method private moveStateIfCaptureReady()V
    .registers 4

    .line 2400
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    if-eqz v0, :cond_4b

    .line 2401
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2402
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_29

    .line 2403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->showBlackScreen()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2406
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    .line 2407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$6300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2408
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFusionMonitoring()V

    .line 2411
    :cond_43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->startFastCapture(ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$6400(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .line 2457
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 2458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$6200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs handleOnCameraDeviceOpened([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 2417
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2418
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    .line 2419
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    .line 2420
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->moveStateIfCaptureReady()V

    .line 2422
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 2423
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getCameraOrientation()I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$6500(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->setCameraSensorOrientation(I)V

    :cond_26
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .registers 4

    .line 2429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->setEvfSurfaceToCameraDeviceHandler(Lcom/sonymobile/cameracommon/evf/Evf;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonymobile/cameracommon/evf/Evf;)V

    const/4 p1, 0x1

    .line 2430
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    .line 2431
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->moveStateIfCaptureReady()V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 6

    .line 2452
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .registers 6

    const-string p1, "StateMachine.StateCameraSwitching"

    const-string v0, "[CameraNotAvailable] resume timeout."

    .line 2436
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2438
    invoke-static {p1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(ZZ)V

    .line 2440
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 2442
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 2445
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 2446
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->SWITCH_RESUME_TIMEOUT:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V

    const-wide/16 v1, 0x3e8

    .line 2445
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
