.class Lcom/sonyericsson/android/camera/CameraActivity$10;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 2846
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2849
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mIsPaused:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3700(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 2850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->getFastCaptureSetting()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 2851
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 2852
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4000(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 2853
    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchAndCapture()Z
    invoke-static {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4100(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v4

    .line 2850
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3802(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2854
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 2855
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3800(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2854
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 2856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_AVAILABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_57
    return-void
.end method
