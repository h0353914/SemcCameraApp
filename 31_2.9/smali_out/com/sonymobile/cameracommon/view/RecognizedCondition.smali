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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 30
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    .line 31
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;)Lcom/sonymobile/cameracommon/view/RecognizedCondition;
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_a

    .line 36
    new-instance p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object p0

    .line 39
    :cond_a
    sget-object v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 53
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    .line 50
    :pswitch_1b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v1, 0x7f0800d8

    const v2, 0x7f0f0064

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v0

    .line 47
    :pswitch_27
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v1, 0x7f0800d7

    const v2, 0x7f0f0063

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v0

    .line 44
    :pswitch_33
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v1, 0x7f0800d6

    const v2, 0x7f0f0062

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v0

    .line 41
    :pswitch_3f
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_33
        :pswitch_27
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public getCondition()Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    return-object v0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const v0, 0x7f0f0061

    .line 63
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getTextId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIconId()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    return v0
.end method

.method public getTextId()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    return v0
.end method
