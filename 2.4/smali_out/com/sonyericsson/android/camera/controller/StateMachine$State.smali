.class Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;
    }
.end annotation


# instance fields
.field protected mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 2

    .line 1670
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 3

    .line 1665
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private isLastStoreDataResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .registers 6

    .line 1855
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isFastCapture()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1860
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_22

    const-string p1, "Last saving request is not exist."

    .line 1861
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 1866
    :cond_22
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getRequestedId()I

    move-result p1

    .line 1867
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3e

    .line 1868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result v0

    if-ne v0, p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    return v1

    .line 1870
    :cond_3e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    if-nez v0, :cond_55

    .line 1871
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v0

    if-ne v0, p1, :cond_53

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    return v1

    .line 1875
    :cond_55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1876
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result v3

    if-le v0, v3, :cond_7a

    .line 1877
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v0

    if-ne v0, p1, :cond_78

    goto :goto_79

    :cond_78
    move v1, v2

    :goto_79
    return v1

    .line 1879
    :cond_7a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getRequestId()I

    move-result v0

    if-ne v0, p1, :cond_87

    goto :goto_88

    :cond_87
    move v1, v2

    :goto_88
    return v1
.end method


# virtual methods
.method public entry()V
    .registers 1

    return-void
.end method

.method public exit()V
    .registers 1

    return-void
.end method

.method public getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 2

    .line 1692
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object v0
.end method

.method public varargs handleBokehConditionChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleCancelTouchedPosition([Ljava/lang/Object;)V
    .registers 5

    .line 1996
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1997
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1998
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 1997
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 1999
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2000
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 1999
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    :cond_3b
    return-void
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleCaptureBurst([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleCaptureReady([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleChangeAngleStart([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleChangeCapturingMode([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleClearFocus([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleFinishTransitionOperation([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleFinishZoom([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleHighFameRateRecordingDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleInitialize([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleKeyMenu([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnAmberBlueColorChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnAutoFlashChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnBokehDisabled([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnBokehEnabled([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnBokehStrengthChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnBrightnessChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnBurstShutterDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnBurstStoreCompleted([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnCameraDeviceAvailable([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnCameraDeviceClosed([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnCameraDeviceOpened([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnCropRegionReady([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnEvfHide([Ljava/lang/Object;)V
    .registers 2

    .line 2211
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2212
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->pauseDetection()V

    :cond_11
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    .line 1736
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1738
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v3, v0, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 1739
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1740
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    .line 1739
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverNormal([Ljava/lang/Object;)V
    .registers 4

    .line 1745
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverWarning([Ljava/lang/Object;)V
    .registers 4

    .line 1720
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverWarningExtra([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .registers 3

    const-string p1, "ERROR:PRE-SCAN Event is not handled correctly. Check sequence."

    .line 1754
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1757
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnLogicalModeChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnObjectLost([Ljava/lang/Object;)V
    .registers 2

    .line 2072
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onObjectLost()V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnPredictiveCaptureGroupStoreCompleted([Ljava/lang/Object;)V
    .registers 4

    .line 2014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->onPredictiveCaptureStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method public varargs handleOnPrepareBurstDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnPreviewStarted([Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 2193
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_18

    .line 2194
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public varargs handleOnReachBatteryLevelChanged([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 2115
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->updateBatteryIndicator(I)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .registers 6

    .line 2104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 2105
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2105
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLow([Ljava/lang/Object;)V
    .registers 4

    .line 2110
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_WARNING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnRecordingStartWaitDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnRecordingStarted([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnSceneModeChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnSemiAutoEnabled([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnStorageReadyStateChanged([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .registers 7

    .line 1833
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4502(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 1835
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getSavingRequest()Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$4700(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 1837
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isPredictiveCaptureLastImage()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3b

    .line 1838
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1839
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1838
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1843
    :cond_3b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 1844
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureSucceeded()V

    .line 1847
    :cond_58
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 1848
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1849
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1850
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->isLastStoreDataResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1848
    invoke-interface {p1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_86
    return-void
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    .line 1782
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 1784
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    new-array v2, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1784
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1787
    :cond_26
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-eqz v2, :cond_aa

    .line 1788
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void

    .line 1792
    :cond_40
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 1793
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 1798
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playSound(I)V

    goto :goto_aa

    .line 1801
    :cond_68
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    .line 1803
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isCurrentStorageExternal()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 1804
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 1805
    invoke-interface {p1, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p1

    .line 1806
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p1, v1, :cond_90

    .line 1807
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_SAVE_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 1810
    :cond_90
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1812
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1810
    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void

    .line 1816
    :cond_aa
    :goto_aa
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handlePerformZoom([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handlePrepareZoom([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleRecordReady([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .registers 6

    .line 1921
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$State;Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public varargs handleRequestUpdateHighSensitivityFusionMode([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .registers 4

    .line 1702
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDisabled()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1703
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public varargs handleResumeRecording([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleSelfTimerCancel([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleSetTouchedPosition([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleSlowMotionFeedbackAnimationEnd([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStartAfAfterObjectTracked([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStartCaptureCountDown([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStartRecording([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStartTransitionOperation([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStopRecordingSlowMotion([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    .line 1901
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v2, 0x1

    .line 1902
    aget-object p1, p1, v2

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 1904
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v3, :cond_4e

    .line 1905
    new-array p1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage corruption : type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 1906
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 1907
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v0, v0, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_4e
    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs handleSwitchCamera([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public handleTouchContentProgress()V
    .registers 1

    return-void
.end method

.method public varargs handleTriggerSlowMotion([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-nez v0, :cond_b

    .line 1685
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1687
    :cond_b
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
