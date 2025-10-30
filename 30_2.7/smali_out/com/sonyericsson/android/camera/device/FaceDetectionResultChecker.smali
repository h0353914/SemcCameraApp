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
    .registers 3

    if-eqz p1, :cond_18

    .line 186
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

    .line 149
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_68

    :cond_7
    if-nez p2, :cond_17

    .line 157
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_16

    const-string p1, "Smile score is null."

    .line 158
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_16
    return v0

    .line 163
    :cond_17
    array-length v1, p1

    array-length v2, p2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_43

    .line 164
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_42

    .line 165
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

    .line 174
    array-length p1, p3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_67

    .line 175
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_66

    .line 176
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

    .line 150
    :cond_68
    :goto_68
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_75

    const-string p1, "No face data."

    .line 151
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_75
    return v0
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
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SMILE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 47
    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 50
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    invoke-direct {v11}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;-><init>()V

    .line 52
    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidResults([Landroid/hardware/camera2/params/Face;[I[I)Z

    move-result v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_127

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v1, :cond_79

    .line 55
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_74

    .line 57
    new-array v4, v12, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select area: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v14

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v13

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 62
    :cond_74
    aget v4, v1, v5

    move/from16 v16, v4

    goto :goto_7b

    :cond_79
    move/from16 v16, v13

    :goto_7b
    move v8, v13

    move v9, v8

    move v10, v9

    move/from16 v17, v10

    .line 68
    :goto_80
    array-length v4, v2

    if-ge v10, v4, :cond_125

    .line 69
    aget-object v4, v2, v10

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v4

    if-eqz v4, :cond_118

    .line 70
    aget-object v4, v2, v10

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 71
    aget v6, v3, v10

    .line 72
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_cb

    .line 73
    new-array v4, v12, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Face rectangle: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 74
    new-array v4, v12, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Smile score: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 77
    :cond_cb
    iget v14, v7, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    iget v4, v7, Landroid/graphics/Rect;->right:I

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v4

    move-object v4, v11

    move/from16 v19, v5

    move v5, v8

    move/from16 v20, v6

    move v6, v14

    move-object v14, v7

    move/from16 v7, v19

    move/from16 v21, v8

    move/from16 v8, v18

    move/from16 v22, v9

    move v9, v15

    move v15, v10

    move/from16 v10, v20

    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->addFaceResult(IIIIII)V

    if-eqz v16, :cond_10b

    .line 87
    aget v4, v1, v13

    aget v5, v1, v12

    const/4 v6, 0x2

    aget v7, v1, v6

    const/4 v8, 0x3

    aget v9, v1, v8

    invoke-virtual {v14, v4, v5, v7, v9}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v4

    if-eqz v4, :cond_108

    move/from16 v4, v21

    .line 90
    invoke-virtual {v11, v4}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->setFrameResult(I)V

    add-int/lit8 v5, v4, 0x1

    move/from16 v17, v12

    goto :goto_111

    :cond_108
    move/from16 v4, v21

    goto :goto_10f

    :cond_10b
    move/from16 v4, v21

    const/4 v6, 0x2

    const/4 v8, 0x3

    :goto_10f
    move/from16 v5, v22

    :goto_111
    if-nez v17, :cond_114

    move v5, v12

    :cond_114
    add-int/lit8 v4, v4, 0x1

    move v9, v5

    goto :goto_11e

    :cond_118
    move v4, v8

    move/from16 v22, v9

    move v8, v14

    move v6, v15

    move v15, v10

    :goto_11e
    add-int/lit8 v10, v15, 0x1

    move v15, v6

    move v14, v8

    move v8, v4

    goto/16 :goto_80

    .line 101
    :cond_125
    iput v9, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->userSelectedFaceId:I

    .line 104
    :cond_127
    iget-object v1, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15e

    .line 105
    iget v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    if-eqz v1, :cond_15d

    .line 107
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_140

    const-string v1, "Faces are lost."

    .line 108
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 111
    :cond_140
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mIsNeedWaitingExtraFrame:Z

    if-eqz v1, :cond_154

    .line 112
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_151

    const-string v1, "Waiting for an extra frame."

    .line 113
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 115
    :cond_151
    iput-boolean v13, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mIsNeedWaitingExtraFrame:Z

    return-void

    .line 118
    :cond_154
    iput v13, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    .line 119
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    if-eqz v1, :cond_168

    .line 123
    iput-boolean v12, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->isRectTranslucent:Z

    goto :goto_168

    :cond_15d
    return-void

    .line 130
    :cond_15e
    iput-boolean v12, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mIsNeedWaitingExtraFrame:Z

    .line 131
    iget-object v1, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    .line 134
    :cond_168
    :goto_168
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_184

    .line 135
    new-array v1, v12, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected Faces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 138
    :cond_184
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;

    invoke-direct {v2, v0, v11}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
