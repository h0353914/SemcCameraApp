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
    .registers 18

    .line 1135
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v6, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    :catch_40
    const/4 v5, 0x6

    :try_start_41
    sget-object v6, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v7, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->EYE_GUIDE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4b

    :catch_4b
    const/4 v6, 0x7

    :try_start_4c
    sget-object v7, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_56} :catch_56

    :catch_56
    const/16 v7, 0x8

    :try_start_58
    sget-object v8, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_62

    :catch_62
    const/16 v8, 0x9

    :try_start_64
    sget-object v9, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v10, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    const/16 v9, 0xa

    :try_start_70
    sget-object v10, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7a} :catch_7a

    :catch_7a
    const/16 v10, 0xb

    :try_start_7c
    sget-object v11, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_86} :catch_86

    :catch_86
    const/16 v11, 0xc

    :try_start_88
    sget-object v12, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_92} :catch_92

    :catch_92
    const/16 v12, 0xd

    :try_start_94
    sget-object v13, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v14, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9e} :catch_9e

    :catch_9e
    const/16 v13, 0xe

    :try_start_a0
    sget-object v14, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_aa

    :catch_aa
    const/16 v14, 0xf

    :try_start_ac
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b6
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v15, v16
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c2

    :catch_c2
    :try_start_c2
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SIDE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x11

    aput v17, v15, v16
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_ce

    :catch_ce
    :try_start_ce
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x12

    aput v17, v15, v16
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_da

    :catch_da
    :try_start_da
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x13

    aput v17, v15, v16
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_e6

    :catch_e6
    :try_start_e6
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x14

    aput v17, v15, v16
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f2
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x15

    aput v17, v15, v16
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_fe

    :catch_fe
    :try_start_fe
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x16

    aput v17, v15, v16
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_10a

    :catch_10a
    :try_start_10a
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x17

    aput v17, v15, v16
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_116

    :catch_116
    :try_start_116
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_ZOOM_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x18

    aput v17, v15, v16
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_122

    :catch_122
    :try_start_122
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH_CAMERAUI:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x19

    aput v17, v15, v16
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_12e

    :catch_12e
    :try_start_12e
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LONG_SS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x1a

    aput v17, v15, v16
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_13a

    :catch_13a
    :try_start_13a
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_MONO:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x1b

    aput v17, v15, v16
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_146

    :catch_146
    :try_start_146
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x1c

    aput v17, v15, v16
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_152

    :catch_152
    :try_start_152
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_EYE_AF:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x1d

    aput v17, v15, v16
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_15e

    :catch_15e
    :try_start_15e
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_FAULT_DETECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x1e

    aput v17, v15, v16
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_16a

    :catch_16a
    :try_start_16a
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LEVEL:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x1f

    aput v17, v15, v16
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_176

    :catch_176
    :try_start_176
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_ANIMAL_EYE_AF:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x20

    aput v17, v15, v16
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_182

    :catch_182
    :try_start_182
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_TAGGING:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x21

    aput v17, v15, v16
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18e} :catch_18e

    :catch_18e
    :try_start_18e
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v16

    const/16 v17, 0x22

    aput v17, v15, v16
    :try_end_19a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_19a} :catch_19a

    .line 894
    :catch_19a
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    :try_start_1a3
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_1ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a3 .. :try_end_1ad} :catch_1ad

    :catch_1ad
    :try_start_1ad
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_1b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b7} :catch_1b7

    :catch_1b7
    :try_start_1b7
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b7 .. :try_end_1c1} :catch_1c1

    :catch_1c1
    :try_start_1c1
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_1cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c1 .. :try_end_1cb} :catch_1cb

    :catch_1cb
    :try_start_1cb
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_1d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cb .. :try_end_1d5} :catch_1d5

    :catch_1d5
    :try_start_1d5
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_1df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d5 .. :try_end_1df} :catch_1df

    :catch_1df
    :try_start_1df
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_1e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1df .. :try_end_1e9} :catch_1e9

    :catch_1e9
    :try_start_1e9
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_1f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e9 .. :try_end_1f3} :catch_1f3

    :catch_1f3
    :try_start_1f3
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->VIDEO_RECORDING_STOP_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_1fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f3 .. :try_end_1fd} :catch_1fd

    :catch_1fd
    :try_start_1fd
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v9, v15, v16
    :try_end_207
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fd .. :try_end_207} :catch_207

    :catch_207
    :try_start_207
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v16

    aput v10, v15, v16
    :try_end_211
    .catch Ljava/lang/NoSuchFieldError; {:try_start_207 .. :try_end_211} :catch_211

    .line 444
    :catch_211
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_21a
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_224
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21a .. :try_end_224} :catch_224

    .line 331
    :catch_224
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->values()[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    :try_start_22d
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    sget-object v16, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_237
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22d .. :try_end_237} :catch_237

    :catch_237
    :try_start_237
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    sget-object v16, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_241
    .catch Ljava/lang/NoSuchFieldError; {:try_start_237 .. :try_end_241} :catch_241

    :catch_241
    :try_start_241
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    sget-object v16, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_24b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_241 .. :try_end_24b} :catch_24b

    :catch_24b
    :try_start_24b
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    sget-object v16, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_255
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24b .. :try_end_255} :catch_255

    .line 152
    :catch_255
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_25e
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_268
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25e .. :try_end_268} :catch_268

    :catch_268
    :try_start_268
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_272
    .catch Ljava/lang/NoSuchFieldError; {:try_start_268 .. :try_end_272} :catch_272

    :catch_272
    :try_start_272
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_27c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_272 .. :try_end_27c} :catch_27c

    :catch_27c
    :try_start_27c
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_286
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27c .. :try_end_286} :catch_286

    :catch_286
    :try_start_286
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_290
    .catch Ljava/lang/NoSuchFieldError; {:try_start_286 .. :try_end_290} :catch_290

    :catch_290
    :try_start_290
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_29a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_290 .. :try_end_29a} :catch_29a

    :catch_29a
    :try_start_29a
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_2a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29a .. :try_end_2a4} :catch_2a4

    :catch_2a4
    :try_start_2a4
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_2ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a4 .. :try_end_2ae} :catch_2ae

    :catch_2ae
    :try_start_2ae
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_2b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ae .. :try_end_2b8} :catch_2b8

    .line 129
    :catch_2b8
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_2c1
    sget-object v15, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_2cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c1 .. :try_end_2cb} :catch_2cb

    :catch_2cb
    :try_start_2cb
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v15

    aput v1, v0, v15
    :try_end_2d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cb .. :try_end_2d5} :catch_2d5

    :catch_2d5
    :try_start_2d5
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d5 .. :try_end_2df} :catch_2df

    :catch_2df
    :try_start_2df
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2df .. :try_end_2e9} :catch_2e9

    :catch_2e9
    :try_start_2e9
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e9 .. :try_end_2f3} :catch_2f3

    :catch_2f3
    :try_start_2f3
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_2fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f3 .. :try_end_2fd} :catch_2fd

    :catch_2fd
    :try_start_2fd
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_307
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fd .. :try_end_307} :catch_307

    :catch_307
    :try_start_307
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_311
    .catch Ljava/lang/NoSuchFieldError; {:try_start_307 .. :try_end_311} :catch_311

    :catch_311
    :try_start_311
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_31b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_311 .. :try_end_31b} :catch_31b

    :catch_31b
    :try_start_31b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_325
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31b .. :try_end_325} :catch_325

    :catch_325
    :try_start_325
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HORIZONTAL_LEVEL_METER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_32f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_325 .. :try_end_32f} :catch_32f

    :catch_32f
    :try_start_32f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_339
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32f .. :try_end_339} :catch_339

    :catch_339
    :try_start_339
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_343
    .catch Ljava/lang/NoSuchFieldError; {:try_start_339 .. :try_end_343} :catch_343

    :catch_343
    :try_start_343
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_34d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_343 .. :try_end_34d} :catch_34d

    :catch_34d
    :try_start_34d
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_357
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34d .. :try_end_357} :catch_357

    :catch_357
    :try_start_357
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_363
    .catch Ljava/lang/NoSuchFieldError; {:try_start_357 .. :try_end_363} :catch_363

    :catch_363
    :try_start_363
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_36f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_363 .. :try_end_36f} :catch_36f

    :catch_36f
    :try_start_36f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_37b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36f .. :try_end_37b} :catch_37b

    :catch_37b
    :try_start_37b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_387
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37b .. :try_end_387} :catch_387

    :catch_387
    :try_start_387
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_393
    .catch Ljava/lang/NoSuchFieldError; {:try_start_387 .. :try_end_393} :catch_393

    :catch_393
    :try_start_393
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_39f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_393 .. :try_end_39f} :catch_39f

    :catch_39f
    :try_start_39f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_3ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39f .. :try_end_3ab} :catch_3ab

    :catch_3ab
    :try_start_3ab
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ab .. :try_end_3b7} :catch_3b7

    :catch_3b7
    :try_start_3b7
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_3c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b7 .. :try_end_3c3} :catch_3c3

    :catch_3c3
    :try_start_3c3
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_3cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c3 .. :try_end_3cf} :catch_3cf

    :catch_3cf
    :try_start_3cf
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_3db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3cf .. :try_end_3db} :catch_3db

    :catch_3db
    :try_start_3db
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_3e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3db .. :try_end_3e7} :catch_3e7

    :catch_3e7
    :try_start_3e7
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_3f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e7 .. :try_end_3f3} :catch_3f3

    :catch_3f3
    :try_start_3f3
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_3ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f3 .. :try_end_3ff} :catch_3ff

    :catch_3ff
    :try_start_3ff
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_40b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ff .. :try_end_40b} :catch_40b

    :catch_40b
    :try_start_40b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_417
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40b .. :try_end_417} :catch_417

    :catch_417
    :try_start_417
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAULT_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_423
    .catch Ljava/lang/NoSuchFieldError; {:try_start_417 .. :try_end_423} :catch_423

    :catch_423
    :try_start_423
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TAGGING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_42f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_423 .. :try_end_42f} :catch_42f

    :catch_42f
    :try_start_42f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_43b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42f .. :try_end_43b} :catch_43b

    :catch_43b
    :try_start_43b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_447
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43b .. :try_end_447} :catch_447

    :catch_447
    :try_start_447
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_453
    .catch Ljava/lang/NoSuchFieldError; {:try_start_447 .. :try_end_453} :catch_453

    :catch_453
    :try_start_453
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_45f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_453 .. :try_end_45f} :catch_45f

    :catch_45f
    :try_start_45f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_46b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45f .. :try_end_46b} :catch_46b

    :catch_46b
    :try_start_46b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_477
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46b .. :try_end_477} :catch_477

    :catch_477
    :try_start_477
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_483
    .catch Ljava/lang/NoSuchFieldError; {:try_start_477 .. :try_end_483} :catch_483

    :catch_483
    :try_start_483
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_48f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_483 .. :try_end_48f} :catch_48f

    :catch_48f
    :try_start_48f
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_49b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48f .. :try_end_49b} :catch_49b

    :catch_49b
    :try_start_49b
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_4a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49b .. :try_end_4a7} :catch_4a7

    :catch_4a7
    :try_start_4a7
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_4b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a7 .. :try_end_4b3} :catch_4b3

    :catch_4b3
    return-void
.end method
