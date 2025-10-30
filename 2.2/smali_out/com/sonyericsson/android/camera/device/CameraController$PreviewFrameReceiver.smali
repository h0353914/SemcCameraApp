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
.field private mCallbackTask:Ljava/lang/Runnable;

.field private mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

.field private mOutput:[B


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1930
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 2

    .line 1927
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;)V
    .registers 2

    .line 1927
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 2

    .line 1927
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    .registers 3

    monitor-enter p0

    .line 1936
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

.method private registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;)V
    .registers 4

    .line 1940
    monitor-enter p0

    if-nez p1, :cond_1a

    .line 1941
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-eqz v0, :cond_1a

    .line 1943
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1944
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_1e

    .line 1946
    :cond_1a
    :goto_1a
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 1947
    monitor-exit p0

    return-void

    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_18

    throw p1
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 22

    move-object/from16 v7, p0

    .line 1952
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, "onImageAvailable() image is null"

    .line 1955
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1959
    :cond_12
    monitor-enter p0

    .line 1961
    :try_start_13
    iget-object v2, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    if-nez v2, :cond_1c

    .line 1962
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1963
    monitor-exit p0

    return-void

    .line 1966
    :cond_1c
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v6, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1967
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_f4

    .line 1972
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 1973
    array-length v3, v2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3e

    goto/16 :goto_e6

    .line 1979
    :cond_3e
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v9

    .line 1980
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v10

    .line 1981
    rem-int/lit8 v3, v9, 0x2

    const/4 v8, 0x1

    if-nez v3, :cond_bc

    rem-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_50

    goto :goto_bc

    .line 1988
    :cond_50
    iget-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    const/4 v11, 0x2

    if-eqz v3, :cond_59

    if-nez v9, :cond_59

    if-eqz v10, :cond_61

    :cond_59
    mul-int v3, v9, v10

    mul-int/2addr v3, v5

    .line 1989
    div-int/2addr v3, v11

    new-array v3, v3, [B

    iput-object v3, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 1992
    :cond_61
    aget-object v3, v2, v4

    .line 1993
    aget-object v4, v2, v8

    .line 1994
    aget-object v2, v2, v11

    .line 1997
    iget-object v8, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 1999
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    .line 2000
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    .line 2001
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v18

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    .line 1997
    invoke-static/range {v8 .. v19}, Lcom/sonyericsson/android/camera/device/ImageConverter;->convertFromYuv420_888ToNv21([BIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V

    .line 2003
    iget-object v2, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2004
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/16 v5, 0x11

    .line 2012
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 2014
    iget-object v8, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 2018
    iget-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->isOneShot:Z

    if-eqz v1, :cond_a9

    const/4 v1, 0x0

    .line 2019
    iput-object v1, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    .line 2022
    :cond_a9
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;

    move-object v1, v9

    move-object v2, v7

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    iput-object v9, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 2031
    iget-object v1, v8, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    iget-object v2, v7, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2032
    monitor-exit p0

    return-void

    .line 1982
    :cond_bc
    :goto_bc
    new-array v2, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YUV_420_888 image is invalid. Width("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") or/are Height("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") is/are invalid."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 1985
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1986
    monitor-exit p0

    return-void

    :cond_e6
    :goto_e6
    const-string v2, "YUV_420_888 image is invalid. Planes are invalid."

    .line 1974
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1976
    monitor-exit p0

    return-void

    .line 2008
    :cond_f4
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 2009
    monitor-exit p0

    return-void

    :catchall_f9
    move-exception v0

    move-object v1, v0

    .line 2032
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_13 .. :try_end_fc} :catchall_f9

    throw v1
.end method
