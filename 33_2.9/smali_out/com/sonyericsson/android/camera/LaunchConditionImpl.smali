.class public Lcom/sonyericsson/android/camera/LaunchConditionImpl;
.super Ljava/lang/Object;
.source "LaunchConditionImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/LaunchCondition;


# static fields
.field private static final CAMERA_LAUNCH_HDR_WITH_4K_RESOLUTION:Ljava/lang/String; = "HDR_WITH_4K_RESOLUTION"

.field private static final CAMERA_LAUNCH_MANUAL_MODE:Ljava/lang/String; = "MANUAL_MODE"

.field private static final CAMERA_LAUNCH_SLOW_MOTION:Ljava/lang/String; = "SLOW_MOTION"

.field private static final CAMERA_LAUNCH_SUPER_SLOW_MOTION:Ljava/lang/String; = "SUPER_SLOW_MOTION"

.field private static final EXTRA_CAMERA_MODE:Ljava/lang/String; = "com.google.assistant.extra.CAMERA_MODE"

.field private static final EXTRA_CAMERA_OPEN_ONLY:Ljava/lang/String; = "com.google.assistant.extra.CAMERA_OPEN_ONLY"

.field private static final EXTRA_LAUNCH_CAMERA_MODE:Ljava/lang/String; = "android.intent.extra.CAMERA_MODE"

.field private static final EXTRA_TIMER_DURATION_SECONDS:Ljava/lang/String; = "com.google.assistant.extra.TIMER_DURATION_SECONDS"

.field private static final EXTRA_USE_FRONT_CAMERA:Ljava/lang/String; = "com.google.assistant.extra.USE_FRONT_CAMERA"

.field private static final EXTRA_USE_FRONT_CAMERA_MODE:Ljava/lang/String; = "android.intent.extra.USE_FRONT_CAMERA"

.field private static final RESET_LAUNCH_MODE_TIME_LIMIT_MILLIS:I = 0x7530

.field private static final RESET_LAUNCH_TRIGGER_INTERVAL:I = 0x7d0


# instance fields
.field private mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private mAddToMediaStore:Z

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mCheckStartTimeInMillis:J

.field private mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

.field private mExtraOutput:Landroid/net/Uri;

.field private mGoogleAssistantSelfTimer:I

.field private mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field private mInternalModeValue:I

.field private mIsGoogleAssistantLaunchOnly:Z

.field private mIsLaunchedByActivityResult:Z

.field private mIsLaunchedByIntent:Z

.field private mIsRestarted:Z

.field private mIsSecurePhotoLaunchedByIntent:Z

.field private mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

.field private mLaunchInternlCallingCapturingModeValue:I

.field private mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field private mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

.field private mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field private mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field private final mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V
    .registers 5

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 74
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 76
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    .line 85
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 93
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 95
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 97
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 99
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    const-wide/16 v1, 0x0

    .line 105
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCheckStartTimeInMillis:J

    const/4 v1, -0x1

    .line 107
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    .line 108
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    .line 120
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    return-void
.end method

.method private checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V
    .registers 8

    const-string v0, "is_voice_interaction_root"

    const/4 v1, 0x0

    .line 769
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p3, :cond_d

    const/4 p3, 0x1

    goto :goto_e

    :cond_d
    move p3, v1

    :goto_e
    const-string v0, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 772
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 774
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_55

    :cond_26
    const-string v0, "android.intent.category.VOICE"

    .line 776
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 777
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 778
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLiftTrigger(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 779
    :cond_46
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    :cond_4b
    if-eqz p3, :cond_55

    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    .line 783
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    :cond_55
    :goto_55
    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    .line 787
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 788
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    :cond_62
    const-string v0, "android.intent.extra.CAMERA_MODE"

    .line 790
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_68
    const-string v2, "android.intent.extra.USE_FRONT_CAMERA"

    .line 794
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.google.assistant.extra.USE_FRONT_CAMERA"

    .line 795
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 796
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e5

    const-string p2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    goto/16 :goto_14b

    :cond_8a
    const-string p1, "HDR_WITH_4K_RESOLUTION"

    .line 798
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 799
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 800
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto/16 :goto_14b

    :cond_a1
    const-string p1, "SLOW_MOTION"

    .line 802
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 803
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 804
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto/16 :goto_14b

    :cond_b7
    const-string p1, "SUPER_SLOW_MOTION"

    .line 805
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 806
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 807
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 808
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto/16 :goto_14b

    :cond_d5
    if-eqz v2, :cond_14b

    .line 811
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 812
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_14b

    :cond_e5
    if-eqz p3, :cond_11e

    const-string p1, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    .line 818
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10b

    .line 819
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 820
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setAssistSelfTimer(I)V

    const/16 p2, 0x1e

    const/4 p3, 0x3

    if-gt p1, p3, :cond_101

    move p1, p3

    goto :goto_104

    :cond_101
    if-lt p1, p2, :cond_104

    move p1, p2

    :cond_104
    :goto_104
    mul-int/lit16 p1, p1, 0x3e8

    .line 826
    iput p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    .line 827
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    goto :goto_115

    .line 828
    :cond_10b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunchOnly()Z

    move-result p1

    if-nez p1, :cond_115

    const/16 p1, 0xbb8

    .line 829
    iput p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    .line 831
    :cond_115
    :goto_115
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 832
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getGoogleAssistantSelfTimer()I

    move-result p2

    .line 831
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->setDurationInMillisecond(I)V

    :cond_11e
    const-string p1, "MANUAL_MODE"

    if-eqz v2, :cond_13e

    .line 835
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p2

    if-eqz p2, :cond_13e

    .line 836
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_136

    .line 837
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_14b

    .line 839
    :cond_136
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_14b

    .line 842
    :cond_13e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 843
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    :cond_14b
    :goto_14b
    return-void
.end method

.method private clearLaunchTrigger()V
    .registers 3

    .line 659
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isTimeIntervalBeyondThreshold()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_11

    .line 660
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    :cond_11
    return-void
.end method

.method private getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 3

    .line 714
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 716
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_e

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_e

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_10

    .line 719
    :cond_e
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    :cond_10
    return-object p0
.end method

.method private isLaunchedByCameraLongPress(Landroid/content/Intent;)Z
    .registers 3

    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    .line 699
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 700
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->CAMERA_LONG_PRESS:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private isLaunchedByLiftTrigger(Landroid/content/Intent;)Z
    .registers 3

    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    .line 709
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 710
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private isLaunchedByLockScreen(Landroid/content/Intent;)Z
    .registers 3

    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    .line 645
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 646
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->LOCKSCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z
    .registers 3

    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    .line 704
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 705
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->POWER_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private isResetCapturingMode(Z)Z
    .registers 6

    if-nez p1, :cond_36

    .line 726
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    if-nez p1, :cond_36

    .line 727
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    if-nez p1, :cond_17

    .line 728
    new-instance p1, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 732
    :cond_17
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string p1, "KEY_TIME_APP_PAUSED"

    const-wide/16 v0, 0x0

    .line 733
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readLong(Ljava/lang/String;J)J

    move-result-wide p0

    .line 734
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

    .line 858
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCheckStartTimeInMillis:J

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

.method private setAddToMediaStore(Z)V
    .registers 2

    .line 682
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAddToMediaStore:Z

    return-void
.end method

.method private setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V
    .registers 3

    .line 752
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 753
    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-void
.end method

.method private setExtraOutput(Landroid/net/Uri;)V
    .registers 2

    .line 665
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    return-void
.end method

.method private setIsSecurePhotoLaunchedByIntent(Z)V
    .registers 2

    .line 678
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsSecurePhotoLaunchedByIntent:Z

    return-void
.end method

.method private setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V
    .registers 2

    .line 674
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-void
.end method

.method private setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .registers 2

    .line 655
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    return-void
.end method

.method private setupLockMode(Landroid/content/Intent;)V
    .registers 5

    .line 686
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    const-string v0, "com.sonyericsson.android.camera.extra.LOCK_MODE"

    .line 687
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, -0x1

    .line 688
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_22

    .line 689
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 690
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 692
    :cond_22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_30

    .line 693
    :cond_26
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSecurePhotoLaunchedByIntent()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 694
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    :cond_30
    :goto_30
    return-void
.end method

.method private updateCheckStartTime()V
    .registers 3

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCheckStartTimeInMillis:J

    return-void
.end method


# virtual methods
.method public clearExtraOperation()V
    .registers 2

    .line 212
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-void
.end method

.method public clearLaunchCameraMode()V
    .registers 2

    .line 217
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    return-void
.end method

.method public clearLaunchInternalCallingCapturingMode()V
    .registers 2

    const/4 v0, -0x1

    .line 242
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    return-void
.end method

.method public clearLaunchInternalMode()V
    .registers 2

    const/4 v0, -0x1

    .line 232
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    return-void
.end method

.method doRestart(ZZ)V
    .registers 4

    .line 312
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    if-nez v0, :cond_1d

    if-eqz p1, :cond_c

    if-nez p2, :cond_1d

    .line 320
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isResetCapturingMode(Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 321
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_1d
    return-void
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
    .registers 5

    .line 200
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraOperation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    :cond_22
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-object p0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    return-object p0
.end method

.method public getGoogleAssistantSelfTimer()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    return p0
.end method

.method public getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-object p0
.end method

.method public getLaunchInternalCallingCapturingMode()I
    .registers 1

    .line 237
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    return p0
.end method

.method public getLaunchInternalMode()I
    .registers 1

    .line 227
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    return p0
.end method

.method getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    return-object p0
.end method

.method getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .registers 1

    .line 612
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-object p0
.end method

.method public getStorageTypeForOneshot()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method public getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    return-object p0
.end method

.method isCorrectExtraOutputPath()Z
    .registers 5

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    .line 624
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    invoke-static {v0, v3}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    .line 626
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getOneShotStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 627
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v3, :cond_3c

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    .line 628
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_3d

    .line 632
    :cond_2f
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    return v1
.end method

.method public isGoogleAssistantLaunch()Z
    .registers 2

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isGoogleAssistantLaunchOnly()Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    return p0
.end method

.method public isLaunchInternalMode()Z
    .registers 2

    .line 222
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method isLaunchedAsInSecure()Z
    .registers 2

    .line 595
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOneShot()Z
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isOneShotPhoto()Z
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isPhoto()Z

    move-result p0

    return p0
.end method

.method public isOneShotVideo()Z
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result p0

    return p0
.end method

.method public isQuickLaunch()Z
    .registers 3

    .line 148
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraSupported()Z

    move-result v0

    if-nez v0, :cond_18

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_16

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method isQuickLaunchOnFirstLaunch()Z
    .registers 3

    .line 589
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraSupported()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_12

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method isSecurePhotoLaunchedByIntent()Z
    .registers 1

    .line 641
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsSecurePhotoLaunchedByIntent:Z

    return p0
.end method

.method public isSmartLaunch()Z
    .registers 2

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method onActivityResult(I)V
    .registers 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_52

    const/16 v0, 0x9

    if-eq p1, v0, :cond_49

    const/16 v0, 0xe

    if-eq p1, v0, :cond_40

    packed-switch p1, :pswitch_data_5e

    goto :goto_5a

    .line 285
    :pswitch_10
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 286
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_5a

    .line 279
    :pswitch_20
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 280
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 281
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_5a

    .line 273
    :pswitch_30
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 274
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 275
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_5a

    .line 267
    :cond_40
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 268
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_5a

    .line 262
    :cond_49
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_5a

    .line 255
    :cond_52
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    :goto_5a
    const/4 p1, 0x1

    .line 293
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    return-void

    :pswitch_data_5e
    .packed-switch 0x10
        :pswitch_30
        :pswitch_30
        :pswitch_20
        :pswitch_10
    .end packed-switch
.end method

.method onPause()V
    .registers 3

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    .line 346
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    .line 347
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    const/4 v1, 0x1

    .line 348
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    .line 349
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    return-void
.end method

.method onRestart()V
    .registers 2

    .line 300
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchTrigger()V

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    return-void
.end method

.method onResume(ZZ)V
    .registers 4

    .line 334
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchTrigger()V

    .line 336
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    if-eqz v0, :cond_a

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->doRestart(ZZ)V

    :cond_a
    return-void
.end method

.method setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

.method setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V
    .registers 15

    .line 363
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 364
    :cond_20
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    .line 366
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    if-nez v0, :cond_2e

    .line 369
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v3

    .line 372
    :cond_2e
    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    .line 374
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "android.media.action.VIDEO_CAPTURE"

    const-string v7, "android.media.action.IMAGE_CAPTURE_SECURE"

    if-nez v5, :cond_4e

    .line 375
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 376
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_4e

    :cond_4c
    move v5, v1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v5, v2

    .line 377
    :goto_4f
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isResetCapturingMode(Z)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 378
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 380
    :cond_57
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    .line 384
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    .line 385
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    .line 387
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_7f

    new-array v5, v2, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setLaunchMode: action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 389
    :cond_7f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_392

    goto/16 :goto_104

    :sswitch_8c
    const-string v3, "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto/16 :goto_104

    :cond_96
    const/16 v5, 0xa

    goto/16 :goto_104

    :sswitch_9a
    const-string v3, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    goto/16 :goto_104

    :cond_a4
    const/16 v5, 0x9

    goto/16 :goto_104

    :sswitch_a8
    const-string v3, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b2

    goto/16 :goto_104

    :cond_b2
    const/16 v5, 0x8

    goto :goto_104

    :sswitch_b5
    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    goto :goto_104

    :cond_be
    const/4 v5, 0x7

    goto :goto_104

    :sswitch_c0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c7

    goto :goto_104

    :cond_c7
    const/4 v5, 0x6

    goto :goto_104

    :sswitch_c9
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    goto :goto_104

    :cond_d2
    const/4 v5, 0x5

    goto :goto_104

    :sswitch_d4
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

    goto :goto_104

    :cond_dd
    const/4 v5, 0x4

    goto :goto_104

    :sswitch_df
    const-string v3, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e8

    goto :goto_104

    :cond_e8
    const/4 v5, 0x3

    goto :goto_104

    :sswitch_ea
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f1

    goto :goto_104

    :cond_f1
    const/4 v5, 0x2

    goto :goto_104

    :sswitch_f3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fa

    goto :goto_104

    :cond_fa
    move v5, v2

    goto :goto_104

    :sswitch_fc
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_103

    goto :goto_104

    :cond_103
    move v5, v1

    :goto_104
    packed-switch v5, :pswitch_data_3c0

    .line 471
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11c

    .line 473
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 474
    :cond_11c
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_131

    .line 476
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 477
    :cond_131
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_146

    .line 479
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 482
    :cond_146
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 463
    :pswitch_14f
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 457
    :pswitch_158
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p2

    if-eqz p2, :cond_21e

    .line 458
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 466
    :pswitch_167
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 467
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 452
    :pswitch_174
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 453
    invoke-direct {p0, v0, p1, p4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_21e

    .line 411
    :pswitch_180
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 412
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    sget-object p4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p4, :cond_18c

    .line 413
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 415
    :cond_18c
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 434
    :pswitch_193
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 437
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_1b4

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_1b4

    .line 438
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result p4

    if-eqz p4, :cond_1ab

    if-eqz p3, :cond_1ab

    goto :goto_1b4

    .line 446
    :cond_1ab
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_21e

    .line 439
    :cond_1b4
    :goto_1b4
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_1c0

    .line 440
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_21e

    .line 442
    :cond_1c0
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_21e

    .line 420
    :pswitch_1c6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1e6

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1e6

    .line 421
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1db

    if-eqz p3, :cond_1db

    goto :goto_1e6

    .line 429
    :cond_1db
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 430
    invoke-direct {p0, v0, p1, p4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto :goto_21e

    .line 422
    :cond_1e6
    :goto_1e6
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_1f2

    .line 423
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_21e

    .line 425
    :cond_1f2
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_21e

    .line 393
    :pswitch_1f8
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_204

    .line 394
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_21e

    .line 396
    :cond_204
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_21e

    .line 406
    :pswitch_20a
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 407
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_21e

    .line 401
    :pswitch_215
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 488
    :cond_21e
    :goto_21e
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_22c

    .line 490
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setExtraOutput(Landroid/net/Uri;)V

    .line 491
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setAddToMediaStore(Z)V

    goto :goto_293

    .line 492
    :cond_22c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_28d

    .line 493
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_23e
    :goto_23e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_269

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 494
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_23e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### intent extra key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_23e

    .line 497
    :cond_269
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x21

    const-string v0, "output"

    if-ge p3, p4, :cond_278

    .line 498
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    goto :goto_280

    .line 500
    :cond_278
    const-class p3, Landroid/net/Uri;

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 502
    :goto_280
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setExtraOutput(Landroid/net/Uri;)V

    const-string p3, "addToMediaStore"

    .line 504
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 503
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setAddToMediaStore(Z)V

    goto :goto_293

    .line 506
    :cond_28d
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setExtraOutput(Landroid/net/Uri;)V

    .line 507
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setAddToMediaStore(Z)V

    .line 509
    :goto_293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2b5

    .line 510
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 512
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object p2

    .line 513
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 512
    invoke-static {p2, p3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getOneShotStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p2, p3, :cond_2b5

    .line 514
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 518
    :cond_2b5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setupLockMode(Landroid/content/Intent;)V

    const-string p2, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 520
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_307

    .line 522
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d2

    .line 523
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_307

    .line 524
    :cond_2d2
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2e4

    .line 525
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_307

    .line 526
    :cond_2e4
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2f6

    .line 527
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_307

    .line 528
    :cond_2f6
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_307

    .line 529
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 533
    :cond_307
    :goto_307
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_31c

    .line 534
    iget-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    if-ne p2, p3, :cond_316

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    goto :goto_318

    .line 535
    :cond_316
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 534
    :goto_318
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_33f

    .line 536
    :cond_31c
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_328

    .line 537
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_33f

    .line 538
    :cond_328
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_334

    .line 539
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_33f

    .line 540
    :cond_334
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLiftTrigger(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_33f

    .line 541
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 544
    :cond_33f
    :goto_33f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p2, p3, :cond_35c

    .line 545
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_357

    .line 546
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_35c

    .line 548
    :cond_357
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    :cond_35c
    :goto_35c
    const-string p2, "internal_mode"

    .line 552
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_373

    .line 553
    sget-object p3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 555
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p3

    .line 553
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    .line 556
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_373
    const-string p2, "capturing_mode"

    .line 559
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_38a

    .line 560
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 562
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p3

    .line 560
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    .line 563
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 566
    :cond_38a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 568
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    return-void

    :sswitch_data_392
    .sparse-switch
        -0x74de9aed -> :sswitch_fc
        -0x62d863dd -> :sswitch_f3
        -0x45f16402 -> :sswitch_ea
        -0x3f26bf -> :sswitch_df
        0x1ba9c1af -> :sswitch_d4
        0x1cf71807 -> :sswitch_c9
        0x29c9b033 -> :sswitch_c0
        0x43680478 -> :sswitch_b5
        0x515eaea0 -> :sswitch_a8
        0x69cac3f8 -> :sswitch_9a
        0x75e6b181 -> :sswitch_8c
    .end sparse-switch

    :pswitch_data_3c0
    .packed-switch 0x0
        :pswitch_215
        :pswitch_20a
        :pswitch_1f8
        :pswitch_1f8
        :pswitch_1c6
        :pswitch_193
        :pswitch_180
        :pswitch_174
        :pswitch_167
        :pswitch_158
        :pswitch_14f
    .end packed-switch
.end method

.method public shouldAddToMediaStore()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAddToMediaStore:Z

    return p0
.end method

.method shouldNotRemainRecentTask()Z
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_21

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method
