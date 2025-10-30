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
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    return-object v0
.end method

.method public isFocusLocked()Z
    .registers 6

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 67
    :goto_e
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_2f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFocusLocked() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2f
    return v0
.end method

.method public isStateInactive()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
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

    if-eqz p1, :cond_39

    new-array p1, p2, [Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    aput-object v1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted() : mAfState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", af check - FrameNumber =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 34
    :cond_39
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    if-nez p1, :cond_3e

    return-void

    .line 37
    :cond_3e
    iget v1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6f

    packed-switch p1, :pswitch_data_7c

    .line 49
    iget p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    const/16 v1, 0x3c

    if-le p1, v1, :cond_7a

    .line 50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_7a

    .line 51
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_67

    new-array p1, p2, [Ljava/lang/String;

    sget-object p2, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    aput-object p2, p1, v0

    const-string p2, "onCaptureCompleted() Time out break !"

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    :cond_67
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    goto :goto_7a

    .line 42
    :cond_6f
    :pswitch_6f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_7a

    .line 43
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    :cond_7a
    :goto_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x4
        :pswitch_6f
        :pswitch_6f
    .end packed-switch
.end method
