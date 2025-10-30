.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoRecordingPausing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 3

    .line 9484
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 9485
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 3

    .line 9482
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleResumeRecording([Ljava/lang/Object;)V
    .registers 2

    .line 9495
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doResumeRecording()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 9496
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    return-void
.end method

.method protected isPaused()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
