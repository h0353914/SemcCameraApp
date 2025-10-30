.class public Lcom/sonymobile/cameracommon/view/RecognizedCondition;
.super Ljava/lang/Object;
.source "RecognizedCondition.java"


# instance fields
.field private final mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 28
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    .line 29
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;)Lcom/sonymobile/cameracommon/view/RecognizedCondition;
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_a

    .line 34
    new-instance p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object p0

    .line 37
    :cond_a
    sget-object v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 51
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    .line 48
    :pswitch_1b
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v2, 0x7f0800e6

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    .line 45
    :pswitch_24
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v2, 0x7f0800e5

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    .line 42
    :pswitch_2d
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v2, 0x7f0800e4

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    .line 39
    :pswitch_36
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_2d
        :pswitch_24
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public getCondition()Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    return v0
.end method

.method public getTextId()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    return v0
.end method
