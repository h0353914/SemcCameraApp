.class Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseBypassCameraTask"
.end annotation


# static fields
.field private static final TIMEOUT_WAIT_SNAPSHOT_READY_DONE_MILLIS:J = 0x1388L


# instance fields
.field private mIsLongCaptureDuration:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .registers 4

    .line 1182
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1183
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1184
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mIsLongCaptureDuration:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .registers 5

    .line 1178
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method private releaseBypassCamera()V
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 1248
    :try_start_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1251
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3a

    const-string v0, "Time-out occurs to release BypassCamera."

    .line 1253
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_3a

    :catch_31
    const-string v0, "Time-out thread is interrupted."

    .line 1256
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1258
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->close()V

    const-string v0, "BypassCamera is closed."

    .line 1259
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1261
    :cond_4c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    .line 1262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1402(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    .line 1263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    .line 1264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2602(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->clear()V

    .line 1267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2902(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)Z

    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, -0x1

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3102(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)I

    .line 1271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onCameraClosed()V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 7

    .line 1198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderReady()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSnapshotReadyCountDownLatch()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1202
    :try_start_15
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 1204
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting to complete snapshot ready:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1205
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1204
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1206
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v2, "Snapshot ready done is completed"

    .line 1209
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_6c

    :cond_59
    const-string v2, "Timeout of waiting snapshot ready done."

    .line 1211
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_62} :catch_63

    goto :goto_6c

    :catch_63
    const-string v2, "Intercept waiting request done."

    .line 1216
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1219
    :cond_6c
    :goto_6c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isLaunchAndCapture()Z

    move-result v2

    if-eqz v2, :cond_90

    const-string v2, "Camera exit while Launch and capture. Clear snapshot requests."

    .line 1220
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->clear()V

    .line 1224
    :cond_90
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mIsLongCaptureDuration:Z

    .line 1225
    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->awaitAllSnapshot(ZZ)V

    .line 1228
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReader()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1229
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v2, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2802(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1231
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2900(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1232
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestSnapshotFree()V

    .line 1233
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2902(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)Z

    .line 1235
    :cond_c0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->releaseBypassCamera()V

    return-void
.end method

.method public postCameraDeviceAccess()V
    .registers 2

    .line 1240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->releaseCloseBypassCameraWakeLock()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 2

    .line 1189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    const/4 v0, 0x1

    return v0
.end method
