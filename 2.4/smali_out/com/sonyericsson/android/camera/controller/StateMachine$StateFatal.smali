.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateFatal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateFatal"


# instance fields
.field private mIsSaving:Z

.field private mLazyAbort:Z

.field private mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

.field private mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V
    .registers 6

    .line 7017
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    .line 6997
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    .line 6999
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    .line 7007
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 7009
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    .line 7018
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 7019
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    .line 7020
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    .line 7025
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result p2

    if-nez p2, :cond_28

    .line 7029
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 7033
    :cond_28
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 7034
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    .line 7035
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoFlashMonitoring()V

    .line 7038
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 7039
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7042
    :cond_46
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_57

    .line 7043
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 7047
    :cond_57
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreview()V

    .line 7049
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->removeChangeCameraModeTask()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7052
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->removeStartRecordingTask()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7054
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    if-eqz p2, :cond_75

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_75

    .line 7055
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->doLazyAbort()V

    :cond_75
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 5

    .line 6994
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V

    return-void
.end method

.method private doLazyAbort()V
    .registers 5

    .line 7132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    if-eqz v0, :cond_f

    .line 7133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7135
    :cond_f
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    .line 7136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .line 7125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    if-eqz v0, :cond_12

    .line 7126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 7127
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    :cond_12
    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_54

    .line 7084
    array-length v0, p1

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    if-eq p1, v0, :cond_d

    goto :goto_54

    .line 7090
    :cond_d
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    if-eqz p1, :cond_15

    .line 7091
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->doLazyAbort()V

    goto :goto_53

    .line 7092
    :cond_15
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz p1, :cond_1e

    goto :goto_35

    :cond_1e
    if-eqz p1, :cond_34

    .line 7099
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 7100
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_53

    :cond_34
    return-void

    .line 7094
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 7095
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->stopLockTask()V

    .line 7098
    :cond_4a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    :goto_53
    return-void

    :cond_54
    :goto_54
    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .registers 5

    .line 7109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .registers 6

    .line 7061
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

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

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .registers 3

    .line 7068
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7070
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 7071
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 7073
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_33

    .line 7074
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 7075
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_33

    .line 7077
    :cond_2a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    :cond_33
    :goto_33
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 6

    .line 7115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7117
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 7118
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->stopLockTask()V

    .line 7120
    :cond_29
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method
