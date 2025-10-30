.class Lcom/sonyericsson/android/camera/device/PreviewResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "PreviewResultChecker.java"


# static fields
.field private static final TRACE:Z = false


# instance fields
.field private final mIsAfFailureReasonAvailable:Z

.field private final mIsIlluminanceAvailable:Z

.field private final mPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 7

    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;

    .line 29
    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_FAILURE_REASON:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isCaptureResultKeyAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mIsAfFailureReasonAvailable:Z

    .line 31
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    new-array p1, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAfFailureReasonAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mIsAfFailureReasonAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 32
    :cond_2d
    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_SENSOR_ILLUMINANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isCaptureResultKeyAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mIsIlluminanceAvailable:Z

    .line 34
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_53

    new-array p1, v0, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isIlluminanceAvailable:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mIsIlluminanceAvailable:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;

    return-object p0
.end method

.method private checkAfFailureReason(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 6

    .line 46
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mIsAfFailureReasonAvailable:Z

    if-nez v0, :cond_5

    return-void

    .line 51
    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    goto :goto_31

    .line 56
    :cond_1d
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_FAILURE_REASON:Landroid/hardware/camera2/CaptureResult$Key;

    .line 57
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_35

    .line 54
    :cond_31
    :goto_31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_35
    :goto_35
    if-eqz p1, :cond_41

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_41
    return-void
.end method

.method private checkIlluminance(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 4

    .line 84
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mIsIlluminanceAvailable:Z

    if-nez v0, :cond_5

    return-void

    .line 88
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_SENSOR_ILLUMINANCE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 89
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_19

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;-><init>(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;Ljava/lang/Float;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 3

    .line 39
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaultPhotoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->checkAfFailureReason(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->checkIlluminance(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V

    :cond_c
    return-void
.end method
