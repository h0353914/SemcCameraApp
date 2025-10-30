.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

.field final synthetic val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .registers 3

    .line 5913
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 5916
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 5917
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_39

    .line 5918
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 5919
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_39
    :goto_39
    return-void
.end method
