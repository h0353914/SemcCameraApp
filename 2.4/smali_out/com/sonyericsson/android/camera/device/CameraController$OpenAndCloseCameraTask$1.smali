.class Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;)V
    .registers 2

    .line 881
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 910
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "OpenAndCloseCameraTask : onClosed."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 893
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "OpenAndCloseCameraTask : onDisconnected."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    if-eqz p1, :cond_12

    .line 895
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 897
    :cond_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCloseFailed()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 3

    .line 902
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_d

    const-string p2, "OpenAndCloseCameraTask : onError."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    if-eqz p1, :cond_12

    .line 904
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 906
    :cond_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCloseFailed()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 884
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "OpenAndCloseCameraTask : onOpened."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    if-eqz p1, :cond_1d

    .line 886
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 887
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCloseCompleted()V

    :cond_1d
    return-void
.end method
