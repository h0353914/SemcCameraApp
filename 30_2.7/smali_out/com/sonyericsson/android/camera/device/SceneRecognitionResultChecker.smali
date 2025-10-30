.class Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "SceneRecognitionResultChecker.java"


# static fields
.field private static final MACRO_RANGE_IN_METER:F = 0.1455f

.field private static final MACRO_RANGE_IN_METER_SM23_BACK1:F = 0.18f

.field private static MACRO_RANGE_IN_METER_THRESHOLD:F = 0.1455f

.field private static final TAG:Ljava/lang/String; = "SceneRecognitionResultChecker"


# instance fields
.field private mCondition:Ljava/lang/Integer;

.field private mIsMacroRangeSupported:Z

.field private mLastCondition:Ljava/lang/Integer;

.field private mLastMacroRange:Z

.field private mLastScene:Ljava/lang/Integer;

.field private mMacroRange:Z

.field private mParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

.field private mScene:Ljava/lang/Integer;

.field private final mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;Z)V
    .registers 5

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsMacroRangeSupported:Z

    const/16 p1, 0x64

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    .line 51
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsMacroRangeSupported:Z

    const p1, 0x3e3851ec    # 0.18f

    .line 52
    sput p1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->MACRO_RANGE_IN_METER_THRESHOLD:F

    .line 54
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    .line 55
    new-array p1, p1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current MacroRange threshold is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->MACRO_RANGE_IN_METER_THRESHOLD:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    return-object p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 5

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_SCENE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    if-nez v0, :cond_23

    const/16 v0, 0x64

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 65
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_23

    const-string v0, "Scene is set as AUTO since not detected."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    :cond_23
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 72
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_45

    const-string v0, "Condition is set as UNKNOWN since not detected."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    .line 79
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsMacroRangeSupported:Z

    const/4 v2, 0x1

    if-nez p1, :cond_5c

    .line 80
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_70

    .line 81
    :cond_5c
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 82
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_70

    .line 83
    :cond_65
    sget p1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->MACRO_RANGE_IN_METER_THRESHOLD:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6e

    .line 84
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_70

    .line 86
    :cond_6e
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    .line 89
    :goto_70
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_a2

    .line 90
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

    .line 94
    :cond_a2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_d2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_d2

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    if-ne p1, v0, :cond_d2

    .line 98
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_d1

    const-string p1, "Same Scene/Condition/Macro status."

    .line 99
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d1
    return-void

    .line 104
    :cond_d2
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->getCondition(I)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iput-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->isMacroRange:Z

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    .line 121
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    return-void
.end method

.method public isWalkingCodition()Z
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 126
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method
