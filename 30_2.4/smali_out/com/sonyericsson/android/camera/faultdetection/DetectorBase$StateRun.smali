.class Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;
.source "DetectorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateRun"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .registers 3

    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    const/4 p1, 0x1

    .line 303
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->notifyRunningStateChanged(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V
    .registers 3

    .line 300
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    return-void
.end method

.method private notifyRunningStateChanged(Z)V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mCallback:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;

    if-eqz v0, :cond_f

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mCallback:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;->onRunningStateChanged(ZLcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected canDetectInPreview()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected canDetectInSnapshot()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 325
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->isDetectableCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictCapturingMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictCapturingMode;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    const/4 p1, 0x0

    .line 327
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->notifyRunningStateChanged(Z)V

    :cond_15
    return-void
.end method

.method protected changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V
    .registers 5

    .line 308
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FaultDetection:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2a

    goto :goto_29

    .line 314
    :pswitch_e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v2, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictSetting;

    invoke-direct {v2, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictSetting;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    .line 315
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->notifyRunningStateChanged(Z)V

    goto :goto_29

    .line 310
    :pswitch_1c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v2, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;

    invoke-direct {v2, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    .line 311
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->notifyRunningStateChanged(Z)V

    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_e
    .end packed-switch
.end method

.method protected pause()V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;->notifyRunningStateChanged(Z)V

    return-void
.end method
