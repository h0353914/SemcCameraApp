.class Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "AfParametersReflectedChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AfParametersReflectedChecker"

.field private static final TRACE:Z = false


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

.field private mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    return-object p0
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .registers 3

    .line 50
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->checkSync(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 55
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkSync(Landroid/hardware/camera2/CaptureResult;)Z
    .registers 8

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 79
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_86

    const/4 v0, 0x1

    if-nez v3, :cond_3e

    move v3, v0

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    if-nez v3, :cond_67

    .line 93
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mReqHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 94
    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 95
    sget-object v5, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 96
    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 97
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_67

    :cond_66
    return v4

    .line 108
    :cond_67
    :goto_67
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_85

    .line 117
    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v2, p1, :cond_84

    return v0

    :cond_84
    return v4

    :cond_85
    return v4

    :cond_86
    return v4
.end method
