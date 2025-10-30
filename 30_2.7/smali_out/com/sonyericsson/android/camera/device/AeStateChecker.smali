.class public Lcom/sonyericsson/android/camera/device/AeStateChecker;
.super Lcom/sonyericsson/android/camera/device/StateCheckerBase;
.source "AeStateChecker.java"


# static fields
.field private static final MAX_SS_VALUE_OF_AE_CAN_CONVERGED:J = 0x7735940L

.field public static final PRECAPTURE_TAG:Ljava/lang/String; = "AePrecature"

.field private static final TAG:Ljava/lang/String; = "AeStateChecker"

.field private static final WAITING_PRECATURE_DONE_SKIP_FRAMES:I = 0x5


# instance fields
.field private mAePrecaptureStarted:Z

.field private mAeState:Ljava/lang/Integer;

.field private mAeTriggerStart:Z

.field private mShutterSpeedValue:J

.field private mSkipFrameNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 31
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    return-void
.end method


# virtual methods
.method public isAeStateConverged()Z
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 8

    .line 37
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    .line 38
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    if-nez p1, :cond_1e

    const-string p1, "AePrecature"

    .line 39
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 41
    :cond_1e
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_53

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/android/camera/device/AeStateChecker;->TAG:Ljava/lang/String;

    aput-object v1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted() : mAeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 41
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 43
    :cond_53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x5

    packed-switch p1, :pswitch_data_b4

    goto :goto_b3

    .line 45
    :pswitch_5e
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    goto :goto_b3

    .line 65
    :pswitch_61
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_78

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    if-nez p1, :cond_6d

    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    if-ne p1, p3, :cond_78

    .line 67
    :cond_6d
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 69
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    .line 72
    :cond_78
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    if-eqz p1, :cond_b3

    .line 73
    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    goto :goto_b3

    .line 80
    :pswitch_82
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_b3

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 83
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    goto :goto_b3

    .line 52
    :pswitch_92
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_a5

    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    if-ne p1, p3, :cond_a5

    .line 54
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    .line 55
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 56
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    .line 57
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    .line 59
    :cond_a5
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mShutterSpeedValue:J

    const-wide/32 v2, 0x7735940

    cmp-long p1, v0, v2

    if-lez p1, :cond_b3

    .line 60
    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    :cond_b3
    :goto_b3
    :pswitch_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_92
        :pswitch_82
        :pswitch_82
        :pswitch_61
        :pswitch_5e
    .end packed-switch
.end method

.method public setCurrShutterSpeedValue(J)V
    .registers 6

    .line 99
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mShutterSpeedValue:J

    .line 100
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_27

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    sget-object v0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->TAG:Ljava/lang/String;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShutterSpeedValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mShutterSpeedValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_27
    return-void
.end method
