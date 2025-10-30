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
.field private static final TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS:J = 0x7530L

.field private static final TIMEOUT_WAIT_FOR_EACH_SNAPSHOT_DONE_MILLIS:J = 0x3a98L

.field private static final TIMEOUT_WAIT_SNAPSHOT_READY_DONE_MILLIS:J = 0x1388L


# instance fields
.field private final mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 3

    .line 1216
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1217
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 p1, 0x0

    .line 1218
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .registers 4

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    .line 1223
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1224
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1225
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .registers 5

    .line 1209
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private releaseBypassCamera()V
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 1300
    :try_start_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1303
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1702(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3a

    const-string v0, "Time-out occurs to release BypassCamera."

    .line 1305
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_3a

    :catch_31
    const-string v0, "Time-out thread is interrupted."

    .line 1308
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1310
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->close()V

    const-string v0, "BypassCamera is closed."

    .line 1311
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1313
    :cond_4c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    .line 1314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2002(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    .line 1315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2102(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    .line 1316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$902(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 1319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)Z

    .line 1323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, -0x1

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3702(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)I

    .line 1325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onCameraClosed()V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 8

    .line 1241
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderReady()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSnapshotReadyCountDownLatch()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    const/4 v0, 0x0

    .line 1245
    :try_start_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_62

    .line 1247
    new-array v1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting to complete snapshot ready:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1248
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1247
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1249
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v1, "Snapshot ready done is completed"

    .line 1252
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_62

    :cond_59
    const-string v1, "Timeout of waiting snapshot ready done."

    .line 1254
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1259
    :cond_62
    :goto_62
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_b4

    .line 1260
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    .line 1261
    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting to complete all snapshots:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-wide/16 v1, 0x3a98

    mul-long/2addr v3, v1

    .line 1264
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x7530

    .line 1265
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1264
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, "All snapshots done are completed"

    .line 1269
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_b4

    :cond_a1
    const-string v1, "Timeout of waiting all snapshots done."

    .line 1271
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_aa} :catch_ab

    goto :goto_b4

    :catch_ab
    const-string v1, "Intercept waiting request done."

    .line 1275
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1279
    :cond_b4
    :goto_b4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReader()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3300(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1280
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v2, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3402(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1282
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 1283
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestSnapshotFree()V

    .line 1284
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)Z

    .line 1286
    :cond_d5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->releaseBypassCamera()V

    return-void
.end method

.method public postCameraDeviceAccess()V
    .registers 2

    .line 1291
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->removeOpenCloseStatusInfo()V

    .line 1292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->releaseCloseBypassCameraWakeLock()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 3

    .line 1230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 1233
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result v0

    if-eqz v0, :cond_21

    return v1

    :cond_21
    const/4 v0, 0x1

    return v0
.end method
