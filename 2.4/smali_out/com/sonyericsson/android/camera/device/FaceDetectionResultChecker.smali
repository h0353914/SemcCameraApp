.class Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "FaceDetectionResultChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetectionResultChecker"


# instance fields
.field private final mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

.field private final mLastFaceDataAccessLock:Ljava/lang/Object;

.field private mLastFaceSelectArea:[I

.field private mLastFaceSmileScores:[I

.field private mLastFaces:[Landroid/hardware/camera2/params/Face;

.field private mPreviousCountOfFacesDetected:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 35
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceDataAccessLock:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousCountOfFacesDetected:I

    .line 41
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    return-object p0
.end method

.method private countValidFace([Landroid/hardware/camera2/params/Face;)I
    .registers 6

    .line 279
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_12

    aget-object v3, p1, v1

    .line 280
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v3

    if-eqz v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v2
.end method

.method private isFaceEqualed(Landroid/hardware/camera2/params/Face;Landroid/hardware/camera2/params/Face;)Z
    .registers 7

    .line 288
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_8e

    .line 292
    :cond_f
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 293
    :cond_1c
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    if-eq v0, v2, :cond_29

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    if-ne v0, v2, :cond_29

    :cond_28
    return v1

    .line 297
    :cond_29
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 298
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    return v1

    .line 301
    :cond_3e
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_45

    return v1

    .line 305
    :cond_45
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidEyePosition(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 306
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    return v1

    .line 309
    :cond_5e
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidEyePosition(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_69

    return v1

    .line 313
    :cond_69
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidEyePosition(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 314
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    return v1

    .line 317
    :cond_82
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidEyePosition(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_8d

    return v1

    :cond_8d
    return v2

    :cond_8e
    :goto_8e
    return v1
.end method

.method private isFaceUpdated([Landroid/hardware/camera2/params/Face;[I[I)Z
    .registers 10

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaces:[Landroid/hardware/camera2/params/Face;

    array-length v1, v0

    array-length v2, p1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_93

    .line 214
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->countValidFace([Landroid/hardware/camera2/params/Face;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->countValidFace([Landroid/hardware/camera2/params/Face;)I

    move-result v1

    if-eq v0, v1, :cond_13

    goto/16 :goto_93

    .line 219
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceSelectArea:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    if-eqz p3, :cond_2a

    move v0, v1

    .line 221
    :goto_1b
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceSelectArea:[I

    array-length v4, v2

    if-ge v0, v4, :cond_55

    .line 222
    aget v2, v2, v0

    aget v4, p3, v0

    if-eq v2, v4, :cond_27

    return v3

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    return v3

    :cond_2b
    if-eqz p3, :cond_2e

    return v3

    .line 235
    :cond_2e
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaces:[Landroid/hardware/camera2/params/Face;

    array-length v0, p3

    move v2, v1

    :goto_32
    if-ge v2, v0, :cond_55

    aget-object v4, p3, v2

    .line 236
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 237
    array-length p3, p1

    move v0, v1

    :goto_3e
    if-ge v0, p3, :cond_55

    aget-object v2, p1, v0

    .line 238
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 239
    invoke-direct {p0, v4, v2}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isFaceEqualed(Landroid/hardware/camera2/params/Face;Landroid/hardware/camera2/params/Face;)Z

    move-result p3

    if-nez p3, :cond_55

    return v3

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_55
    move p3, v1

    .line 251
    :goto_56
    array-length v0, p1

    if-ge p3, v0, :cond_92

    .line 252
    aget-object v0, p1, p3

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_8f

    :cond_62
    move v0, v1

    .line 256
    :goto_63
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaces:[Landroid/hardware/camera2/params/Face;

    array-length v4, v2

    if-ge v0, v4, :cond_8b

    .line 257
    aget-object v2, v2, p3

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v2

    if-nez v2, :cond_71

    goto :goto_88

    .line 260
    :cond_71
    aget-object v2, p1, p3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v4, v4, v0

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isFaceEqualed(Landroid/hardware/camera2/params/Face;Landroid/hardware/camera2/params/Face;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 261
    aget v2, p2, p3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceSmileScores:[I

    aget v0, v4, v0

    if-eq v2, v0, :cond_86

    return v3

    :cond_86
    move v0, v3

    goto :goto_8c

    :cond_88
    :goto_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_8b
    move v0, v1

    :goto_8c
    if-nez v0, :cond_8f

    return v3

    :cond_8f
    :goto_8f
    add-int/lit8 p3, p3, 0x1

    goto :goto_56

    :cond_92
    return v1

    :cond_93
    :goto_93
    return v3
.end method

.method private isValidEyePosition(Landroid/graphics/Point;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 208
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_c

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-ltz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isValidFace(Landroid/hardware/camera2/params/Face;)Z
    .registers 3

    if-eqz p1, :cond_18

    .line 204
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private isValidResults([Landroid/hardware/camera2/params/Face;[I[I)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_68

    .line 167
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_68

    :cond_7
    if-nez p2, :cond_17

    .line 175
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_16

    const-string p1, "Smile score is null."

    .line 176
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_16
    return v0

    .line 181
    :cond_17
    array-length v1, p1

    array-length v2, p2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_43

    .line 182
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_42

    .line 183
    new-array p3, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result is invalid: Number of face rectangle and smile score are different. faces num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", smile scores num: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_42
    return v0

    :cond_43
    if-eqz p3, :cond_67

    .line 192
    array-length p1, p3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_67

    .line 193
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_66

    .line 194
    new-array p1, v3, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face select area is invalid: Face select area num: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_66
    return v0

    :cond_67
    return v3

    .line 168
    :cond_68
    :goto_68
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_75

    const-string p1, "No face data."

    .line 169
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_75
    return v0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->checkSync(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;Z)V

    return-void
.end method

.method checkSync(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;Z)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 51
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    .line 52
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SMILE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 54
    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 57
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    invoke-direct {v11}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;-><init>()V

    .line 59
    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidResults([Landroid/hardware/camera2/params/Face;[I[I)Z

    move-result v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_162

    .line 61
    iget-object v4, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceDataAccessLock:Ljava/lang/Object;

    monitor-enter v4

    if-nez p2, :cond_3e

    .line 62
    :try_start_2e
    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v5, :cond_3e

    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceSmileScores:[I

    if-eqz v5, :cond_3e

    .line 63
    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isFaceUpdated([Landroid/hardware/camera2/params/Face;[I[I)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 64
    monitor-exit v4

    return-void

    .line 67
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_15f

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v0, :cond_8f

    .line 71
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_8a

    .line 73
    new-array v4, v12, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select area: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v14

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v13

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_8a
    aget v4, v0, v5

    move/from16 v16, v4

    goto :goto_91

    :cond_8f
    move/from16 v16, v13

    :goto_91
    move v9, v13

    move v10, v9

    .line 82
    :goto_93
    array-length v4, v2

    if-ge v10, v4, :cond_151

    .line 83
    aget-object v4, v2, v10

    invoke-direct {v1, v4}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v4

    if-eqz v4, :cond_148

    .line 84
    aget-object v4, v2, v10

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    const/4 v4, 0x0

    .line 86
    aget-object v5, v2, v10

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidEyePosition(Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 87
    aget-object v4, v2, v10

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v4

    move-object v7, v4

    goto :goto_ce

    .line 88
    :cond_b9
    aget-object v5, v2, v10

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidEyePosition(Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 89
    aget-object v4, v2, v10

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v4

    move-object v7, v4

    goto :goto_ce

    :cond_cd
    move-object v7, v4

    .line 91
    :goto_ce
    aget v4, v3, v10

    .line 92
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_108

    .line 93
    new-array v5, v12, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Face rectangle: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 94
    new-array v5, v12, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Smile score: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 98
    :cond_108
    aget-object v5, v2, v10

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v5

    if-ne v5, v12, :cond_114

    move/from16 v17, v12

    move v14, v13

    goto :goto_117

    :cond_114
    move v14, v4

    move/from16 v17, v13

    .line 103
    :goto_117
    aget-object v4, v2, v10

    .line 108
    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v18

    move-object v4, v11

    move v5, v9

    move-object v6, v8

    move-object/from16 v19, v8

    move v8, v14

    move v14, v9

    move/from16 v9, v18

    move/from16 v18, v10

    move/from16 v10, v17

    .line 103
    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->addFaceResult(ILandroid/graphics/Rect;Landroid/graphics/Point;IIZ)V

    if-eqz v16, :cond_144

    .line 113
    aget v4, v0, v13

    aget v5, v0, v12

    aget v6, v0, v15

    const/4 v7, 0x3

    aget v8, v0, v7

    move-object/from16 v9, v19

    invoke-virtual {v9, v4, v5, v6, v8}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v4

    if-eqz v4, :cond_145

    .line 116
    invoke-virtual {v11, v14}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->setFrameResult(I)V

    goto :goto_145

    :cond_144
    const/4 v7, 0x3

    :cond_145
    :goto_145
    add-int/lit8 v9, v14, 0x1

    goto :goto_14c

    :cond_148
    move/from16 v18, v10

    move v7, v14

    move v14, v9

    :goto_14c
    add-int/lit8 v10, v18, 0x1

    move v14, v7

    goto/16 :goto_93

    .line 124
    :cond_151
    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceDataAccessLock:Ljava/lang/Object;

    monitor-enter v5

    .line 125
    :try_start_154
    iput-object v2, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaces:[Landroid/hardware/camera2/params/Face;

    .line 126
    iput-object v3, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceSmileScores:[I

    .line 127
    iput-object v0, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastFaceSelectArea:[I

    .line 128
    monitor-exit v5

    goto :goto_162

    :catchall_15c
    move-exception v0

    monitor-exit v5
    :try_end_15e
    .catchall {:try_start_154 .. :try_end_15e} :catchall_15c

    throw v0

    :catchall_15f
    move-exception v0

    .line 67
    :try_start_160
    monitor-exit v4
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_15f

    throw v0

    .line 131
    :cond_162
    :goto_162
    iget-object v0, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_182

    .line 132
    iget v0, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousCountOfFacesDetected:I

    if-lez v0, :cond_17c

    .line 134
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_17f

    const-string v0, "Faces are lost."

    .line 135
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_17f

    :cond_17c
    if-nez v0, :cond_17f

    return-void

    .line 141
    :cond_17f
    :goto_17f
    iput v13, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousCountOfFacesDetected:I

    goto :goto_18a

    .line 143
    :cond_182
    iget-object v0, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousCountOfFacesDetected:I

    .line 146
    :goto_18a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1a6

    .line 147
    new-array v0, v12, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected Faces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1a6
    if-eqz p2, :cond_1b0

    .line 151
    iget-object v0, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    if-eqz v0, :cond_1ba

    .line 152
    invoke-interface {v0, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;->onFaceDetection(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    goto :goto_1ba

    .line 155
    :cond_1b0
    iget-object v0, v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;

    invoke-direct {v2, v1, v11}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1ba
    :goto_1ba
    return-void
.end method
