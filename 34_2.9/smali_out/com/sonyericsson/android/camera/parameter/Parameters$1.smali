.class synthetic Lcom/sonyericsson/android/camera/parameter/Parameters$1;
.super Ljava/lang/Object;
.source "Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 888
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x13

    aput v11, v9, v10
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x14

    aput v11, v9, v10
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    :catch_f0
    :try_start_f0
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x15

    aput v11, v9, v10
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fc
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x16

    aput v11, v9, v10
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x17

    aput v11, v9, v10
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    :try_start_114
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x18

    aput v11, v9, v10
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    :catch_120
    :try_start_120
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x19

    aput v11, v9, v10
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x1a

    aput v11, v9, v10
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    :catch_138
    :try_start_138
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x1b

    aput v11, v9, v10
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x1c

    aput v11, v9, v10
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x1d

    aput v11, v9, v10
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    :catch_15c
    :try_start_15c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x1e

    aput v11, v9, v10
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    :catch_168
    :try_start_168
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x1f

    aput v11, v9, v10
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    :catch_174
    :try_start_174
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x20

    aput v11, v9, v10
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_180

    :catch_180
    :try_start_180
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x21

    aput v11, v9, v10
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_18c

    :catch_18c
    :try_start_18c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x22

    aput v11, v9, v10
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_198

    :catch_198
    :try_start_198
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x23

    aput v11, v9, v10
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1a4

    :catch_1a4
    :try_start_1a4
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x24

    aput v11, v9, v10
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b0

    :catch_1b0
    :try_start_1b0
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x25

    aput v11, v9, v10
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1bc} :catch_1bc

    :catch_1bc
    :try_start_1bc
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x26

    aput v11, v9, v10
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c8} :catch_1c8

    :catch_1c8
    :try_start_1c8
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x27

    aput v11, v9, v10
    :try_end_1d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d4} :catch_1d4

    :catch_1d4
    :try_start_1d4
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x28

    aput v11, v9, v10
    :try_end_1e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d4 .. :try_end_1e0} :catch_1e0

    :catch_1e0
    :try_start_1e0
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x29

    aput v11, v9, v10
    :try_end_1ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e0 .. :try_end_1ec} :catch_1ec

    :catch_1ec
    :try_start_1ec
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRAME_LINES:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x2a

    aput v11, v9, v10
    :try_end_1f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ec .. :try_end_1f8} :catch_1f8

    :catch_1f8
    :try_start_1f8
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x2b

    aput v11, v9, v10
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_204} :catch_204

    :catch_204
    :try_start_204
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x2c

    aput v11, v9, v10
    :try_end_210
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_210} :catch_210

    :catch_210
    :try_start_210
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x2d

    aput v11, v9, v10
    :try_end_21c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_210 .. :try_end_21c} :catch_21c

    :catch_21c
    :try_start_21c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x2e

    aput v11, v9, v10
    :try_end_228
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21c .. :try_end_228} :catch_228

    :catch_228
    :try_start_228
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x2f

    aput v11, v9, v10
    :try_end_234
    .catch Ljava/lang/NoSuchFieldError; {:try_start_228 .. :try_end_234} :catch_234

    :catch_234
    :try_start_234
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x30

    aput v11, v9, v10
    :try_end_240
    .catch Ljava/lang/NoSuchFieldError; {:try_start_234 .. :try_end_240} :catch_240

    :catch_240
    :try_start_240
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x31

    aput v11, v9, v10
    :try_end_24c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_240 .. :try_end_24c} :catch_24c

    :catch_24c
    :try_start_24c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x32

    aput v11, v9, v10
    :try_end_258
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24c .. :try_end_258} :catch_258

    :catch_258
    :try_start_258
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x33

    aput v11, v9, v10
    :try_end_264
    .catch Ljava/lang/NoSuchFieldError; {:try_start_258 .. :try_end_264} :catch_264

    :catch_264
    :try_start_264
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x34

    aput v11, v9, v10
    :try_end_270
    .catch Ljava/lang/NoSuchFieldError; {:try_start_264 .. :try_end_270} :catch_270

    :catch_270
    :try_start_270
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x35

    aput v11, v9, v10
    :try_end_27c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_270 .. :try_end_27c} :catch_27c

    :catch_27c
    :try_start_27c
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x36

    aput v11, v9, v10
    :try_end_288
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27c .. :try_end_288} :catch_288

    :catch_288
    :try_start_288
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v10

    const/16 v11, 0x37

    aput v11, v9, v10
    :try_end_294
    .catch Ljava/lang/NoSuchFieldError; {:try_start_288 .. :try_end_294} :catch_294

    .line 95
    :catch_294
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_29d
    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_2a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29d .. :try_end_2a5} :catch_2a5

    :catch_2a5
    :try_start_2a5
    sget-object v1, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_2af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a5 .. :try_end_2af} :catch_2af

    :catch_2af
    :try_start_2af
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2af .. :try_end_2b9} :catch_2b9

    :catch_2b9
    :try_start_2b9
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b9 .. :try_end_2c3} :catch_2c3

    :catch_2c3
    :try_start_2c3
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c3 .. :try_end_2cd} :catch_2cd

    :catch_2cd
    :try_start_2cd
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_2d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cd .. :try_end_2d7} :catch_2d7

    :catch_2d7
    :try_start_2d7
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_2e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d7 .. :try_end_2e1} :catch_2e1

    :catch_2e1
    :try_start_2e1
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_2eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e1 .. :try_end_2eb} :catch_2eb

    :catch_2eb
    :try_start_2eb
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_2f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2eb .. :try_end_2f5} :catch_2f5

    :catch_2f5
    return-void
.end method
