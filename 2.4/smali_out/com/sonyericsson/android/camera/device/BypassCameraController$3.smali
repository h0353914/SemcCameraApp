.class synthetic Lcom/sonyericsson/android/camera/device/BypassCameraController$3;
.super Ljava/lang/Object;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

.field static final synthetic $SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1132
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    .line 1032
    :catch_1f
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    :try_start_28
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    const/4 v2, 0x3

    :try_start_3d
    sget-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    .line 870
    :catch_47
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    :try_start_50
    sget-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    sget-object v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ALREADY_DONE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-virtual {v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    sget-object v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ON_REQUEST:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-virtual {v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    sget-object v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->INVALID:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-virtual {v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    .line 291
    :catch_6e
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_77
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_81

    :catch_81
    :try_start_81
    sget-object v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_8b

    :catch_8b
    return-void
.end method
