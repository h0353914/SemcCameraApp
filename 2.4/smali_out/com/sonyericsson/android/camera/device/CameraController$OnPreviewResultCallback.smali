.class Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPreviewResultCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 3861
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 3

    .line 3861
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusFailureDetected(I)V
    .registers 3

    .line 3864
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onAutoFocusFailureDetected(I)V

    return-void
.end method

.method public onIlluminanceReceived(F)V
    .registers 3

    .line 3869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onIlluminanceReceived(F)V

    return-void
.end method
