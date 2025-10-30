.class public Lcom/sonymobile/cameracommon/research/idd/IddUtil;
.super Ljava/lang/Object;
.source "IddUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;,
        Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final IDD_CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.idd.api.Idd"

.field private static final IDD_DUMP_ENABLE:Z = false

.field private static final IDD_METHOD_NAME:Ljava/lang/String; = "addAppDataJSON"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_AVAILABLE:Ljava/lang/String; = "is_camera_available"

.field private static final KEY_CAMERA_NOT_AVAILABLE_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_CLICK_TIMES:Ljava/lang/String; = "click_times"

.field private static final KEY_CLOSE_BY:Ljava/lang/String; = "close_by"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_ENVIRONMENT:Ljava/lang/String; = "environment"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_LAUNCHEDBY:Ljava/lang/String; = "launched_by"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_PERFORMANCE_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_PERFORMANCE_TARGET:Ljava/lang/String; = "target"

.field private static final KEY_PERFORMANCE_THERMAL_STATUS:Ljava/lang/String; = "thermal_status"

.field private static final KEY_PERFORMANCE_TIME:Ljava/lang/String; = "time"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_SETTING:Ljava/lang/String; = "setting"

.field private static final KEY_SUB_TYPE:Ljava/lang/String; = "subtype"

.field private static final KEY_TIMESTAMP_ORIGINAL_EVENT:Ljava/lang/String; = "timestamp_original_event"

.field private static final KEY_TRIGGER:Ljava/lang/String; = "trigger"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VALUE_AFTER:Ljava/lang/String; = "after"

.field private static final KEY_VALUE_BEFORE:Ljava/lang/String; = "before"

.field private static final KEY_VALUE_PAGE:Ljava/lang/String; = "page"

.field private static final KEY_VALUE_RECOVERY:Ljava/lang/String; = "recovery"

.field private static final KEY_VALUE_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_VALUE_TIME:Ljava/lang/String; = "time"

.field public static final KEY_VALUE_TO:Ljava/lang/String; = "to"

.field private static final KEY_VALUE_WAY:Ljava/lang/String; = "way"

.field private static final KEY_ZOOM_RATIO:Ljava/lang/String; = "zoom_ratio"

.field public static final TAG:Ljava/lang/String; = "IddUtil"

.field private static final THERMAL_STATUS_HIGH:Ljava/lang/String; = "HIGH"

.field private static final THERMAL_STATUS_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final TYPE_AUTO_POWEROFF_EVENT:Ljava/lang/String; = "AUTO_POWEROFF"

.field private static final TYPE_CAMERA_NOT_AVAILABLE_EVENT:Ljava/lang/String; = "CAMERA_NOT_AVAILABLE"

.field private static final TYPE_CAPABILITY_ERROR_EVENT:Ljava/lang/String; = "CAPABILITY_ERROR"

.field public static final TYPE_CHANGE_SETTING_EVENT:Ljava/lang/String; = "CHANGE_SETTING_EVENT"

.field private static final TYPE_CHECK_FAULT_PHOTO_EVENT:Ljava/lang/String; = "CHECK_FAULT_PHOTO"

.field private static final TYPE_FAULT_DETECTION_EVENT:Ljava/lang/String; = "FAULT_DETECTED"

.field private static final TYPE_LOWBATTERY_ERROR_EVENT:Ljava/lang/String; = "LOWBATTERY_ERROR"

.field private static final TYPE_MODE_CHANGE_EVENT:Ljava/lang/String; = "MODE_CHANGE_EVENT"

.field private static final TYPE_MODE_SELECTOR_EVENT:Ljava/lang/String; = "MODE_SELECTOR_EVENT"

.field private static final TYPE_PANORAMA_EVENT:Ljava/lang/String; = "PANORAMA"

.field private static final TYPE_PERFORMANCE_EVENT:Ljava/lang/String; = "PERFORMANCE"

.field public static final TYPE_PHOTO_EVENT:Ljava/lang/String; = "PHOTO_EVENT"

.field private static final TYPE_PREDICTIVE_LAUNCH_EVENT:Ljava/lang/String; = "PREDICTIVE_LAUNCH"

.field private static final TYPE_SELFTIMER_CANCEL_EVENT:Ljava/lang/String; = "SELFTIMER_CANCEL_EVENT"

.field private static final TYPE_SETUP_WIZARD_EVENT:Ljava/lang/String; = "SETUP_WIZARD_EVENT"

.field private static final TYPE_SHOW_FEATURE_CONTENT_EVENT:Ljava/lang/String; = "SHOW_FEATURE_CONTENT"

.field private static final TYPE_SHOW_FEATURE_LIST_EVENT:Ljava/lang/String; = "SHOW_FEATURE_LIST"

.field private static final TYPE_SLOW_MOTION_EVENT:Ljava/lang/String; = "SLOW_MOTION_EVENT"

.field private static final TYPE_THERMAL_ERROR_EVENT:Ljava/lang/String; = "THERMAL_ERROR"

.field private static final TYPE_THUMBNAIL_TRANSITION_EVENT:Ljava/lang/String; = "THUMBNAIL_TRANSITION_EVENT"

.field public static final TYPE_VIDEO_EVENT:Ljava/lang/String; = "VIDEO_EVENT"

.field private static final TYPE_ZOOM_LONGTAP_EVENT:Ljava/lang/String; = "ZOOM_LONGTAP_EVENT"

.field private static final TYPE_ZOOM_TAP_EVENT:Ljava/lang/String; = "ZOOM_TAP_EVENT"

.field private static mContext:Landroid/content/Context;

.field private static mIsIddSupportAlreadyChecked:Z

.field private static mIsIddSupported:Z

.field private static mIsSendingAllowed:Z

.field private static mLaunchedBy:Ljava/lang/String;

.field private static mPackageName:Ljava/lang/String;

.field private static mVersionCode:I

.field private static mVersionName:Ljava/lang/String;

.field private static mView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 111
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    const-string v0, ""

    .line 112
    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    .line 113
    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    sput v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I

    const-string v1, ""

    .line 116
    sput-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    const-string v1, ""

    .line 117
    sput-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    .line 119
    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 120
    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    const/4 v0, 0x1

    .line 122
    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsSendingAllowed:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 41
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 41
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    return-object v0
.end method

.method private static checkIddSupported()Z
    .registers 6

    .line 152
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    if-eqz v0, :cond_7

    .line 153
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    .line 156
    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    const/4 v1, 0x1

    :try_start_b
    const-string v2, "com.sonyericsson.idd.api.Idd"

    .line 158
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addAppDataJSON"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v4, v1

    const/4 v0, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 161
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_48

    const-string v0, "Idd.addAppDataJSON is supported"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_3a} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_3a} :catch_3b
    .catch Ljava/lang/LinkageError; {:try_start_b .. :try_end_3a} :catch_3b

    goto :goto_48

    .line 163
    :catch_3b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_48

    const-string v0, "Idd.addAppDataJSON is not supported"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 165
    :cond_48
    :goto_48
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    .line 166
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    return v0
.end method

.method private static getCurrentTimeZone()Ljava/lang/String;
    .registers 8

    .line 490
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-gez v0, :cond_3d

    .line 494
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "-%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v7, v0, 0x3c

    .line 495
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 494
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 497
    :cond_3d
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "+%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v7, v0, 0x3c

    .line 498
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 497
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :goto_5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    .line 247
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_38

    return-object v0

    :pswitch_f
    const-string p0, "SHOW_FEATURE_CONTENT"

    return-object p0

    :pswitch_12
    const-string p0, "SHOW_FEATURE_LIST"

    return-object p0

    :pswitch_15
    const-string p0, "AUTO_POWEROFF"

    return-object p0

    :pswitch_18
    const-string p0, "PREDICTIVE_LAUNCH"

    return-object p0

    :pswitch_1b
    const-string p0, "SLOW_MOTION_EVENT"

    return-object p0

    :pswitch_1e
    const-string p0, "LOWBATTERY_ERROR"

    return-object p0

    :pswitch_21
    const-string p0, "SELFTIMER_CANCEL_EVENT"

    return-object p0

    :pswitch_24
    const-string p0, "PANORAMA"

    return-object p0

    :pswitch_27
    const-string p0, "CAMERA_NOT_AVAILABLE"

    return-object p0

    :pswitch_2a
    const-string p0, "THERMAL_ERROR"

    return-object p0

    :pswitch_2d
    const-string p0, "MODE_SELECTOR_EVENT"

    return-object p0

    :pswitch_30
    const-string p0, "VIDEO_EVENT"

    return-object p0

    :pswitch_33
    const-string p0, "PHOTO_EVENT"

    return-object p0

    :cond_36
    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public static onCreate()V
    .registers 1

    .line 133
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static onDestroy()V
    .registers 1

    .line 190
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onDestroy()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static onPause(Z)V
    .registers 1

    return-void
.end method

.method public static onResume()V
    .registers 0

    return-void
.end method

.method public static sendCameraNotAvailableEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 544
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCameraNotAvailableEvent(): reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", available = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 547
    :cond_26
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "action"

    if-nez p1, :cond_35

    const-string p1, ""

    .line 548
    :cond_35
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "reason"

    if-nez p2, :cond_3f

    const-string p2, ""

    .line 549
    :cond_3f
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "is_camera_available"

    if-nez p3, :cond_49

    const-string p3, ""

    .line 550
    :cond_49
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 551
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 552
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendCapabilityErrorEvent(Ljava/lang/String;)V
    .registers 5

    .line 535
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCapabilityErrorEvent(): type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 537
    :cond_1e
    new-instance p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v0, "CAPABILITY_ERROR"

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendCheckFaultPhotoEvent(Ljava/lang/String;)V
    .registers 5

    .line 504
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCheckFaultPhotoEvent(): close_by = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 506
    :cond_1e
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "CHECK_FAULT_PHOTO"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "close_by"

    if-nez p0, :cond_2b

    const-string p0, ""

    .line 507
    :cond_2b
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 508
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 509
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 229
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 233
    :cond_7
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvent(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 233
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 237
    :cond_41
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "action"

    if-nez p1, :cond_50

    const-string p1, ""

    .line 238
    :cond_50
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "label"

    if-nez p2, :cond_5a

    const-string p2, ""

    .line 239
    :cond_5a
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "value"

    .line 240
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 384
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 388
    :cond_7
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventAddonModeChange(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 388
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 392
    :cond_41
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "action"

    if-nez p1, :cond_50

    const-string p1, ""

    .line 393
    :cond_50
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "label"

    if-nez p2, :cond_5a

    const-string p2, ""

    .line 394
    :cond_5a
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "way"

    if-nez p3, :cond_64

    const-string p3, ""

    .line 395
    :cond_64
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 322
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventAllSettings(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", env = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 322
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 326
    :cond_32
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "environment"

    .line 327
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "setting"

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 330
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 341
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventChangedSetting(): setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 345
    :cond_2e
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "CHANGE_SETTING_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "setting"

    if-nez p0, :cond_3b

    const-string p0, ""

    .line 346
    :cond_3b
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v0, "before"

    if-nez p1, :cond_45

    const-string p1, ""

    .line 347
    :cond_45
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "after"

    if-nez p2, :cond_4f

    const-string p2, ""

    .line 348
    :cond_4f
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 362
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventInternalModeChange(): mode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  To : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Way : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 366
    :cond_2e
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "MODE_CHANGE_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mode"

    if-nez p0, :cond_3b

    const-string p0, ""

    .line 367
    :cond_3b
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v0, "to"

    if-nez p1, :cond_45

    const-string p1, ""

    .line 368
    :cond_45
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "way"

    if-nez p2, :cond_4f

    const-string p2, ""

    .line 369
    :cond_4f
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendExternalCameraAppEvent(Lorg/json/JSONObject;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 478
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IddUtil"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExternalCameraAppEvent(): json = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 478
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 480
    :cond_2f
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 481
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 482
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "T"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getCurrentTimeZone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "timestamp_original_event"

    .line 485
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendFaultDetectionEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 524
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFaultDetectionEvent(): trigger = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 527
    :cond_26
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "FAULT_DETECTED"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    if-nez p1, :cond_33

    const-string p1, ""

    .line 528
    :cond_33
    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p1

    const-string v0, "trigger"

    if-nez p0, :cond_3d

    const-string p0, ""

    .line 529
    :cond_3d
    invoke-virtual {p1, v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 531
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 444
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFeatureContentEvent(): page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 447
    :cond_26
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "page"

    if-nez p1, :cond_35

    const-string p1, ""

    .line 448
    :cond_35
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "time"

    if-nez p2, :cond_3f

    const-string p2, ""

    .line 449
    :cond_3f
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 450
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 451
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method private static sendJsonData(Ljava/lang/String;)V
    .registers 5

    .line 557
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsSendingAllowed:Z

    if-eqz v0, :cond_3f

    .line 559
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setPackageInfo()V

    .line 561
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->checkIddSupported()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 570
    :try_start_d
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    sget v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1b} :catch_1c

    goto :goto_3f

    :catch_1c
    move-exception p0

    .line 573
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendJsonData(): Could not send event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 573
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .registers 8

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPerformanceData(): key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_f

    const-string v1, ""

    goto :goto_13

    .line 295
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time(millis) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isHeated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v2, "PERFORMANCE"

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "target"

    if-nez p0, :cond_37

    const-string p0, ""

    .line 299
    :cond_37
    invoke-virtual {v1, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v1, "time"

    .line 300
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "thermal_status"

    if-eqz p3, :cond_4c

    const-string p2, "HIGH"

    goto :goto_4e

    :cond_4c
    const-string p2, "NORMAL"

    .line 301
    :goto_4e
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 303
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", batteryLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "battery_level"

    .line 305
    invoke-virtual {p0, p1, p4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    .line 308
    :cond_71
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_7e

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 309
    :cond_7e
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;)V
    .registers 6

    .line 429
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendShowFeatureContentEvent(): way = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 431
    :cond_1e
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "way"

    if-nez p1, :cond_2d

    const-string p1, ""

    .line 432
    :cond_2d
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 433
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 434
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendThumbnailTransitionEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 513
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendThumbnailTransitionEvent(): duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", click_times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 516
    :cond_26
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "THUMBNAIL_TRANSITION_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "duration"

    if-nez p0, :cond_34

    const-string v2, ""

    goto :goto_35

    :cond_34
    move-object v2, p0

    .line 517
    :goto_35
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v0

    const-string v1, "click_times"

    if-nez p0, :cond_3f

    const-string p1, ""

    .line 518
    :cond_3f
    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 519
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 520
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendWizardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 410
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWizardEvent(): page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", recovery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 414
    :cond_36
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "SETUP_WIZARD_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "page"

    if-nez p0, :cond_43

    const-string p0, ""

    .line 415
    :cond_43
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string v0, "time"

    if-nez p1, :cond_4d

    const-string p1, ""

    .line 416
    :cond_4d
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "result"

    if-nez p2, :cond_57

    const-string p2, ""

    .line 417
    :cond_57
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    const-string p1, "recovery"

    if-nez p3, :cond_61

    const-string p3, ""

    .line 418
    :cond_61
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendZoomDialLongTapEvent()V
    .registers 2

    .line 464
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "sendZoomDialLongTapEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 466
    :cond_d
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "ZOOM_LONGTAP_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static sendZoomDialTapEvent(Ljava/lang/String;)V
    .registers 5

    .line 455
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendZoomDialTapEvent(): zoomRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 457
    :cond_1e
    new-instance v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v1, "ZOOM_TAP_EVENT"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "zoom_ratio"

    if-nez p0, :cond_2b

    const-string p0, ""

    .line 458
    :cond_2b
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object p0

    .line 459
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    return-void
.end method

.method public static setLaunchedBy(Ljava/lang/String;)V
    .registers 5

    .line 199
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLaunchedBy() : launchedBy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    :cond_1e
    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    return-void
.end method

.method private static setPackageInfo()V
    .registers 3

    .line 137
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_41

    const-string v0, ""

    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_41

    .line 140
    :cond_f
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    :try_start_1d
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    .line 144
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_32} :catch_33

    goto :goto_40

    .line 146
    :catch_33
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_40

    const-string v0, "setPackageInfo(): Could not get version info"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    :goto_41
    return-void
.end method

.method public static setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 5

    .line 211
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendView() : screen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    if-nez p0, :cond_21

    return-void

    .line 217
    :cond_21
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Screen;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    return-void
.end method
