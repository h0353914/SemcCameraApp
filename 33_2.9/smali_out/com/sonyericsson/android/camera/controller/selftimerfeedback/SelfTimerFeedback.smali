.class public Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;,
        Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;
    }
.end annotation


# static fields
.field private static final SELF_TIMER_BLINK_DURATION:I = 0x64

.field private static final SELF_TIMER_INTERVALS:[I

.field private static final SELF_TIMER_LEVEL_THRESHOLDS:[I

.field private static final SELF_TIMER_LIGHT_MIN_INTERVAL:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "SelfTimerFeedback"


# instance fields
.field private final mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsBlinkNeeded:Z

.field private mIsOnBlinkFinishedCalled:Z

.field private final mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

.field private final mLedOffTask:Ljava/lang/Runnable;

.field private final mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

.field private final mOnTickEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

.field private final mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 31
    fill-array-data v1, :array_10

    sput-object v1, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I

    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_1c

    sput-object v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I

    return-void

    :array_10
    .array-data 4
        0x1f4
        0x7d0
        0xfa0
        0x2710
    .end array-data

    :array_1c
    .array-data 4
        -0x1
        0xfa
        0x1f4
        0x3e8
    .end array-data
.end method

.method public constructor <init>(ILcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;ZLcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;)V
    .registers 11

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v2, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;-><init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mOnTickEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    .line 133
    new-instance v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$2;-><init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    .line 57
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mDuration:I

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    .line 59
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsBlinkNeeded:Z

    .line 60
    iput-object p4, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance p2, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    const-wide/16 v3, 0xfa

    move-object v0, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;JI)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)I
    .registers 1

    .line 17
    iget p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mDuration:I

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    return-object p0
.end method

.method static synthetic access$200()[I
    .registers 1

    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsBlinkNeeded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z

    return p1
.end method

.method static synthetic access$500()[I
    .registers 1

    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->blink()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    return-object p0
.end method

.method private blink()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;->turnOn()V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public start(I)V
    .registers 4

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->start(J)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->stop()V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
