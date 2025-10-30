.class public final enum Lcom/sonyericsson/android/camera/setting/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/setting/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum BATTERY_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum CONNECT_WIFI_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum EXTRA_HINT_STARTUP_COUNT_KEY:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_BOKEH:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_BOKEH_CAMERAUI:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_DUAL_CAMERA:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_DUAL_ZOOM_CAMERA:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_HDR:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_LEVEL:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_LONG_SS:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_MONO:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_NIGHT_MODE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_QR_DETECT:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_SELFIE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_SIDE_SENSE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FEATURE_TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum SECURITY_CONTEXTUAL_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum STORAGE_EXPLANATORY:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum STORAGE_EXPLANATORY_FOR_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum THERMAL_FORCE_FINISH:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum THERMAL_NOTE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum THERMAL_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_NIGHT_MODE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum VIDEO_HDR_CAUTION:Lcom/sonyericsson/android/camera/setting/MessageType;


# instance fields
.field private final mIsPrefix:Z

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 46

    .line 11
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "NO_MESSAGE"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 17
    new-instance v1, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v3, "THERMAL_NOTE"

    const/4 v4, 0x1

    const-string v5, "THERMAL_NOTE_DISABLED"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 23
    new-instance v3, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v5, "FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE"

    const/4 v6, 0x2

    const-string v7, "FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE_DISABLED"

    invoke-direct {v3, v5, v6, v7, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcom/sonyericsson/android/camera/setting/MessageType;->FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 30
    new-instance v5, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v7, "FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION"

    const/4 v8, 0x3

    const-string v9, "FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION_DISABLED"

    invoke-direct {v5, v7, v8, v9, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/sonyericsson/android/camera/setting/MessageType;->FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 37
    new-instance v7, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v9, "STORAGE_EXPLANATORY"

    const/4 v10, 0x4

    const-string v11, "STORAGE_EXPLANATORY_DISABLED"

    invoke-direct {v7, v9, v10, v11, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/setting/MessageType;->STORAGE_EXPLANATORY:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 43
    new-instance v9, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v11, "STORAGE_EXPLANATORY_FOR_SETTING"

    const/4 v12, 0x5

    const-string v13, "STORAGE_EXPLANATORY_FOR_SETTINGS_DISABLED"

    invoke-direct {v9, v11, v12, v13, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lcom/sonyericsson/android/camera/setting/MessageType;->STORAGE_EXPLANATORY_FOR_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 49
    new-instance v11, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v13, "BATTERY_WARNING"

    const/4 v14, 0x6

    const-string v15, "BATTERY_WARNING_DISABLED_"

    invoke-direct {v11, v13, v14, v15, v4}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v11, Lcom/sonyericsson/android/camera/setting/MessageType;->BATTERY_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 56
    new-instance v13, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "SECURITY_CONTEXTUAL_SETTING"

    const/4 v14, 0x7

    const-string v12, "security-dialog-contextual_setting-checked"

    invoke-direct {v13, v15, v14, v12, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lcom/sonyericsson/android/camera/setting/MessageType;->SECURITY_CONTEXTUAL_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 62
    new-instance v12, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "THERMAL_WARNING"

    const/16 v14, 0x8

    const-string v10, "THERMAL_WARNING_DISABLED_"

    invoke-direct {v12, v15, v14, v10, v4}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v12, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 68
    new-instance v10, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "THERMAL_FORCE_FINISH"

    const/16 v14, 0x9

    const-string v8, "THERMAL_DISABLED"

    invoke-direct {v10, v15, v14, v8, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_FORCE_FINISH:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 70
    new-instance v8, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "EXTRA_HINT_STARTUP_COUNT_KEY"

    const/16 v14, 0xa

    invoke-direct {v8, v15, v14, v15, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lcom/sonyericsson/android/camera/setting/MessageType;->EXTRA_HINT_STARTUP_COUNT_KEY:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 75
    new-instance v15, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "CONNECT_WIFI_SETTING"

    const/16 v6, 0xb

    const-string v4, "CONNECT_WIFI_SETTING_DISABLED"

    invoke-direct {v15, v14, v6, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v15, Lcom/sonyericsson/android/camera/setting/MessageType;->CONNECT_WIFI_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 80
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "SETUP_WIZARD"

    const/16 v6, 0xc

    move-object/from16 v16, v15

    const-string v15, "do-not-show-again-tutorial-setup-wizard"

    invoke-direct {v4, v14, v6, v15, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 85
    new-instance v14, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_EYE_GUIDE"

    const/16 v6, 0xd

    move-object/from16 v17, v4

    const-string v4, "do-not-show-again-tutorial-switch-to-eye-guide"

    invoke-direct {v14, v15, v6, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 90
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_HAND_SHUTTER"

    const/16 v6, 0xe

    move-object/from16 v18, v14

    const-string v14, "do-not-show-again-tutorial-switch-to-hand-shutter"

    invoke-direct {v4, v15, v6, v14, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 95
    new-instance v14, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_SUPER_SLOW_MOTION"

    const/16 v6, 0xf

    move-object/from16 v19, v4

    const-string v4, "do-not-show-again-super-slow-motion"

    invoke-direct {v14, v15, v6, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 100
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_SUPER_SLOW_MOTION_SHOT"

    const/16 v6, 0x10

    move-object/from16 v20, v14

    const-string v14, "do-not-show-again-super-slow-motion-shot"

    invoke-direct {v4, v15, v6, v14, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 105
    new-instance v14, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_STANDARD_SLOW_MOTION"

    const/16 v6, 0x11

    move-object/from16 v21, v4

    const-string v4, "do-not-show-again-standard-slow-motion"

    invoke-direct {v14, v15, v6, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 110
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_MANUAL_FUSION"

    const/16 v6, 0x12

    move-object/from16 v22, v14

    const-string v14, "do-not-show-again-manual-fusion"

    invoke-direct {v4, v15, v6, v14, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 115
    new-instance v14, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_VIDEO_FUSION"

    const/16 v6, 0x13

    move-object/from16 v23, v4

    const-string v4, "do-not-show-again-video-fusion"

    invoke-direct {v14, v15, v6, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 120
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "TUTORIAL_NIGHT_MODE"

    const/16 v6, 0x14

    move-object/from16 v24, v14

    const-string v14, "do-not-show-again-nigh-mode"

    invoke-direct {v4, v15, v6, v14, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_NIGHT_MODE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 125
    new-instance v14, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v15, "VIDEO_HDR_CAUTION"

    const/16 v6, 0x15

    move-object/from16 v25, v4

    const-string v4, "do-not-show-again-video-hdr"

    invoke-direct {v14, v15, v6, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lcom/sonyericsson/android/camera/setting/MessageType;->VIDEO_HDR_CAUTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 130
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v6, "PREDICTIVE_LAUNCH_DESCRIPTION"

    const/16 v15, 0x16

    move-object/from16 v26, v14

    const-string v14, "do-not-show-again-predictive-launch-description"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 135
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_PREDICTIVE_LAUNCH"

    const/16 v15, 0x17

    move-object/from16 v27, v4

    const-string v4, "do-not-show-again-feature-predictive-launch"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 140
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_SIDE_SENSE"

    const/16 v15, 0x18

    move-object/from16 v28, v6

    const-string v6, "do-not-show-again-feature-side-sense"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_SIDE_SENSE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 145
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_PORTRAIT_SELFIE"

    const/16 v15, 0x19

    move-object/from16 v29, v4

    const-string v4, "do-not-show-again-feature-portrait-selfie"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 150
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_DUAL_CAMERA"

    const/16 v15, 0x1a

    move-object/from16 v30, v6

    const-string v6, "do-not-show-again-feature-dual_camera"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_DUAL_CAMERA:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 155
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_HDR"

    const/16 v15, 0x1b

    move-object/from16 v31, v4

    const-string v4, "do-not-show-again-feature-hdr"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_HDR:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 160
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_SLOW_MOTION"

    const/16 v15, 0x1c

    move-object/from16 v32, v6

    const-string v6, "do-not-show-again-feature-slow-motion"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 165
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_HAND_SHUTTER"

    const/16 v15, 0x1d

    move-object/from16 v33, v4

    const-string v4, "do-not-show-again-feature-hand-shutter"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 170
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_SELFIE"

    const/16 v15, 0x1e

    move-object/from16 v34, v6

    const-string v6, "do-not-show-again-feature-selfie"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_SELFIE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 175
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_TRIPLE_CAMERA"

    const/16 v15, 0x1f

    move-object/from16 v35, v4

    const-string v4, "do-not-show-again-feature-triple-camera"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 180
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_DUAL_ZOOM_CAMERA"

    const/16 v15, 0x20

    move-object/from16 v36, v6

    const-string v6, "do-not-show-again-feature-dual_zoom-camera"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_DUAL_ZOOM_CAMERA:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 185
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_BOKEH_CAMERAUI"

    const/16 v15, 0x21

    move-object/from16 v37, v4

    const-string v4, "do-not-show-again-feature-bokeh-cameraui"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_BOKEH_CAMERAUI:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 190
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_LONG_SS"

    const/16 v15, 0x22

    move-object/from16 v38, v6

    const-string v6, "do-not-show-again-feature-long_ss"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_LONG_SS:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 195
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_MONO"

    const/16 v15, 0x23

    move-object/from16 v39, v4

    const-string v4, "do-not-show-again-feature-mono"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_MONO:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 200
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_BOKEH"

    const/16 v15, 0x24

    move-object/from16 v40, v6

    const-string v6, "do-not-show-again-feature-bokeh"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_BOKEH:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 205
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_LEVEL"

    const/16 v15, 0x25

    move-object/from16 v41, v4

    const-string v4, "do-not-show-again-feature-level"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_LEVEL:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 210
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_LENS_CORRECTION"

    const/16 v15, 0x26

    move-object/from16 v42, v6

    const-string v6, "do-not-show-again-feature-lens-correction"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 215
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_NIGHT_MODE"

    const/16 v15, 0x27

    move-object/from16 v43, v4

    const-string v4, "do-not-show-again-feature-night-mode"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_NIGHT_MODE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 220
    new-instance v4, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "FEATURE_QR_DETECT"

    const/16 v15, 0x28

    move-object/from16 v44, v6

    const-string v6, "do-not-show-again-feature-qr-detect"

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_QR_DETECT:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 222
    new-instance v6, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v14, "APPLICATION_NOTIFICATION_NETWORK"

    const/16 v15, 0x29

    move-object/from16 v45, v4

    const-string v4, "do-not-show-again-application-notification-network"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v4, 0x2a

    new-array v4, v4, [Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v27, v4, v0

    const/16 v0, 0x17

    aput-object v28, v4, v0

    const/16 v0, 0x18

    aput-object v29, v4, v0

    const/16 v0, 0x19

    aput-object v30, v4, v0

    const/16 v0, 0x1a

    aput-object v31, v4, v0

    const/16 v0, 0x1b

    aput-object v32, v4, v0

    const/16 v0, 0x1c

    aput-object v33, v4, v0

    const/16 v0, 0x1d

    aput-object v34, v4, v0

    const/16 v0, 0x1e

    aput-object v35, v4, v0

    const/16 v0, 0x1f

    aput-object v36, v4, v0

    const/16 v0, 0x20

    aput-object v37, v4, v0

    const/16 v0, 0x21

    aput-object v38, v4, v0

    const/16 v0, 0x22

    aput-object v39, v4, v0

    const/16 v0, 0x23

    aput-object v40, v4, v0

    const/16 v0, 0x24

    aput-object v41, v4, v0

    const/16 v0, 0x25

    aput-object v42, v4, v0

    const/16 v0, 0x26

    aput-object v43, v4, v0

    const/16 v0, 0x27

    aput-object v44, v4, v0

    const/16 v0, 0x28

    aput-object v45, v4, v0

    const/16 v0, 0x29

    aput-object v6, v4, v0

    .line 10
    sput-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/setting/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput-object p3, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mKey:Ljava/lang/String;

    .line 226
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mIsPrefix:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/setting/MessageType;
    .registers 2

    .line 10
    const-class v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/setting/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/setting/MessageType;
    .registers 1

    .line 10
    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/setting/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/setting/MessageType;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method isPrefix()Z
    .registers 1

    .line 234
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mIsPrefix:Z

    return p0
.end method
