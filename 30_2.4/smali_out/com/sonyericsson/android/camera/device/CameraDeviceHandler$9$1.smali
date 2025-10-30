.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;)V
    .registers 2

    .line 5398
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5401
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    goto :goto_37

    .line 5403
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 5404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    .line 5405
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v1

    .line 5404
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    :cond_37
    :goto_37
    return-void
.end method
