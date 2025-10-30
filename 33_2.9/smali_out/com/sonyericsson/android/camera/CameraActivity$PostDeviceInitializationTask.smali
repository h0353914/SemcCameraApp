.class Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostDeviceInitializationTask"
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 3

    .line 1860
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1861
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 p0, 0x1

    .line 1862
    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z

    return-void
.end method

.method private retry()V
    .registers 4

    .line 1936
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1869
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1870
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_112

    .line 1878
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-nez v0, :cond_10e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1879
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_10e

    .line 1887
    :cond_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canHandleAsynchronizedTask()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 1891
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 1892
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1893
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1894
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getBooleanValue()Z

    move-result v2

    .line 1893
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    goto :goto_99

    .line 1896
    :cond_68
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1897
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1898
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 1897
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisplayFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    goto :goto_99

    .line 1900
    :cond_88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1905
    :goto_99
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1906
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1905
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    if-ne v0, v1, :cond_d0

    .line 1908
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    if-ne v0, v1, :cond_d0

    .line 1909
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1912
    :cond_d0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1913
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    .line 1912
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1915
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_f4

    .line 1917
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 1921
    :cond_f4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3402(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    .line 1922
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3400(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3500(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/Runnable;)V

    goto :goto_10d

    .line 1928
    :cond_10a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    :goto_10d
    return-void

    .line 1881
    :cond_10e
    :goto_10e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    return-void

    .line 1872
    :cond_112
    :goto_112
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;->retry()V

    return-void
.end method
