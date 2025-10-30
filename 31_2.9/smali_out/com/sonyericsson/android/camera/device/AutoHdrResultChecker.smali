.class Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AutoHdrResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

.field private mIsLastHdrRequired:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 26
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

    return-object p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 4

    .line 31
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "AutoHdrResultChecker"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 35
    :try_start_e
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_AUTOHDR:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    const-string p1, "Can not read com.sonymobile.statistics.autoHDR"

    .line 37
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move-object p1, v0

    :goto_21
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    .line 40
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-ne p1, v0, :cond_2c

    move v1, v0

    .line 49
    :cond_2c
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mIsLastHdrRequired:Z

    if-eq v1, p1, :cond_3c

    .line 50
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mIsLastHdrRequired:Z

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    return-void
.end method
