.class Lcom/sonyericsson/android/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;


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

    .line 436
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyThermalNormal()V
    .registers 4

    .line 456
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_19

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public onNotifyThermalWarning(Z)V
    .registers 6

    .line 465
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_5c

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2c

    .line 471
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_ULTRA_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 473
    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 472
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    goto :goto_3b

    .line 475
    :cond_2c
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 477
    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 476
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    .line 480
    :goto_3b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 481
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 482
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v2, [Ljava/lang/Object;

    .line 483
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_5c
    return-void
.end method

.method public onNotifyThermalWarningExtra(Z)V
    .registers 4

    .line 490
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_6d

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-nez v0, :cond_37

    if-eqz p1, :cond_28

    .line 495
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 497
    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 496
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    goto :goto_37

    .line 499
    :cond_28
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 501
    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 500
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    .line 505
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 506
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 507
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result p1

    if-nez p1, :cond_6d

    .line 508
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_6d

    .line 511
    :cond_62
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public onReachCriticalTemperature(Z)V
    .registers 6

    .line 440
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_2d

    .line 444
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendThermalEvent(ZZ)V

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 446
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 449
    :cond_2d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$100(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 451
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelDelayedRunnable()V

    return-void
.end method
