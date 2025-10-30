.class Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.source "EyeBlinkDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;,
        Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;
    }
.end annotation


# static fields
.field private static final CONFIDENCE_VALUE_START_POSITION:I = 0x88

.field private static final CONFIDENCE_VALUE_THRESHOLD:F = 0.7f

.field private static final DETECTION_FPS:I = 0x5

.field private static final DETECTION_THRESHOLD:F = 13.0f

.field private static final EYE_POINT_INDEX_LOWER_L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EYE_POINT_INDEX_LOWER_R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EYE_POINT_INDEX_UPPER_L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EYE_POINT_INDEX_UPPER_R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CROP_FACE_NUM_PER_FRAME:I = 0x5

.field private static final MINIMUM_CONFIDENCE_VALUE_NUMBER:I = 0x4

.field private static final SCORE_NORMALIZATION:F = 16.071428f


# instance fields
.field private mLeftEyeAverageScores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRightEyeAverageScores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    .line 39
    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x25

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_R:Ljava/util/List;

    .line 41
    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x2b

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_L:Ljava/util/List;

    .line 43
    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x28

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_R:Ljava/util/List;

    .line 45
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x2e

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_L:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;)V
    .registers 3

    .line 52
    sget-object v0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->EYE_BLINK_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;-><init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V

    .line 48
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mRightEyeAverageScores:Landroid/util/SparseArray;

    .line 49
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mLeftEyeAverageScores:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/faultdetection/Face;)Landroid/graphics/Bitmap;
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getRotationFixedBitmap(Lcom/sonyericsson/android/camera/faultdetection/Face;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mLeftEyeAverageScores:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mRightEyeAverageScores:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/List;
    .registers 1

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_R:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/List;
    .registers 1

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_R:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[FLjava/util/List;Ljava/util/List;)F
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getEyeConfidenceValueAverage([FLjava/util/List;Ljava/util/List;)F

    move-result p0

    return p0
.end method

.method static synthetic access$600()Ljava/util/List;
    .registers 1

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_L:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/List;
    .registers 1

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_L:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[F)F
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateRightEyeOpeningScore([F)F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[F)F
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateLeftEyeOpeningScore([F)F

    move-result p0

    return p0
.end method

.method private static calculateDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 6

    .line 56
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private calculateLeftEyeOpeningScore([F)F
    .registers 4

    .line 111
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_L:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getAveragePoint([FLjava/util/List;)Landroid/graphics/PointF;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_L:Ljava/util/List;

    .line 112
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getAveragePoint([FLjava/util/List;)Landroid/graphics/PointF;

    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    const v0, 0x41809249

    mul-float/2addr p1, v0

    return p1
.end method

.method private calculateRightEyeOpeningScore([F)F
    .registers 4

    .line 98
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_R:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getAveragePoint([FLjava/util/List;)Landroid/graphics/PointF;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_R:Ljava/util/List;

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getAveragePoint([FLjava/util/List;)Landroid/graphics/PointF;

    move-result-object p1

    .line 98
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    const v0, 0x41809249

    mul-float/2addr p1, v0

    return p1
.end method

.method private getAveragePoint([FLjava/util/List;)Landroid/graphics/PointF;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 131
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 134
    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    aget v4, p1, v4

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 135
    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_9

    .line 137
    :cond_32
    iget p1, v0, Landroid/graphics/PointF;->x:F

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 138
    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private getEyeConfidenceValueAverage([FLjava/util/List;Ljava/util/List;)F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    .line 120
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v2, v2, 0x88

    aget v2, p1, v2

    add-float/2addr v1, v2

    goto :goto_5

    .line 123
    :cond_1b
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v2, v2, 0x88

    aget v2, p1, v2

    add-float/2addr v1, v2

    goto :goto_1f

    .line 126
    :cond_35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method

.method private static getRotationFixedBitmap(Lcom/sonyericsson/android/camera/faultdetection/Face;)Landroid/graphics/Bitmap;
    .registers 10

    .line 60
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRotationFixedBitmap, rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 63
    :cond_20
    iget v0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    if-eqz v0, :cond_41

    .line 64
    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    .line 65
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    iget p0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    int-to-float p0, p0

    invoke-virtual {v7, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 68
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 70
    :cond_41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method createCalcAvgTask(Ljava/util/List;Lcom/sonyericsson/android/camera/faultdetection/FaceStore;)Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;",
            "Lcom/sonyericsson/android/camera/faultdetection/FaceStore;",
            ")",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;Ljava/util/List;Lcom/sonyericsson/android/camera/faultdetection/FaceStore;)V

    return-object v0
.end method

.method createDetectionTask(Ljava/util/List;I)Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;I)",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;Ljava/util/List;I)V

    return-object v0
.end method

.method getDetectionFps()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method getMaxFaceNumPerFrame()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
