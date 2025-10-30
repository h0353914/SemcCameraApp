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
    .registers 8

    .line 2178
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_2} :catch_32

    const/4 v1, 0x1

    const-string v2, "CameraController"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_14

    :try_start_9
    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v5, "CaptureTask E"

    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2179
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, p0, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 2180
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_36

    new-array p0, v4, [Ljava/lang/String;

    aput-object v2, p0, v3

    const-string v0, "CaptureTask X"

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p0

    .line 2182
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_36
    :goto_36
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
