.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;
.super Ljava/lang/Object;
.source "BypassCameraRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackLock"
.end annotation


# instance fields
.field private mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 425
    monitor-enter p0

    const/4 v0, 0x0

    .line 426
    :try_start_2
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 427
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public requestLatch()Ljava/util/concurrent/CountDownLatch;
    .registers 3

    .line 414
    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_f

    const-string v0, "requestLock() Lock object already exists."

    .line 416
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_17

    .line 418
    :cond_f
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 420
    :goto_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    .line 421
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public unlock()V
    .registers 2

    const-string v0, "unlock() E"

    .line 431
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->access$000(Ljava/lang/String;)V

    .line 433
    monitor-enter p0

    .line 434
    :try_start_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_c

    .line 435
    monitor-exit p0

    return-void

    .line 437
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 439
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1b

    const-string v0, "unlock() X"

    .line 440
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->access$000(Ljava/lang/String;)V

    return-void

    :catchall_1b
    move-exception v0

    .line 439
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method
