.class Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseCameraTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 3

    .line 2934
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2935
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 4

    .line 2933
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 6

    .line 2948
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "CloseCameraTask() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2949
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 2950
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->releaseRecorderOnCameraClosed()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 2952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseCameraTask() : Current device status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2953
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2952
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2955
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_5d

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5d

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5d

    const/4 v4, 0x4

    if-eq v1, v4, :cond_5d

    goto/16 :goto_156

    .line 2964
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 2965
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_72

    const-string v1, "stopRepeating()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2966
    :cond_72
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 2967
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSnapshotRunning()Z

    move-result v1

    if-nez v1, :cond_90

    .line 2968
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 2970
    :cond_90
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_99
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5d .. :try_end_99} :catch_e1
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_99} :catch_be
    .catchall {:try_start_5d .. :try_end_99} :catchall_bb

    .line 2983
    :cond_99
    :goto_99
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 2984
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 2985
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2987
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3602(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 2988
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 2989
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 2990
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->releaseEncoder()V

    goto :goto_e8

    :catchall_bb
    move-exception v0

    goto/16 :goto_1e3

    :catch_be
    move-exception v1

    :try_start_bf
    const-string v4, "CloseCameraTask() : Failed by IllegalStateException"

    .line 2976
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2978
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 2979
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v4

    if-eqz v4, :cond_db

    goto :goto_99

    .line 2980
    :cond_db
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_e1
    move-exception v1

    const-string v4, "CloseCameraTask() : Failed by CameraAccessException"

    .line 2973
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e7
    .catchall {:try_start_bf .. :try_end_e7} :catchall_bb

    goto :goto_99

    .line 2993
    :goto_e8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8600(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2994
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8700(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2995
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseCaptureImageReader()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8800(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2996
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseZslImageReader()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8900(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2997
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseMultiFramePreCaptureImageReader()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9000(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2998
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseReprocessDataFactory()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9100(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 2999
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseImageWriter()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9200(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3000
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->recycleData()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$9300(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3002
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_14f

    .line 3003
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 3004
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2002(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 3005
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_14a

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloseCameraTask() : close camera : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mDeviceId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7100(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3006
    :cond_14a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mDeviceId:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7102(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/lang/String;)Ljava/lang/String;

    .line 3008
    :cond_14f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 3018
    :goto_156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18c

    .line 3020
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3021
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 3022
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    .line 3023
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3024
    new-instance v1, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    .line 3025
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 3026
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3029
    :cond_18c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_1b5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3030
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_1a9

    goto :goto_1b5

    .line 3034
    :cond_1a9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    goto :goto_1c0

    .line 3032
    :cond_1b5
    :goto_1b5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 3038
    :goto_1c0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraClosed()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->access$9400(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 3039
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6902(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    .line 3040
    invoke-static {}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getInstance()Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->unBindService()V

    .line 3041
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1e2

    const-string p0, "CloseCameraTask() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e2
    return-void

    .line 2983
    :goto_1e3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 2984
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 2985
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2987
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3602(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 2988
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 2989
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 2990
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->releaseEncoder()V

    .line 2991
    throw v0
.end method

.method public postCameraDeviceAccess()V
    .registers 1

    .line 3046
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 1

    .line 2940
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenCameraTaskPerformed()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method
