.class final Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureSessionCallback"
.end annotation


# static fields
.field private static final IGNORE_CAPTURE_RESULT_THRESHOLD:I = 0x5

.field private static final IGNORE_CAPTURE_RESULT_WHEN_OPEN_CAMERA:I = 0x12

.field private static final PREVIEW_STEADY_FRAME_NUM:I = 0xa


# instance fields
.field private mIsPreviewStartNotificationRequired:Z

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 3

    .line 5356
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 5357
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 p1, 0x0

    .line 5358
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 4

    .line 5347
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .registers 4

    .line 5362
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 5363
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 5364
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 5347
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method static synthetic access$14600(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 1

    .line 5347
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method private isCaptureResultValid(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 5532
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 5533
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 5534
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x1

    :cond_1e
    :goto_1e
    return p0
.end method

.method private shouldUseCamera2(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private updatedDebugInfoInViewFinder(Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 5

    .line 5549
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15300(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isShowDebugInfoOnPreview(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5550
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5552
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getSS(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15400(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5553
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getISO(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15500(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5554
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getAperture(Landroid/hardware/camera2/TotalCaptureResult;)F
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15600(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5555
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getDeltaEV(Landroid/hardware/camera2/TotalCaptureResult;)F
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15700(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5556
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getEV(Landroid/hardware/camera2/TotalCaptureResult;)F
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15800(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5557
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getEnvironmentLuxIndex(Landroid/hardware/camera2/TotalCaptureResult;)I
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15900(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5558
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getCaptureModeValue(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$16000(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SS:%s\nISO:%s\nF:%.1f\nDeltaEV:%.1f\nEV:%.1f\nLuxIndex:%d\nCaptureMode:%s"

    .line 5550
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5559
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->updatedDebugInfoInViewFinder(Ljava/lang/String;)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 8

    .line 5384
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->isCaptureResultValid(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 5385
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_13

    const-string p0, "Current capture frame invalid, abandon capture result."

    .line 5386
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_13
    return-void

    .line 5401
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 5402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->input(Ljava/lang/Object;)V

    .line 5404
    :cond_25
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    .line 5405
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    .line 5406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14000(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 5407
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 5410
    :cond_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq v0, v1, :cond_50

    .line 5411
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4f

    const-string p0, "CurrentDeviceState is not READY."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4f
    return-void

    .line 5415
    :cond_50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12200(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7e

    .line 5416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12200(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-nez v0, :cond_6a

    .line 5417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onFirstPreviewFrameReceived()V

    .line 5419
    :cond_6a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # operator++ for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12208(Lcom/sonyericsson/android/camera/device/CameraController;)I

    .line 5420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12200(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onPreviewFrameReceived(I)V

    .line 5422
    :cond_7e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount3:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6700(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x12

    if-ge v0, v3, :cond_9b

    .line 5423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # operator++ for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount3:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6708(Lcom/sonyericsson/android/camera/device/CameraController;)I

    .line 5424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount3:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6700(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-ne v0, v3, :cond_9b

    .line 5425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAfterOpenAvailable:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6802(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z

    .line 5428
    :cond_9b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12200(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-ne v0, v1, :cond_a8

    .line 5429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAvailable:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12402(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z

    .line 5431
    :cond_a8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12300(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_c3

    .line 5432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12300(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-ne v0, v1, :cond_c3

    .line 5433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->onPreviewSteady()V

    .line 5437
    :cond_c3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # operator++ for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12308(Lcom/sonyericsson/android/camera/device/CameraController;)I

    .line 5438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # operator++ for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount4:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4308(Lcom/sonyericsson/android/camera/device/CameraController;)I

    if-eqz p3, :cond_131

    .line 5441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->add(Landroid/hardware/camera2/CaptureResult;)V

    .line 5450
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->updatedDebugInfoInViewFinder(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5451
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getIso(Landroid/hardware/camera2/TotalCaptureResult;)I
    invoke-static {v1, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14200(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->setIso(I)V

    .line 5452
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getExpTime(Landroid/hardware/camera2/TotalCaptureResult;)J
    invoke-static {v1, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14300(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->setEv(J)V

    .line 5454
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->updateLightCondition(Landroid/hardware/camera2/TotalCaptureResult;)V
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14400(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5455
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->updateBurstAvailableState(Landroid/hardware/camera2/TotalCaptureResult;)V
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14500(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5459
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)V

    const-wide/16 v2, 0x8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->updateAwbColorValue(Landroid/hardware/camera2/TotalCaptureResult;)V
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14800(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->updateAeState(Landroid/hardware/camera2/TotalCaptureResult;)V
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14900(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5468
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->updateAfState(Landroid/hardware/camera2/TotalCaptureResult;)V
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15000(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5470
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15102(Lcom/sonyericsson/android/camera/device/CameraController;[Landroid/hardware/camera2/params/Face;)[Landroid/hardware/camera2/params/Face;

    .line 5473
    :cond_131
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_146

    .line 5474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    if-eqz v0, :cond_146

    .line 5475
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->dumpLatest()V

    .line 5481
    :cond_146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v0

    if-eqz v0, :cond_157

    .line 5482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->setCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 5485
    :cond_157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5486
    :try_start_15e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v1

    if-eqz v1, :cond_187

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5487
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_187

    .line 5488
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5490
    :cond_187
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_191
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;

    .line 5491
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V

    goto :goto_191

    .line 5494
    :cond_1a7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$800(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/StateCheckerBase;

    .line 5495
    invoke-virtual {v2, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/StateCheckerBase;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_1b1

    .line 5497
    :cond_1c1
    monitor-exit v0
    :try_end_1c2
    .catchall {:try_start_15e .. :try_end_1c2} :catchall_1f5

    .line 5501
    :try_start_1c2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5503
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15200(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result p2

    if-eq p2, p1, :cond_1f4

    .line 5504
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$15202(Lcom/sonyericsson/android/camera/device/CameraController;I)I

    .line 5505
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onLogicalCameraModeChanged()V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1ea} :catch_1eb

    goto :goto_1f4

    :catch_1eb
    const-string p0, "com.sonymobile.logicalMultiCamera.mode is not implements"

    .line 5508
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1f4
    :goto_1f4
    return-void

    :catchall_1f5
    move-exception p0

    .line 5497
    :try_start_1f6
    monitor-exit v0
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f5

    throw p0
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 7

    .line 5543
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_3e

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " captureSession:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5544
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " reason:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5545
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 5543
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 3

    .line 5369
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onImageAvailable zsl image"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5370
    :cond_d
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 5371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5372
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 5373
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->input(Ljava/lang/Object;)V

    goto :goto_34

    :cond_2f
    if-eqz p1, :cond_34

    .line 5376
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_34
    :goto_34
    return-void
.end method
