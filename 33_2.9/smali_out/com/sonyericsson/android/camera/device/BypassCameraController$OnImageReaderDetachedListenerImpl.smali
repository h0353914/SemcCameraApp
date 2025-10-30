.class Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageReaderDetachedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 2

    .line 641
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .registers 3

    .line 641
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onDetached(Landroid/media/ImageReader;)V
    .registers 7

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    monitor-enter v0

    .line 645
    :try_start_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/media/ImageReader;

    move-result-object v1

    if-eq v1, p1, :cond_1a

    const-string p0, "This callback is not for current ImageReader."

    .line 646
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 647
    monitor-exit v0

    return-void

    .line 650
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 652
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_36

    new-array p1, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$800(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 656
    :cond_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$900(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 657
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$900(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 660
    :cond_47
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz p1, :cond_ad

    .line 661
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result p1

    if-nez p1, :cond_ad

    new-array p1, v2, [Ljava/lang/String;

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHUTTER_FPS_MONITOR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/String;

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMAGE_FPS_MONITOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    .line 665
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    .line 668
    :cond_ad
    monitor-exit v0

    return-void

    :catchall_af
    move-exception p0

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_7 .. :try_end_b1} :catchall_af

    throw p0
.end method
