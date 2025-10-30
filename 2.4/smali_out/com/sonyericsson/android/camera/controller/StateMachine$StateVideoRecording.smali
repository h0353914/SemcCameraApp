.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoRecording"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateVideoRecording"


# instance fields
.field private mAlreadyRequestStop:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 3

    .line 6016
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x0

    .line 6013
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 6017
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v0, 0x1

    .line 6018
    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12802(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    .line 6019
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 3

    .line 6010
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 4

    .line 6022
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x0

    .line 6013
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 6023
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 6024
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x1

    .line 6025
    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12802(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    .line 6026
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    return-void
.end method


# virtual methods
.method public entry()V
    .registers 2

    .line 6031
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke StateVideoRecording"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6032
    :cond_d
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->entry()V

    .line 6033
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->checkThermalWarning()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .registers 5

    .line 6066
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz p1, :cond_5

    return-void

    .line 6074
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 6075
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->canRecorderTakeSnapshot()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 6077
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6080
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 6081
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doCaptureWhileRecording()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6082
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->incrementCountSnapshotInRecording()V

    :cond_3e
    return-void
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 6182
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Point;

    .line 6185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doChangeSelectedFace(Landroid/graphics/Point;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9000(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;)V

    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .registers 2

    .line 6166
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .registers 7

    if-eqz p1, :cond_1a

    .line 6190
    array-length v0, p1

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 6191
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 6192
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6194
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .registers 6

    .line 6134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6138
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->requestVideoSmileCapture()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13800(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .registers 2

    .line 6171
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setLowPower()V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V
    .registers 3

    .line 6176
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageFull(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyCoolingUltraLow(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10000(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 6207
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 6208
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .registers 6

    .line 6158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .registers 2

    .line 6126
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    .line 6127
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x1

    .line 6198
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 6199
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6200
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v3, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6201
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v0, [Ljava/lang/Object;

    .line 6202
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .registers 5

    .line 6089
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    .line 6094
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 6095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecordingWithForceFlush(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13300(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V

    .line 6096
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .registers 2

    .line 6058
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz p1, :cond_5

    return-void

    .line 6061
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doPauseRecording()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13500(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    .line 6042
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 6044
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->switchSceneRecognition(Z)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6045
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->switchVideoFaceDetection()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6049
    :cond_1d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 6052
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6049
    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6053
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .registers 4

    .line 6143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 6147
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Rect;

    .line 6148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v0, v1, :cond_27

    .line 6150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStartObjectTracking(Landroid/graphics/Rect;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9100(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V

    :cond_27
    return-void
.end method

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    .line 6115
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 6116
    array-length v1, p1

    if-lez v1, :cond_1a

    .line 6117
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {v2, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    new-array p1, v0, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_26

    .line 6119
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v2, v0, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6121
    :goto_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    .line 6101
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 6102
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_33

    .line 6105
    new-array p1, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage corruption : state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 6106
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_2d

    goto :goto_33

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6108
    :cond_33
    :goto_33
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 6109
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v1, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6110
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method protected isPaused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
