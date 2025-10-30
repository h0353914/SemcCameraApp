.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;)V
    .registers 2

    .line 4870
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl$1;->this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 4874
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl$1;->this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 4875
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl$1;->this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 4876
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl$1;->this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl$1;->this$2:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 4877
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$6300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_3a

    :cond_38
    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    :goto_3a
    invoke-direct {v0, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 4880
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_44
    return-void
.end method
