.class final Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureRequestCallback"
.end annotation


# static fields
.field private static final CANCEL_CAPTURE_TIMEOUT_MILLS:I = 0xbb8


# instance fields
.field mCaptureTimeoutRunnable:Ljava/lang/Runnable;

.field mImageReader:Landroid/media/ImageReader;

.field mIsCaptureCompleted:Z

.field mNeedCancelCaptureAfterImageReaderTimeout:Z

.field mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

.field mSnapCaptureFrameDropped:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;)V
    .registers 5

    const/4 v0, 0x0

    .line 2136
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Z)V
    .registers 6

    .line 2141
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, 0x0

    .line 2125
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    .line 2126
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2127
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    .line 2128
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    .line 2129
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2130
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2131
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2142
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2143
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2144
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    return-void
.end method

.method private checkCaptureDone()V
    .registers 7

    .line 2237
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_39

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "CameraController"

    aput-object v4, v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCaptureDone() : mImageReader = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mIsCaptureCompleted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mSnapCaptureFrameDropped = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2241
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_8b

    .line 2243
    :try_start_3d
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 2244
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2245
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 2246
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2247
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 2249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;[B)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_65} :catch_66

    goto :goto_83

    :catch_66
    move-exception v0

    .line 2261
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "CameraController"

    aput-object v4, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCaptureDone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_83
    const/4 v0, 0x0

    .line 2264
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    .line 2265
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2266
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    goto :goto_a1

    .line 2267
    :cond_8b
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    if-eqz v0, :cond_a1

    .line 2268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$4;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2276
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    .line 2277
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    :cond_a1
    :goto_a1
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 2192
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string p2, "onCaptureCompleted()"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2200
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->hideDisplayFlashScreen()V

    const/4 p1, 0x1

    .line 2212
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2213
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    if-eqz p1, :cond_22

    .line 2214
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->checkCaptureDone()V

    :cond_22
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 2221
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string p2, "onCaptureFailed()"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 2186
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string p2, "onCaptureProgressed()"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    .line 2159
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string p2, "onCaptureStarted()"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2160
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2170
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    if-eqz p1, :cond_35

    .line 2171
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2179
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 4

    .line 2226
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "CameraController"

    const-string v1, "onImageAvailable()"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2227
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 2228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    const/4 v0, 0x0

    .line 2230
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    const/4 v0, 0x0

    .line 2231
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2232
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    .line 2233
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->checkCaptureDone()V

    return-void
.end method

.method public release()V
    .registers 3

    const/4 v0, 0x0

    .line 2148
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    .line 2149
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2150
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2151
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2152
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    .line 2153
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method
