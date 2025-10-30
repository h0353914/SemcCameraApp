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
    .registers 10

    .line 118
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 105
    :catch_1d
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    :try_start_26
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    .line 56
    :catch_38
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_41
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_53

    :catch_53
    const/4 v2, 0x3

    :try_start_54
    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_5e

    :catch_5e
    const/4 v3, 0x4

    :try_start_5f
    sget-object v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    const/4 v4, 0x5

    :try_start_6a
    sget-object v5, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_74} :catch_74

    :catch_74
    const/4 v5, 0x6

    :try_start_75
    sget-object v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_7f

    :catch_7f
    const/4 v6, 0x7

    :try_start_80
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8a} :catch_8a

    :catch_8a
    :try_start_8a
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x8

    aput v9, v7, v8
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_96} :catch_96

    :catch_96
    :try_start_96
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x9

    aput v9, v7, v8
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a2} :catch_a2

    :catch_a2
    :try_start_a2
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xa

    aput v9, v7, v8
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ae} :catch_ae

    :catch_ae
    :try_start_ae
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xb

    aput v9, v7, v8
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ba} :catch_ba

    :catch_ba
    :try_start_ba
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xc

    aput v9, v7, v8
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_c6} :catch_c6

    :catch_c6
    :try_start_c6
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xd

    aput v9, v7, v8
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d2} :catch_d2

    :catch_d2
    :try_start_d2
    sget-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xe

    aput v9, v7, v8
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_de

    .line 23
    :catch_de
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_e7
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_ef} :catch_ef

    :catch_ef
    :try_start_ef
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v7

    aput v0, v1, v7
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_f9} :catch_f9

    :catch_f9
    :try_start_f9
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_103} :catch_103

    :catch_103
    :try_start_103
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10d} :catch_10d

    :catch_10d
    :try_start_10d
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_117} :catch_117

    :catch_117
    :try_start_117
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_121} :catch_121

    :catch_121
    :try_start_121
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_12b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_121 .. :try_end_12b} :catch_12b

    :catch_12b
    return-void
.end method
