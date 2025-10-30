.class public Lcom/sonyericsson/android/camera/parameter/UserSettingManager;
.super Ljava/lang/Object;
.source "UserSettingManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/UserSettings;


# static fields
.field public static final TAG:Ljava/lang/String; = "UserSettingManager"


# instance fields
.field private mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

.field private final mContext:Landroid/content/Context;

.field private mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

.field private final mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

.field private final mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

.field private mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field private volatile mParametersEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field private final mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private final mUserSettingApplicableEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .registers 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    .line 97
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getUserSettingsLoader()Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    .line 99
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    .line 100
    new-instance p2, Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-direct {p2, p1}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    .line 101
    new-instance p2, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-direct {p2, p1}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    .line 102
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-void
.end method

.method private applyChangedValues(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 438
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    .line 439
    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    goto :goto_16

    .line 441
    :cond_26
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set: applied(key, value) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 441
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 443
    :cond_55
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->saveImmediatelyIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_4

    .line 446
    :cond_59
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 448
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 449
    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_6e

    .line 452
    :cond_86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a2

    .line 453
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    .line 454
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->commit()V

    goto :goto_92

    :cond_a2
    return-void
.end method

.method private clearParametersEntries(Z)V
    .registers 6

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-nez p1, :cond_20

    .line 351
    iget-object v2, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v2, v3, :cond_a

    .line 352
    :cond_20
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->clearHolder()V

    goto :goto_a

    .line 355
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_36

    .line 357
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method private loadCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 157
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->needReload(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 161
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 167
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    move-object v3, p1

    .line 166
    invoke-interface/range {v1 .. v8}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->getUserSettingParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/configuration/Configurations;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;Z)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    if-nez v0, :cond_2d

    return-void

    .line 174
    :cond_2d
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    .line 175
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 176
    iget-object v5, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 180
    :cond_47
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updatePhotoLight()V

    .line 181
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 183
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 186
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToUserSettingForOneshot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 190
    :cond_5e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mGeoTag:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 191
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    .line 190
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 192
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    goto :goto_75

    :cond_73
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    :goto_75
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 194
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_82

    .line 195
    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V

    .line 199
    :cond_82
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 201
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private needReload(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    .line 211
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    return v1
.end method

.method private saveImmediatelyIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 3

    .line 473
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSecureSetting()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_f
    return-void
.end method

.method private setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .registers 8

    .line 281
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v4, v0, v2

    .line 282
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v3, 0x1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    if-nez v3, :cond_26

    .line 287
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    :cond_26
    return-void
.end method

.method private setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .registers 8

    .line 321
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 322
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v1

    .line 321
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v2, v1, :cond_21

    aget-object v4, v0, v2

    .line 323
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    if-nez v3, :cond_32

    .line 328
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 329
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v1

    .line 328
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V

    :cond_32
    return-void
.end method

.method private setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .registers 9

    .line 299
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 300
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 301
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 302
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    if-ge v3, v2, :cond_32

    aget-object v5, v1, v3

    .line 303
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_32
    if-nez v4, :cond_4c

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 309
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    .line 308
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    :cond_4c
    return-void
.end method

.method private setDefaultToUserSettingForOneshot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getDefaultValue(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->getDefaultValue(Z)Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    .line 270
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;)V

    return-void
.end method

.method private suspend()V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 342
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v3

    .line 341
    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->save(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    const/4 v0, 0x0

    .line 346
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    return-void
.end method

.method private updateVideoOption()V
    .registers 5

    .line 258
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 259
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 260
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method


# virtual methods
.method public applyCapturingMode()V
    .registers 3

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 564
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 565
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 566
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyChangedValues(Ljava/util/List;)V

    .line 567
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->updateVideoOption()V

    return-void
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 6

    const/4 v0, 0x1

    .line 485
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change capturing mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->loadCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 491
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 492
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateFocusParameters()V

    .line 495
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 498
    new-instance p2, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 499
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 502
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 503
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne p1, v0, :cond_62

    .line 504
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 506
    :cond_62
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    if-ne p1, v0, :cond_75

    .line 507
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 511
    :cond_75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-eqz p1, :cond_82

    .line 512
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 516
    :cond_82
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p1

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 520
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p1

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 522
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 524
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p1

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDisplayFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 526
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDisplayFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 528
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 530
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 533
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;

    move-result-object p1

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mBackSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 535
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mBackSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 537
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    move-result-object p1

    .line 538
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 539
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 541
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    array-length p2, p1

    :goto_ff
    if-ge v2, p2, :cond_114

    aget-object v0, p1, v2

    .line 544
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    array-length v1, v1

    .line 545
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    .line 547
    :cond_114
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateSelectability()V

    .line 550
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 551
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_146

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 552
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 553
    invoke-virtual {v0, p2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_12e

    :cond_146
    return-void
.end method

.method public clearCachedUserSetting()V
    .registers 2

    const/4 v0, 0x1

    .line 586
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    return-void
.end method

.method public clearOneshotUserSetting()V
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->clearTemporaryData()V

    :cond_d
    return-void
.end method

.method public clearSavedUserSetting()V
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->clear()V

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->clearMasterData()V

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->release()V

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->load()V

    return-void
.end method

.method public commit()V
    .registers 1

    .line 572
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->suspend()V

    return-void
.end method

.method public get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 397
    :cond_6
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-nez p1, :cond_17

    .line 406
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    return-object p1

    .line 408
    :cond_17
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    return-object p1

    .line 410
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 3

    .line 416
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result p1

    return p1
.end method

.method public getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .registers 5

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, p3, p1, p2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p1

    return-object p1
.end method

.method public getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    return-object p1
.end method

.method public getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    return-object v0
.end method

.method public isLimitForSizeOrDuration()Z
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->hasLimitForSizeOrDuration()Z

    move-result v0

    return v0
.end method

.method isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z
    .registers 6

    .line 215
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSaved()Z

    move-result v0

    if-nez v0, :cond_b

    .line 216
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result p1

    return p1

    .line 218
    :cond_b
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 219
    sget-object p2, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_1e

    return v2

    :cond_1e
    return v1

    .line 225
    :cond_1f
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isPhoto()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 226
    sget-object p2, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_31

    return v2

    :cond_31
    return v1

    :cond_32
    return v2
.end method

.method public prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V
    .registers 5

    .line 111
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 116
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 117
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    .line 118
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera/configuration/Configurations;->initInSync(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_30

    if-eqz p3, :cond_30

    .line 121
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getOneShotStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, p2, :cond_30

    .line 124
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 128
    :cond_30
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->registerLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V

    return-void

    .line 112
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "UseSettings has been used before PlatformCapability is prepared."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .registers 3

    .line 365
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "release() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 366
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->unregisterLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V

    const/4 v0, 0x1

    .line 368
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-void
.end method

.method replaceParameterEntries(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public resetTempParameters()V
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->resetTempParameters()V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 7

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    .line 424
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 428
    :cond_2c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 430
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getChangedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 432
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyChangedValues(Ljava/util/List;)V

    return-void
.end method

.method setDefaultToNonExistentResolution(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 275
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method setDefaultToNonExistentVideoShutterTrigger(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 315
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method setDefaultToNonExistentVideoSize(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 293
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public setInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V
    .registers 4

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->setInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V

    return-void
.end method

.method setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V
    .registers 7

    .line 237
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 238
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 239
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 240
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 244
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    const/4 p2, 0x0

    .line 245
    aget-object p2, v1, p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_50

    :cond_30
    if-eqz p2, :cond_4b

    .line 248
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 249
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    .line 248
    invoke-static {v0, p2, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 251
    :cond_4b
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 254
    :cond_50
    :goto_50
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method
