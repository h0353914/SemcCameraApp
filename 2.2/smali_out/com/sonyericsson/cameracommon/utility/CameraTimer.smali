.class public Lcom/sonyericsson/cameracommon/utility/CameraTimer;
.super Ljava/lang/Object;
.source "CameraTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;
    }
.end annotation


# static fields
.field public static final MSG_CANCEL:I = 0x2

.field public static final MSG_INTERVAL:I = 0x0

.field public static final MSG_POST_TIMEOUT:I = 0x3

.field public static final MSG_TIMEOUT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SelfTimer"


# instance fields
.field private mCurTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private mOptionName:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(JJLandroid/os/Handler;Ljava/lang/String;J)V
    .registers 14

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxtime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", handler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", optionName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 57
    :cond_39
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    .line 58
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    .line 59
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    .line 60
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mOptionName:Ljava/lang/String;

    .line 61
    iput-wide p7, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mDelay:J

    const-wide/16 p6, 0x0

    cmp-long p1, p1, p6

    if-lez p1, :cond_69

    cmp-long p1, p3, p6

    if-lez p1, :cond_69

    if-eqz p5, :cond_69

    .line 63
    iget-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    iget-wide p3, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_69

    iget-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    const-wide/32 p3, 0x7fffffff

    cmp-long p1, p1, p3

    if-lez p1, :cond_61

    goto :goto_69

    .line 69
    :cond_61
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    goto :goto_79

    .line 65
    :cond_69
    :goto_69
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_76

    const-string p1, "invalid timer setting."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_76
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    :goto_79
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/cameracommon/utility/CameraTimer;J)J
    .registers 3

    .line 34
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)Landroid/os/Handler;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->terminateInnerTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    return-wide v0
.end method

.method private declared-synchronized terminateInnerTimer()V
    .registers 2

    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_12

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 108
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    .line 102
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 6

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 85
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4c

    const-string v0, "cancel timer == null, do nothing"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_4c

    .line 87
    :cond_14
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_38

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel schedule.("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mOptionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 90
    :cond_38
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->terminateInnerTimer()V

    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 94
    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    long-to-int v2, v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    .line 95
    iput v2, v0, Landroid/os/Message;->what:I

    .line 96
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 100
    monitor-exit p0

    return-void

    :catchall_53
    move-exception v0

    .line 83
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 8

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_13

    .line 75
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_47

    const-string v0, "start timer == null, do nothing"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_47

    .line 77
    :cond_13
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start schedule.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mOptionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 79
    :cond_38
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;-><init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;Lcom/sonyericsson/cameracommon/utility/CameraTimer$1;)V

    iget-wide v3, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mDelay:J

    iget-wide v5, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    .line 81
    :cond_47
    :goto_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    .line 73
    monitor-exit p0

    throw v0
.end method
