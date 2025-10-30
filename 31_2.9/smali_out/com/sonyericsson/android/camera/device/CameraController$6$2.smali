.class Lcom/sonyericsson/android/camera/device/CameraController$6$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$6;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

.field final synthetic val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$6;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V
    .registers 3

    .line 789
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 5
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 794
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->acceptable(Landroid/hardware/camera2/TotalCaptureResult;)Z
    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$2600(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 795
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isPrepared()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 796
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->recycle()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V

    .line 797
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$6;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object p3, p3, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$6$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$6;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->startPreCaptureForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    invoke-static {p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_28
    return-void
.end method
