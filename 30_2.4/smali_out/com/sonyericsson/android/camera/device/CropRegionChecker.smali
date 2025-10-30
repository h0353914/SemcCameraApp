.class Lcom/sonyericsson/android/camera/device/CropRegionChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "CropRegionChecker.java"


# static fields
.field private static final CROP_REGION_PERCENT_DELTA:F = 0.01f

.field private static final IGNORE_CAPTURE_RESULT_THRESHOLD:I = 0x8

.field private static final TRACE:Z = false


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

.field private mIsNeedNotifyCropRegionReady:Z

.field private mIsRequestApplied:Z

.field private mLastCropRegion:Landroid/graphics/Rect;

.field private mReceivedResultCount:I

.field private mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;Z)V
    .registers 5

    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mLastCropRegion:Landroid/graphics/Rect;

    .line 48
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

    .line 49
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsNeedNotifyCropRegionReady:Z

    xor-int/2addr p1, p3

    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    return p0
.end method

.method private expectSimilarValues(IIF)Z
    .registers 8

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p3, v0

    mul-float/2addr v1, p2

    cmpg-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    sub-float/2addr v0, p3

    mul-float/2addr p2, v0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_19

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    return v2
.end method

.method private expectedRectIsSimilar(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
    .registers 7

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 127
    :cond_10
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 129
    :cond_1f
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result v0

    if-nez v0, :cond_2e

    return v1

    .line 131
    :cond_2e
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectSimilarValues(IIF)Z

    move-result p1

    if-nez p1, :cond_3d

    return v1

    :cond_3d
    const/4 p1, 0x1

    return p1
.end method

.method private isCropRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    const v0, 0x3c23d70a    # 0.01f

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->expectedRectIsSimilar(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 8

    .line 56
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-nez p1, :cond_f

    return-void

    .line 60
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v0, :cond_14

    return-void

    .line 63
    :cond_14
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1f

    return-void

    .line 68
    :cond_1f
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ge v1, v2, :cond_29

    add-int/2addr v1, v3

    .line 69
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    .line 72
    :cond_29
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mLastCropRegion:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->isCropRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mLastCropRegion:Landroid/graphics/Rect;

    .line 78
    :cond_33
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsNeedNotifyCropRegionReady:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_43

    iget v4, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mReceivedResultCount:I

    if-le v4, v3, :cond_43

    if-nez v1, :cond_40

    if-ne v4, v2, :cond_43

    .line 84
    :cond_40
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsNeedNotifyCropRegionReady:Z

    move v5, v3

    .line 92
    :cond_43
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    if-nez v2, :cond_4e

    .line 94
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->isCropRegionChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z

    .line 96
    :cond_4e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;

    invoke-direct {v2, p0, v5, v1, p1}, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/CropRegionChecker;ZZLandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method
