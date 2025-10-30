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

.field private mIsFeatureListType:Z

.field private mIsHeated:Z

.field private mIsReadMore:Z

.field private mIsRecovery:Z

.field private mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

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

.field private mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

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

    .line 101
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
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 77
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    const/4 v2, -0x1

    .line 78
    iput v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 79
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    .line 80
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsRecovery:Z

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

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

    .line 761
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_14

    const/4 p1, 0x0

    goto :goto_12

    .line 766
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    goto :goto_12

    .line 763
    :pswitch_10
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    :goto_12
    return-object p1

    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private getBatteryLevel()Ljava/lang/String;
    .registers 2

    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    if-eqz v0, :cond_9

    .line 1046
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    .line 1048
    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCommonSettings(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
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

    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 129
    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3c

    goto :goto_d

    .line 141
    :pswitch_2b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_3b
    return-object v0

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
        :pswitch_2b
    .end packed-switch
.end method

.method private getCurrentSetting(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 5

    const/4 v0, 0x2

    .line 777
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

    .line 780
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 782
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v1, :cond_16

    :cond_30
    return-object v1
.end method

.method private getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-nez v0, :cond_c

    .line 608
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    .line 610
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
    .registers 1

    .line 106
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    return-object v0
.end method

.method private getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;
    .registers 3

    .line 444
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const-string p1, ""

    return-object p1

    :cond_e
    const-string p1, "PORTRAIT_SELFIE"

    return-object p1
.end method

.method private getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;
    .registers 3

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    if-nez v0, :cond_c

    .line 572
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    .line 574
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    return-object v0
.end method

.method private getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;
    .registers 4

    .line 1028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    if-nez v0, :cond_14

    .line 1030
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1031
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .registers 6

    .line 152
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 181
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreen() : Not supported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_45

    .line 178
    :pswitch_2a
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 175
    :pswitch_2d
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 172
    :pswitch_30
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_WIDE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 169
    :pswitch_33
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 166
    :pswitch_36
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 163
    :pswitch_39
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 160
    :pswitch_3c
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 157
    :pswitch_3f
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_WIDE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    .line 154
    :pswitch_42
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p1, 0x0

    :goto_46
    return-object p1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
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

    .line 506
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2a

    const/4 p1, 0x0

    return-object p1

    .line 516
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_18

    .line 517
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 519
    :cond_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-object p1

    .line 509
    :pswitch_1b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_26

    .line 510
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 512
    :cond_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-object p1

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

    .line 331
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_14

    const/4 p1, 0x0

    goto :goto_12

    .line 336
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    goto :goto_12

    .line 333
    :pswitch_10
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    :goto_12
    return-object p1

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private isHeated()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return v0
.end method

.method private sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 7

    .line 373
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 378
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4e

    .line 382
    :cond_e
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 384
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 385
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_16

    .line 388
    :cond_35
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v4

    .line 389
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {v4, p1, v3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 393
    :cond_4b
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_4e
    return-void
.end method

.method private setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 4

    .line 749
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 751
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_b

    return-void

    .line 755
    :cond_b
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 346
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 347
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

    .line 349
    :cond_30
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_5c

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newValues    : Basis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
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

    .line 349
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 353
    :cond_5c
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_63

    return-void

    .line 358
    :cond_63
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 359
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 360
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$000(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 361
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 363
    :cond_83
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    # setter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$102(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 367
    :cond_8e
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_91
    return-void
.end method


# virtual methods
.method public clearAllSettings()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCommonSettings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clearRecognizedScene()V
    .registers 2

    .line 796
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public clearSemiAutoSettingValues()V
    .registers 2

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 539
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-void
.end method

.method public clearSettings()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearTemporarySettingValues()V
    .registers 2

    .line 645
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearSemiAutoSettingValues()V

    .line 646
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearRecognizedScene()V

    .line 647
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTemporarySettingValues()V

    return-void
.end method

.method public closeSetupWizard()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1112
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const/4 v0, -0x1

    .line 1113
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    const/4 v0, 0x0

    .line 1114
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    const/4 v0, 0x0

    .line 1115
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    .line 1116
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    return-void
.end method

.method public countUpHandSignLostNum()V
    .registers 2

    .line 641
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->countUpHandSignLostNum()V

    return-void
.end method

.method public getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;
    .registers 5
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

    .line 948
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 950
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 952
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 953
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 955
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_37
    return-object v0
.end method

.method public getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 3

    .line 419
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2a

    const-string p1, ""

    return-object p1

    :pswitch_e
    const-string p1, "SLOW_MOTION"

    return-object p1

    :pswitch_11
    const-string p1, "VIDEO_FRONT"

    return-object p1

    :pswitch_14
    const-string p1, "VIDEO_WIDE"

    return-object p1

    :pswitch_17
    const-string p1, "VIDEO_MAIN"

    return-object p1

    :pswitch_1a
    const-string p1, "MUNAUL_FRONT"

    return-object p1

    :pswitch_1d
    const-string p1, "SUPERIOR_AUTO_FRONT"

    return-object p1

    :pswitch_20
    const-string p1, "MUNAUL_MAIN"

    return-object p1

    :pswitch_23
    const-string p1, "SUPERIOR_AUTO_WIDE"

    return-object p1

    :pswitch_26
    const-string p1, "SUPERIOR_AUTO_MAIN"

    return-object p1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public initSetupwizard(ZZ)V
    .registers 3

    .line 1092
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    .line 1093
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    return-void
.end method

.method public isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z
    .registers 2

    .line 1010
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    .line 1011
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result p1

    return p1
.end method

.method public resetHandSignLostNum()V
    .registers 2

    .line 627
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->resetHandSignLostNum()V

    return-void
.end method

.method public sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 414
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 5

    .line 403
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 403
    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V
    .registers 5

    .line 409
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 409
    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventSettings()V
    .registers 2

    .line 398
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 399
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V
    .registers 11

    .line 1063
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1067
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1063
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method

.method public sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 5

    .line 543
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->hasChange()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 545
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->applyChange()V

    .line 546
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 547
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {v1, p1, v2, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .registers 11

    .line 1127
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->UNKNOWN:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1128
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1129
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 1130
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-nez p1, :cond_14

    const-string p1, "TutorialType is null"

    .line 1131
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1135
    :cond_14
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_180

    goto/16 :goto_148

    .line 1345
    :pswitch_23
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LENS_CORRECTION:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1340
    :pswitch_28
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_ANIMAL_EYE_AF:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1342
    :pswitch_2a
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TAGGING:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1337
    :pswitch_2f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LEVEL:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1334
    :pswitch_34
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_FAULT_DETECTION:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1331
    :pswitch_39
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_EYE_AF:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1328
    :pswitch_3e
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_BOKEH:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1325
    :pswitch_43
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_MONO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1322
    :pswitch_48
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LONG_SS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1319
    :pswitch_4d
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_BOKEH_CAMERAUI:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_52
    packed-switch p2, :pswitch_data_1c8

    goto/16 :goto_148

    .line 1312
    :pswitch_57
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_ZOOM_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1309
    :pswitch_5c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_ZOOM_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_61
    packed-switch p2, :pswitch_data_1d0

    goto/16 :goto_148

    .line 1300
    :pswitch_66
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1297
    :pswitch_6b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1294
    :pswitch_70
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1289
    :pswitch_75
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SELFIE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1286
    :pswitch_7a
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_HAND_SHUTTER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_7f
    packed-switch p2, :pswitch_data_1da

    goto/16 :goto_148

    .line 1279
    :pswitch_84
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1276
    :pswitch_89
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1273
    :pswitch_8e
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_93
    packed-switch p2, :pswitch_data_1e4

    goto/16 :goto_148

    .line 1264
    :pswitch_98
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1261
    :pswitch_9d
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1258
    :pswitch_a2
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1255
    :pswitch_a7
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1250
    :pswitch_ac
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_PORTRAIT_SELFIE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1247
    :pswitch_b1
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1243
    :pswitch_b6
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_bb
    packed-switch p2, :pswitch_data_1f0

    goto/16 :goto_148

    .line 1236
    :pswitch_c0
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1233
    :pswitch_c5
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_ca
    packed-switch p2, :pswitch_data_1f8

    goto/16 :goto_148

    .line 1224
    :pswitch_cf
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1221
    :pswitch_d4
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_d9
    packed-switch p2, :pswitch_data_200

    goto/16 :goto_148

    .line 1208
    :pswitch_de
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_e7

    .line 1209
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1211
    :cond_e7
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1201
    :pswitch_ec
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_f5

    .line 1202
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1204
    :cond_f5
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1192
    :pswitch_fa
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_103

    .line 1193
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    .line 1195
    :cond_103
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto/16 :goto_149

    :pswitch_108
    packed-switch p2, :pswitch_data_208

    goto :goto_148

    .line 1185
    :pswitch_10c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1182
    :pswitch_110
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1179
    :pswitch_114
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    :pswitch_118
    packed-switch p2, :pswitch_data_212

    goto :goto_148

    .line 1170
    :pswitch_11c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1167
    :pswitch_120
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1164
    :pswitch_124
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1161
    :pswitch_128
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1156
    :pswitch_12c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->LENS_CORRECTION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1153
    :pswitch_130
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->HAND_SHUTTER_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1150
    :pswitch_134
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->EYE_POSITION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1147
    :pswitch_138
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPERIOR_AUTO_FUSION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1144
    :pswitch_13c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SIDE_SENSING_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1140
    :pswitch_140
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->PREDICTIVE_LAUNCH_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    .line 1137
    :pswitch_144
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->LOCATION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    move-object v2, v0

    goto :goto_149

    :goto_148
    move-object v2, v0

    .line 1351
    :goto_149
    iget-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_17f

    .line 1352
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    if-eqz p1, :cond_164

    .line 1353
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 1354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    sub-long/2addr p2, v0

    .line 1353
    invoke-virtual {p1, v2, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;J)V

    goto :goto_179

    .line 1356
    :cond_164
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    .line 1357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    sub-long v4, p1, v3

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsRecovery:Z

    move-object v3, p3

    .line 1356
    invoke-virtual/range {v1 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;JZ)V

    const/4 p1, 0x0

    .line 1359
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsRecovery:Z

    .line 1361
    :goto_179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    :cond_17f
    return-void

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_144
        :pswitch_140
        :pswitch_13c
        :pswitch_13c
        :pswitch_138
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_118
        :pswitch_108
        :pswitch_fa
        :pswitch_d9
        :pswitch_ca
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_b1
        :pswitch_ac
        :pswitch_93
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
        :pswitch_61
        :pswitch_52
        :pswitch_4d
        :pswitch_48
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_28
        :pswitch_2a
        :pswitch_23
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_57
    .end packed-switch

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6b
        :pswitch_66
    .end packed-switch

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_89
        :pswitch_84
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
    .end packed-switch

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_c0
    .end packed-switch

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_cf
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_de
    .end packed-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_114
        :pswitch_110
        :pswitch_10c
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_128
        :pswitch_124
        :pswitch_120
        :pswitch_11c
    .end packed-switch
.end method

.method public sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .registers 4

    .line 1366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iget v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    return-void
.end method

.method public sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 190
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_6

    .line 191
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 193
    :cond_6
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 6

    .line 651
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 653
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    .line 742
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_78

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllSettingsValue() : Not supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_78

    .line 711
    :pswitch_2e
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_44

    packed-switch p2, :pswitch_data_d6

    goto :goto_78

    .line 714
    :pswitch_3e
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_78

    .line 717
    :cond_44
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_78

    .line 694
    :pswitch_4a
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_de

    :pswitch_55
    goto :goto_78

    .line 704
    :pswitch_56
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_78

    .line 699
    :pswitch_5c
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_78

    .line 688
    :pswitch_62
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_78

    .line 677
    :pswitch_68
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_78

    .line 737
    :pswitch_6e
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 738
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    :cond_78
    :goto_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_4a
        :pswitch_4a
        :pswitch_2e
        :pswitch_6e
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x4
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_55
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_56
        :pswitch_55
        :pswitch_56
        :pswitch_56
    .end packed-switch
.end method

.method public setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V
    .registers 2

    .line 1037
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method public setChangedBokehStrength(II)V
    .registers 5

    .line 1407
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const-string v1, "BLUR"

    .line 1408
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1407
    invoke-virtual {v0, v1, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsRecovery(Z)V
    .registers 2

    .line 1370
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsRecovery:Z

    return-void
.end method

.method public setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .registers 3

    .line 197
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    return-void
.end method

.method public setManualIqControlValueAfterChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 1386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v0, :cond_34

    if-nez p1, :cond_7

    goto :goto_34

    :cond_7
    if-ne v0, p1, :cond_a

    return-void

    .line 1393
    :cond_a
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 1394
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1b

    goto :goto_33

    .line 1396
    :cond_1b
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 1397
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1396
    invoke-virtual {v1, v0, v2, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1398
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :goto_33
    return-void

    :cond_34
    :goto_34
    return-void
.end method

.method public setManualIqControlValueBeforeChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 4

    .line 1374
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 1375
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_11

    goto :goto_13

    .line 1377
    :cond_11
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :goto_13
    return-void
.end method

.method public setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 999
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setInvalid()V

    return-void
.end method

.method public setMeasurementThermal(Z)V
    .registers 2

    .line 1020
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return-void
.end method

.method public setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 990
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setValid()V

    return-void
.end method

.method public setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V
    .registers 2

    .line 453
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    return-void
.end method

.method public setObjectTrackingTarget(Z)V
    .registers 3

    .line 578
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->setObjectTrackingTarget(Z)V

    return-void
.end method

.method public setPredictiveLaunchState(Z)V
    .registers 2

    .line 619
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    return-void
.end method

.method public setRecognizedScene(Ljava/lang/String;)V
    .registers 2

    .line 792
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public setSemiAutoSettingAmberBlueValue(I)V
    .registers 3

    .line 528
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    .line 529
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    return-void
.end method

.method public setSemiAutoSettingBrightnessValue(I)V
    .registers 3

    .line 533
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    .line 534
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    return-void
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 213
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    if-nez p1, :cond_a

    .line 215
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCurrentSetting(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    .line 218
    :cond_a
    new-instance v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result p1

    if-nez p1, :cond_23

    .line 222
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_22

    const-string p1, "setSettingsValue() : Not changed."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    return-void

    .line 226
    :cond_23
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_b6

    .line 315
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_b5

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSettingsValue() : Not supported : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_b5

    .line 284
    :pswitch_4d
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_63

    packed-switch p1, :pswitch_data_112

    goto :goto_8c

    .line 287
    :pswitch_5d
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8c

    .line 290
    :cond_63
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8c

    .line 267
    :pswitch_69
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_11a

    :pswitch_74
    goto :goto_8c

    .line 277
    :pswitch_75
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8c

    .line 272
    :pswitch_7b
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8c

    .line 261
    :pswitch_81
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_8c

    .line 250
    :pswitch_87
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 321
    :goto_8c
    :pswitch_8c
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p2

    .line 322
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

    .line 321
    invoke-virtual {p1, p2, v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    :cond_b5
    :goto_b5
    return-void

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_69
        :pswitch_69
        :pswitch_4d
        :pswitch_8c
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x4
        :pswitch_5d
        :pswitch_5d
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_74
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_75
        :pswitch_74
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 1077
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1078
    invoke-interface {p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1080
    invoke-virtual {p0, v3, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 805
    iget-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getRecognizedSceneParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_20

    .line 810
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 812
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFlashParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_3b

    .line 817
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 819
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSelfTimerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p2

    if-eqz p2, :cond_69

    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 824
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_64

    .line 826
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 828
    :cond_64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6b

    :cond_69
    const-string p2, "INVALID"

    .line 832
    :goto_6b
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFrontAngleParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p2

    if-eqz p2, :cond_85

    .line 837
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->isEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSemiAutoParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_85
    iget-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-eqz p2, :cond_90

    .line 843
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_90
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_a0

    .line 849
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    .line 851
    :cond_a0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->getParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    if-eqz p2, :cond_b6

    const-string p2, "True"

    goto :goto_b8

    :cond_b6
    const-string p2, "False"

    :goto_b8
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveLaunchParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 858
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v1

    .line 857
    invoke-virtual {p2, p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 201
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public startHandSignLostNumCounting()V
    .registers 2

    .line 634
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->startHandSignLostNumCounting()V

    return-void
.end method

.method public startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 968
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->start()V

    return-void
.end method

.method public startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V
    .registers 5

    .line 1103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    .line 1104
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1105
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-void
.end method

.method public stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 3

    .line 977
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    .line 978
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 979
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->stop()V

    .line 981
    :cond_d
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->clear()V

    return-void
.end method
