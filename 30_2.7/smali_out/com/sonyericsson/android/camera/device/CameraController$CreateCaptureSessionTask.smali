.class Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;
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
    name = "CreateCaptureSessionTask"
.end annotation


# instance fields
.field private mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V
    .registers 4

    .line 3294
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3295
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3296
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3297
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->CREATE_CAPTURE_SESSION_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 3289
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V

    return-void
.end method

.method private isSlowMotion()Z
    .registers 2

    .line 3622
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isSlowMotion()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$11800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 10

    .line 3347
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateCaptureSessionTask invoked isVideo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3348
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 3347
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3349
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 3350
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 3351
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_5b

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CreateCaptureSessionTask executed request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3358
    :cond_5b
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v3

    if-nez v3, :cond_85

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isNeedCapturedFrame()Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 3359
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3360
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 3361
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 3359
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->prepareStreamingImageReader(II)V
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10400(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    goto :goto_8a

    .line 3363
    :cond_85
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8300(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3367
    :goto_8a
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v4

    if-ne v3, v4, :cond_a9

    .line 3368
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 3369
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 3368
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->prepareStreamingImageReader(II)V
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10400(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    .line 3372
    :cond_a9
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_15d

    .line 3373
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 3374
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 3375
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v3, v5}, Landroid/util/Size;-><init>(II)V

    .line 3376
    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->prepareVideoImageReader(II)V
    invoke-static {v7, v3, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10500(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    .line 3378
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 3379
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 3378
    invoke-virtual {v3, v5, v7}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    .line 3381
    :try_start_ed
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isScreenRecording()Z

    move-result v0

    if-eqz v0, :cond_116

    const-string v0, "Can not create 4k video surface during screen recording"

    .line 3382
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->on4KRecordingRestricted()V

    return-void

    .line 3387
    :cond_116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupRecordingSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/view/Surface;

    move-result-object v3

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_125} :catch_13b

    .line 3397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseZslImageReader()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8600(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseMultiFramePreCaptureImageReader()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8700(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseReprocessDataFactory()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8800(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseImageWriter()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8900(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto/16 :goto_220

    .line 3389
    :catch_13b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3390
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 3391
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CREATE_PERSIST_SURFACE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 3389
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7200(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    .line 3393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7500(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "Can not create recording surface"

    .line 3394
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 3402
    :cond_15d
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3403
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 3404
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v6

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;
    invoke-static {v3, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10800(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;

    move-result-object v5

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10702(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3406
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_566

    .line 3425
    new-array v3, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown session type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1cc

    .line 3418
    :pswitch_1aa
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseMultiFramePreCaptureImageReader()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8700(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto :goto_1cc

    .line 3412
    :pswitch_1b0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseZslImageReader()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8600(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3413
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3414
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 3413
    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareMultiFramePreCaptureImageReader(II)V

    .line 3429
    :goto_1cc
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-nez v3, :cond_1e3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_1dd

    goto :goto_1e3

    .line 3433
    :cond_1dd
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11002(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/InputConfiguration;)Landroid/hardware/camera2/params/InputConfiguration;

    goto :goto_201

    .line 3430
    :cond_1e3
    :goto_1e3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v5, Landroid/hardware/camera2/params/InputConfiguration;

    .line 3431
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/16 v8, 0x23

    invoke-direct {v5, v6, v7, v8}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 3430
    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11002(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/InputConfiguration;)Landroid/hardware/camera2/params/InputConfiguration;

    .line 3436
    :goto_201
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v3

    .line 3437
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v5, v6, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    .line 3440
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isVideoHdr()Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v3

    .line 3439
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object v6

    .line 3443
    :goto_220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_23e

    .line 3446
    :try_start_228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_231
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_228 .. :try_end_231} :catch_239
    .catch Ljava/lang/IllegalStateException; {:try_start_228 .. :try_end_231} :catch_239
    .catchall {:try_start_228 .. :try_end_231} :catchall_232

    goto :goto_239

    :catchall_232
    move-exception v0

    .line 3450
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3451
    throw v0

    .line 3450
    :catch_239
    :goto_239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3453
    :cond_23e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8002(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 3455
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v5

    invoke-direct {v3, v0, v5, v4}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11202(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    .line 3456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$10100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v3

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3459
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->isSlowMotion()Z

    move-result v0

    if-nez v0, :cond_4d5

    .line 3460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3461
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v5, Landroid/view/SurfaceHolder;

    invoke-direct {v4, v6, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8102(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 3463
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3464
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_297

    const-string v3, "[Add Stream] mOutputConfiguration"

    .line 3465
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3468
    :cond_297
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_2be

    .line 3469
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3470
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_2be

    const-string v3, "[Add Stream] mStreamingImageReader"

    .line 3471
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3474
    :cond_2be
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_2e5

    .line 3475
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3476
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_2e5

    const-string v3, "[Add Stream] mVideoThumbnailImageReader"

    .line 3477
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3481
    :cond_2e5
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_30c

    .line 3482
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3483
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$10900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3482
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3484
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_30c

    const-string v3, "[Add Stream] mZslImageReader"

    .line 3485
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3489
    :cond_30c
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_333

    .line 3490
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3491
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3490
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3492
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_333

    const-string v3, "[Add Stream] mMultiFramePreCaptureImageReader"

    .line 3493
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3498
    :cond_333
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_35a

    .line 3499
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3500
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3499
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3501
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_35a

    const-string v3, "[Add Stream] mCaptureImageReader"

    .line 3502
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3506
    :cond_35a
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_381

    .line 3508
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3509
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 3508
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3510
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_381

    const-string v3, "[Add Stream] mRecordingSurface"

    .line 3511
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3515
    :cond_381
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v3

    if-nez v3, :cond_443

    .line 3517
    :try_start_38d
    new-instance v3, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3519
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 3520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3523
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3c7

    .line 3524
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_3bd

    const-string v4, "[Create Session] Create normal session with mInputConfiguration"

    .line 3525
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3528
    :cond_3bd
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    goto :goto_3d4

    .line 3530
    :cond_3c7
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_3d4

    const-string v4, "[Create Session] Create normal session without mInputConfiguration"

    .line 3531
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3536
    :cond_3d4
    :goto_3d4
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$11700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I

    move-result v4

    .line 3537
    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Create Session] set operation mode as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3539
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3540
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3542
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 3543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_414
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_38d .. :try_end_414} :catch_41c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38d .. :try_end_414} :catch_415

    goto :goto_442

    :catch_415
    move-exception v0

    const-string v1, "Failed in createConfigurations"

    .line 3554
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_442

    :catch_41c
    move-exception v0

    const-string v1, "createReprocessableCaptureSessionByConfigurations() : Failed in"

    .line 3546
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3547
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_43d

    .line 3548
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_439

    goto :goto_43d

    .line 3551
    :cond_439
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_442

    :cond_43d
    :goto_43d
    const-string v1, "Failed in createReprocessableCaptureSessionByConfigurations"

    .line 3549
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_442
    return-void

    .line 3561
    :cond_443
    :try_start_443
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$11700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I

    move-result v3

    .line 3562
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_465

    .line 3563
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Create Session] Create normal session for video with op:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3566
    :cond_465
    new-instance v4, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3568
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v6

    invoke-direct {v4, v1, v0, v5, v6}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 3569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3571
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3572
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3571
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3573
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->setOperationMode(I)V

    .line 3574
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 3575
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_4a2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_443 .. :try_end_4a2} :catch_4ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_443 .. :try_end_4a2} :catch_4a4

    goto/16 :goto_564

    :catch_4a4
    move-exception v0

    const-string v1, "Failed in createCaptureSession"

    .line 3585
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_564

    :catch_4ac
    move-exception v0

    const-string v1, "CreateCaptureSessionTask() : Failed by CameraAccessException"

    .line 3577
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3578
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_4ce

    .line 3579
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_4c9

    goto :goto_4ce

    .line 3582
    :cond_4c9
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/16 :goto_564

    :cond_4ce
    :goto_4ce
    const-string v1, "Failed in createCaptureSession"

    .line 3580
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_564

    .line 3588
    :cond_4d5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3589
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3590
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3591
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_502

    const-string v1, "[Add Stream] mPreviewSurface"

    .line 3592
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-string v1, "[Add Stream] mRecordingSurface"

    .line 3593
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3596
    :cond_502
    :try_start_502
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_50f

    const-string v1, "[Create Session] Create ConstrainedHighSpeedCaptureSession"

    .line 3597
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3599
    :cond_50f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3600
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 3599
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_528
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_502 .. :try_end_528} :catch_534
    .catch Ljava/lang/IllegalArgumentException; {:try_start_502 .. :try_end_528} :catch_529

    goto :goto_564

    :catch_529
    move-exception v0

    const-string v1, "Failed in createConstrainedHighSpeedCaptureSession"

    .line 3616
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_564

    :catch_534
    move-exception v0

    .line 3602
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 3603
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_55b

    .line 3604
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_54f

    goto :goto_55b

    .line 3607
    :cond_54f
    new-instance v1, Ljava/lang/RuntimeException;

    .line 3608
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Failed in createConstrainedHighSpeedCaptureSession by CameraAccessException. Reason:"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_55b
    :goto_55b
    const-string v1, "Failed in createConstrainedHighSpeedCaptureSession"

    .line 3605
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_564
    return-void

    nop

    :pswitch_data_566
    .packed-switch 0x1
        :pswitch_1b0
        :pswitch_1b0
        :pswitch_1b0
        :pswitch_1b0
        :pswitch_1b0
        :pswitch_1aa
        :pswitch_1aa
    .end packed-switch
.end method

.method protected postCameraDeviceAccess()V
    .registers 3

    .line 3332
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    return-void

    :pswitch_12
    return-void

    .line 3340
    :pswitch_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7500(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 5

    .line 3302
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_52

    .line 3323
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in CreateCaptureSessionTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3325
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3312
    :pswitch_30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_3b

    return v2

    .line 3315
    :cond_3b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_46

    return v2

    .line 3320
    :cond_46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return v2

    :pswitch_50
    return v1

    :pswitch_51
    return v2

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_51
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_30
    .end packed-switch
.end method
