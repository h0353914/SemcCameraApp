.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CroppingRequestTimer"
.end annotation


# instance fields
.field private final mInterval:I

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mTimer:Ljava/util/Timer;

    const/16 v0, 0x3e8

    .line 870
    div-int/2addr v0, p1

    iput v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mInterval:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;)Z
    .registers 1

    .line 863
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->isScheduled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;)V
    .registers 1

    .line 863
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->cancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;Ljava/util/TimerTask;)V
    .registers 2

    .line 863
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->start(Ljava/util/TimerTask;)V

    return-void
.end method

.method private cancel()V
    .registers 2

    .line 879
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_7

    .line 880
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_7
    return-void
.end method

.method private isScheduled()Z
    .registers 5

    .line 885
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_17

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private start(Ljava/util/TimerTask;)V
    .registers 8

    .line 874
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mTask:Ljava/util/TimerTask;

    .line 875
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mTask:Ljava/util/TimerTask;

    iget p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->mInterval:I

    int-to-long v4, p1

    const-wide/16 v2, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
