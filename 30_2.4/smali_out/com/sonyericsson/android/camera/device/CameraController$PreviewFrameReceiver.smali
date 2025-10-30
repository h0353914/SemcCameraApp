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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;
    }
.end annotation


# instance fields
.field private mCallbackTask:Ljava/lang/Runnable;

.field private mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOutput:[B


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2797
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 2

    .line 2794
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$7800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;)V
    .registers 2

    .line 2794
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerRequest(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)Z
    .registers 2

    .line 2794
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized hasCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)Z
    .registers 3

    monitor-enter p0

    .line 2805
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;->callback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;
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

.method private registerRequest(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;)V
    .registers 4

    .line 2809
    monitor-enter p0

    if-nez p1, :cond_17

    .line 2810
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    if-eqz v0, :cond_17

    .line 2812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2813
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 2815
    :cond_17
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    .line 2816
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 4

    .line 2822
    monitor-enter p0

    .line 2823
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p1, "onImageAvailable() image is null"

    .line 2825
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 2826
    monitor-exit p0

    return-void

    .line 2828
    :cond_12
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    if-eqz v1, :cond_63

    .line 2829
    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p1

    const/16 v1, 0x23

    if-eq p1, v1, :cond_1f

    goto :goto_63

    .line 2834
    :cond_1f
    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageWidth:I

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_2f

    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageHeight:I

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v1

    if-eq p1, v1, :cond_48

    .line 2835
    :cond_2f
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageWidth:I

    .line 2836
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageHeight:I

    .line 2837
    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageWidth:I

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mImageHeight:I

    mul-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    .line 2840
    :cond_48
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mOutput:[B

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->acquireYuvByteBuffer(Landroid/media/Image;[B)Landroid/util/Pair;

    move-result-object p1

    .line 2841
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 2843
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCaptureImageRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    .line 2845
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;Landroid/util/Pair;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    .line 2855
    iget-object p1, v0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->mCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2856
    monitor-exit p0

    return-void

    .line 2830
    :cond_63
    :goto_63
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 2831
    monitor-exit p0

    return-void

    :catchall_68
    move-exception p1

    .line 2856
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_68

    throw p1
.end method
