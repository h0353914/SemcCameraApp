.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->handleOnRecordingStarted([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;)V
    .registers 2

    .line 4140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 4143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v0, v1, :cond_11

    return-void

    .line 4146
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->transitionToRecordingState(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11600(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mIsPrepareStopping:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->access$11700(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 4149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mIsPrepareStopping:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->access$11702(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;Z)Z

    :cond_31
    return-void
.end method
