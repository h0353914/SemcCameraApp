.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;
.super Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigSessionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .registers 3

    .line 251
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;)V
    .registers 3

    .line 251
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method doCameraAccess()V
    .registers 7

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->clearPendingProcessingMedia()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1300(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->clearPendingProcessingCount()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1400(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mImageReader:Landroid/media/ImageReader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1700(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mImageReader:Landroid/media/ImageReader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1700(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 277
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_dd

    .line 281
    :cond_37
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_59

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSurface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 282
    :cond_59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x100

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mImageReader:Landroid/media/ImageReader;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1702(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mImageReader:Landroid/media/ImageReader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1700(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2000(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1900(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 285
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mImageReader:Landroid/media/ImageReader;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1700(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 286
    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 287
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2100(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mSessionStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 289
    :try_start_b0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    .line 290
    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1000(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 291
    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1000(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_d7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b0 .. :try_end_d7} :catch_d8

    goto :goto_dc

    :catch_d8
    move-exception v0

    .line 295
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_dc
    return-void

    .line 278
    :cond_dd
    :goto_dd
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CaptureSize invalid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .registers 6

    const/4 p1, 0x0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1100(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1100(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 259
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "Camera is not opened, retry config session"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 260
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1900(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_36} :catch_37

    return p1

    :catch_37
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 267
    :cond_3b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    sget-object v2, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v2, v1, p1

    const/4 p1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Ready:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v2, v1, p1

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->isStatusOf([Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1600(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result p1

    return p1
.end method
