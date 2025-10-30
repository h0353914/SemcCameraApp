.class Lcom/sonyericsson/android/camera/controller/StateMachine$11;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;->onStartRecordingFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 2

    .line 9241
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$11;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 9244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$11;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_34

    .line 9245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$11;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 9246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$11;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$11;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 9247
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->RECORDING_ERROR:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V

    .line 9246
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    return-void
.end method
