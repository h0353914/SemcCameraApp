.class Lcom/sonyericsson/android/camera/device/CameraController$1;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->requestAbortCapturesWhenCreateSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOldCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$002(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
