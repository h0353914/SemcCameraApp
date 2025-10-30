.class Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateCaptureSessionTask"
.end annotation


# instance fields
.field private mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V
    .registers 4

    .line 3428
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3429
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3430
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3431
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->CREATE_CAPTURE_SESSION_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 3423
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V

    return-void
.end method

.method private isSlowMotion()Z
    .registers 1

    .line 3773
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isSlowMotion()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$12000(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 13

    const-string v0, "Failed in createCaptureSession"

    const-string v1, "Failed in createConstrainedHighSpeedCaptureSession"

    .line 3481
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3683
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v2, :cond_32

    new-array v2, v4, [Ljava/lang/String;

    .line 3481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateCaptureSessionTask invoked isVideo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3482
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 3481
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3483
    :cond_32
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v2

    .line 3484
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 3485
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_67

    new-array v6, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CreateCaptureSessionTask executed request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3492
    :cond_67
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v6

    if-nez v6, :cond_91

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isNeedCapturedFrame()Z
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 3493
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3494
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 3495
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 3493
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->prepareStreamingImageReader(II)V
    invoke-static {v6, v7, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10600(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    goto :goto_96

    .line 3497
    :cond_91
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8600(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3501
    :goto_96
    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v7

    if-ne v6, v7, :cond_b5

    .line 3502
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 3503
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 3502
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->prepareStreamingImageReader(II)V
    invoke-static {v6, v7, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10600(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    .line 3506
    :cond_b5
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_171

    .line 3507
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 3508
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 3509
    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v6, v8}, Landroid/util/Size;-><init>(II)V

    .line 3510
    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->prepareVideoImageReader(II)V
    invoke-static {v10, v6, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10700(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    .line 3512
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 3513
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 3512
    invoke-virtual {v6, v8, v10}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    .line 3515
    :try_start_f9
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v6

    if-nez v6, :cond_10d

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isFhd60Fps()Z

    move-result v6

    if-eqz v6, :cond_12c

    :cond_10d
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3516
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isScreenRecording()Z

    move-result v6

    if-eqz v6, :cond_12c

    const-string v0, "Can not create 4k / FHD 60fps video surface during screen recording"

    .line 3517
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onRecordingRestricted()V

    return-void

    .line 3522
    :cond_12c
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10800(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupRecordingSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/view/Surface;

    move-result-object v8

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v6, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_139} :catch_14f

    .line 3532
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseZslImageReader()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8900(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3533
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseMultiFramePreCaptureImageReader()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9000(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3534
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseReprocessDataFactory()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9100(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3535
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseImageWriter()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9200(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto/16 :goto_238

    .line 3524
    :catch_14f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3525
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 3526
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CREATE_PERSIST_SURFACE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 3524
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7400(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    .line 3528
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const-string p0, "Can not create recording surface"

    .line 3529
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 3537
    :cond_171
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8700(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3538
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 3539
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v9

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;
    invoke-static {v6, v8, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11000(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;

    move-result-object v8

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v6, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10902(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3541
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_5c4

    new-array v6, v4, [Ljava/lang/String;

    .line 3560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown session type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1e2

    .line 3553
    :pswitch_1c0
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseMultiFramePreCaptureImageReader()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9000(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto :goto_1e2

    .line 3547
    :pswitch_1c6
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseZslImageReader()V
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8900(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3548
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3549
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 3548
    invoke-virtual {v6, v8, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareMultiFramePreCaptureImageReader(II)V

    .line 3564
    :goto_1e2
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    if-nez v6, :cond_1f9

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    if-eqz v6, :cond_1f3

    goto :goto_1f9

    .line 3568
    :cond_1f3
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/InputConfiguration;)Landroid/hardware/camera2/params/InputConfiguration;

    goto :goto_219

    .line 3565
    :cond_1f9
    :goto_1f9
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v8, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3566
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/16 v11, 0x23

    invoke-direct {v8, v9, v10, v11}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 3565
    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v6, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/InputConfiguration;)Landroid/hardware/camera2/params/InputConfiguration;

    .line 3571
    :goto_219
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v6

    .line 3572
    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v8, v9, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    .line 3575
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isVideoHdr()Z
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$11300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v8

    .line 3574
    invoke-static {v6, v8}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object v9

    .line 3578
    :goto_238
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    if-eqz v6, :cond_256

    .line 3581
    :try_start_240
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_249
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_240 .. :try_end_249} :catch_251
    .catch Ljava/lang/IllegalStateException; {:try_start_240 .. :try_end_249} :catch_251
    .catchall {:try_start_240 .. :try_end_249} :catchall_24a

    goto :goto_251

    :catchall_24a
    move-exception v0

    .line 3585
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {p0, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3586
    throw v0

    .line 3585
    :catch_251
    :goto_251
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3588
    :cond_256
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 3590
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v11

    invoke-direct {v8, v10, v11, v7}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v6, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11402(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    .line 3591
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v7

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->access$11600(Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3592
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3594
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->isSlowMotion()Z

    move-result v6

    const-string v7, "[Add Stream] mRecordingSurface"

    if-nez v6, :cond_53a

    .line 3595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3596
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v8, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v10, Landroid/view/SurfaceHolder;

    invoke-direct {v8, v9, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v6, v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 3598
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3599
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_2b3

    const-string v6, "[Add Stream] mOutputConfiguration"

    .line 3600
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3603
    :cond_2b3
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    if-eqz v6, :cond_2da

    .line 3604
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3605
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_2da

    const-string v6, "[Add Stream] mStreamingImageReader"

    .line 3606
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3609
    :cond_2da
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    if-eqz v6, :cond_301

    .line 3610
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3611
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_301

    const-string v6, "[Add Stream] mVideoThumbnailImageReader"

    .line 3612
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3616
    :cond_301
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    if-eqz v6, :cond_328

    .line 3617
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3618
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3617
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3619
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_328

    const-string v6, "[Add Stream] mZslImageReader"

    .line 3620
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3624
    :cond_328
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    if-eqz v6, :cond_34f

    .line 3625
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3626
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3625
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3627
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_34f

    const-string v6, "[Add Stream] mMultiFramePreCaptureImageReader"

    .line 3628
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3633
    :cond_34f
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v6

    if-eqz v6, :cond_376

    .line 3634
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3635
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3634
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3636
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_376

    const-string v6, "[Add Stream] mCaptureImageReader"

    .line 3637
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3641
    :cond_376
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_39b

    .line 3643
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3644
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3643
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3645
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_39b

    .line 3646
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3650
    :cond_39b
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v6

    if-nez v6, :cond_497

    .line 3652
    :try_start_3a7
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3654
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11800(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v6

    invoke-direct {v0, v3, v1, v2, v6}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 3655
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 3658
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v2

    if-eqz v2, :cond_3e1

    .line 3659
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_3d7

    const-string v2, "[Create Session] Create normal session with mInputConfiguration"

    .line 3660
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3663
    :cond_3d7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    goto :goto_3ee

    .line 3665
    :cond_3e1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_3ee

    const-string v2, "[Create Session] Create normal session without mInputConfiguration"

    .line 3666
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3671
    :cond_3ee
    :goto_3ee
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$11900(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I

    move-result v2

    new-array v4, v4, [Ljava/lang/String;

    .line 3672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Create Session] set operation mode as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "set session mode as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3674
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 3672
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3675
    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3676
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v4

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne v4, v6, :cond_441

    .line 3677
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    .line 3678
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3677
    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3679
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_44f

    .line 3682
    :cond_441
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3684
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3685
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3684
    invoke-virtual {v1, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3687
    :goto_44f
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3689
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 3690
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_468
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3a7 .. :try_end_468} :catch_470
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a7 .. :try_end_468} :catch_469

    goto :goto_496

    :catch_469
    move-exception p0

    const-string v0, "Failed in createConfigurations"

    .line 3701
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_496

    :catch_470
    move-exception v0

    const-string v1, "createReprocessableCaptureSessionByConfigurations() : Failed in"

    .line 3693
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3694
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_491

    .line 3695
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_48d

    goto :goto_491

    .line 3698
    :cond_48d
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_496

    :cond_491
    :goto_491
    const-string p0, "Failed in createReprocessableCaptureSessionByConfigurations"

    .line 3696
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_496
    return-void

    .line 3708
    :cond_497
    :try_start_497
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$11900(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I

    move-result v5

    .line 3709
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_4bb

    new-array v6, v4, [Ljava/lang/String;

    .line 3710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Create Session] Create normal session for video with op:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3713
    :cond_4bb
    new-instance v6, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3715
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11800(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v8

    invoke-direct {v6, v3, v1, v7, v8}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 3716
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 3718
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3719
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3718
    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3720
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isFhd60Fps()Z

    move-result v3

    if-nez v3, :cond_4f2

    .line 3721
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3722
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFpsRange()Landroid/util/Range;

    move-result-object v2

    .line 3721
    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3724
    :cond_4f2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3725
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 3726
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_50b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_497 .. :try_end_50b} :catch_513
    .catch Ljava/lang/IllegalArgumentException; {:try_start_497 .. :try_end_50b} :catch_50d

    goto/16 :goto_5c3

    :catch_50d
    move-exception p0

    .line 3736
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c3

    :catch_513
    move-exception v1

    const-string v2, "CreateCaptureSessionTask() : Failed by CameraAccessException"

    .line 3728
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3729
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v2

    if-eqz v2, :cond_535

    .line 3730
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_530

    goto :goto_535

    .line 3733
    :cond_530
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/16 :goto_5c3

    .line 3731
    :cond_535
    :goto_535
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c3

    .line 3739
    :cond_53a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3740
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3741
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3742
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_565

    const-string v2, "[Add Stream] mPreviewSurface"

    .line 3743
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3744
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3747
    :cond_565
    :try_start_565
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_572

    const-string v2, "[Create Session] Create ConstrainedHighSpeedCaptureSession"

    .line 3748
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3750
    :cond_572
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3751
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 3750
    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_58b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_565 .. :try_end_58b} :catch_595
    .catch Ljava/lang/IllegalArgumentException; {:try_start_565 .. :try_end_58b} :catch_58c
    .catch Ljava/lang/NullPointerException; {:try_start_565 .. :try_end_58b} :catch_58c

    goto :goto_5c3

    :catch_58c
    move-exception p0

    .line 3767
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c3

    :catch_595
    move-exception v0

    .line 3753
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 3754
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v2

    if-eqz v2, :cond_5bc

    .line 3755
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_5b0

    goto :goto_5bc

    .line 3758
    :cond_5b0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 3759
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "Failed in createConstrainedHighSpeedCaptureSession by CameraAccessException. Reason:"

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 3756
    :cond_5bc
    :goto_5bc
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5c3
    return-void

    :pswitch_data_5c4
    .packed-switch 0x1
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c0
        :pswitch_1c0
    .end packed-switch
.end method

.method protected postCameraDeviceAccess()V
    .registers 3

    .line 3466
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    return-void

    .line 3474
    :cond_18
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 5

    .line 3436
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5d

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3e

    .line 3446
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_29

    return v2

    .line 3449
    :cond_29
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_34

    return v2

    .line 3454
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return v2

    .line 3457
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in CreateCaptureSessionTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3459
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    return v1

    :cond_5e
    return v2
.end method
