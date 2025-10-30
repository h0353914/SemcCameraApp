.class public Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LocalResearchUtil"

.field private static final sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;


# instance fields
.field private final mAllSettingsPhoto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllSettingsVideo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

.field private mCurrentPageIndex:I

.field private mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

.field private mIsHeated:Z

.field private mIsReadMore:Z

.field private mModeChangeMethod:Ljava/lang/String;

.field private mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

.field private mPerformanceDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictiveLaunchState:Z

.field private mRecognizedScene:Ljava/lang/String;

.field private mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

.field private mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

.field private final mSettingsPhoto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettingsVideo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field private mWizardStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 54
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 56
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    .line 58
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    .line 62
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    .line 64
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    .line 67
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    .line 69
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    .line 71
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    const-wide/16 v2, 0x0

    .line 75
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    .line 76
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 77
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isHeated()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Ljava/lang/String;
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getBatteryLevel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 735
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_14

    const/4 p0, 0x0

    goto :goto_12

    .line 740
    :pswitch_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    goto :goto_12

    .line 737
    :pswitch_10
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    :goto_12
    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private getBatteryLevel()Ljava/lang/String;
    .registers 2

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    if-eqz v0, :cond_b

    .line 1022
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    .line 1024
    :goto_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommonSettings(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3c

    goto :goto_d

    .line 136
    :pswitch_2b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_3b
    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method private getCurrentSetting(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 5

    const/4 v0, 0x2

    .line 751
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 754
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 756
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v1, :cond_16

    :cond_30
    return-object v1
.end method

.method private getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-nez v0, :cond_c

    .line 585
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    .line 587
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    return-object p0
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
    .registers 1

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    return-object v0
.end method

.method private getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;
    .registers 2

    .line 423
    sget-object p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_e

    const-string p0, ""

    return-object p0

    :cond_e
    const-string p0, "PORTRAIT_SELFIE"

    return-object p0
.end method

.method private getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    if-nez v0, :cond_c

    .line 549
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    .line 551
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    return-object p0
.end method

.method private getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    if-nez v0, :cond_14

    .line 1006
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1007
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .registers 5

    .line 147
    sget-object p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_42

    .line 170
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3f

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreen() : Not supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3f

    .line 167
    :pswitch_2a
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_40

    .line 164
    :pswitch_2d
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_40

    .line 161
    :pswitch_30
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_40

    .line 158
    :pswitch_33
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_40

    .line 155
    :pswitch_36
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_40

    .line 152
    :pswitch_39
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_40

    .line 149
    :pswitch_3c
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 p0, 0x0

    :goto_40
    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
    .end packed-switch
.end method

.method private getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;
    .registers 3

    .line 483
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2a

    const/4 p0, 0x0

    return-object p0

    .line 493
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_18

    .line 494
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 496
    :cond_18
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-object p0

    .line 486
    :pswitch_1b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_26

    .line 487
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 489
    :cond_26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_d
        :pswitch_1b
        :pswitch_d
    .end packed-switch
.end method

.method private getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_14

    const/4 p0, 0x0

    goto :goto_12

    .line 319
    :pswitch_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    goto :goto_12

    .line 316
    :pswitch_10
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    :goto_12
    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private isHeated()Z
    .registers 1

    .line 1000
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return p0
.end method

.method private sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 6

    .line 356
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 361
    :cond_7
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4e

    .line 365
    :cond_e
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 366
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 367
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 368
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_35

    goto :goto_16

    .line 371
    :cond_35
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v3

    .line 372
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v3, p1, v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 376
    :cond_4b
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :goto_4e
    return-void
.end method

.method private setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 4

    .line 723
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 725
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    .line 729
    :cond_b
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")V"
        }
    .end annotation

    .line 329
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 330
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSettingsPhotoVideo() : Category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 332
    :cond_30
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_5c

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newValues    : Basis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Change = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 332
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 336
    :cond_5c
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_63

    return-void

    .line 341
    :cond_63
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8e

    .line 342
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 343
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 344
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 346
    :cond_83
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    # setter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$102(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 350
    :cond_8e
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_91
    return-void
.end method


# virtual methods
.method public clearAllSettings()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCommonSettings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clearRecognizedScene()V
    .registers 2

    .line 770
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public clearSemiAutoSettingValues()V
    .registers 2

    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 516
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-void
.end method

.method public clearSettings()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearTemporarySettingValues()V
    .registers 1

    .line 622
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearSemiAutoSettingValues()V

    .line 623
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearRecognizedScene()V

    .line 624
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTemporarySettingValues()V

    return-void
.end method

.method public closeSetupWizard()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1086
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const/4 v0, -0x1

    .line 1087
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    const/4 v0, 0x0

    .line 1088
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-void
.end method

.method public countUpHandSignLostNum()V
    .registers 1

    .line 618
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->countUpHandSignLostNum()V

    return-void
.end method

.method public getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 924
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 926
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 928
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 929
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 931
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_37
    return-object v0
.end method

.method public getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 2

    .line 402
    sget-object p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_24

    const-string p0, ""

    return-object p0

    :pswitch_e
    const-string p0, "SLOW_MOTION"

    return-object p0

    :pswitch_11
    const-string p0, "VIDEO_FRONT"

    return-object p0

    :pswitch_14
    const-string p0, "VIDEO_MAIN"

    return-object p0

    :pswitch_17
    const-string p0, "MUNAUL_FRONT"

    return-object p0

    :pswitch_1a
    const-string p0, "SUPERIOR_AUTO_FRONT"

    return-object p0

    :pswitch_1d
    const-string p0, "MUNAUL_MAIN"

    return-object p0

    :pswitch_20
    const-string p0, "SUPERIOR_AUTO_MAIN"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public initSetupwizard(Z)V
    .registers 2

    .line 1067
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    return-void
.end method

.method public isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z
    .registers 2

    .line 986
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    .line 987
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result p0

    return p0
.end method

.method public resetHandSignLostNum()V
    .registers 1

    .line 604
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->resetHandSignLostNum()V

    return-void
.end method

.method public sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 397
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 386
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 386
    invoke-virtual {v0, p1, p2, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V
    .registers 4

    .line 392
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 392
    invoke-virtual {v0, p1, p2, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventSettings()V
    .registers 2

    .line 381
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 382
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V
    .registers 11

    .line 1039
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1043
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1039
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method

.method public sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 4

    .line 520
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p0

    .line 521
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 522
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->applyChange()V

    .line 523
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 524
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->toString()Ljava/lang/String;

    move-result-object p0

    .line 523
    invoke-virtual {v0, p1, v1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .registers 9

    .line 1098
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->UNKNOWN:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1099
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1100
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 1101
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    if-nez p1, :cond_14

    const-string p0, "TutorialType is null"

    .line 1102
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1106
    :cond_14
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_aa

    goto/16 :goto_8d

    :pswitch_23
    packed-switch p2, :pswitch_data_c6

    goto/16 :goto_8d

    .line 1203
    :pswitch_28
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_8d

    .line 1200
    :pswitch_2c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_8d

    :pswitch_30
    packed-switch p2, :pswitch_data_ce

    goto/16 :goto_8d

    .line 1191
    :pswitch_35
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_8d

    .line 1188
    :pswitch_39
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_8d

    :pswitch_3d
    packed-switch p2, :pswitch_data_d6

    goto :goto_8d

    .line 1175
    :pswitch_41
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_48

    .line 1176
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1178
    :cond_48
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1168
    :pswitch_4b
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_52

    .line 1169
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1171
    :cond_52
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1159
    :pswitch_55
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_5c

    .line 1160
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1162
    :cond_5c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    :pswitch_5f
    packed-switch p2, :pswitch_data_de

    goto :goto_8d

    .line 1152
    :pswitch_63
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1149
    :pswitch_66
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1146
    :pswitch_69
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    :pswitch_6c
    packed-switch p2, :pswitch_data_e8

    goto :goto_8d

    .line 1137
    :pswitch_70
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1134
    :pswitch_73
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1131
    :pswitch_76
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1128
    :pswitch_79
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1123
    :pswitch_7c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->HAND_SHUTTER_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1120
    :pswitch_7f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->EYE_POSITION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1117
    :pswitch_82
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPERIOR_AUTO_FUSION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1114
    :pswitch_85
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SIDE_SENSING_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1111
    :pswitch_88
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->PREDICTIVE_LAUNCH_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_8d

    .line 1108
    :pswitch_8b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->LOCATION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1214
    :goto_8d
    iget-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_a9

    .line 1215
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    sub-long/2addr v1, v3

    .line 1215
    invoke-virtual {p1, v0, p3, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;J)V

    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    :cond_a9
    return-void

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_6c
        :pswitch_5f
        :pswitch_55
        :pswitch_3d
        :pswitch_30
        :pswitch_23
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_28
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_39
        :pswitch_35
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_41
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_69
        :pswitch_66
        :pswitch_63
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
    .end packed-switch
.end method

.method public sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .registers 4

    .line 1222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    iget v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    return-void
.end method

.method public sendView(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 179
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 6

    .line 628
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 630
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_78

    .line 716
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_77

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAllSettingsValue() : Not supported : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_77

    .line 684
    :pswitch_2e
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_43

    packed-switch p2, :pswitch_data_ce

    goto :goto_77

    .line 687
    :pswitch_3d
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_77

    .line 690
    :cond_43
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_77

    .line 667
    :pswitch_49
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_d6

    goto :goto_77

    .line 677
    :pswitch_55
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_77

    .line 672
    :pswitch_5b
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_77

    .line 661
    :pswitch_61
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_77

    .line 650
    :pswitch_67
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_77

    .line 711
    :pswitch_6d
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 712
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    :cond_77
    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_49
        :pswitch_49
        :pswitch_2e
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x3
        :pswitch_3d
        :pswitch_3d
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method

.method public setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V
    .registers 2

    .line 1013
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method public setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V
    .registers 2

    .line 183
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    return-void
.end method

.method public setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 975
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setInvalid()V

    return-void
.end method

.method public setMeasurementThermal(Z)V
    .registers 2

    .line 996
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return-void
.end method

.method public setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 966
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setValid()V

    return-void
.end method

.method public setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V
    .registers 2

    .line 432
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    return-void
.end method

.method public setObjectTrackingTarget(Z)V
    .registers 2

    .line 555
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->setObjectTrackingTarget(Z)V

    return-void
.end method

.method public setPredictiveLaunchState(Z)V
    .registers 2

    .line 596
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    return-void
.end method

.method public setRecognizedScene(Ljava/lang/String;)V
    .registers 2

    .line 766
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public setSemiAutoSettingAmberBlueValue(I)V
    .registers 3

    .line 505
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    .line 506
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    return-void
.end method

.method public setSemiAutoSettingBrightnessValue(I)V
    .registers 3

    .line 510
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    .line 511
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    return-void
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 199
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    if-nez p1, :cond_a

    .line 201
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCurrentSetting(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    .line 204
    :cond_a
    new-instance v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result p1

    if-nez p1, :cond_23

    .line 208
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_22

    const-string p0, "setSettingsValue() : Not changed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    return-void

    .line 212
    :cond_23
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_b6

    .line 298
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_b4

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setSettingsValue() : Not supported : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_b4

    .line 266
    :pswitch_4d
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_62

    packed-switch p1, :pswitch_data_10c

    goto :goto_8b

    .line 269
    :pswitch_5c
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8b

    .line 272
    :cond_62
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8b

    .line 249
    :pswitch_68
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_114

    goto :goto_8b

    .line 259
    :pswitch_74
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8b

    .line 254
    :pswitch_7a
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8b

    .line 243
    :pswitch_80
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8b

    .line 232
    :pswitch_86
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 304
    :goto_8b
    :pswitch_8b
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p2

    .line 305
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {p1, p2, v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    :cond_b4
    :goto_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_68
        :pswitch_68
        :pswitch_4d
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x3
        :pswitch_5c
        :pswitch_5c
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_74
        :pswitch_74
        :pswitch_74
    .end packed-switch
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 1053
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1054
    invoke-interface {p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1056
    invoke-virtual {p0, v3, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 776
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 779
    iget-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getRecognizedSceneParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_20

    .line 784
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 786
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFlashParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_3b

    .line 791
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 793
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSelfTimerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p2

    if-eqz p2, :cond_69

    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 798
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_64

    .line 800
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 802
    :cond_64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6b

    :cond_69
    const-string p2, "INVALID"

    .line 806
    :goto_6b
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFrontAngleParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p2

    if-eqz p2, :cond_85

    .line 811
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->isEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSemiAutoParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_85
    iget-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-eqz p2, :cond_92

    .line 817
    iget-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_92
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_a2

    .line 823
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    .line 825
    :cond_a2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->getParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    if-eqz p2, :cond_b8

    const-string p2, "True"

    goto :goto_ba

    :cond_b8
    const-string p2, "False"

    :goto_ba
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveLaunchParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 832
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    .line 831
    invoke-virtual {p2, p1, v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 187
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public startHandSignLostNumCounting()V
    .registers 1

    .line 611
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->startHandSignLostNumCounting()V

    return-void
.end method

.method public startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 944
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->start()V

    return-void
.end method

.method public startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;I)V
    .registers 5

    .line 1077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    .line 1078
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1079
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-void
.end method

.method public stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 953
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    .line 954
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 955
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->stop()V

    .line 957
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->clear()V

    return-void
.end method
