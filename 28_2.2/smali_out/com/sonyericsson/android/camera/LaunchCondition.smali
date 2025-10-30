.class public Lcom/sonyericsson/android/camera/LaunchCondition;
.super Ljava/lang/Object;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;,
        Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;,
        Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;,
        Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
    }
.end annotation


# static fields
.field public static final ACTION_FRONT_STILL_IMAGE_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

.field public static final ACTION_FRONT_VIDEO_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

.field public static final ACTION_QUICK_LAUNCH:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

.field public static final ACTION_QUICK_LAUNCH_AND_CAPTURE:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

.field public static final CAMERA_IS_VOICE_INTERACTION_ROOT:Ljava/lang/String; = "is_voice_interaction_root"

.field private static final CAMERA_LAUNCH_HDR_WITH_4K_RESOLUTION:Ljava/lang/String; = "HDR_WITH_4K_RESOLUTION"

.field private static final CAMERA_LAUNCH_MANUAL_MODE:Ljava/lang/String; = "MANUAL_MODE"

.field private static final CAMERA_LAUNCH_SLOW_MOTION:Ljava/lang/String; = "SLOW_MOTION"

.field public static final CAMERA_LAUNCH_SOURCE_LIFT_TRIGGER:Ljava/lang/String; = "lift_to_launch_ml"

.field public static final CAMERA_LAUNCH_SOURCE_LOCKSCREEN:Ljava/lang/String; = "lockscreen_affordance"

.field public static final CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:Ljava/lang/String; = "power_double_tap"

.field private static final CAMERA_LAUNCH_SUPER_SLOW_MOTION:Ljava/lang/String; = "SUPER_SLOW_MOTION"

.field public static final EXTRA_CAMERA_LAUNCH_SOURCE:Ljava/lang/String; = "com.android.systemui.camera_launch_source"

.field private static final EXTRA_CAMERA_MODE:Ljava/lang/String; = "com.google.assistant.extra.CAMERA_MODE"

.field private static final EXTRA_CAMERA_OPEN_ONLY:Ljava/lang/String; = "com.google.assistant.extra.CAMERA_OPEN_ONLY"

.field public static final EXTRA_LAUNCHED_BY_ANOTHER_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera"

.field public static final EXTRA_LAUNCHED_BY_FAST_CAPTURING:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

.field private static final EXTRA_LAUNCH_CAMERA_MODE:Ljava/lang/String; = "android.intent.extra.CAMERA_MODE"

.field public static final EXTRA_LAUNCH_INTERNAL_CALLING_CAPTURING_MODE:Ljava/lang/String; = "capturing_mode"

.field public static final EXTRA_LAUNCH_INTERNAL_MODE:Ljava/lang/String; = "internal_mode"

.field public static final EXTRA_REQUEST_ADVANCED_SETTINGS_DIALOG_KEY:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogkey"

.field public static final EXTRA_REQUEST_ADVANCED_SETTINGS_DIALOG_OPEN:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen"

.field public static final EXTRA_REQUEST_STORAGE_SETTINGS_DIALOG_OPEN:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.requststoragesettingsdialogopen"

.field private static final EXTRA_TIMER_DURATION_SECONDS:Ljava/lang/String; = "com.google.assistant.extra.TIMER_DURATION_SECONDS"

.field private static final EXTRA_USE_FRONT_CAMERA:Ljava/lang/String; = "com.google.assistant.extra.USE_FRONT_CAMERA"

.field private static final EXTRA_USE_FRONT_CAMERA_MODE:Ljava/lang/String; = "android.intent.extra.USE_FRONT_CAMERA"

.field public static final LAUNCH_TRIGGER:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.launchTrigger"

.field public static final RESET_LAUNCH_MODE_TIME_LIMIT_MILLIS:I = 0x7530

.field private static final RESET_LAUNCH_TRIGGER_INTERVAL:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "LaunchCondition"


# instance fields
.field private mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private mAddToMediaStore:Z

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mCheckStartTimeInMillis:J

.field private mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

.field private mExtraOutput:Landroid/net/Uri;

.field private final mExtraSettings:Lcom/sonyericsson/android/camera/setting/ExtraSettings;

.field private mGoogleAssistantSelfTimer:I

.field private mInternalModeValue:I

.field private mIsGoogleAssistantLaunchOnly:Z

.field private mIsLaunchedByActivityResult:Z

.field private mIsLaunchedByIntent:Z

.field private mIsSecurePhotoLaunchedByIntent:Z

.field private mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

.field private mLaunchInternlCallingCapturingModeValue:I

.field private mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field private mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field private mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field private mUserSettingKeyName:Ljava/lang/String;

.field private final mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V
    .registers 5

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 129
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 130
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 131
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 142
    new-instance v0, Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/setting/ExtraSettings;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraSettings:Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    .line 227
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 229
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mGoogleAssistantSelfTimer:I

    const/4 v1, 0x1

    .line 233
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsGoogleAssistantLaunchOnly:Z

    const-wide/16 v1, 0x0

    .line 240
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mCheckStartTimeInMillis:J

    const/4 v1, -0x1

    .line 242
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mInternalModeValue:I

    .line 243
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchInternlCallingCapturingModeValue:I

    .line 396
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByIntent:Z

    .line 402
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByActivityResult:Z

    .line 687
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    return-void
.end method

.method private checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V
    .registers 11

    const-string v0, "is_voice_interaction_root"

    const/4 v1, 0x0

    .line 805
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    if-eqz p3, :cond_e

    move p3, v2

    goto :goto_f

    :cond_e
    move p3, v1

    :goto_f
    const-string v0, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 807
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 809
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_50

    :cond_27
    const-string v0, "android.intent.category.VOICE"

    .line 811
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 812
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByLiftTrigger(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 813
    :cond_41
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    :cond_46
    if-eqz p3, :cond_50

    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    .line 817
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsGoogleAssistantLaunchOnly:Z

    :cond_50
    :goto_50
    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    .line 822
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    .line 823
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_5f
    const-string v0, "android.intent.extra.CAMERA_MODE"

    .line 825
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_65
    const-string v3, "android.intent.extra.USE_FRONT_CAMERA"

    .line 828
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "com.google.assistant.extra.USE_FRONT_CAMERA"

    .line 829
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, -0x1

    .line 831
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1ba9c1af

    if-eq v5, v6, :cond_8c

    const v2, 0x43680478

    if-eq v5, v2, :cond_82

    goto :goto_95

    :cond_82
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    move v2, v1

    goto :goto_96

    :cond_8c
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    goto :goto_96

    :cond_95
    :goto_95
    move v2, v4

    :goto_96
    packed-switch v2, :pswitch_data_164

    goto/16 :goto_162

    :pswitch_9b
    if-eqz p3, :cond_d6

    const-string p1, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    .line 853
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c3

    const-string p1, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    .line 854
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 855
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setAssistSelfTimer(I)V

    const/16 p2, 0x1e

    const/4 p3, 0x3

    if-gt p1, p3, :cond_b9

    move p1, p3

    goto :goto_bc

    :cond_b9
    if-lt p1, p2, :cond_bc

    move p1, p2

    :cond_bc
    :goto_bc
    mul-int/lit16 p1, p1, 0x3e8

    .line 861
    iput p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mGoogleAssistantSelfTimer:I

    .line 862
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsGoogleAssistantLaunchOnly:Z

    goto :goto_cd

    .line 863
    :cond_c3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isGoogleAssistantLaunchOnly()Z

    move-result p1

    if-nez p1, :cond_cd

    const/16 p1, 0xbb8

    .line 864
    iput p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mGoogleAssistantSelfTimer:I

    .line 866
    :cond_cd
    :goto_cd
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 867
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getGoogleAssistantSelfTimer()I

    move-result p2

    .line 866
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->setDurationInMillisecond(I)V

    :cond_d6
    if-eqz v3, :cond_f7

    .line 870
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_f7

    const-string p1, "MANUAL_MODE"

    .line 871
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 872
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_162

    .line 874
    :cond_ef
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_162

    :cond_f7
    const-string p1, "MANUAL_MODE"

    .line 877
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_162

    .line 878
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_162

    :pswitch_107
    const-string p1, "HDR_WITH_4K_RESOLUTION"

    .line 833
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11d

    .line 834
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_162

    .line 835
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto :goto_162

    :cond_11d
    const-string p1, "SLOW_MOTION"

    .line 837
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_132

    .line 838
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 839
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto :goto_162

    :cond_132
    const-string p1, "SUPER_SLOW_MOTION"

    .line 840
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_153

    .line 841
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_162

    .line 842
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 843
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto :goto_162

    :cond_153
    if-eqz v3, :cond_162

    .line 846
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_162

    .line 847
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    :cond_162
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_107
        :pswitch_9b
    .end packed-switch
.end method

.method private clearLaunchTrigger()V
    .registers 3

    .line 344
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isTimeIntervalBeyondThreshold()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_11

    .line 346
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    :cond_11
    return-void
.end method

.method private getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 3

    .line 631
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 633
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_e

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_e

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_10

    .line 636
    :cond_e
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    :cond_10
    return-object p0
.end method

.method private isLaunchedByLiftTrigger(Landroid/content/Intent;)Z
    .registers 2

    const-string p0, "com.android.systemui.camera_launch_source"

    .line 621
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "lift_to_launch_ml"

    .line 622
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isLaunchedByLockScreen(Landroid/content/Intent;)Z
    .registers 2

    const-string v0, "com.android.systemui.camera_launch_source"

    .line 626
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "lockscreen_affordance"

    .line 627
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z
    .registers 2

    const-string p0, "com.android.systemui.camera_launch_source"

    .line 616
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "power_double_tap"

    .line 617
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isResetCapturingMode(Z)Z
    .registers 6

    if-nez p1, :cond_36

    .line 643
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByActivityResult:Z

    if-nez p1, :cond_36

    .line 644
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    if-nez p1, :cond_17

    .line 645
    new-instance p1, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 649
    :cond_17
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string p1, "KEY_TIME_APP_PAUSED"

    const-wide/16 v0, 0x0

    .line 650
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readLong(Ljava/lang/String;J)J

    move-result-wide p0

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_36

    cmp-long v0, v2, p0

    if-ltz v0, :cond_34

    sub-long/2addr v2, p0

    const-wide/16 p0, 0x7530

    cmp-long p0, v2, p0

    if-lez p0, :cond_36

    :cond_34
    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method private isTimeIntervalBeyondThreshold()Z
    .registers 5

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mCheckStartTimeInMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private readExtra(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen"

    const/4 v1, 0x0

    .line 734
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 738
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    const-string v0, "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogkey"

    .line 739
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mUserSettingKeyName:Ljava/lang/String;

    goto :goto_21

    .line 741
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object p1

    .line 742
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne p1, v0, :cond_21

    .line 743
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearExtraOperation()V

    :cond_21
    :goto_21
    return-void
.end method

.method private setAddToMediaStore(Z)V
    .registers 2

    .line 389
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mAddToMediaStore:Z

    return-void
.end method

.method private setExtraOutput(Landroid/net/Uri;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOutput:Landroid/net/Uri;

    return-void
.end method

.method private setIsSecurePhotoLaunchedByIntent(Z)V
    .registers 2

    .line 366
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsSecurePhotoLaunchedByIntent:Z

    return-void
.end method

.method private setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V
    .registers 2

    .line 789
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-void
.end method

.method private setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    return-void
.end method

.method private updateCheckStartTime()V
    .registers 3

    .line 914
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mCheckStartTimeInMillis:J

    return-void
.end method


# virtual methods
.method public clearExtraOperation()V
    .registers 2

    .line 716
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    const/4 v0, 0x0

    .line 717
    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mUserSettingKeyName:Ljava/lang/String;

    return-void
.end method

.method public clearLaunchCameraMode()V
    .registers 2

    .line 780
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    return-void
.end method

.method public clearLaunchInternalCallingCapturingMode()V
    .registers 2

    const/4 v0, -0x1

    .line 939
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchInternlCallingCapturingModeValue:I

    return-void
.end method

.method public clearLaunchInternalMode()V
    .registers 2

    const/4 v0, -0x1

    .line 931
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mInternalModeValue:I

    return-void
.end method

.method public getAddToMediaStore()Z
    .registers 1

    .line 385
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mAddToMediaStore:Z

    return p0
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 711
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
    .registers 5

    .line 695
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraOperation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 697
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-object p0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .registers 1

    .line 370
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOutput:Landroid/net/Uri;

    return-object p0
.end method

.method public getExtraSettings()Lcom/sonyericsson/android/camera/setting/ExtraSettings;
    .registers 1

    .line 701
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraSettings:Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    return-object p0
.end method

.method public getGoogleAssistantSelfTimer()I
    .registers 1

    .line 763
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mGoogleAssistantSelfTimer:I

    return p0
.end method

.method public getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .registers 1

    .line 754
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-object p0
.end method

.method public getLaunchInternalCallingCapturingMode()I
    .registers 1

    .line 935
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchInternlCallingCapturingModeValue:I

    return p0
.end method

.method public getLaunchInternalMode()I
    .registers 1

    .line 927
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mInternalModeValue:I

    return p0
.end method

.method public getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;
    .registers 1

    .line 324
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    return-object p0
.end method

.method public getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .registers 1

    .line 721
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-object p0
.end method

.method public getStorageTypeForOneshot()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 1

    .line 730
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method public getUserSettingKeyName()Ljava/lang/String;
    .registers 5

    .line 705
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserSettingKeyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mUserSettingKeyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 707
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mUserSettingKeyName:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;
    .registers 1

    .line 691
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    return-object p0
.end method

.method public isCorrectExtraOutputPath()Z
    .registers 5

    .line 896
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOutput:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    .line 897
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOutput:Landroid/net/Uri;

    invoke-static {v0, v3}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOutput:Landroid/net/Uri;

    .line 899
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 900
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v3, :cond_3c

    const-string v0, "content"

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOutput:Landroid/net/Uri;

    .line 901
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_3d

    .line 905
    :cond_2f
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOutput:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    return v1
.end method

.method public isGoogleAssistantLaunchOnly()Z
    .registers 1

    .line 772
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsGoogleAssistantLaunchOnly:Z

    return p0
.end method

.method public isLaunchInternalMode()Z
    .registers 2

    .line 923
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mInternalModeValue:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isSecurePhotoLaunchedByIntent()Z
    .registers 1

    .line 362
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsSecurePhotoLaunchedByIntent:Z

    return p0
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .registers 3

    const/16 p2, 0xe

    if-eq p1, p2, :cond_4d

    packed-switch p1, :pswitch_data_5a

    packed-switch p1, :pswitch_data_62

    goto :goto_55

    .line 284
    :pswitch_b
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 285
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 286
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->updateCheckStartTime()V

    goto :goto_55

    .line 278
    :pswitch_1b
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 279
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 280
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->updateCheckStartTime()V

    goto :goto_55

    .line 272
    :pswitch_2b
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 273
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->updateCheckStartTime()V

    goto :goto_55

    .line 261
    :pswitch_3b
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->updateCheckStartTime()V

    goto :goto_55

    .line 254
    :pswitch_44
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->updateCheckStartTime()V

    goto :goto_55

    .line 266
    :cond_4d
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 267
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->updateCheckStartTime()V

    :goto_55
    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByActivityResult:Z

    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x8
        :pswitch_44
        :pswitch_3b
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x10
        :pswitch_2b
        :pswitch_2b
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByIntent:Z

    .line 355
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByActivityResult:Z

    .line 356
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mGoogleAssistantSelfTimer:I

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsGoogleAssistantLaunchOnly:Z

    .line 358
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraSettings:Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->clearAll()V

    return-void
.end method

.method public onRestart(ZZ)V
    .registers 4

    .line 301
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearLaunchTrigger()V

    .line 303
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByIntent:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByActivityResult:Z

    if-nez v0, :cond_20

    if-eqz p1, :cond_f

    if-nez p2, :cond_20

    .line 311
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isResetCapturingMode(Z)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 312
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_20
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 340
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearLaunchTrigger()V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    .line 683
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V
    .registers 3

    .line 669
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 670
    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-void
.end method

.method public setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 10

    .line 413
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 414
    :cond_1e
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsLaunchedByIntent:Z

    .line 416
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string v0, "android.intent.action.MAIN"

    .line 419
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    :cond_2b
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    if-eq v0, v3, :cond_3f

    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    if-eq v0, v3, :cond_3f

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    if-ne v0, v3, :cond_3d

    goto :goto_3f

    :cond_3d
    move v3, v1

    goto :goto_40

    :cond_3f
    :goto_3f
    move v3, v2

    .line 427
    :goto_40
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isResetCapturingMode(Z)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 428
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 430
    :cond_48
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearLaunchCameraMode()V

    .line 434
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mGoogleAssistantSelfTimer:I

    .line 435
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mIsGoogleAssistantLaunchOnly:Z

    .line 437
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_6e

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLaunchMode: action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6e
    const/4 v3, -0x1

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_352

    goto/16 :goto_e9

    :sswitch_78
    const-string v4, "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/16 v3, 0x9

    goto/16 :goto_e9

    :sswitch_84
    const-string v4, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/16 v3, 0x8

    goto :goto_e9

    :sswitch_8f
    const-string v4, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/16 v3, 0xa

    goto :goto_e9

    :sswitch_9a
    const-string v4, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/4 v3, 0x7

    goto :goto_e9

    :sswitch_a4
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/4 v3, 0x4

    goto :goto_e9

    :sswitch_ae
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/4 v3, 0x6

    goto :goto_e9

    :sswitch_b8
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/4 v3, 0x5

    goto :goto_e9

    :sswitch_c2
    const-string v4, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    move v3, v2

    goto :goto_e9

    :sswitch_cc
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    move v3, v1

    goto :goto_e9

    :sswitch_d6
    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/4 v3, 0x3

    goto :goto_e9

    :sswitch_e0
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const/4 v3, 0x2

    :cond_e9
    :goto_e9
    packed-switch v3, :pswitch_data_380

    .line 519
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c4

    .line 521
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 514
    :pswitch_101
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 515
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 511
    :pswitch_10e
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 505
    :pswitch_117
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p2

    if-eqz p2, :cond_1f3

    .line 506
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 500
    :pswitch_126
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 501
    invoke-direct {p0, v0, p1, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_1f3

    .line 483
    :pswitch_132
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 486
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_14b

    invoke-static {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_142

    goto :goto_14b

    .line 494
    :cond_142
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 487
    :cond_14b
    :goto_14b
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_158

    .line 488
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 490
    :cond_158
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 470
    :pswitch_15f
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_178

    invoke-static {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_16c

    goto :goto_178

    .line 478
    :cond_16c
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 479
    invoke-direct {p0, v0, p1, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_1f3

    .line 471
    :cond_178
    :goto_178
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_185

    .line 472
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_1f3

    .line 474
    :cond_185
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 461
    :pswitch_18b
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 462
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, v0, :cond_197

    .line 463
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 465
    :cond_197
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p3, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 456
    :pswitch_19d
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 457
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 451
    :pswitch_1a8
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 443
    :pswitch_1b2
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_1be

    .line 444
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 446
    :cond_1be
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 522
    :cond_1c4
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d8

    .line 524
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 525
    :cond_1d8
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1ec

    .line 527
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_1f3

    .line 530
    :cond_1ec
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 536
    :cond_1f3
    :goto_1f3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_201

    .line 538
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setExtraOutput(Landroid/net/Uri;)V

    .line 539
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setAddToMediaStore(Z)V

    goto :goto_257

    .line 540
    :cond_201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_251

    .line 541
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_213
    :goto_213
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_213

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### intent extra key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_213

    :cond_23c
    const-string p3, "output"

    .line 545
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 546
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setExtraOutput(Landroid/net/Uri;)V

    const-string p3, "addToMediaStore"

    .line 548
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 547
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setAddToMediaStore(Z)V

    goto :goto_257

    .line 550
    :cond_251
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setExtraOutput(Landroid/net/Uri;)V

    .line 551
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setAddToMediaStore(Z)V

    .line 553
    :goto_257
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_279

    .line 554
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object p2

    .line 557
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 556
    invoke-static {p2, p3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p2, p3, :cond_279

    .line 558
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 561
    :cond_279
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->readExtra(Landroid/content/Intent;)V

    const-string p2, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 563
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2cb

    .line 565
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_296

    .line 566
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_2cb

    .line 567
    :cond_296
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2a8

    .line 568
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_2cb

    .line 569
    :cond_2a8
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2ba

    .line 570
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_2cb

    .line 571
    :cond_2ba
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2cb

    .line 572
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 576
    :cond_2cb
    :goto_2cb
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne p2, p3, :cond_2d8

    .line 577
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->SETTINGS_SECURE_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 580
    :cond_2d8
    invoke-static {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2e4

    .line 581
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_2fb

    .line 582
    :cond_2e4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2f0

    .line 583
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_2fb

    .line 584
    :cond_2f0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchedByLiftTrigger(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2fb

    .line 585
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 588
    :cond_2fb
    :goto_2fb
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne p2, p3, :cond_318

    .line 589
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_313

    .line 590
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_318

    .line 592
    :cond_313
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    :cond_318
    :goto_318
    const-string p2, "internal_mode"

    .line 596
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_333

    const-string p2, "internal_mode"

    .line 597
    sget-object p3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 599
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p3

    .line 597
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mInternalModeValue:I

    const-string p2, "internal_mode"

    .line 600
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_333
    const-string p2, "capturing_mode"

    .line 603
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_34e

    const-string p2, "capturing_mode"

    .line 604
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 606
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p3

    .line 604
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/LaunchCondition;->mLaunchInternlCallingCapturingModeValue:I

    const-string p2, "capturing_mode"

    .line 607
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 610
    :cond_34e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->updateCheckStartTime()V

    return-void

    :sswitch_data_352
    .sparse-switch
        -0x74de9aed -> :sswitch_e0
        -0x62d863dd -> :sswitch_d6
        -0x45f16402 -> :sswitch_cc
        -0x3f26bf -> :sswitch_c2
        0x1ba9c1af -> :sswitch_b8
        0x1cf71807 -> :sswitch_ae
        0x29c9b033 -> :sswitch_a4
        0x43680478 -> :sswitch_9a
        0x515eaea0 -> :sswitch_8f
        0x69cac3f8 -> :sswitch_84
        0x75e6b181 -> :sswitch_78
    .end sparse-switch

    :pswitch_data_380
    .packed-switch 0x0
        :pswitch_1b2
        :pswitch_1b2
        :pswitch_1a8
        :pswitch_19d
        :pswitch_18b
        :pswitch_15f
        :pswitch_132
        :pswitch_126
        :pswitch_117
        :pswitch_10e
        :pswitch_101
    .end packed-switch
.end method
