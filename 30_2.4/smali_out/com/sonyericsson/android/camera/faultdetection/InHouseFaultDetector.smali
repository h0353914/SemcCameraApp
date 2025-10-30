.class public Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.source "InHouseFaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;,
        Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;,
        Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;
    }
.end annotation


# static fields
.field static final DETECTION_FPS:I = 0x5

.field private static final FINGER_COVERING_COUNT_THRESHOLD:I = 0x6

.field private static final FINGER_COVERING_SCORE_QUEUE_SIZE:I = 0xa

.field private static final FINGER_COVERING_SCORE_THRESHOLD:F = 0.4f

.field private static final FINGER_COVERING_SCORE_THRESHOLD_FOR_SNAPSHOT:F = 0.7f

.field private static final HAND_BLUR_SCORE_THRESHOLD:F = 0.7f


# instance fields
.field private mIsWideMode:Z

.field private mLatestScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;",
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .registers 3

    .line 59
    sget-object v0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->IN_HOUSE_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;-><init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mLatestScores:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;[F)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->update([F)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;)Lcom/sonyericsson/android/camera/faultdetection/DetectionType;
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->getLatestType()Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mIsWideMode:Z

    return p0
.end method

.method private getLatestType()Lcom/sonyericsson/android/camera/faultdetection/DetectionType;
    .registers 5

    .line 114
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mIsWideMode:Z

    if-eqz v0, :cond_f

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mLatestScores:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING_FOR_WIDE:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    goto :goto_19

    .line 117
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mLatestScores:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    :goto_19
    if-nez v0, :cond_1e

    .line 121
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-object v0

    :cond_1e
    const/4 v1, 0x0

    .line 125
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_23

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_23

    .line 129
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-object v0

    .line 134
    :cond_42
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-object v0
.end method

.method private update([F)V
    .registers 8

    .line 98
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->values()[Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 99
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mLatestScores:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    if-nez v4, :cond_15

    goto :goto_2d

    .line 105
    :cond_15
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->index:I
    invoke-static {v3}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->access$000(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;)I

    move-result v3

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_2d

    .line 107
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_30
    return-void
.end method


# virtual methods
.method protected changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 92
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_e

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p1, 0x1

    :goto_f
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mIsWideMode:Z

    return-void
.end method

.method createTask(Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;IZI)Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
    .registers 12

    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    if-ne p2, v0, :cond_a

    .line 67
    new-instance p2, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;

    invoke-direct {p2, p0, p1, p3}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;Landroid/graphics/Bitmap;I)V

    goto :goto_15

    .line 69
    :cond_a
    new-instance p2, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;Landroid/graphics/Bitmap;IZI)V

    :goto_15
    return-object p2
.end method

.method getDetectionFps()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method protected initialize(Landroid/os/Handler;)Z
    .registers 8

    .line 81
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->initialize(Landroid/os/Handler;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 83
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->values()[Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 84
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mLatestScores:Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1d
    return p1
.end method

.method public bridge synthetic setCallback(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->setCallback(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;)V

    return-void
.end method
