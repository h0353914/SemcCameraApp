.class public Lcom/sonyericsson/android/camera/device/AfStateChecker;
.super Lcom/sonyericsson/android/camera/device/StateCheckerBase;
.source "AfStateChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AfStateChecker"

.field private static final WAITING_AF_STATE_LOCKED_TIMEOUT_FRAMES:I = 0x3c


# instance fields
.field private mAfState:Ljava/lang/Integer;

.field private mFrameNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAfState()Ljava/lang/Integer;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    return-object p0
.end method

.method public isFocusLocked()Z
    .registers 5

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p0, v2, :cond_d

    move p0, v0

    goto :goto_e

    :cond_d
    move p0, v1

    .line 67
    :goto_e
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFocusLocked() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_31
    return p0
.end method

.method public isStateInactive()Z
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 7

    .line 31
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    .line 32
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 p2, 0x2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    new-array p1, p2, [Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    aput-object v1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted() : mAfState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", af check - FrameNumber =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 34
    :cond_3d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    if-nez p1, :cond_42

    return-void

    .line 37
    :cond_42
    iget v1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_76

    const/4 v1, 0x4

    if-eq p1, v1, :cond_76

    const/4 v1, 0x5

    if-eq p1, v1, :cond_76

    .line 49
    iget p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    const/16 v1, 0x3c

    if-le p1, v1, :cond_81

    .line 50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_81

    .line 51
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_6e

    new-array p1, p2, [Ljava/lang/String;

    sget-object p2, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    aput-object p2, p1, v0

    const-string p2, "onCaptureCompleted() Time out break !"

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    :cond_6e
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 54
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    goto :goto_81

    .line 42
    :cond_76
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_81

    .line 43
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 44
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    :cond_81
    :goto_81
    return-void
.end method
