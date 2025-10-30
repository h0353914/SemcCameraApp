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

    .line 2219
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Z)V
    .registers 6

    .line 2224
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, 0x0

    .line 2208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    .line 2209
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2210
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    .line 2211
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    .line 2212
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2213
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2214
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2225
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2226
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2227
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    return-void
.end method

.method private checkCaptureDone()V
    .registers 11

    .line 2336
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

    .line 2340
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_a4

    .line 2342
    :try_start_3d
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2344
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 2345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 2346
    sget-object v8, Lcom/sonyericsson/android/camera/util/PerfLog;->IMAGE_CAPTURED:Lcom/sonyericsson/android/camera/util/PerfLog;

    sub-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit(J)V

    .line 2348
    :cond_5a
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2349
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 2350
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2351
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 2353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;[B)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_7e} :catch_7f

    goto :goto_9c

    :catch_7f
    move-exception v0

    .line 2365
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

    :goto_9c
    const/4 v0, 0x0

    .line 2368
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    .line 2369
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2370
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    goto :goto_ba

    .line 2371
    :cond_a4
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    if-eqz v0, :cond_ba

    .line 2372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$4;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2380
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    .line 2381
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    :cond_ba
    :goto_ba
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 2291
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string p2, "onCaptureCompleted()"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2299
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->hideDisplayFlashScreen()V

    const/4 p1, 0x1

    .line 2311
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2312
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mSnapCaptureFrameDropped:Z

    if-eqz p1, :cond_22

    .line 2313
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->checkCaptureDone()V

    :cond_22
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 2320
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
    .registers 6

    .line 2277
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string p2, "onCaptureProgressed()"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 p1, 0x0

    .line 2280
    :try_start_10
    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CAPTURE_IS_BACKGROUND_TASK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    move p2, p1

    .line 2284
    :goto_1e
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_40

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const-string v0, "CameraController"

    aput-object v0, p3, p1

    const/4 p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBackground :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2285
    :cond_40
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onHalDecideBackgroundTask(Z)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    .line 2242
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string p3, "onCaptureStarted()"

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2244
    :cond_f
    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_BURST_SHOT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    const/4 p2, 0x0

    if-eqz p1, :cond_22

    .line 2247
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_22

    move p2, p3

    .line 2251
    :cond_22
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;

    invoke-direct {p3, p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2261
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    if-eqz p1, :cond_48

    .line 2262
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2270
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_48
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 4

    .line 2325
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "CameraController"

    const-string v1, "onImageAvailable()"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2326
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 2327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    const/4 v0, 0x0

    .line 2329
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    const/4 v0, 0x0

    .line 2330
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    .line 2331
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    .line 2332
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->checkCaptureDone()V

    return-void
.end method

.method public release()V
    .registers 3

    const/4 v0, 0x0

    .line 2231
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    .line 2232
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mIsCaptureCompleted:Z

    .line 2233
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 2234
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mPictureCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 2235
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mNeedCancelCaptureAfterImageReaderTimeout:Z

    .line 2236
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;->mCaptureTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method
