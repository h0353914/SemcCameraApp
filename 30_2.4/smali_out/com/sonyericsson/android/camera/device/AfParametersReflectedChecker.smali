.class Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AfParametersReflectedChecker.java"


# static fields
.field private static final CROP_REGION_PERCENT_DELTA:F = 0.05f

.field private static final TAG:Ljava/lang/String; = "AfParametersReflectedChecker"

.field private static final TRACE:Z = false


# instance fields
.field private isAlreadyReflected:Z

.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

.field private mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    .registers 4

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->isAlreadyReflected:Z

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    .line 51
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    return-object p0
.end method

.method private expectRectsAreSimilar(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
    .registers 7

    .line 174
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->expectSimilarValues(IIF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 176
    :cond_10
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->expectSimilarValues(IIF)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 178
    :cond_1f
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->expectSimilarValues(IIF)Z

    move-result v0

    if-nez v0, :cond_2e

    return v1

    .line 180
    :cond_2e
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->expectSimilarValues(IIF)Z

    move-result p1

    if-nez p1, :cond_3d

    return v1

    :cond_3d
    const/4 p1, 0x1

    return p1
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

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 5

    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->isAlreadyReflected:Z

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->checkSync(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_39

    :cond_f
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->isAlreadyReflected:Z

    .line 64
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 65
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 67
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;I[Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_39
    :goto_39
    return-void
.end method

.method public checkSync(Landroid/hardware/camera2/CaptureResult;)Z
    .registers 9

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_ac

    const/4 v0, 0x1

    if-ne v3, v0, :cond_3e

    move v5, v0

    goto :goto_3f

    :cond_3e
    move v5, v4

    :goto_3f
    if-nez v3, :cond_43

    move v3, v0

    goto :goto_44

    :cond_43
    move v3, v4

    :goto_44
    if-nez v3, :cond_6e

    if-nez v5, :cond_6e

    .line 114
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 115
    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 116
    sget-object v6, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 117
    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 118
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_6e

    :cond_6d
    return v4

    .line 129
    :cond_6e
    :goto_6e
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_ab

    .line 138
    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_aa

    if-eqz v5, :cond_a9

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 149
    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    const v2, 0x3d4ccccd    # 0.05f

    .line 150
    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->expectRectsAreSimilar(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_a8

    goto :goto_a9

    :cond_a8
    return v4

    :cond_a9
    :goto_a9
    return v0

    :cond_aa
    return v4

    :cond_ab
    return v4

    :cond_ac
    return v4
.end method
