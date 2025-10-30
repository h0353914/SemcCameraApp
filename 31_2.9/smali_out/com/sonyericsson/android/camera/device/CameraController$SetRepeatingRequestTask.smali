.class Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;
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
    name = "SetRepeatingRequestTask"
.end annotation


# static fields
.field private static final REPEATING_BURST_COUNT:I = 0x1


# instance fields
.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field private final mCaptureSurface:Landroid/view/Surface;

.field private mImageReader:Landroid/media/ImageReader;

.field mIsSlowMotion:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field mNeedZslBuffer:Z

.field private mOperationMode:I

.field private mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

.field private mTag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V
    .registers 8

    .line 4167
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4168
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 4169
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 4170
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mImageReader:Landroid/media/ImageReader;

    .line 4171
    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 p5, 0x0

    if-eqz p4, :cond_13

    .line 4172
    invoke-virtual {p4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p4

    goto :goto_14

    :cond_13
    move-object p4, p5

    :goto_14
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    if-nez p6, :cond_1c

    .line 4173
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p6

    :cond_1c
    iput-object p6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 4174
    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    .line 4175
    iput-object p7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    .line 4176
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_42

    .line 4177
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p2

    .line 4178
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object p2

    sget-object p6, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq p2, p6, :cond_3f

    move p2, p4

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mIsSlowMotion:Z

    .line 4180
    :cond_42
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 4181
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 9

    .line 4152
    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 12

    .line 4230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_16

    .line 4231
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "Preview surface is not created, so the request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 4235
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_37

    .line 4236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4237
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "Preview surface is not valid, so the request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_36
    return-void

    .line 4243
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v0

    if-nez v0, :cond_64

    .line 4244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    if-eqz v0, :cond_64

    .line 4245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4246
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 4245
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 4249
    :cond_64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e7

    .line 4252
    :try_start_6e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    if-eq v0, v3, :cond_8f

    .line 4253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_8f} :catch_e0

    .line 4260
    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    new-array v3, v2, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4261
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 4260
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_a6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8f .. :try_end_a6} :catch_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_a6} :catch_ad

    .line 4275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v3, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    goto :goto_e7

    :catch_ad
    move-exception v0

    .line 4271
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest: finalizeOutputConfigurations failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :catch_c7
    const-string v0, "setRepeatingRequest: finalizeOutputConfigurations failed."

    .line 4263
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 4265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4266
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 4267
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4265
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7400(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    :catch_e0
    move-exception v0

    const-string v1, "addSurface failed IllegalArgumentException : "

    .line 4256
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4278
    :cond_e7
    :goto_e7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4281
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreCaptureOnGoing()Z

    move-result v3

    if-nez v3, :cond_104

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4282
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreScanOnGoing()Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 4283
    :cond_104
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4283
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4288
    :cond_10f
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add preview operation mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4289
    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13b

    .line 4290
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mOperationMode:I

    .line 4292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4290
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4295
    :cond_13b
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez v3, :cond_1be

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_1be

    .line 4297
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_188

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    if-eqz v3, :cond_188

    .line 4298
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4299
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    new-array v6, v6, [Landroid/view/Surface;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4302
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v6, v1

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4303
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v6, v2

    .line 4298
    invoke-virtual {v3, v7, v4, v8, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 4304
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_1ad

    const-string v4, "setRepeatingBurst() add zsl request"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1ad

    .line 4306
    :cond_188
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4307
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    new-array v7, v2, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4310
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v1

    .line 4306
    invoke-virtual {v3, v4, v2, v6, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 4311
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_1ad

    const-string v4, "setRepeatingBurst() add preview request"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1ad
    :goto_1ad
    if-nez v3, :cond_1b9

    const-string v0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is null."

    .line 4315
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4320
    :cond_1b9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3fa

    .line 4322
    :cond_1be
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_347

    .line 4323
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4324
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mIsSlowMotion:Z

    if-eqz v3, :cond_24b

    .line 4325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_216

    .line 4326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4327
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4328
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    new-array v6, v6, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4329
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v2

    .line 4327
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createHighSpeedRequestList(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;I[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v0

    .line 4330
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_3fa

    const-string v3, "setRepeatingBurst() for slowmotion recording"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_3fa

    .line 4332
    :cond_216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4333
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4334
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    new-array v6, v6, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4335
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v2

    .line 4333
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createHighSpeedRequestList(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;I[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v0

    .line 4336
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_3fa

    const-string v3, "setRepeatingBurst() for slowmotion preview"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_3fa

    .line 4340
    :cond_24b
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_29b

    .line 4341
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_RECORDING_END_OF_STREAM:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4342
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    .line 4341
    invoke-virtual {v3, v4, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4343
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4344
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4345
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    new-array v6, v6, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4348
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v6, v1

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4349
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v6, v2

    .line 4344
    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 4350
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_2cb

    const-string v4, "setRepeatingBurst() add video request for recording"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_2cb

    .line 4352
    :cond_29b
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_RECORDING_END_OF_STREAM:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4353
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 4352
    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4354
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4355
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    new-array v7, v2, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4358
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v1

    .line 4354
    invoke-virtual {v3, v4, v2, v6, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 4360
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_2cb

    const-string v4, "setRepeatingBurst() do not add video request for preview"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2cb
    :goto_2cb
    if-nez v3, :cond_2d7

    const-string v0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is null."

    .line 4363
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    :cond_2d7
    if-nez v3, :cond_2e3

    const-string v0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is null."

    .line 4370
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4375
    :cond_2e3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4378
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 4379
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v3

    .line 4380
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    .line 4381
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v3, v4, :cond_3fa

    .line 4382
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_3fa

    .line 4383
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_RECORDING_END_OF_STREAM:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4384
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 4383
    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4385
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4386
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    new-array v7, v2, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4389
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v1

    .line 4385
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    if-nez v3, :cond_335

    const-string v0, "SetRepeatingRequestTask : CaptureRequestV cannot be created. mCaptureSurface is null."

    .line 4391
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4396
    :cond_335
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_342

    const-string v4, "setRepeatingBurst() add video stream request for 60fps"

    .line 4397
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4398
    :cond_342
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3fa

    :cond_347
    move v3, v1

    :goto_348
    if-ge v3, v2, :cond_3fa

    .line 4406
    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v7

    if-eqz v7, :cond_3a4

    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    if-eqz v7, :cond_3a4

    .line 4407
    new-array v7, v6, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v2

    if-nez v3, :cond_388

    .line 4409
    new-array v7, v5, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    aput-object v8, v7, v6

    .line 4411
    :cond_388
    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4412
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    .line 4411
    invoke-virtual {v8, v9, v4, v10, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    .line 4416
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_3e7

    const-string v8, "setRepeatingBurst() add request for zsl"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3e7

    .line 4418
    :cond_3a4
    new-array v7, v2, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v1

    if-nez v3, :cond_3cc

    .line 4420
    new-array v7, v6, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    aput-object v8, v7, v2

    .line 4421
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_3d9

    const-string v8, "setRepeatingBurst() add request for with callback"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3d9

    .line 4423
    :cond_3cc
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_3d9

    const-string v8, "setRepeatingBurst() add request for preview "

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4425
    :cond_3d9
    :goto_3d9
    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4426
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mTag:Ljava/lang/Object;

    .line 4425
    invoke-virtual {v8, v9, v2, v10, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    :cond_3e7
    :goto_3e7
    if-nez v7, :cond_3f3

    const-string v0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is not null."

    .line 4433
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4438
    :cond_3f3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_348

    .line 4443
    :cond_3fa
    :goto_3fa
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_41b

    .line 4444
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 4445
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_41a

    const-string v0, "Preview surface is not valid, so the request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_41a
    return-void

    .line 4450
    :cond_41b
    :try_start_41b
    sget-object v3, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 4452
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_440

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRepeatingBurst() requestNum:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4453
    :cond_440
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4455
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 4453
    invoke-virtual {v3, v0, v4, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 4456
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_471

    .line 4457
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 4458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V

    .line 4462
    :cond_471
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_48f

    .line 4463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_48c

    .line 4464
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_491

    .line 4466
    :cond_48c
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_491

    .line 4469
    :cond_48f
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 4471
    :goto_491
    new-instance v3, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4473
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4474
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 4475
    new-instance v4, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    invoke-direct {v4, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 4476
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->publish()V
    :try_end_4b9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_41b .. :try_end_4b9} :catch_4c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41b .. :try_end_4b9} :catch_4bb
    .catch Ljava/lang/IllegalStateException; {:try_start_41b .. :try_end_4b9} :catch_4bb

    goto/16 :goto_54a

    :catch_4bb
    move-exception v0

    const-string v1, "Failed in setRepeatingRequest."

    .line 4504
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54a

    :catch_4c3
    move-exception v0

    .line 4478
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v3

    if-eqz v3, :cond_545

    .line 4479
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v3

    if-eqz v3, :cond_4db

    goto :goto_545

    .line 4481
    :cond_4db
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_4f8

    .line 4482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string v0, "setRepeatingRequest : mPreviewSurface is invalid.(after performing set repeating request)"

    .line 4483
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_54a

    .line 4485
    :cond_4f8
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    if-ne v3, v5, :cond_52a

    .line 4486
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in setRepeatingRequest  by CameraAccessException. Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4487
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 4486
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4489
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 4490
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4488
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7400(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    goto :goto_54a

    .line 4493
    :cond_52a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed in setRepeatingRequest by CameraAccessException. Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4496
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_545
    :goto_545
    const-string v1, "Failed in setRepeatingRequest"

    .line 4480
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_54a
    return-void
.end method

.method public hashCode()I
    .registers 3

    .line 4187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    shl-int v0, v1, v0

    .line 4188
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_15
    add-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 4189
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_22

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_22
    add-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 4190
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 4191
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mIsSlowMotion:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    return v0
.end method

.method public setNeedZslBuffer(Z)V
    .registers 2

    .line 4196
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mNeedZslBuffer:Z

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 4

    .line 4201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestTaskSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4202
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5a

    .line 4221
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in SetRepeatingRequestTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4223
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4213
    :pswitch_40
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_4b

    return v1

    .line 4216
    :cond_4b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_56

    return v1

    :cond_56
    return v1

    :pswitch_57
    const/4 v0, 0x1

    return v0

    :pswitch_59
    return v1

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_59
        :pswitch_59
        :pswitch_57
        :pswitch_59
        :pswitch_40
    .end packed-switch
.end method
