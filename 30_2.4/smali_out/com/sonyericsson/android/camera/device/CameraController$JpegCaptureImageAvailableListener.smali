.class Lcom/sonyericsson/android/camera/device/CameraController$JpegCaptureImageAvailableListener;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JpegCaptureImageAvailableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$JpegCaptureImageAvailableListener;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$JpegCaptureImageAvailableListener;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$JpegCaptureImageAvailableListener;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {v1, v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/media/ImageReader;)V

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onCaptureDone(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;)V

    return-void
.end method
