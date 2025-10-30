.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePrepareForRecording"
.end annotation


# instance fields
.field private mTriggerLock3A:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 3

    .line 4905
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 p1, 0x1

    .line 4902
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mTriggerLock3A:Z

    .line 4906
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method


# virtual methods
.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 4924
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    if-eqz p1, :cond_1f

    .line 4925
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1f

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mTriggerLock3A:Z

    if-eqz p1, :cond_1f

    .line 4927
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mTriggerLock3A:Z

    .line 4928
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->lock3A(Z)V

    :cond_1f
    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .registers 6

    .line 4911
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .registers 2

    .line 4919
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doHandleRecordingError()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11800(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method
