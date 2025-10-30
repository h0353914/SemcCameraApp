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

    .line 8205
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    const/4 v1, 0x0

    .line 8185
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    .line 8187
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    .line 8195
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 8197
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    .line 8206
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 8207
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    .line 8208
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    .line 8213
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result p2

    if-nez p2, :cond_28

    .line 8217
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 8221
    :cond_28
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 8222
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    .line 8223
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoFlashMonitoring()V

    .line 8224
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoHdrMonitoring()V

    .line 8225
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoNightMonitoring()V

    .line 8226
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFinishBurstMonitoring()V

    .line 8229
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p2

    if-eqz p2, :cond_5b

    .line 8230
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 8233
    :cond_5b
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPendingTaskListForStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6c

    .line 8234
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPendingTaskListForStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 8238
    :cond_6c
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreview()V

    .line 8240
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mremoveChangeCameraModeTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 8243
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mremoveStartRecordingTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 8245
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->clearSavingPhotoRequest()V

    .line 8247
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    if-eqz p2, :cond_91

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_91

    .line 8248
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->doLazyAbort()V

    :cond_91
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V

    return-void
.end method

.method private doLazyAbort()V
    .registers 4

    .line 8317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    if-eqz v0, :cond_f

    .line 8318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8320
    :cond_f
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    .line 8321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .line 8310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    if-eqz v0, :cond_12

    .line 8311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 8312
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    :cond_12
    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_3e

    .line 8277
    array-length v0, p1

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    if-eq p1, v0, :cond_d

    goto :goto_3e

    .line 8283
    :cond_d
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    if-eqz p1, :cond_15

    .line 8284
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->doLazyAbort()V

    goto :goto_3e

    .line 8285
    :cond_15
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz p1, :cond_1e

    goto :goto_35

    :cond_1e
    if-eqz p1, :cond_34

    .line 8288
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 8289
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$monOneShotStoreCompleted(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_3e

    :cond_34
    return-void

    .line 8287
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .registers 5

    .line 8298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .registers 4

    .line 8254
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .registers 3

    .line 8261
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8263
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 8264
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 8266
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_33

    .line 8267
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 8268
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$monOneShotStoreCompleted(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_33

    .line 8270
    :cond_2a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    :cond_33
    :goto_33
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 7

    .line 8304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePause-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 8305
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method
