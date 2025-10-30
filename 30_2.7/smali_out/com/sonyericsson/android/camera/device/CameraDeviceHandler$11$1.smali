.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;->onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;)V
    .registers 2

    .line 5432
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5436
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;->getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    goto :goto_37

    .line 5437
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 5438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    .line 5439
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;->getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v1

    .line 5438
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    :cond_37
    :goto_37
    return-void
.end method
