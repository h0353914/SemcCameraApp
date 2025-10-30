.class public Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "FinishBurstResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

.field private mIsFinishBurstDone:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    return-object p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 6

    .line 30
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 34
    :try_start_e
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_BURST_SHOT:Landroid/hardware/camera2/CaptureResult$Key;

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

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultBurstState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    if-eqz p1, :cond_44

    .line 41
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-ne p1, v0, :cond_44

    move v0, v3

    .line 50
    :cond_44
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mIsFinishBurstDone:Z

    if-eq v0, p1, :cond_56

    .line 51
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mIsFinishBurstDone:Z

    if-eqz v0, :cond_56

    .line 53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_56
    return-void
.end method
