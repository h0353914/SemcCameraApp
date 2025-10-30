.class Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;
.super Ljava/lang/Object;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureImageReaderRequest"
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

.field private mCaptureSize:Landroid/graphics/Rect;

.field private mCapturingBufferNum:I

.field private mImageReaderBufferNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapturingBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I
    .registers 1

    iget p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageReaderBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I
    .registers 1

    iget p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureSize(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCapturingBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)V
    .registers 2

    iput p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImageReaderBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)V
    .registers 2

    iput p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misSameRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->isSameRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;-><init>()V

    return-void
.end method

.method private isSameRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z
    .registers 4

    if-eqz p1, :cond_1e

    .line 1619
    iget v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    iget v1, p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    iget v1, p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    if-ne v0, v1, :cond_1e

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    if-eqz p0, :cond_1e

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    if-eqz p1, :cond_1e

    .line 1622
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method
