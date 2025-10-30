.class Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;
.source "DetectorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateRunSnapshotOnly"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .registers 3

    .line 384
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V
    .registers 3

    .line 384
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    return-void
.end method


# virtual methods
.method protected canDetectInPreview()Z
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    return v0
.end method

.method protected canDetectInSnapshot()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 403
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;->isDetectableCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateSnapshotOnlyRestrictCapturingMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateSnapshotOnlyRestrictCapturingMode;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    :cond_11
    return-void
.end method

.method protected changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V
    .registers 4

    .line 388
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FaultDetection:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_10

    goto :goto_25

    .line 393
    :cond_10
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictSetting;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictSetting;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    goto :goto_25

    .line 390
    :cond_1b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    :goto_25
    return-void
.end method

.method protected pause()V
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseSnapshotOnly;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseSnapshotOnly;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    return-void
.end method
