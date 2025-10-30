.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;
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

.field final synthetic val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .registers 3

    .line 5413
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 5416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 5417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_3d

    .line 5419
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 5420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_3d
    :goto_3d
    return-void
.end method
