.class Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameProviderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 3122
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 3

    .line 3122
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public registerPreviewFrameCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;Landroid/os/Handler;)V
    .registers 5

    .line 3127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;-><init>(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;Landroid/os/Handler;)V

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerRequest(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$7800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;)V

    return-void
.end method

.method public unregisterPreviewFrameCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)V
    .registers 3

    .line 3133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$7900(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 3134
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p1

    const/4 v0, 0x0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerRequest(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$7800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;)V

    :cond_16
    return-void
.end method
