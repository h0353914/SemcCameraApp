.class Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;)V
    .registers 2

    .line 2829
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2832
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->createPreviewSessionAfterCameraOpened()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->access$7800(Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;)V

    return-void
.end method
