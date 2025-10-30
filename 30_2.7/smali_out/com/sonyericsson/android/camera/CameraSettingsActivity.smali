.class public Lcom/sonyericsson/android/camera/CameraSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CameraSettingsActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;,
        Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "capturing_mode"

.field public static final EXTRA_IN_SECURE:Ljava/lang/String; = "DeviceInSecurityLock"

.field public static final EXTRA_ONESHOT_MODE:Ljava/lang/String; = "OneShotMode"

.field public static final EXTRA_RESET_SETTINGS:Ljava/lang/String; = "ResetSettings"

.field public static final EXTRA_SHOULD_NOT_REMAIN_RECENT:Ljava/lang/String; = "shouldNotRemainRecentTask"

.field public static final EXTRA_VALUE_ALLOW_USE_LOCATION:Ljava/lang/String; = "allowUseLocation"

.field public static final EXTRA_VALUE_SELECT_IMMEDIATELY:Ljava/lang/String; = "valueSelect"

.field private static final STATE_IS_SAVED:Ljava/lang/String; = "isSaved"

.field private static final STATE_LAST_SELECTED_ITEM_KEY:Ljava/lang/String; = "LastCameraSettingItem"


# instance fields
.field private isLocationSystemSettingsLaunched:Z

.field private isSideSenseSystemSettingsLaunched:Z

.field private mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

.field private mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

.field private mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mIsAllowToUseLocation:Z

.field private mIsSdPermissionFinished:Z

.field private mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

.field private mMainHandler:Landroid/os/Handler;

.field private mResultIntent:Landroid/content/Intent;

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

.field private mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

.field private mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isDeviceInSecureLock()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Z)Z
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Landroid/os/Handler;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->reInitGeoTag()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showResetDataConfirmation()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showAccessibilityCompliance()V

    return-void
.end method

.method private getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 6

    const-string v0, "capturing_mode"

    .line 964
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 965
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXTRA_CAPTURING_MODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 966
    :cond_24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    return-object p1
.end method

.method private getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .registers 6

    const-string v0, "OneShotMode"

    .line 972
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 973
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXTRA_ONESHOT_MODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 974
    :cond_24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 975
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    goto :goto_31

    .line 977
    :cond_2d
    invoke-static {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    :goto_31
    return-object p1
.end method

.method private isDeviceInSecureLock()Z
    .registers 4

    .line 984
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "DeviceInSecurityLock"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private isNeedToShowHiSpeedSdCardRecommendation()Z
    .registers 5

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 829
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 831
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_14

    return v3

    .line 835
    :cond_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    .line 837
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq v0, v1, :cond_26

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v1, :cond_27

    :cond_26
    const/4 v3, 0x1

    :cond_27
    return v3
.end method

.method private isResetRequested()Z
    .registers 4

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string v1, "ResetSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private launchCameraSettingsFragment(Z)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 844
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 847
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->newInstance(Ljava/util/List;ZZ)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    move-result-object p1

    .line 849
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 851
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 852
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090085

    .line 851
    invoke-virtual {v1, v3, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 853
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 854
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 10

    .line 666
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_5

    return-void

    .line 670
    :cond_5
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_2e

    .line 673
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not changed value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 678
    :cond_2e
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_52

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSettingValueChanged: key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 681
    :cond_52
    sget-object v3, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_74

    const/4 v4, 0x5

    if-eq v3, v4, :cond_61

    goto :goto_91

    .line 683
    :cond_61
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_91

    .line 684
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 685
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 686
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 692
    :cond_74
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-object v5, p2

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const v6, 0x7f100150

    invoke-virtual {v3, v4, v5, p0, v6}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->canSetGeotag(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/app/Activity;I)Z

    move-result v3

    if-nez v3, :cond_91

    .line 694
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 695
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 696
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 707
    :cond_91
    :goto_91
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v3, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 709
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 711
    sget-object v4, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v2, :cond_161

    packed-switch p1, :pswitch_data_1aa

    goto/16 :goto_198

    .line 781
    :pswitch_af
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_198

    .line 782
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 783
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    goto/16 :goto_198

    .line 764
    :pswitch_d4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 765
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v1, :cond_fc

    .line 766
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_ef

    .line 767
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_198

    .line 768
    :cond_ef
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_198

    .line 769
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_198

    .line 771
    :cond_fc
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v1, :cond_198

    .line 772
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_10d

    .line 773
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_198

    .line 774
    :cond_10d
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_198

    .line 775
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_198

    .line 728
    :pswitch_11a
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p2, p1, :cond_198

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    if-eqz p1, :cond_198

    .line 729
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_1b6

    goto :goto_198

    .line 734
    :pswitch_12c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 735
    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_198

    .line 731
    :pswitch_134
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_198

    .line 714
    :pswitch_13c
    move-object p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 716
    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 717
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-eqz v1, :cond_198

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-nez p1, :cond_198

    .line 718
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 719
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 720
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_198

    .line 721
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_198

    .line 745
    :cond_161
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, p1, :cond_198

    .line 746
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result p1

    if-eqz p1, :cond_198

    .line 747
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 748
    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 749
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-eqz p1, :cond_188

    .line 750
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 751
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 753
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_198

    .line 754
    :cond_188
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, p1, :cond_198

    .line 755
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 756
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 758
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    .line 791
    :cond_198
    :goto_198
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 793
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 794
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    :pswitch_data_1aa
    .packed-switch 0x6
        :pswitch_13c
        :pswitch_11a
        :pswitch_d4
        :pswitch_af
    .end packed-switch

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_134
        :pswitch_12c
    .end packed-switch
.end method

.method private prepareUserSettingsIfNeed()V
    .registers 6

    .line 941
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_59

    .line 942
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string v1, "android.intent.action.MAIN"

    .line 944
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 948
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 950
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 952
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v1

    .line 954
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 955
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 956
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 957
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v4

    .line 958
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 955
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    :cond_59
    return-void
.end method

.method private reInitGeoTag()V
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 631
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 632
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 633
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 634
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_3d

    .line 636
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 637
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    goto :goto_3d

    .line 641
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 643
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :goto_3d
    return-void
.end method

.method private requestDismissKeyguard()V
    .registers 3

    const-string v0, "keyguard"

    .line 993
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_b

    return-void

    .line 998
    :cond_b
    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private shouldNotRemainRecentTask()Z
    .registers 4

    .line 988
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "shouldNotRemainRecentTask"

    .line 989
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private showAccessibilityCompliance()V
    .registers 3

    .line 655
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "showAccessibilityCompliance"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 656
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 657
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ACCESSIBILITY_COMPLIANCE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 658
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method

.method private showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 6

    .line 885
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    move-result-object p1

    .line 887
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 889
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 890
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const v2, 0x7f090085

    .line 891
    const-class v3, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    .line 892
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 891
    invoke-virtual {v1, v2, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 893
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 894
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_29
    return-void
.end method

.method private showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V
    .registers 3

    .line 932
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 933
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 934
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 935
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 936
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    :cond_22
    return-void
.end method

.method private showResetDataConfirmation()V
    .registers 3

    .line 648
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "showResetDataConfirmation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 649
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 650
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 651
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method

.method private showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z
    .registers 5

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 900
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_36

    .line 904
    :cond_19
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    move-result-object p1

    .line 905
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 907
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 908
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 909
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const/4 p1, 0x1

    return p1

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return p1
.end method

.method private showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 5

    .line 873
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    move-result-object p1

    .line 875
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 877
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 878
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 879
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 880
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1e
    return-void
.end method

.method private toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 5

    .line 860
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 859
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 861
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_8

    .line 862
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_29

    .line 868
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_29
    return-void
.end method

.method private updateSetting()V
    .registers 7

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 799
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 801
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 802
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 803
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_1f

    .line 804
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemListChanged(Ljava/util/List;)V

    .line 807
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    .line 808
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 809
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v2, :cond_6c

    .line 811
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    .line 812
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4d
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 813
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    if-ne v4, v5, :cond_4d

    .line 814
    move-object v4, v1

    check-cast v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_4d

    :cond_6c
    return-void
.end method


# virtual methods
.method public dismissSettingMessageDialog()V
    .registers 4

    .line 915
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 916
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    .line 917
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    if-eqz v1, :cond_22

    .line 919
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->dismissAllowingStateLoss()V

    .line 920
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 921
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 922
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 923
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_22
    return-void
.end method

.method public getLatestItemList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 380
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_29

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 383
    :cond_29
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p3

    if-nez p3, :cond_30

    return-void

    :cond_30
    const/16 p3, 0xd

    if-eq p1, p3, :cond_35

    goto :goto_54

    :cond_35
    const/4 p1, -0x1

    if-ne p2, p1, :cond_43

    .line 393
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_54

    .line 401
    :cond_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 402
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 403
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :goto_54
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 330
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onBackPressed E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 331
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_22

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_22
    const/4 v0, -0x1

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 336
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 337
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "onBackPressed X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onCheckConfirmed(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V
    .registers 6

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 7

    .line 525
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 526
    :cond_26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 527
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 528
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 530
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_c4

    goto :goto_a3

    .line 560
    :pswitch_46
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 561
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 562
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 563
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 564
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_5e
    return-void

    .line 553
    :pswitch_5f
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 554
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 555
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 556
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_71
    return-void

    .line 533
    :pswitch_72
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 534
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_7a

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    if-eqz v1, :cond_a3

    .line 540
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 541
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 542
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_a2

    .line 543
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_a2
    return-void

    .line 575
    :cond_a3
    :goto_a3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 576
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 577
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getRestrictMessageDialogId()Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 578
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 582
    :cond_b8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_72
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_46
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 145
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001f

    .line 146
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setContentView(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    const-string v1, "isSaved"

    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "LastCameraSettingItem"

    .line 152
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    goto :goto_2b

    :cond_2a
    move v1, v0

    .line 154
    :goto_2b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_48

    .line 160
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0f0357

    .line 161
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setTitle(I)V

    .line 164
    :cond_48
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 165
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f050005

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v9

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_77

    move v10, v2

    goto :goto_78

    :cond_77
    move v10, v0

    .line 170
    :goto_78
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;ZZZ)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "allowUseLocation"

    .line 173
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    .line 175
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-class v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 178
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string v2, "capturing_mode"

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 181
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_b9

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 185
    :cond_b9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 186
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {p1, p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    if-nez v1, :cond_d8

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "valueSelect"

    .line 190
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 191
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->launchCameraSettingsFragment(Z)V

    .line 194
    :cond_d8
    new-instance p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 196
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_ed

    const-string p1, "onCreate X"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_ed
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 295
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onDestroy E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 296
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 299
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->unregisterFrom(Landroid/content/Context;)V

    .line 300
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 303
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 305
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 307
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 310
    :try_start_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception v0

    const-string v1, "failed to quit worker thread."

    .line 312
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    :goto_34
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "onDestroy X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method public onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V
    .registers 7

    .line 414
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_f2

    .line 500
    new-array p2, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please handle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 501
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is unhandled Dialog. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 502
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 496
    :pswitch_4b
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_f1

    new-array p2, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No handle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    goto/16 :goto_f1

    :pswitch_6f
    if-ne p2, v3, :cond_f1

    .line 474
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 475
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f1

    :pswitch_84
    if-ne p2, v3, :cond_f1

    .line 459
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->clearAllSettings(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 462
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 463
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 465
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string p2, "ResetSettings"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 467
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 469
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    goto :goto_f1

    .line 453
    :pswitch_ad
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_f1

    :pswitch_b1
    if-ne p2, v3, :cond_b9

    .line 439
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 440
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchSideSenseSettings(Landroid/app/Activity;)V

    goto :goto_f1

    .line 442
    :cond_b9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 443
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f1

    :pswitch_cb
    if-ne p2, v3, :cond_d3

    .line 423
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 424
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    goto :goto_f1

    .line 426
    :cond_d3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 427
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 428
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f1

    :pswitch_ec
    if-ne p2, v3, :cond_f1

    .line 417
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_f1
    :goto_f1
    return-void

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_cb
        :pswitch_b1
        :pswitch_ad
        :pswitch_84
        :pswitch_6f
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method public onItemSelected(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$10;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x50

    if-eq p1, v0, :cond_e

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_9

    goto :goto_e

    .line 352
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 343
    :cond_e
    :goto_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result p1

    if-nez p1, :cond_19

    .line 344
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_19
    const/4 p1, -0x1

    .line 347
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 348
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 321
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 325
    :cond_e
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 268
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onPause E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 269
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 272
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "onPause X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method protected onResume()V
    .registers 6

    .line 225
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume E: userSettings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", capturingMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 227
    :cond_2a
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->registerTo(Landroid/content/Context;)V

    .line 230
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 235
    :cond_3b
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    if-eqz v0, :cond_59

    .line 236
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 237
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    move v0, v2

    goto :goto_5a

    .line 241
    :cond_52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_59
    move v0, v1

    .line 244
    :goto_5a
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    if-eqz v3, :cond_76

    .line 245
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 246
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    move v0, v2

    goto :goto_76

    .line 250
    :cond_6f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_76
    :goto_76
    if-eqz v0, :cond_82

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 263
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_96

    const-string v0, "onResume X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_96
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 368
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onSaveInstanceState E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const-string v0, "isSaved"

    const/4 v1, 0x1

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v0, :cond_1c

    const-string v1, "LastCameraSettingItem"

    .line 371
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 373
    :cond_1c
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 375
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2c

    const-string p1, "onSaveInstanceState X"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 201
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onStart E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 204
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_19

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 208
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "onStart X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 277
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onStop E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 278
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "onStop X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .line 357
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onUserLeaveHint E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 358
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_18

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 362
    :cond_18
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    .line 363
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "onUserLeaveHint X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 621
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
