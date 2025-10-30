.class Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->onRecycled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;)V
    .registers 2

    .line 4736
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 4739
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v1, :cond_13

    .line 4740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->releaseCaptureImageReader()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)V

    :cond_13
    return-void
.end method
