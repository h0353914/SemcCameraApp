.class abstract Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.super Ljava/lang/Object;
.source "DetectorBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseSnapshotOnlyRestrictCapturingMode;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateSnapshotOnlyRestrictCapturingMode;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseRestrictCapturingMode;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictCapturingMode;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseRestrictSetting;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictSetting;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseSnapshotOnly;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRunSnapshotOnly;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePause;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRun;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StatePauseRestrictAll;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictAll;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;,
        Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;

.field private mDetector:Lcom/sonymobile/camera/faultdetector/DetectorInterface;

.field private mFaultDetectionHandler:Landroid/os/Handler;

.field private mSnapshotDetection:Z

.field private mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;


# direct methods
.method protected constructor <init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mCallback:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mSnapshotDetection:Z

    .line 36
    invoke-static {p1, p2}, Lcom/sonymobile/camera/faultdetector/DetectorManager;->create(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)Lcom/sonymobile/camera/faultdetector/DetectorInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mDetector:Lcom/sonymobile/camera/faultdetector/DetectorInterface;

    .line 37
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictAll;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$StateRestrictAll;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)Landroid/os/Handler;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mFaultDetectionHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V

    return-void
.end method

.method private changeState(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;)V
    .registers 6

    .line 158
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    .line 159
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    if-nez v3, :cond_24

    const-string v3, "null"

    goto :goto_2c

    .line 160
    :cond_24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 159
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 163
    :cond_48
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    return-void
.end method


# virtual methods
.method canDetectInPreview()Z
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;->canDetectInPreview()Z

    move-result v0

    return v0
.end method

.method canDetectInSnapshot()Z
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;->canDetectInSnapshot()Z

    move-result v0

    return v0
.end method

.method changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;->changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;->changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V

    return-void
.end method

.method protected detect(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mDetector:Lcom/sonymobile/camera/faultdetector/DetectorInterface;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->preExecuteDetection()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/camera/faultdetector/DetectorInterface;->execute(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    return-void
.end method

.method abstract getDetectionFps()I
.end method

.method protected getDetectionImageSizeBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->getInputSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->getInputSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getInputSize()Landroid/util/Size;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mDetector:Lcom/sonymobile/camera/faultdetector/DetectorInterface;

    invoke-interface {v0}, Lcom/sonymobile/camera/faultdetector/DetectorInterface;->getInputSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotDetection()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mSnapshotDetection:Z

    return v0
.end method

.method protected initialize(Landroid/os/Handler;)Z
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mFaultDetectionHandler:Landroid/os/Handler;

    .line 42
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mDetector:Lcom/sonymobile/camera/faultdetector/DetectorInterface;

    invoke-interface {p1}, Lcom/sonymobile/camera/faultdetector/DetectorInterface;->initialize()Z

    move-result p1

    return p1
.end method

.method protected pause()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;->pause()V

    return-void
.end method

.method protected release()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mDetector:Lcom/sonymobile/camera/faultdetector/DetectorInterface;

    invoke-interface {v0}, Lcom/sonymobile/camera/faultdetector/DetectorInterface;->release()V

    return-void
.end method

.method protected resume()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mState:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;->resume()V

    return-void
.end method

.method public setCallback(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mCallback:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;

    return-void
.end method

.method setSnapshotDetection(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mSnapshotDetection:Z

    return-void
.end method

.method protected shutdown()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mDetector:Lcom/sonymobile/camera/faultdetector/DetectorInterface;

    invoke-interface {v0}, Lcom/sonymobile/camera/faultdetector/DetectorInterface;->deinitialize()V

    return-void
.end method
