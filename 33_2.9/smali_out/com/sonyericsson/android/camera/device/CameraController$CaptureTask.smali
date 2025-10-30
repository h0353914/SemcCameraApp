.class final Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureTask"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .registers 4

    .line 2170
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    .line 2171
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 2172
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .registers 5

    .line 2178
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_2} :catch_2b

    const-string v1, "CameraController"

    if-eqz v0, :cond_f

    :try_start_6
    const-string v0, "CaptureTask E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2179
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 2180
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2f

    const-string p0, "CaptureTask X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p0

    .line 2182
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method protected postCameraDeviceAccess()V
    .registers 1

    .line 2193
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
