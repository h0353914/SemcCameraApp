.class Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)V
    .registers 2

    .line 5456
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5459
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->access$14600(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->dealLaunchAndCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$14700(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method
