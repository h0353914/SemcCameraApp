.class Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOneTimeRequestTask"
.end annotation


# instance fields
.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field private final mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

.field private final mTag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V
    .registers 6

    .line 4731
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4732
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 4733
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 4734
    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 4735
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 6

    .line 4725
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 9

    .line 4760
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is null."

    .line 4761
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 4764
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4765
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(before creating capture request)"

    .line 4766
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 4772
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_8b

    .line 4773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 4775
    :try_start_55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    new-array v4, v3, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4776
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4775
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_6c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_55 .. :try_end_6c} :catch_72

    .line 4786
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    goto :goto_8b

    :catch_72
    const-string v0, "SetOneTimeRequestTask: finalizeOutputConfigurations failed."

    .line 4778
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 4780
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4781
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 4782
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 4780
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7400(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 4790
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 4791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 4792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4793
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4796
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v6, v3

    .line 4792
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 4797
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f9

    const-string v0, "SetOneTimeRequestTask, CreateCaptureRequest video stream"

    .line 4798
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_f9

    :cond_d7
    const-string v0, "SetOneTimeRequestTask, CreateCaptureRequest video surface is null during recording"

    .line 4801
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_f9

    .line 4804
    :cond_e1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4805
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mTag:Ljava/lang/Object;

    new-array v5, v3, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4808
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v6

    aput-object v6, v5, v2

    .line 4804
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    :cond_f9
    :goto_f9
    if-nez v1, :cond_105

    const-string p0, "SetOneTimeRequestTask : CaptureRequest cannot be created."

    .line 4811
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 4816
    :cond_105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_122

    .line 4817
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(before performing capture)"

    .line 4818
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 4824
    :cond_122
    :try_start_122
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_12f

    const-string v0, "capture()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4825
    :cond_12f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4827
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 4825
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 4828
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1b9

    .line 4829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 4830
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V
    :try_end_15a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_122 .. :try_end_15a} :catch_162
    .catch Ljava/lang/IllegalArgumentException; {:try_start_122 .. :try_end_15a} :catch_15b

    goto :goto_1b9

    :catch_15b
    move-exception p0

    const-string v0, "Failed in SetOneTimeRequestTask."

    .line 4853
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b9

    :catch_162
    move-exception v0

    .line 4834
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 4835
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_17a

    goto :goto_1b4

    .line 4837
    :cond_17a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_197

    .line 4838
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p0, "SetOneTimeRequestTask : mPreviewSurface is invalid.(after performing capture)"

    .line 4839
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1b9

    .line 4842
    :cond_197
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed in SetOneTimeRequestTask by CameraAccessException. Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4845
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b4
    :goto_1b4
    const-string p0, "Failed in SetOneTimeRequestTask"

    .line 4836
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b9
    :goto_1b9
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 4

    .line 4740
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    goto :goto_3e

    .line 4752
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in SetOneTimeRequestTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4754
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    return v1

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return p0
.end method
