.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CapturingSchemeQueue"
.end annotation


# instance fields
.field private final mCaptureRequestQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field private mRequestCountBetweenShutterDoneAndSnapshotDone:I

.field private final mSavingRequestQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 5070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5056
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v0, 0x0

    .line 5058
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mRequestCountBetweenShutterDoneAndSnapshotDone:I

    .line 5071
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    .line 5072
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    return-void
.end method

.method private createSavingPhotoRemainCountDownLatch(Z)Ljava/util/concurrent/CountDownLatch;
    .registers 6

    .line 5257
    monitor-enter p0

    .line 5258
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 5259
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 5260
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0

    return-object p1

    :cond_15
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 5264
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->getRequestCountAfterShutterDone()I

    move-result p1

    if-nez p1, :cond_28

    .line 5266
    monitor-exit p0

    return-object v0

    .line 5269
    :cond_20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->getCount()I

    move-result p1

    if-nez p1, :cond_28

    .line 5271
    monitor-exit p0

    return-object v0

    .line 5274
    :cond_28
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception p1

    .line 5275
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private dumpRequestQueueStatus()Ljava/lang/String;
    .registers 3

    .line 5184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requests ["

    .line 5185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5186
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 5187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5188
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 5189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private switchToSavingRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 4

    .line 5093
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 5094
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mRequestCountBetweenShutterDoneAndSnapshotDone:I

    if-lez v1, :cond_10

    add-int/lit8 v1, v1, -0x1

    .line 5095
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mRequestCountBetweenShutterDoneAndSnapshotDone:I

    :cond_10
    if-eqz v0, :cond_19

    .line 5098
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_19
    return-object v0
.end method


# virtual methods
.method declared-synchronized addRequestCountBetweenShutterDoneAndSnapshotDone(I)V
    .registers 3

    monitor-enter p0

    .line 5176
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mRequestCountBetweenShutterDoneAndSnapshotDone:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mRequestCountBetweenShutterDoneAndSnapshotDone:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 5177
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public awaitAllSnapshot(ZZ)V
    .registers 7

    .line 5217
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->createSavingPhotoRemainCountDownLatch(Z)Ljava/util/concurrent/CountDownLatch;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 5219
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_7b

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_34

    .line 5222
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    .line 5223
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting to complete all snapshots before closing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-wide/16 v0, 0x3a98

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x7530

    .line 5226
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_54

    .line 5229
    :cond_34
    new-array p1, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waiting all snapshots callback before stop recording:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 5230
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    .line 5229
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-wide/16 p1, 0xbb8

    .line 5234
    :goto_54
    :try_start_54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5235
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "awaitAllSnapshot() snapshots done are completed"

    .line 5237
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_7b

    :cond_68
    const-string p1, "awaitAllSnapshot: Timeout of waiting all snapshots done."

    .line 5239
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_71} :catch_72

    goto :goto_7b

    :catch_72
    const-string p1, "awaitAllSnapshot Intercept waiting request done."

    .line 5243
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 5153
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 5154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    .line 5155
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mRequestCountBetweenShutterDoneAndSnapshotDone:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 5156
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method clearPreCaptureRequest()V
    .registers 2

    .line 5159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v0, :cond_a

    .line 5160
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    const/4 v0, 0x0

    .line 5161
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    :cond_a
    return-void
.end method

.method declared-synchronized dequeueCaptureRequest(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 5

    monitor-enter p0

    .line 5084
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->switchToSavingRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5086
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageSource(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;)V

    .line 5088
    :cond_a
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 5089
    :cond_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .registers 4

    const-string v0, "mSavingRequestQueue:"

    .line 5194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 5196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mCaptureRequestQueue:"

    .line 5197
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 5199
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreCaptureRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method declared-synchronized enqueueCaptureRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    monitor-enter p0

    .line 5077
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 5079
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 5080
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getCount()I
    .registers 4

    monitor-enter p0

    .line 5115
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5116
    :cond_12
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->getCount(Z)I

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCount(Z)I
    .registers 4

    monitor-enter p0

    .line 5120
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4c

    add-int/2addr v0, v1

    if-nez p1, :cond_12

    .line 5123
    monitor-exit p0

    return v0

    .line 5126
    :cond_12
    :try_start_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v1, :cond_18

    .line 5128
    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 5135
    :cond_2f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    if-eqz v1, :cond_35

    .line 5137
    iget-boolean v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_4c

    if-eqz v1, :cond_35

    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 5144
    :cond_4a
    monitor-exit p0

    return v0

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getRequestCountAfterShutterDone()I
    .registers 3

    monitor-enter p0

    .line 5180
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mRequestCountBetweenShutterDoneAndSnapshotDone:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasRequest()Z
    .registers 5

    monitor-enter p0

    .line 5110
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5111
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    if-lez v0, :cond_1b

    move v1, v2

    :cond_1b
    monitor-exit p0

    return v1

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized peekLastSavingPhotoRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 5

    monitor-enter p0

    .line 5104
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mCaptureRequestQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 5105
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 5106
    :cond_1a
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method pollPreCaptureRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 3

    .line 5170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, 0x0

    .line 5171
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object v0
.end method

.method declared-synchronized pollRemain()V
    .registers 4

    monitor-enter p0

    .line 5148
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mSavingRequestQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 5149
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 5150
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setPreCaptureRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 5166
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mPreCaptureRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-void
.end method

.method public snapshotLockCountDown()V
    .registers 2

    .line 5208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    .line 5209
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_7
    return-void
.end method
