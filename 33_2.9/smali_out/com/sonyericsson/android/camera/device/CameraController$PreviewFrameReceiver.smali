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

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOutput:[B

.field private mQrCodeCallbackTask:Ljava/lang/Runnable;

.field private mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5133
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5134
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5135
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 2

    .line 5130
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$16300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 3

    .line 5130
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 3

    .line 5130
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static synthetic access$16600(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 3

    .line 5130
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 2

    .line 5130
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 3

    monitor-enter p0

    .line 5146
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 4

    .line 5166
    monitor-enter p0

    .line 5167
    :try_start_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_17

    .line 5168
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_17

    .line 5170
    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5171
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    .line 5173
    :cond_17
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5174
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 4

    .line 5150
    monitor-enter p0

    .line 5151
    :try_start_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_17

    .line 5152
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_17

    .line 5154
    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5155
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 5157
    :cond_17
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5158
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 4

    .line 5185
    monitor-enter p0

    .line 5186
    :try_start_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-nez p1, :cond_17

    .line 5187
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz p2, :cond_17

    .line 5189
    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 5190
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    .line 5192
    :cond_17
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5193
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method


# virtual methods
.method public declared-synchronized hasBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 3

    monitor-enter p0

    .line 5162
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 3

    monitor-enter p0

    .line 5179
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 23

    move-object/from16 v7, p0

    .line 5198
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "onImageAvailable() image is null"

    .line 5200
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 5204
    :cond_12
    monitor-enter p0

    .line 5205
    :try_start_13
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v1, :cond_24

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v1, :cond_24

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v1, :cond_24

    .line 5207
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5208
    monitor-exit p0

    return-void

    .line 5210
    :cond_24
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_a0

    .line 5211
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 5213
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_45

    .line 5214
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_a0

    .line 5215
    :cond_45
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_9b

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "CameraController"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageAvailable size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5216
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not match preview size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5218
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " skip this frame"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 5215
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5220
    :cond_9b
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5221
    monitor-exit p0

    return-void

    .line 5227
    :cond_a0
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-direct {v8, v4, v4, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5228
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    const/16 v5, 0x23

    if-ne v1, v5, :cond_1f4

    .line 5234
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_1e6

    .line 5235
    array-length v5, v1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c1

    goto/16 :goto_1e6

    .line 5241
    :cond_c1
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v10

    .line 5242
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v11

    .line 5243
    rem-int/lit8 v5, v10, 0x2

    if-nez v5, :cond_1b7

    rem-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_d3

    goto/16 :goto_1b7

    .line 5250
    :cond_d3
    iget-object v5, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    if-eqz v5, :cond_df

    iget v5, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageWidth:I

    if-ne v5, v10, :cond_df

    iget v5, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageHeight:I

    if-eq v5, v11, :cond_eb

    .line 5251
    :cond_df
    iput v10, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageWidth:I

    .line 5252
    iput v11, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageHeight:I

    mul-int v5, v10, v11

    mul-int/2addr v5, v6

    .line 5253
    div-int/2addr v5, v3

    new-array v5, v5, [B

    iput-object v5, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 5256
    :cond_eb
    aget-object v4, v1, v4

    .line 5257
    aget-object v2, v1, v2

    .line 5258
    aget-object v1, v1, v3

    .line 5261
    iget-object v9, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 5263
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    .line 5264
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    .line 5265
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    .line 5261
    invoke-static/range {v9 .. v20}, Lcom/sonyericsson/android/camera/device/ImageConverter;->convertFromYuv420_888ToNv21([BIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V

    .line 5267
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 5268
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5269
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_133

    .line 5270
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5271
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v9, v1

    goto :goto_134

    :cond_133
    move-object v9, v2

    .line 5274
    :goto_134
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v1, :cond_143

    .line 5275
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5276
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v10, v1

    goto :goto_144

    :cond_143
    move-object v10, v2

    :goto_144
    const/16 v11, 0x11

    .line 5284
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5290
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_168

    .line 5292
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->isOneShot:Z

    if-eqz v1, :cond_153

    .line 5293
    iput-object v2, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5295
    :cond_153
    new-instance v12, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;

    const/16 v5, 0x11

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v12, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 5304
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5306
    :cond_168
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_18b

    const-string v0, "CameraController"

    const-string v1, "mBlurCaptureImageRequest"

    .line 5307
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5308
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5309
    new-instance v12, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$2;

    const/16 v5, 0x11

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v9

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v12, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    .line 5317
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mBlurCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5319
    :cond_18b
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_1b5

    .line 5320
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_19e

    const-string v0, "CameraController"

    const-string v1, "mQrCodeCaptureImageRequest"

    .line 5321
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5323
    :cond_19e
    iget-object v0, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 5324
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v10

    move v5, v11

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v9, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    .line 5333
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mQrCodeCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5335
    :cond_1b5
    monitor-exit p0

    return-void

    :cond_1b7
    :goto_1b7
    new-array v1, v2, [Ljava/lang/String;

    .line 5244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YUV_420_888 image is invalid. Width("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or/are Height("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is/are invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5247
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5248
    monitor-exit p0

    return-void

    :cond_1e6
    :goto_1e6
    const-string v1, "YUV_420_888 image is invalid. Planes are invalid."

    .line 5236
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5237
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5238
    monitor-exit p0

    return-void

    .line 5280
    :cond_1f4
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 5281
    monitor-exit p0

    return-void

    :catchall_1f9
    move-exception v0

    .line 5335
    monitor-exit p0
    :try_end_1fb
    .catchall {:try_start_13 .. :try_end_1fb} :catchall_1f9

    throw v0
.end method
