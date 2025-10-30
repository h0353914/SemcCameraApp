.class synthetic Lcom/sonyericsson/android/camera/device/CameraController$3;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraController$RepeatingRequestState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 2019
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->values()[Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraController$RepeatingRequestState:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraController$RepeatingRequestState:[I

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraController$RepeatingRequestState:[I

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->REQUEST_RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraController$RepeatingRequestState:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraController$RepeatingRequestState:[I

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->NONE:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    .line 1948
    :catch_35
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_3e
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    .line 754
    :catch_5c
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    :try_start_65
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_EVICTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8d
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_98} :catch_98

    :catch_98
    return-void
.end method
