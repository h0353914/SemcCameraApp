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

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 59
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    .line 61
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    .line 65
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    .line 67
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    .line 70
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    .line 72
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    .line 74
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    const-wide/16 v2, 0x0

    .line 78
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    .line 79
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 80
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    const/4 v2, -0x1

    .line 81
    iput v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 82
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    .line 84
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isHeated()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Ljava/lang/String;
    .registers 1

    .line 46
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

    .line 794
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_14

    const/4 p1, 0x0

    goto :goto_12

    .line 799
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    goto :goto_12

    .line 796
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

    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    if-eqz v0, :cond_9

    .line 1086
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    .line 1088
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

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 131
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_40

    goto :goto_d

    .line 144
    :pswitch_2b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    goto :goto_d

    :catch_3b
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    return-object v0

    :pswitch_data_40
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

    .line 810
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

    .line 813
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 815
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v1, :cond_16

    :cond_30
    return-object v1
.end method

.method private getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;
    .registers 3

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-nez v0, :cond_c

    .line 632
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    .line 634
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
    .registers 1

    .line 108
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    return-object v0
.end method

.method private getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;
    .registers 3

    .line 464
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_18

    const-string p1, ""

    return-object p1

    :pswitch_e
    const-string p1, "EVERYONE_MODE"

    return-object p1

    :pswitch_11
    const-string p1, "BOKEH_EFFECT"

    return-object p1

    :pswitch_14
    const-string p1, "PORTRAIT_SELFIE"

    return-object p1

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    if-nez v0, :cond_c

    .line 596
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    .line 598
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    return-object v0
.end method

.method private getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;
    .registers 4

    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    if-nez v0, :cond_14

    .line 1070
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1071
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .registers 6

    .line 158
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 193
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4b

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

    goto :goto_4b

    .line 190
    :pswitch_2a
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FRONT_NIGHT_MODE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 187
    :pswitch_2d
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->NIGHT_MODE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 184
    :pswitch_30
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 181
    :pswitch_33
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 178
    :pswitch_36
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_WIDE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 175
    :pswitch_39
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 172
    :pswitch_3c
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 169
    :pswitch_3f
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 166
    :pswitch_42
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 163
    :pswitch_45
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_WIDE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    .line 160
    :pswitch_48
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 p1, 0x0

    :goto_4c
    return-object p1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_45
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

    .line 530
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2a

    const/4 p1, 0x0

    return-object p1

    .line 540
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_18

    .line 541
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 543
    :cond_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-object p1

    .line 533
    :pswitch_1b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_26

    .line 534
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 536
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

    .line 347
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_14

    const/4 p1, 0x0

    goto :goto_12

    .line 352
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    goto :goto_12

    .line 349
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

    .line 1064
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return v0
.end method

.method private sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 7

    .line 389
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 394
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4e

    .line 398
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

    .line 399
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 400
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 401
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_16

    .line 404
    :cond_35
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v4

    .line 405
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v4, p1, v3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 409
    :cond_4b
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_4e
    return-void
.end method

.method private setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 4

    .line 778
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 781
    :try_start_4
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_b

    return-void

    .line 785
    :cond_b
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 787
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
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

    .line 362
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 363
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

    .line 365
    :cond_30
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_5c

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newValues    : Basis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
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

    .line 365
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 369
    :cond_5c
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_63

    return-void

    .line 374
    :cond_63
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 375
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 376
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

    .line 377
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 379
    :cond_83
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    # setter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$102(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 383
    :cond_8e
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_91
    return-void
.end method


# virtual methods
.method public clearAllSettings()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCommonSettings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clearRecognizedScene()V
    .registers 2

    .line 829
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public clearSemiAutoSettingValues()V
    .registers 2

    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 563
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-void
.end method

.method public clearSettings()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearTemporarySettingValues()V
    .registers 2

    .line 669
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearSemiAutoSettingValues()V

    .line 670
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearRecognizedScene()V

    .line 671
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTemporarySettingValues()V

    return-void
.end method

.method public closeSetupWizard()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1152
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const/4 v0, -0x1

    .line 1153
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    const/4 v0, 0x0

    .line 1154
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    const/4 v0, 0x0

    .line 1155
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    .line 1156
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    return-void
.end method

.method public countUpHandSignLostNum()V
    .registers 2

    .line 665
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

    .line 988
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 990
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 992
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

    .line 993
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_37
    return-object v0
.end method

.method public getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 3

    .line 435
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_30

    const-string p1, ""

    return-object p1

    :pswitch_e
    const-string p1, "FRONT_NIGHT_MODE"

    return-object p1

    :pswitch_11
    const-string p1, "NIGHT_MODE"

    return-object p1

    :pswitch_14
    const-string p1, "SLOW_MOTION"

    return-object p1

    :pswitch_17
    const-string p1, "VIDEO_FRONT"

    return-object p1

    :pswitch_1a
    const-string p1, "VIDEO_WIDE"

    return-object p1

    :pswitch_1d
    const-string p1, "VIDEO_MAIN"

    return-object p1

    :pswitch_20
    const-string p1, "MUNAUL_FRONT"

    return-object p1

    :pswitch_23
    const-string p1, "SUPERIOR_AUTO_FRONT"

    return-object p1

    :pswitch_26
    const-string p1, "MUNAUL_MAIN"

    return-object p1

    :pswitch_29
    const-string p1, "SUPERIOR_AUTO_WIDE"

    return-object p1

    :pswitch_2c
    const-string p1, "SUPERIOR_AUTO_MAIN"

    return-object p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
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

    .line 1132
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    .line 1133
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    return-void
.end method

.method public isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z
    .registers 2

    .line 1050
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    .line 1051
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result p1

    return p1
.end method

.method public resetHandSignLostNum()V
    .registers 2

    .line 651
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->resetHandSignLostNum()V

    return-void
.end method

.method public sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 430
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 5

    .line 419
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 419
    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V
    .registers 5

    .line 425
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 425
    invoke-virtual {v0, p1, p2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventSettings()V
    .registers 2

    .line 414
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 415
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V
    .registers 11

    .line 1103
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1107
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1103
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method

.method public sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .registers 5

    .line 567
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->hasChange()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 569
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->applyChange()V

    .line 570
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 571
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {v1, p1, v2, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .registers 9

    .line 1167
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->UNKNOWN:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1168
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1169
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 1170
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-nez p1, :cond_14

    const-string p1, "TutorialType is null"

    .line 1171
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1175
    :cond_14
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_136

    goto/16 :goto_105

    .line 1378
    :pswitch_23
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_NIGHT_MODE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1375
    :pswitch_27
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_QR_DETECT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1372
    :pswitch_2b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LENS_CORRECTION:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1369
    :pswitch_2f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LEVEL:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1364
    :pswitch_33
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_BOKEH:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1361
    :pswitch_37
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_MONO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1358
    :pswitch_3b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LONG_SS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1355
    :pswitch_3f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_BOKEH_CAMERAUI:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    :pswitch_43
    packed-switch p2, :pswitch_data_176

    goto/16 :goto_105

    .line 1348
    :pswitch_48
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_ZOOM_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1345
    :pswitch_4c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_ZOOM_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    :pswitch_50
    packed-switch p2, :pswitch_data_17e

    goto/16 :goto_105

    .line 1336
    :pswitch_55
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1333
    :pswitch_59
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1330
    :pswitch_5d
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1325
    :pswitch_61
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SELFIE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1322
    :pswitch_65
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_HAND_SHUTTER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    :pswitch_69
    packed-switch p2, :pswitch_data_188

    goto/16 :goto_105

    .line 1315
    :pswitch_6e
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1312
    :pswitch_72
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1309
    :pswitch_76
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    :pswitch_7a
    packed-switch p2, :pswitch_data_192

    goto/16 :goto_105

    .line 1300
    :pswitch_7f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1297
    :pswitch_83
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1294
    :pswitch_87
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1291
    :pswitch_8b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1286
    :pswitch_8f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_PORTRAIT_SELFIE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1283
    :pswitch_93
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1280
    :pswitch_97
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    :pswitch_9b
    packed-switch p2, :pswitch_data_19e

    goto/16 :goto_105

    .line 1273
    :pswitch_a0
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1270
    :pswitch_a4
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    :pswitch_a8
    packed-switch p2, :pswitch_data_1a6

    goto/16 :goto_105

    .line 1261
    :pswitch_ad
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    .line 1258
    :pswitch_b1
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_105

    :pswitch_b5
    packed-switch p2, :pswitch_data_1ae

    goto :goto_105

    .line 1245
    :pswitch_b9
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_c0

    .line 1246
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1248
    :cond_c0
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1238
    :pswitch_c3
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_ca

    .line 1239
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1241
    :cond_ca
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1229
    :pswitch_cd
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_d4

    .line 1230
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1232
    :cond_d4
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    :pswitch_d7
    packed-switch p2, :pswitch_data_1b6

    goto :goto_105

    .line 1222
    :pswitch_db
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1219
    :pswitch_de
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1216
    :pswitch_e1
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    :pswitch_e4
    packed-switch p2, :pswitch_data_1c0

    goto :goto_105

    .line 1207
    :pswitch_e8
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1204
    :pswitch_eb
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1201
    :pswitch_ee
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1198
    :pswitch_f1
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1193
    :pswitch_f4
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->HAND_SHUTTER_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1190
    :pswitch_f7
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->EYE_POSITION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1187
    :pswitch_fa
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPERIOR_AUTO_FUSION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1184
    :pswitch_fd
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SIDE_SENSING_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1180
    :pswitch_100
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->PREDICTIVE_LAUNCH_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_105

    .line 1177
    :pswitch_103
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->LOCATION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1384
    :goto_105
    iget-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_134

    .line 1385
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    if-eqz p1, :cond_120

    .line 1386
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 1387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    sub-long/2addr p2, v1

    .line 1386
    invoke-virtual {p1, v0, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;J)V

    goto :goto_12e

    .line 1389
    :cond_120
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 1390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    sub-long/2addr v1, v3

    .line 1389
    invoke-virtual {p1, v0, p3, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;J)V

    .line 1392
    :goto_12e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    :cond_134
    return-void

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_103
        :pswitch_100
        :pswitch_fd
        :pswitch_fd
        :pswitch_fa
        :pswitch_f7
        :pswitch_f4
        :pswitch_e4
        :pswitch_d7
        :pswitch_cd
        :pswitch_b5
        :pswitch_a8
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_7a
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_50
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_48
    .end packed-switch

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_59
        :pswitch_55
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_76
        :pswitch_72
        :pswitch_6e
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
    .end packed-switch

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a0
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_ad
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_b9
    .end packed-switch

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_de
        :pswitch_db
    .end packed-switch

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
    .end packed-switch
.end method

.method public sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .registers 4

    .line 1397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iget v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    return-void
.end method

.method public sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 202
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_6

    .line 203
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 205
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

    if-nez p1, :cond_3

    return-void

    .line 678
    :cond_3
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 680
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7c

    .line 771
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_7b

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

    goto :goto_7b

    .line 740
    :pswitch_31
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_47

    packed-switch p2, :pswitch_data_d8

    goto :goto_7b

    .line 743
    :pswitch_41
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_7b

    .line 746
    :cond_47
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_7b

    .line 721
    :pswitch_4d
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_e0

    :pswitch_58
    goto :goto_7b

    .line 733
    :pswitch_59
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_7b

    .line 728
    :pswitch_5f
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_7b

    .line 715
    :pswitch_65
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_7b

    .line 704
    :pswitch_6b
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_7b

    .line 766
    :pswitch_71
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 767
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    :cond_7b
    :goto_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_4d
        :pswitch_4d
        :pswitch_31
        :pswitch_71
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x4
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_58
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_59
        :pswitch_58
        :pswitch_59
        :pswitch_59
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method

.method public setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V
    .registers 2

    .line 1077
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method public setChangedBokehStrength(II)V
    .registers 5

    .line 1434
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const-string v1, "BLUR"

    .line 1435
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1434
    invoke-virtual {v0, v1, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .registers 3

    .line 209
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    return-void
.end method

.method public setManualIqControlValueAfterChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 1413
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v0, :cond_34

    if-nez p1, :cond_7

    goto :goto_34

    :cond_7
    if-ne v0, p1, :cond_a

    return-void

    .line 1420
    :cond_a
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 1421
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1b

    goto :goto_33

    .line 1423
    :cond_1b
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 1424
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1423
    invoke-virtual {v1, v0, v2, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1425
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :goto_33
    return-void

    :cond_34
    :goto_34
    return-void
.end method

.method public setManualIqControlValueBeforeChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 4

    .line 1401
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 1402
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_11

    goto :goto_13

    .line 1404
    :cond_11
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mManualIqControlValueBeforeChange:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :goto_13
    return-void
.end method

.method public setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 1039
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setInvalid()V

    return-void
.end method

.method public setMeasurementThermal(Z)V
    .registers 2

    .line 1060
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return-void
.end method

.method public setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 1030
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setValid()V

    return-void
.end method

.method public setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V
    .registers 2

    .line 477
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    return-void
.end method

.method public setObjectTrackingTarget(Z)V
    .registers 3

    .line 602
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->setObjectTrackingTarget(Z)V

    return-void
.end method

.method public setPredictiveLaunchState(Z)V
    .registers 2

    .line 643
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    return-void
.end method

.method public setRecognizedScene(Ljava/lang/String;)V
    .registers 2

    .line 825
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public setSemiAutoSettingAmberBlueValue(I)V
    .registers 3

    .line 552
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    .line 553
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    return-void
.end method

.method public setSemiAutoSettingBrightnessValue(I)V
    .registers 3

    .line 557
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    .line 558
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    return-void
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 225
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    if-nez p1, :cond_a

    .line 227
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCurrentSetting(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    .line 230
    :cond_a
    new-instance v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result p1

    if-nez p1, :cond_23

    .line 234
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_22

    const-string p1, "setSettingsValue() : Not changed."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    return-void

    .line 238
    :cond_23
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_b2

    .line 331
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_b1

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

    goto :goto_b1

    .line 298
    :pswitch_4d
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_10e

    :pswitch_58
    goto :goto_88

    .line 306
    :pswitch_59
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_88

    .line 303
    :pswitch_5f
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_88

    .line 279
    :pswitch_65
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_122

    :pswitch_70
    goto :goto_88

    .line 291
    :pswitch_71
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_88

    .line 286
    :pswitch_77
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_88

    .line 273
    :pswitch_7d
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_88

    .line 262
    :pswitch_83
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 337
    :goto_88
    :pswitch_88
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p2

    .line 338
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

    .line 337
    invoke-virtual {p1, p2, v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    :cond_b1
    :goto_b1
    return-void

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_65
        :pswitch_65
        :pswitch_4d
        :pswitch_88
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x4
        :pswitch_5f
        :pswitch_5f
        :pswitch_58
        :pswitch_58
        :pswitch_59
        :pswitch_58
        :pswitch_5f
        :pswitch_5f
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_77
        :pswitch_70
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_71
        :pswitch_70
        :pswitch_71
        :pswitch_71
        :pswitch_77
        :pswitch_77
    .end packed-switch
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 1117
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1118
    invoke-interface {p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1120
    invoke-virtual {p0, v3, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 838
    iget-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getRecognizedSceneParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_20

    .line 843
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 845
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFlashParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_3b

    .line 850
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    .line 852
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFrontFlashParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_56

    .line 857
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 859
    :cond_56
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSelfTimerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p2

    if-eqz p2, :cond_84

    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 864
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_7f

    .line 866
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 868
    :cond_7f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_86

    :cond_84
    const-string p2, "INVALID"

    .line 872
    :goto_86
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFrontAngleParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p2

    if-eqz p2, :cond_a0

    .line 877
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->isEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSemiAutoParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    :cond_a0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-eqz p2, :cond_ab

    .line 883
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    :cond_ab
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_bb

    .line 889
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    .line 891
    :cond_bb
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->getParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    if-eqz p2, :cond_d1

    const-string p2, "True"

    goto :goto_d3

    :cond_d1
    const-string p2, "False"

    :goto_d3
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveLaunchParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 898
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v1

    .line 897
    invoke-virtual {p2, p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 213
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public startHandSignLostNumCounting()V
    .registers 2

    .line 658
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->startHandSignLostNumCounting()V

    return-void
.end method

.method public startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 2

    .line 1008
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->start()V

    return-void
.end method

.method public startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V
    .registers 5

    .line 1143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    .line 1144
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1145
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-void
.end method

.method public stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 3

    .line 1017
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p1

    .line 1018
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1019
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->stop()V

    .line 1021
    :cond_d
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->clear()V

    return-void
.end method
