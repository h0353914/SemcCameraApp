.class Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSourceLifeCycleAdapterImpl"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private final mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/media/ImageReader;)V
    .registers 3

    .line 4685
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4686
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImageReader:Landroid/media/ImageReader;

    .line 4687
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    return-void
.end method


# virtual methods
.method public calculateFileSize()I
    .registers 2

    const/high16 v0, 0xf00000

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 4749
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->getImageData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getImageData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 4692
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2c

    .line 4693
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2c

    .line 4694
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    if-nez v1, :cond_12

    .line 4695
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    .line 4698
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_24

    .line 4699
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    .line 4700
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mBuffer:Ljava/nio/ByteBuffer;

    goto :goto_2c

    .line 4704
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageReader maybe closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4708
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public onRecycled()V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 4726
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->pollRemain()V

    .line 4731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->snapshotLockCountDown()V

    .line 4733
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mSavingPhotoRequestQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->getCount()I

    move-result v0

    if-nez v0, :cond_24

    .line 4735
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method public releaseImageSource()Z
    .registers 3

    .line 4713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 4714
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 4715
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImage:Landroid/media/Image;

    .line 4717
    :cond_a
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mImageReader:Landroid/media/ImageReader;

    .line 4718
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    return v0
.end method
