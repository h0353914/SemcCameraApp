.class Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenCameraTask"
.end annotation


# instance fields
.field private final mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private final mIsSuperSlow:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Z)V
    .registers 5

    .line 551
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 552
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 553
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 554
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mIsSuperSlow:Z

    .line 555
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 6

    .line 545
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Z)V

    return-void
.end method

.method private isPreProcessing()Z
    .registers 3

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 687
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 8

    .line 581
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v1, v2, :cond_2e

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mIsSuperSlow:Z

    if-nez v1, :cond_2e

    .line 586
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCameraRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 589
    :cond_2e
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_50

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenCameraTask invoked cameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 591
    :cond_50
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    .line 593
    :try_start_5f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    .line 594
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 595
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 596
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v6

    .line 593
    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_7c
    .catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_7c} :catch_18d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5f .. :try_end_7c} :catch_18d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_7c} :catch_18d

    .line 607
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->awaitLoadSettingsThread()Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v0, "OpenCameraTask() : Failed to load setting."

    .line 609
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->cancelOpenCamera()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 612
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 613
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 611
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 618
    :cond_aa
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    .line 619
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 618
    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 623
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v4

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraOpened()Landroid/hardware/camera2/CameraDevice;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 624
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_ed

    const-string v0, "OpenCameraTask() : Failed to open camera."

    .line 626
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 628
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 629
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 627
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 634
    :cond_ed
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 637
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v1, v4, :cond_fc

    move v1, v3

    goto :goto_106

    .line 640
    :cond_fc
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isNeedCreatePreviewSession()Z

    move-result v1

    .line 643
    :goto_106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskOrBypassCameraTaskRequested()Z

    move-result v4

    if-eqz v4, :cond_11a

    const-string v0, "OpenCameraTask() : CloseCameraTask() is already requested."

    .line 644
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 649
    :cond_11a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->isPreProcessing()Z

    move-result v4

    if-nez v4, :cond_129

    .line 650
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->prepareCaptureImageReader()V

    .line 653
    :cond_129
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_13d

    .line 656
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    .line 659
    :cond_13d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v1, v4, :cond_147

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mIsSuperSlow:Z

    if-eqz v1, :cond_154

    .line 661
    :cond_147
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCameraRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 674
    :cond_154
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_18c

    .line 676
    new-instance v4, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v6, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 677
    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    .line 678
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 679
    new-instance v4, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {v4, v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    new-array v3, v3, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 680
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_18c
    return-void

    :catch_18d
    move-exception v0

    const-string v1, "OpenCameraTask() : Failed by CameraAccessException"

    .line 599
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 601
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 602
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 600
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 4

    .line 560
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskOrBypassCameraTaskRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 561
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "OpenCameraTask : CloseCameraTask is already requested."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_18
    return v1

    .line 565
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 566
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "OpenCameraTask : should not open because of error caused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_30
    return v1

    .line 570
    :cond_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq v0, v2, :cond_48

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 571
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v2, :cond_46

    goto :goto_48

    :cond_46
    const/4 v0, 0x1

    return v0

    .line 572
    :cond_48
    :goto_48
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_55

    const-string v0, "OpenCameraTask : OpenCameraTask is already performed."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_55
    return v1
.end method
