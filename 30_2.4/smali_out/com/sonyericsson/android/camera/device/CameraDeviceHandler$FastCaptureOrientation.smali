.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;
.super Landroid/view/OrientationEventListener;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastCaptureOrientation"
.end annotation


# instance fields
.field private mOrientation:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;)V
    .registers 3

    .line 2120
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 2121
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2117
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .registers 4

    .line 2116
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)I
    .registers 1

    .line 2116
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->getOrientation()I

    move-result p0

    return p0
.end method

.method private getOrientation()I
    .registers 5

    .line 2131
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v0

    .line 2134
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 2136
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_32

    .line 2144
    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    goto :goto_30

    .line 2141
    :pswitch_21
    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/lit16 v1, v1, 0x168

    sub-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    goto :goto_30

    .line 2138
    :pswitch_29
    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 2

    .line 2126
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    return-void
.end method
