.class Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;
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
    name = "OnCaptureSessionConfigured"
.end annotation


# instance fields
.field private final mResult:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V
    .registers 5

    .line 1486
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1487
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1488
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1489
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 6

    .line 1480
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 9

    .line 1506
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1508
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    if-eq v0, v3, :cond_3a

    .line 1512
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_39

    const-string v0, "This callback is invalid."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_39
    return-void

    .line 1516
    :cond_3a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureSessionNormalConfiguring:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1518
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "This callback is invalid."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4f
    return-void

    .line 1522
    :cond_50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_6d

    .line 1523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1524
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1525
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CONFIGURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1523
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    .line 1527
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 1531
    :cond_6d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1532
    :try_start_74
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v3

    if-eqz v3, :cond_9d

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1533
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1534
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1536
    :cond_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_74 .. :try_end_9e} :catchall_175

    .line 1537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    .line 1538
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1539
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;Z)V

    .line 1537
    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    .line 1541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 1542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onConfigured()V

    .line 1544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$102(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 1545
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5800()Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1546
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;-><init>(Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1545
    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2702(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 1548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_13e

    .line 1550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1551
    :try_start_fd
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1552
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_132

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " next:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1554
    :cond_132
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6002(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 1555
    monitor-exit v0

    goto :goto_13e

    :catchall_13b
    move-exception v1

    monitor-exit v0
    :try_end_13d
    .catchall {:try_start_fd .. :try_end_13d} :catchall_13b

    throw v1

    .line 1559
    :cond_13e
    :goto_13e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_148
    :goto_148
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;

    .line 1560
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 1561
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_148

    const-string v1, "Pending OneShotCaptureTask is posted."

    .line 1562
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_148

    .line 1566
    :cond_16b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_175
    move-exception v1

    .line 1536
    :try_start_176
    monitor-exit v0
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    throw v1
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 4

    .line 1494
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskOrBypassCameraTaskRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 1497
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq v0, v2, :cond_24

    .line 1498
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "CurrentDeviceState is not OPENED."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_23
    return v1

    :cond_24
    const/4 v0, 0x1

    return v0
.end method
