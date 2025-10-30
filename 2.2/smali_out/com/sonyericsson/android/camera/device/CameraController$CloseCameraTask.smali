.class Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

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

    .line 601
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 602
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 4

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 6

    .line 615
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->releaseRecorderOnCameraClosed()V

    const/4 v0, 0x1

    .line 619
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseCameraTask() : Current device status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 620
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 619
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_17e

    goto/16 :goto_109

    .line 631
    :pswitch_46
    :try_start_46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 632
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_5b

    const-string v0, "stopRepeating()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 633
    :cond_5b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 634
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSnapshotRunning()Z

    move-result v0

    if-nez v0, :cond_79

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 637
    :cond_79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_82
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_46 .. :try_end_82} :catch_c0
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_82} :catch_9e
    .catchall {:try_start_46 .. :try_end_82} :catchall_9c

    .line 650
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 652
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2502(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 655
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2602(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    goto :goto_c7

    :catchall_9c
    move-exception v0

    goto :goto_ef

    :catch_9e
    move-exception v0

    :try_start_9f
    const-string v2, "CloseCameraTask() : Failed by IllegalStateException"

    .line 643
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 645
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 646
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v2

    if-nez v2, :cond_82

    .line 647
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_c0
    move-exception v0

    const-string v2, "CloseCameraTask() : Failed by CameraAccessException"

    .line 640
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c6
    .catchall {:try_start_9f .. :try_end_c6} :catchall_9c

    goto :goto_82

    .line 658
    :goto_c7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2700(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 659
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_e7

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 663
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1802(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 665
    :cond_e7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    goto :goto_109

    .line 650
    :goto_ef
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 651
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 652
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 654
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2502(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 655
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2602(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 656
    throw v0

    .line 675
    :goto_109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_13b

    .line 677
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 678
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 679
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    .line 680
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 681
    new-instance v2, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {v2, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    .line 682
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 686
    :cond_13b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v2, :cond_164

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 687
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v2, :cond_158

    goto :goto_164

    .line 691
    :cond_158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    goto :goto_16f

    .line 689
    :cond_164
    :goto_164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 695
    :goto_16f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraClosed()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 696
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1102(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    return-void

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method public postCameraDeviceAccess()V
    .registers 1

    .line 701
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 1

    .line 607
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
