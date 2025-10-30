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
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 6

    .line 37
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    .line 38
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    if-nez p1, :cond_1e

    .line 39
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "AePrecature"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 41
    :cond_1e
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4e

    sget-object p1, Lcom/sonyericsson/android/camera/device/AeStateChecker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onCaptureCompleted() : mAeState = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 42
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 43
    :cond_4e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_99

    const/4 v1, 0x2

    if-eq p1, v1, :cond_89

    const/4 v1, 0x3

    if-eq p1, v1, :cond_89

    const/4 v1, 0x4

    if-eq p1, v1, :cond_68

    if-eq p1, p2, :cond_65

    goto :goto_ba

    .line 45
    :cond_65
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    goto :goto_ba

    .line 65
    :cond_68
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_7f

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    if-nez p1, :cond_74

    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    if-ne p1, p2, :cond_7f

    .line 67
    :cond_74
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 69
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    .line 72
    :cond_7f
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    if-eqz p1, :cond_ba

    .line 73
    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    goto :goto_ba

    .line 80
    :cond_89
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_ba

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAePrecaptureStarted:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mAeTriggerStart:Z

    .line 83
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    .line 84
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    goto :goto_ba

    .line 52
    :cond_99
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_ac

    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    if-ne p1, p2, :cond_ac

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
    :cond_ac
    iget-wide p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mShutterSpeedValue:J

    const-wide/32 v0, 0x7735940

    cmp-long p1, p1, v0

    if-lez p1, :cond_ba

    .line 60
    iget p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mSkipFrameNumber:I

    :cond_ba
    :goto_ba
    return-void
.end method

.method public setCurrShutterSpeedValue(J)V
    .registers 5

    .line 99
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mShutterSpeedValue:J

    .line 100
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_20

    sget-object p1, Lcom/sonyericsson/android/camera/device/AeStateChecker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mShutterSpeedValue = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/AeStateChecker;->mShutterSpeedValue:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_20
    return-void
.end method
