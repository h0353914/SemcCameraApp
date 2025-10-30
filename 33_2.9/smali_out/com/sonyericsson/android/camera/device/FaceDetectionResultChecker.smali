.class Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "FaceDetectionResultChecker.java"


# static fields
.field private static final MINIMUM_INTERVAL_MILLIS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FaceDetectionResultChecker"


# instance fields
.field private final mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

.field private mIsNeedWaitingExtraFrame:Z

.field private mPreviousNumberOfFacesDetected:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mIsNeedWaitingExtraFrame:Z

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    return-object p0
.end method

.method private isValidFace(Landroid/hardware/camera2/params/Face;)Z
    .registers 2

    if-eqz p1, :cond_18

    .line 167
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lez p0, :cond_18

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private isValidResults([Landroid/hardware/camera2/params/Face;[I)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_2f

    .line 147
    array-length p1, p1

    if-nez p1, :cond_7

    goto :goto_2f

    :cond_7
    const/4 p1, 0x1

    if-eqz p2, :cond_2e

    .line 155
    array-length v0, p2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2e

    .line 156
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2d

    new-array p1, p1, [Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face select area is invalid: Face select area num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2d
    return p0

    :cond_2e
    return p1

    .line 148
    :cond_2f
    :goto_2f
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3c

    const-string p1, "No face data."

    .line 149
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3c
    return p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 44
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    .line 45
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 48
    new-instance v10, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    invoke-direct {v10}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;-><init>()V

    .line 50
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidResults([Landroid/hardware/camera2/params/Face;[I)Z

    move-result v3

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_11f

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v1, :cond_74

    .line 53
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_70

    new-array v3, v11, [Ljava/lang/String;

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select area: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, v1, v11

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, v1, v14

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, v1, v13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v12

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 60
    :cond_70
    aget v3, v1, v4

    move v15, v3

    goto :goto_75

    :cond_74
    move v15, v12

    :goto_75
    move v7, v12

    move v8, v7

    move v9, v8

    move/from16 v16, v9

    .line 66
    :goto_7a
    array-length v3, v2

    if-ge v9, v3, :cond_11d

    .line 67
    aget-object v3, v2, v9

    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 68
    aget-object v3, v2, v9

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 70
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_c7

    new-array v3, v11, [Ljava/lang/String;

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face rectangle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    new-array v3, v11, [Ljava/lang/String;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smile score: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 75
    :cond_c7
    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    const/16 v17, 0x0

    move/from16 v18, v3

    move-object v3, v10

    move/from16 v19, v4

    move v4, v7

    move-object/from16 v20, v6

    move/from16 v6, v19

    move/from16 v21, v7

    move/from16 v7, v18

    move/from16 v22, v8

    move v8, v13

    move v13, v9

    move/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->addFaceResult(IIIIII)V

    if-eqz v15, :cond_108

    .line 85
    aget v3, v1, v12

    aget v4, v1, v11

    aget v5, v1, v14

    const/4 v6, 0x3

    aget v7, v1, v6

    move-object/from16 v8, v20

    invoke-virtual {v8, v3, v4, v5, v7}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v3

    if-eqz v3, :cond_105

    move/from16 v3, v21

    .line 88
    invoke-virtual {v10, v3}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->setFrameResult(I)V

    add-int/lit8 v8, v3, 0x1

    move/from16 v16, v11

    goto :goto_10d

    :cond_105
    move/from16 v3, v21

    goto :goto_10b

    :cond_108
    move/from16 v3, v21

    const/4 v6, 0x3

    :goto_10b
    move/from16 v8, v22

    :goto_10d
    if-nez v16, :cond_110

    move v8, v11

    :cond_110
    add-int/lit8 v7, v3, 0x1

    goto :goto_118

    :cond_113
    move v3, v7

    move/from16 v22, v8

    move v6, v13

    move v13, v9

    :goto_118
    add-int/lit8 v9, v13, 0x1

    move v13, v6

    goto/16 :goto_7a

    .line 99
    :cond_11d
    iput v8, v10, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->userSelectedFaceId:I

    .line 102
    :cond_11f
    iget-object v1, v10, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_156

    .line 103
    iget v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    if-eqz v1, :cond_155

    .line 105
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_138

    const-string v1, "Faces are lost."

    .line 106
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 109
    :cond_138
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mIsNeedWaitingExtraFrame:Z

    if-eqz v1, :cond_14c

    .line 110
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_149

    const-string v1, "Waiting for an extra frame."

    .line 111
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 113
    :cond_149
    iput-boolean v12, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mIsNeedWaitingExtraFrame:Z

    return-void

    .line 116
    :cond_14c
    iput v12, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    .line 117
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    if-eqz v1, :cond_160

    .line 121
    iput-boolean v11, v10, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->isRectTranslucent:Z

    goto :goto_160

    :cond_155
    return-void

    .line 128
    :cond_156
    iput-boolean v11, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mIsNeedWaitingExtraFrame:Z

    .line 129
    iget-object v1, v10, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    .line 132
    :cond_160
    :goto_160
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_17e

    new-array v1, v11, [Ljava/lang/String;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected Faces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 136
    :cond_17e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;

    invoke-direct {v2, v0, v10}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
