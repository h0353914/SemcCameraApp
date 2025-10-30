.class synthetic Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;
.super Ljava/lang/Object;
.source "CameraSettingResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 100
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    .line 87
    :catch_1f
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    :try_start_28
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    .line 53
    :catch_3c
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_45
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_4f
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_59

    :catch_59
    const/4 v2, 0x3

    :try_start_5a
    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TAGGING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    const/4 v3, 0x4

    :try_start_65
    sget-object v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    const/4 v4, 0x5

    :try_start_70
    sget-object v5, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7a} :catch_7a

    :catch_7a
    const/4 v5, 0x6

    :try_start_7b
    sget-object v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_85} :catch_85

    :catch_85
    const/4 v6, 0x7

    :try_start_86
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_90} :catch_90

    :catch_90
    const/16 v7, 0x8

    :try_start_92
    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9c} :catch_9c

    :catch_9c
    const/16 v8, 0x9

    :try_start_9e
    sget-object v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAULT_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    .line 22
    :catch_c0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_c9
    sget-object v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d3} :catch_d3

    :catch_d3
    :try_start_d3
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v1, v0, v9
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_dd} :catch_dd

    :catch_dd
    :try_start_dd
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e7} :catch_e7

    :catch_e7
    :try_start_e7
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_f1} :catch_f1

    :catch_f1
    :try_start_f1
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_fb} :catch_fb

    :catch_fb
    :try_start_fb
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_105} :catch_105

    :catch_105
    :try_start_105
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_10f} :catch_10f

    :catch_10f
    :try_start_10f
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_119} :catch_119

    :catch_119
    :try_start_119
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_119 .. :try_end_123} :catch_123

    :catch_123
    return-void
.end method
