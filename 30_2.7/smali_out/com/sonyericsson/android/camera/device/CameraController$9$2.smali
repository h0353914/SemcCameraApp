.class Lcom/sonyericsson/android/camera/device/CameraController$9$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$9;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

.field final synthetic val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

.field final synthetic val$shutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$9;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .registers 4

    .line 966
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->val$shutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 6
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

    .line 970
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraController"

    const-string v0, "### invoke E"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 971
    :cond_f
    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->PRECAPTURE_CURRENT_FRAME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_36

    .line 972
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget p2, p2, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_36

    .line 973
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->notifyShutter(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$3700(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    .line 975
    :cond_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->acceptable(Landroid/hardware/camera2/TotalCaptureResult;)Z
    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$2600(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 976
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isPrepared()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 977
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->val$shutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object p3, p3, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9$2;->val$condition:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->getData()Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$3100(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->startTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    invoke-static {p1, p2, p3, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3200(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    :cond_5d
    return-void
.end method
