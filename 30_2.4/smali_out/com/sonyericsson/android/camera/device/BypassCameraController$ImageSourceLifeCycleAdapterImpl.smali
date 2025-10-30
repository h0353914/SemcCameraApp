.class Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSourceLifeCycleAdapterImpl"
.end annotation


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mImage:Landroid/media/Image;

.field private final mIsPreCapture:Z

.field private final mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/media/Image;Z)V
    .registers 4

    .line 577
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    .line 579
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mIsPreCapture:Z

    .line 580
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/nio/ByteBuffer;Z)V
    .registers 4

    .line 571
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 573
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mIsPreCapture:Z

    .line 574
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    return-void
.end method


# virtual methods
.method public calculateFileSize()I
    .registers 2

    .line 639
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->capacity()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 634
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->getImageData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getImageData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return-object v0

    .line 588
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_19

    .line 589
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    .line 590
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 594
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageReader maybe closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRecycled()V
    .registers 5

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->pollRemain()V

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->snapshotLockCountDown()V

    .line 622
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_6e

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->getCapturingSchemeCount()I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)I

    move-result v0

    if-nez v0, :cond_6e

    const/4 v0, 0x1

    .line 624
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHUTTER_FPS_MONITOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 625
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMAGE_FPS_MONITOR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$800(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$800(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    :cond_6e
    return-void
.end method

.method public releaseImageSource()Z
    .registers 4

    .line 601
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mIsPreCapture:Z

    if-nez v0, :cond_1c

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 603
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 604
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    goto :goto_1a

    .line 606
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->notifyCloseImage(Ljava/nio/ByteBuffer;)V

    .line 608
    :goto_1a
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$ImageSourceLifeCycleAdapterImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method
