.class Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AutoFlashResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

.field private mIsLastFlashRequired:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    return-object p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 4

    .line 33
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_13

    const/4 v0, 0x1

    .line 44
    :cond_13
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mIsLastFlashRequired:Z

    if-eq v0, p1, :cond_23

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mIsLastFlashRequired:Z

    .line 46
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method
