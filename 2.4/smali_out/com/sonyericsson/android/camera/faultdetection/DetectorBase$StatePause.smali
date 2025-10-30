.class Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;
.source "DetectorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePause"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .registers 3

    .line 354
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V
    .registers 3

    .line 354
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    return-void
.end method


# virtual methods
.method protected changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 373
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;->isDetectableCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 374
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseRestrictCapturingMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseRestrictCapturingMode;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    :cond_11
    return-void
.end method

.method protected changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V
    .registers 4

    .line 358
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FaultDetection:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 363
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseRestrictSetting;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseRestrictSetting;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    goto :goto_22

    .line 360
    :pswitch_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseSnapshotOnly;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseSnapshotOnly;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method

.method protected resume()V
    .registers 4

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    return-void
.end method
