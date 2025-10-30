.class synthetic Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;
.super Ljava/lang/Object;
.source "RecognizedCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/RecognizedCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->values()[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I

    :try_start_9
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->MOTION:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->STABLE:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->WALK:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
