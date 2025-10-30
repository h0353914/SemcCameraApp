.class Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenAndCloseCameraTask"
.end annotation


# instance fields
.field mCameraId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/lang/String;)V
    .registers 4

    .line 868
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 869
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 870
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 865
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 5

    .line 881
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;)V

    .line 915
    :try_start_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 916
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_16} :catch_17
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v0

    const-string v1, "OpenAndCloseCameraTask() : Failed by CameraAccessException"

    .line 919
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 921
    :goto_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCloseRequested()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
