.class Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "SceneRecognitionResultChecker.java"


# static fields
.field private static final MACRO_RANGE_IN_METER:F = 0.1455f

.field private static final TAG:Ljava/lang/String; = "SceneRecognitionResultChecker"


# instance fields
.field private mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field private mCondition:Ljava/lang/Integer;

.field private final mIsFocusSupported:Z

.field private mLastCondition:Ljava/lang/Integer;

.field private mLastMacroRange:Z

.field private mLastScene:Ljava/lang/Integer;

.field private mMacroRange:Z

.field private mScene:Ljava/lang/Integer;

.field private final mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 5

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/16 v0, 0x64

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    .line 44
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    .line 51
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsFocusSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    return-object p0
.end method

.method private isMacroDetectionSupported()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 124
    :cond_8
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsFocusSupported:Z

    return v0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 5

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_SCENE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    if-nez v0, :cond_23

    const/16 v0, 0x64

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 61
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_23

    const-string v0, "Scene is set as AUTO since not detected."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 65
    :cond_23
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 68
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_45

    const-string v0, "Condition is set as UNKNOWN since not detected."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 74
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->isMacroDetectionSupported()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_5e

    .line 76
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_73

    .line 77
    :cond_5e
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 78
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_73

    :cond_67
    const p1, 0x3e14fdf4    # 0.1455f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_71

    .line 80
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_73

    .line 82
    :cond_71
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    .line 85
    :goto_73
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_a5

    .line 86
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scene: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Condition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Macro: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 90
    :cond_a5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_d5

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_d5

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    if-ne p1, v0, :cond_d5

    .line 94
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_d4

    const-string p1, "Same Scene/Condition/Macro status."

    .line 95
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d4
    return-void

    .line 100
    :cond_d5
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->getCondition(I)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 104
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iput-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->isMacroRange:Z

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    .line 117
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    return-void
.end method
