.class Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;
.super Ljava/lang/Object;
.source "DeviceMotionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionChecker"
.end annotation


# static fields
.field private static final ABOVE_THRESHOLD:I = 0x1

.field private static final ACCEPTABLE_NUMBER_OUTSIDE_THRESHOLDS:I = 0x0

.field private static final ACC_SUM_MAX_THRESHOLD:F = 120.0f

.field private static final ACC_SUM_MIN_THRESHOLD:F = 80.0f

.field private static final BELOW_THRESHOLD:I = 0x0

.field private static final JUDGMENT_PERIOD_MILLIS:I = 0x1f4

.field private static final MAX_NUMBER_OF_OBJECTS:I = 0x19


# instance fields
.field private mDetectionCount:I

.field private mMotionDetectionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mMotionDetectionQueue:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$1;)V
    .registers 2

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;F)Z
    .registers 2

    .line 210
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->isStable(F)Z

    move-result p0

    return p0
.end method

.method private isMoved(F)Z
    .registers 3

    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_f

    const/high16 v0, 0x42f00000    # 120.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isStable(F)Z
    .registers 5

    .line 230
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->isMoved(F)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_17

    .line 231
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mMotionDetectionQueue:Ljava/util/Queue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 232
    iget p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mDetectionCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mDetectionCount:I

    goto :goto_20

    .line 234
    :cond_17
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mMotionDetectionQueue:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 237
    :goto_20
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mMotionDetectionQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v2, 0x19

    if-le p1, v2, :cond_3b

    .line 238
    iget p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mDetectionCount:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mMotionDetectionQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mDetectionCount:I

    .line 241
    :cond_3b
    iget p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mDetectionCount:I

    if-gtz p1, :cond_40

    move v0, v1

    :cond_40
    return v0
.end method


# virtual methods
.method protected clear()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mMotionDetectionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->mDetectionCount:I

    return-void
.end method
