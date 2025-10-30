.class Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopPreviewTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 3

    .line 4866
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4867
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 5

    .line 4901
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const/4 v0, 0x0

    .line 4903
    :try_start_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 4904
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "stopRepeating()"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4905
    :cond_20
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 4906
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSnapshotRunning()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 4907
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 4909
    :cond_3e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_47
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_47} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_47} :catch_63
    .catchall {:try_start_8 .. :try_end_47} :catchall_61

    .line 4914
    :cond_47
    :goto_47
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 4915
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V

    .line 4916
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 4918
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V

    .line 4919
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureImageRetriever(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    goto :goto_6a

    :catchall_61
    move-exception v1

    goto :goto_70

    :catch_63
    move-exception v1

    .line 4912
    :try_start_64
    const-string v2, "StopPreviewTask: Close session failed: "

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_61

    goto :goto_47

    .line 4922
    :goto_6a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 4914
    :goto_70
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 4915
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V

    .line 4916
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 4918
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V

    .line 4919
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCaptureImageRetriever(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    .line 4920
    throw v1
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 5

    .line 4872
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_54

    const/4 v3, 0x2

    if-eq v0, v3, :cond_54

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3a

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1f

    goto :goto_54

    .line 4893
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed due to wrong status in StopPreviewTask. status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4895
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4875
    :cond_3a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 4876
    const-string v0, "StopPreviewTask : CloseCameraTask is already requested."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4878
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :cond_53
    return v2

    .line 4889
    :cond_54
    :goto_54
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1
.end method
