.class Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AutoFlashResultChecker.java"


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

.field private mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mIsLastFlashRequired:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    .line 32
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 33
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    return-object p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 4

    .line 39
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1c

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    const/4 p1, 0x1

    goto :goto_1d

    .line 44
    :cond_13
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashWillFire(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 50
    :goto_1d
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mIsLastFlashRequired:Z

    if-eq p1, v0, :cond_2d

    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mIsLastFlashRequired:Z

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2d
    return-void
.end method
