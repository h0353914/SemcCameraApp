.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;)V
    .registers 2

    .line 5454
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->mIsOpenCloseCompleted:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onCameraAvailableTimeout(Z)V

    :cond_19
    return-void
.end method
