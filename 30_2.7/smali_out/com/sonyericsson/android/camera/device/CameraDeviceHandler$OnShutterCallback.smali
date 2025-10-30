.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 2207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 5

    .line 2211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->peekLastSavingPhotoRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 2212
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isSuperNightMode()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBurst(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2213
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playShutterSoundIfNeed()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 2215
    :cond_1b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 2216
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isAutoFocus:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V

    :cond_31
    return-void
.end method
