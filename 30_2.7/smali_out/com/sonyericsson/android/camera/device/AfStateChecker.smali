.class public Lcom/sonyericsson/android/camera/device/AfStateChecker;
.super Lcom/sonyericsson/android/camera/device/StateCheckerBase;
.source "AfStateChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AfStateChecker"


# instance fields
.field private mAfState:Ljava/lang/Integer;


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

    .line 22
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAfState()Ljava/lang/Integer;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    return-object v0
.end method

.method public isFocusLocked()Z
    .registers 6

    .line 50
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

    .line 51
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

    .line 46
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
    .registers 5

    .line 27
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    .line 28
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2f

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    sget-object p3, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted() : mAfState = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 31
    :cond_2f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3b

    packed-switch p1, :pswitch_data_46

    goto :goto_44

    .line 35
    :cond_3b
    :pswitch_3b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_44

    .line 36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    :cond_44
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x4
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method
