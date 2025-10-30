.class synthetic Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

.field static final synthetic $SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 1165
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v6, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v7, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->EYE_GUIDE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v10, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    const/16 v9, 0xa

    :try_start_6e
    sget-object v10, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    const/16 v10, 0xb

    :try_start_7a
    sget-object v11, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    :catch_84
    const/16 v11, 0xc

    :try_start_86
    sget-object v12, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_90} :catch_90

    :catch_90
    const/16 v12, 0xd

    :try_start_92
    sget-object v13, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v14, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9c} :catch_9c

    :catch_9c
    const/16 v13, 0xe

    :try_start_9e
    sget-object v14, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_a8} :catch_a8

    :catch_a8
    const/16 v14, 0xf

    :try_start_aa
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_b4

    :catch_b4
    const/16 v15, 0x10

    :try_start_b6
    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v17, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c0} :catch_c0

    :catch_c0
    const/16 v16, 0x11

    :try_start_c2
    sget-object v17, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v18, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_cc} :catch_cc

    :catch_cc
    const/16 v17, 0x12

    :try_start_ce
    sget-object v18, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v19, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v19

    aput v17, v18, v19
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d8} :catch_d8

    :catch_d8
    const/16 v18, 0x13

    :try_start_da
    sget-object v19, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v20, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v20

    aput v18, v19, v20
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e4} :catch_e4

    :catch_e4
    const/16 v19, 0x14

    :try_start_e6
    sget-object v20, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v21, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v21

    aput v19, v20, v21
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f0} :catch_f0

    :catch_f0
    const/16 v20, 0x15

    :try_start_f2
    sget-object v21, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v22, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v22

    aput v20, v21, v22
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_fc

    :catch_fc
    const/16 v21, 0x16

    :try_start_fe
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    aput v21, v22, v23
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_ZOOM_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v22, v23
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    :try_start_114
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH_CAMERAUI:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v22, v23
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    :catch_120
    :try_start_120
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LONG_SS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v22, v23
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12c
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_MONO:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v22, v23
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    :catch_138
    :try_start_138
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v22, v23
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LEVEL:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v22, v23
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x1d

    aput v24, v22, v23
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    :catch_15c
    :try_start_15c
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_QR_DETECT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x1e

    aput v24, v22, v23
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    :catch_168
    :try_start_168
    sget-object v22, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v23

    const/16 v24, 0x1f

    aput v24, v22, v23
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    .line 924
    :catch_174
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    :try_start_17d
    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_185
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_185} :catch_185

    :catch_185
    :try_start_185
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_18f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_185 .. :try_end_18f} :catch_18f

    :catch_18f
    :try_start_18f
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_199
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18f .. :try_end_199} :catch_199

    :catch_199
    :try_start_199
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_1a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_199 .. :try_end_1a3} :catch_1a3

    :catch_1a3
    :try_start_1a3
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_1ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a3 .. :try_end_1ad} :catch_1ad

    :catch_1ad
    :try_start_1ad
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_1b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b7} :catch_1b7

    :catch_1b7
    :try_start_1b7
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b7 .. :try_end_1c1} :catch_1c1

    :catch_1c1
    :try_start_1c1
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_1cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c1 .. :try_end_1cb} :catch_1cb

    :catch_1cb
    :try_start_1cb
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->VIDEO_RECORDING_STOP_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_1d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cb .. :try_end_1d5} :catch_1d5

    :catch_1d5
    :try_start_1d5
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_1df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d5 .. :try_end_1df} :catch_1df

    :catch_1df
    :try_start_1df
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_1e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1df .. :try_end_1e9} :catch_1e9

    .line 452
    :catch_1e9
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_1f2
    sget-object v23, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f2 .. :try_end_1fa} :catch_1fa

    :catch_1fa
    :try_start_1fa
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_204} :catch_204

    :catch_204
    :try_start_204
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->EVERYONE_MODE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_20e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_20e} :catch_20e

    .line 339
    :catch_20e
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->values()[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    :try_start_217
    sget-object v23, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_21f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_21f} :catch_21f

    :catch_21f
    :try_start_21f
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    sget-object v23, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_229
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21f .. :try_end_229} :catch_229

    :catch_229
    :try_start_229
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    sget-object v23, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_233
    .catch Ljava/lang/NoSuchFieldError; {:try_start_229 .. :try_end_233} :catch_233

    :catch_233
    :try_start_233
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    sget-object v23, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_23d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_233 .. :try_end_23d} :catch_23d

    .line 156
    :catch_23d
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_246
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_24e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_246 .. :try_end_24e} :catch_24e

    :catch_24e
    :try_start_24e
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_258
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24e .. :try_end_258} :catch_258

    :catch_258
    :try_start_258
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_262
    .catch Ljava/lang/NoSuchFieldError; {:try_start_258 .. :try_end_262} :catch_262

    :catch_262
    :try_start_262
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_26c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_262 .. :try_end_26c} :catch_26c

    :catch_26c
    :try_start_26c
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_276
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26c .. :try_end_276} :catch_276

    :catch_276
    :try_start_276
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_280
    .catch Ljava/lang/NoSuchFieldError; {:try_start_276 .. :try_end_280} :catch_280

    :catch_280
    :try_start_280
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_28a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_280 .. :try_end_28a} :catch_28a

    :catch_28a
    :try_start_28a
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_294
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28a .. :try_end_294} :catch_294

    :catch_294
    :try_start_294
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_29e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_294 .. :try_end_29e} :catch_29e

    .line 131
    :catch_29e
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_2a7
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_2af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a7 .. :try_end_2af} :catch_2af

    :catch_2af
    :try_start_2af
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v15

    aput v0, v1, v15
    :try_end_2b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2af .. :try_end_2b9} :catch_2b9

    :catch_2b9
    :try_start_2b9
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b9 .. :try_end_2c3} :catch_2c3

    :catch_2c3
    :try_start_2c3
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c3 .. :try_end_2cd} :catch_2cd

    :catch_2cd
    :try_start_2cd
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cd .. :try_end_2d7} :catch_2d7

    :catch_2d7
    :try_start_2d7
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_2e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d7 .. :try_end_2e1} :catch_2e1

    :catch_2e1
    :try_start_2e1
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRAME_LINES:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_2eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e1 .. :try_end_2eb} :catch_2eb

    :catch_2eb
    :try_start_2eb
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_2f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2eb .. :try_end_2f5} :catch_2f5

    :catch_2f5
    :try_start_2f5
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_2ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f5 .. :try_end_2ff} :catch_2ff

    :catch_2ff
    :try_start_2ff
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_309
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ff .. :try_end_309} :catch_309

    :catch_309
    :try_start_309
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_313
    .catch Ljava/lang/NoSuchFieldError; {:try_start_309 .. :try_end_313} :catch_313

    :catch_313
    :try_start_313
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_31d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_313 .. :try_end_31d} :catch_31d

    :catch_31d
    :try_start_31d
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_327
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31d .. :try_end_327} :catch_327

    :catch_327
    :try_start_327
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_331
    .catch Ljava/lang/NoSuchFieldError; {:try_start_327 .. :try_end_331} :catch_331

    :catch_331
    :try_start_331
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_33b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_331 .. :try_end_33b} :catch_33b

    :catch_33b
    :try_start_33b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_347
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33b .. :try_end_347} :catch_347

    :catch_347
    :try_start_347
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_351
    .catch Ljava/lang/NoSuchFieldError; {:try_start_347 .. :try_end_351} :catch_351

    :catch_351
    :try_start_351
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_35b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_351 .. :try_end_35b} :catch_35b

    :catch_35b
    :try_start_35b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v18, v0, v1
    :try_end_365
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35b .. :try_end_365} :catch_365

    :catch_365
    :try_start_365
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v19, v0, v1
    :try_end_36f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_365 .. :try_end_36f} :catch_36f

    :catch_36f
    :try_start_36f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v20, v0, v1
    :try_end_379
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36f .. :try_end_379} :catch_379

    :catch_379
    :try_start_379
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v21, v0, v1
    :try_end_383
    .catch Ljava/lang/NoSuchFieldError; {:try_start_379 .. :try_end_383} :catch_383

    :catch_383
    :try_start_383
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_38f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_383 .. :try_end_38f} :catch_38f

    :catch_38f
    :try_start_38f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_39b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38f .. :try_end_39b} :catch_39b

    :catch_39b
    :try_start_39b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_3a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39b .. :try_end_3a7} :catch_3a7

    :catch_3a7
    :try_start_3a7
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_3b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a7 .. :try_end_3b3} :catch_3b3

    :catch_3b3
    :try_start_3b3
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_3bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b3 .. :try_end_3bf} :catch_3bf

    :catch_3bf
    :try_start_3bf
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_3cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bf .. :try_end_3cb} :catch_3cb

    :catch_3cb
    :try_start_3cb
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_3d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3cb .. :try_end_3d7} :catch_3d7

    :catch_3d7
    :try_start_3d7
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_3e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d7 .. :try_end_3e3} :catch_3e3

    :catch_3e3
    :try_start_3e3
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_3ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e3 .. :try_end_3ef} :catch_3ef

    :catch_3ef
    :try_start_3ef
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_3fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ef .. :try_end_3fb} :catch_3fb

    :catch_3fb
    :try_start_3fb
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_407
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3fb .. :try_end_407} :catch_407

    :catch_407
    :try_start_407
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_413
    .catch Ljava/lang/NoSuchFieldError; {:try_start_407 .. :try_end_413} :catch_413

    :catch_413
    :try_start_413
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_41f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_413 .. :try_end_41f} :catch_41f

    :catch_41f
    :try_start_41f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_42b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41f .. :try_end_42b} :catch_42b

    :catch_42b
    :try_start_42b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_437
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42b .. :try_end_437} :catch_437

    :catch_437
    :try_start_437
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_443
    .catch Ljava/lang/NoSuchFieldError; {:try_start_437 .. :try_end_443} :catch_443

    :catch_443
    :try_start_443
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_44f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_443 .. :try_end_44f} :catch_44f

    :catch_44f
    :try_start_44f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_45b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44f .. :try_end_45b} :catch_45b

    :catch_45b
    :try_start_45b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_467
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45b .. :try_end_467} :catch_467

    :catch_467
    :try_start_467
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_473
    .catch Ljava/lang/NoSuchFieldError; {:try_start_467 .. :try_end_473} :catch_473

    :catch_473
    :try_start_473
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_47f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_473 .. :try_end_47f} :catch_47f

    :catch_47f
    :try_start_47f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_48b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47f .. :try_end_48b} :catch_48b

    :catch_48b
    :try_start_48b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_497
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48b .. :try_end_497} :catch_497

    :catch_497
    :try_start_497
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_4a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_497 .. :try_end_4a3} :catch_4a3

    :catch_4a3
    :try_start_4a3
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_4af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a3 .. :try_end_4af} :catch_4af

    :catch_4af
    :try_start_4af
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_4bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4af .. :try_end_4bb} :catch_4bb

    :catch_4bb
    return-void
.end method
