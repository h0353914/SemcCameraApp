.class final Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreviewFrameReceiver"
.end annotation


# instance fields
.field private mBlurCallbackTask:Ljava/lang/Runnable;

.field private mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

.field private mCallbackTask:Ljava/lang/Runnable;

.field private mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

.field private mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

.field private mOutput:[B

.field private mQrCodeCallbackTask:Ljava/lang/Runnable;

.field private mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4982
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 4983
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 4984
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 2

    .line 4979
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$15500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 3

    .line 4979
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 3

    .line 4979
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 3

    .line 4979
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 2

    .line 4979
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 3

    monitor-enter p0

    .line 4993
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 4

    .line 5013
    monitor-enter p0

    .line 5014
    :try_start_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_19

    .line 5015
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_19

    .line 5017
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5018
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    .line 5020
    :cond_19
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5021
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 4

    .line 4997
    monitor-enter p0

    .line 4998
    :try_start_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_19

    .line 4999
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_19

    .line 5001
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5002
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 5004
    :cond_19
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5005
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 4

    .line 5032
    monitor-enter p0

    .line 5033
    :try_start_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_19

    .line 5034
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_19

    .line 5036
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5037
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    .line 5039
    :cond_19
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5040
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public declared-synchronized hasBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 3

    monitor-enter p0

    .line 5009
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 3

    monitor-enter p0

    .line 5026
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 23

    move-object/from16 v7, p0

    .line 5045
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "onImageAvailable() image is null"

    .line 5047
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 5051
    :cond_12
    monitor-enter p0

    .line 5052
    :try_start_13
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v1, :cond_24

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v1, :cond_24

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v1, :cond_24

    .line 5054
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5055
    monitor-exit p0

    return-void

    .line 5057
    :cond_24
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_99

    .line 5058
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 5060
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_47

    .line 5061
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_99

    .line 5062
    :cond_47
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_94

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "CameraController"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageAvailable size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5063
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not match preview size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5065
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " skip this frame"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 5062
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5067
    :cond_94
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5068
    monitor-exit p0

    return-void

    .line 5074
    :cond_99
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-direct {v8, v4, v4, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5075
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    const/16 v5, 0x23

    if-ne v1, v5, :cond_1e4

    .line 5081
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_1d6

    .line 5082
    array-length v5, v1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_ba

    goto/16 :goto_1d6

    .line 5088
    :cond_ba
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v10

    .line 5089
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v11

    .line 5090
    rem-int/lit8 v5, v10, 0x2

    if-nez v5, :cond_1ac

    rem-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_cc

    goto/16 :goto_1ac

    .line 5097
    :cond_cc
    iget-object v5, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    if-eqz v5, :cond_d4

    if-nez v10, :cond_d4

    if-eqz v11, :cond_dc

    :cond_d4
    mul-int v5, v10, v11

    mul-int/2addr v5, v6

    .line 5098
    div-int/2addr v5, v3

    new-array v5, v5, [B

    iput-object v5, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 5101
    :cond_dc
    aget-object v4, v1, v4

    .line 5102
    aget-object v2, v1, v2

    .line 5103
    aget-object v1, v1, v3

    .line 5106
    iget-object v9, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 5108
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    .line 5109
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    .line 5110
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    .line 5106
    invoke-static/range {v9 .. v20}, Lcom/sonyericsson/android/camera/device/ImageConverter;->convertFromYuv420_888ToNv21([BIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V

    .line 5112
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 5113
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5114
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_124

    .line 5115
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5116
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v9, v1

    goto :goto_125

    :cond_124
    move-object v9, v2

    .line 5119
    :goto_125
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v1, :cond_134

    .line 5120
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v10, v1

    goto :goto_135

    :cond_134
    move-object v10, v2

    :goto_135
    const/16 v11, 0x11

    .line 5129
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5135
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_15d

    .line 5136
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5137
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->isOneShot:Z

    if-eqz v1, :cond_148

    .line 5138
    iput-object v2, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5140
    :cond_148
    new-instance v12, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;

    const/16 v5, 0x11

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v12, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 5149
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5151
    :cond_15d
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_180

    const-string v0, "CameraController"

    const-string v1, "mBlurCaptureImageRequest"

    .line 5152
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5153
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5154
    new-instance v12, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$2;

    const/16 v5, 0x11

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v9

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v12, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    .line 5162
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5164
    :cond_180
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_1aa

    .line 5165
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_193

    const-string v0, "CameraController"

    const-string v1, "mQrCodeCaptureImageRequest"

    .line 5166
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5168
    :cond_193
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5169
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v10

    move v5, v11

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v9, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    .line 5178
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5180
    :cond_1aa
    monitor-exit p0

    return-void

    .line 5091
    :cond_1ac
    :goto_1ac
    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YUV_420_888 image is invalid. Width("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") or/are Height("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is/are invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5094
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5095
    monitor-exit p0

    return-void

    :cond_1d6
    :goto_1d6
    const-string v1, "YUV_420_888 image is invalid. Planes are invalid."

    .line 5083
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5084
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5085
    monitor-exit p0

    return-void

    .line 5125
    :cond_1e4
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5126
    monitor-exit p0

    return-void

    :catchall_1e9
    move-exception v0

    .line 5180
    monitor-exit p0
    :try_end_1eb
    .catchall {:try_start_13 .. :try_end_1eb} :catchall_1e9

    throw v0
.end method
