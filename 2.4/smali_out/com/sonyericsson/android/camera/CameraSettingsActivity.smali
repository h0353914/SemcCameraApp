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

    .line 69
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isDeviceInSecureLock()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Z)Z
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Landroid/os/Handler;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->reInitGeoTag()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showResetDataConfirmation()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method private getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 6

    const-string v0, "capturing_mode"

    .line 944
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 945
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

    .line 946
    :cond_24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    return-object p1
.end method

.method private getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .registers 6

    const-string v0, "OneShotMode"

    .line 952
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 953
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

    .line 954
    :cond_24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 955
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    goto :goto_31

    .line 957
    :cond_2d
    invoke-static {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    :goto_31
    return-object p1
.end method

.method private isDeviceInSecureLock()Z
    .registers 4

    .line 964
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

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 822
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 824
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_14

    return v3

    .line 828
    :cond_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    .line 830
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

    .line 660
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

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 837
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 840
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->newInstance(Ljava/util/List;ZZ)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    move-result-object p1

    .line 842
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 844
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 845
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090082

    .line 844
    invoke-virtual {v1, v3, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 846
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 847
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 10

    .line 664
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_5

    return-void

    .line 668
    :cond_5
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_2e

    .line 671
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

    .line 676
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

    .line 679
    :cond_52
    sget-object v3, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_18e

    goto :goto_8e

    .line 681
    :pswitch_5e
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 682
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 683
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 684
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 690
    :pswitch_71
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-object v5, p2

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const v6, 0x7f0f0152

    invoke-virtual {v3, v4, v5, p0, v6}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->canSetGeotag(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/app/Activity;I)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 692
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 693
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 694
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 705
    :cond_8e
    :goto_8e
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v3, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 707
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 709
    sget-object v4, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v2, :cond_144

    packed-switch p1, :pswitch_data_196

    goto/16 :goto_17b

    .line 774
    :pswitch_ac
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_17b

    .line 775
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 776
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    goto/16 :goto_17b

    .line 761
    :pswitch_d1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 762
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v1, :cond_ec

    .line 763
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_17b

    .line 764
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_17b

    .line 766
    :cond_ec
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v1, :cond_17b

    .line 767
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_17b

    .line 768
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_17b

    .line 725
    :pswitch_fd
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p2, p1, :cond_17b

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    if-eqz p1, :cond_17b

    .line 726
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_1a2

    goto :goto_17b

    .line 731
    :pswitch_10f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 732
    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_17b

    .line 728
    :pswitch_117
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_17b

    .line 712
    :pswitch_11f
    move-object p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 714
    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 715
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-eqz v1, :cond_17b

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-nez p1, :cond_17b

    .line 716
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 717
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 718
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_17b

    .line 719
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_17b

    .line 742
    :cond_144
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, p1, :cond_17b

    .line 743
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result p1

    if-eqz p1, :cond_17b

    .line 744
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 745
    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 746
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 747
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 748
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 750
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_17b

    .line 751
    :cond_16b
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, p1, :cond_17b

    .line 752
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 753
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 755
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    .line 784
    :cond_17b
    :goto_17b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 786
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 787
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    nop

    :pswitch_data_18e
    .packed-switch 0x3
        :pswitch_71
        :pswitch_5e
    .end packed-switch

    :pswitch_data_196
    .packed-switch 0x5
        :pswitch_11f
        :pswitch_fd
        :pswitch_d1
        :pswitch_ac
    .end packed-switch

    :pswitch_data_1a2
    .packed-switch 0x1
        :pswitch_117
        :pswitch_10f
    .end packed-switch
.end method

.method private prepareUserSettingsIfNeed()V
    .registers 6

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_59

    .line 922
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string v1, "android.intent.action.MAIN"

    .line 924
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 928
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 930
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 932
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v1

    .line 934
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 935
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 937
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v4

    .line 938
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 935
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    :cond_59
    return-void
.end method

.method private reInitGeoTag()V
    .registers 4

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 636
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 637
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 638
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 639
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_3d

    .line 641
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 642
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    goto :goto_3d

    .line 646
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 648
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :goto_3d
    return-void
.end method

.method private requestDismissKeyguard()V
    .registers 3

    const-string v0, "keyguard"

    .line 973
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_b

    return-void

    .line 978
    :cond_b
    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private shouldNotRemainRecentTask()Z
    .registers 4

    .line 968
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "shouldNotRemainRecentTask"

    .line 969
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 6

    .line 878
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    move-result-object p1

    .line 880
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 882
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 883
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const v2, 0x7f090082

    .line 884
    const-class v3, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    .line 885
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 884
    invoke-virtual {v1, v2, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 886
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 887
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_29
    return-void
.end method

.method private showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V
    .registers 3

    .line 912
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 913
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 914
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 915
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 916
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    :cond_22
    return-void
.end method

.method private showResetDataConfirmation()V
    .registers 3

    .line 653
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "showResetDataConfirmation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 654
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 655
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 656
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method

.method private showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z
    .registers 5

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 893
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_36

    .line 897
    :cond_19
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    move-result-object p1

    .line 898
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 900
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 901
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 902
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

    .line 866
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    move-result-object p1

    .line 868
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 870
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 871
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 872
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 873
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1e
    return-void
.end method

.method private toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 5

    .line 853
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 852
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 854
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_8

    .line 855
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_29

    .line 861
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_29
    return-void
.end method

.method private updateSetting()V
    .registers 7

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 792
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 794
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 795
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 796
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_1f

    .line 797
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemListChanged(Ljava/util/List;)V

    .line 800
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    .line 801
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 802
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v2, :cond_6c

    .line 804
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    .line 805
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

    .line 806
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    if-ne v4, v5, :cond_4d

    .line 807
    move-object v4, v1

    check-cast v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_4d

    :cond_6c
    return-void
.end method


# virtual methods
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

    .line 529
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

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
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

    .line 385
    :cond_29
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p3

    if-nez p3, :cond_30

    return-void

    :cond_30
    const/16 p3, 0xd

    const/4 v0, -0x1

    if-eq p1, p3, :cond_46

    const/16 p3, 0x15

    if-eq p1, p3, :cond_3a

    goto :goto_64

    :cond_3a
    const/4 p1, 0x2

    if-ne p2, p1, :cond_64

    .line 411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 412
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    goto :goto_64

    :cond_46
    if-ne p2, v0, :cond_53

    .line 395
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_64

    .line 403
    :cond_53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 405
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :cond_64
    :goto_64
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 343
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onBackPressed E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 344
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_22

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_22
    const/4 v0, -0x1

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 349
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 350
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

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 518
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

    .line 534
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

    .line 535
    :cond_26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 536
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 537
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 539
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_ca

    goto :goto_a9

    .line 567
    :pswitch_46
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 568
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 569
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 570
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 571
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_5e
    return-void

    .line 560
    :pswitch_5f
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 561
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 562
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 563
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_71
    return-void

    .line 542
    :pswitch_72
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 543
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_7a

    goto :goto_94

    :cond_93
    move v1, v2

    :goto_94
    if-eqz v1, :cond_a9

    .line 549
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 550
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 551
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_a8

    .line 552
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_a8
    return-void

    .line 582
    :cond_a9
    :goto_a9
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 583
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 584
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getRestrictMessageDialogId()Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 585
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 589
    :cond_be
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_72
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

    .line 141
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 142
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001f

    .line 143
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setContentView(I)V

    .line 145
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_20

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    return-void

    :cond_20
    const/4 v0, 0x0

    if-eqz p1, :cond_34

    const-string v1, "isSaved"

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "LastCameraSettingItem"

    .line 154
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    goto :goto_35

    :cond_34
    move v1, v0

    .line 156
    :goto_35
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_52

    .line 162
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0e030a

    .line 163
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setTitle(I)V

    .line 166
    :cond_52
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 167
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f050005

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v9

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_81

    move v10, v2

    goto :goto_82

    :cond_81
    move v10, v0

    .line 172
    :goto_82
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;ZZZ)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "allowUseLocation"

    .line 175
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    .line 177
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-class v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string v2, "capturing_mode"

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 184
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {p1, p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    if-nez v1, :cond_d9

    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "valueSelect"

    .line 188
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 189
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->launchCameraSettingsFragment(Z)V

    .line 192
    :cond_d9
    new-instance p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 194
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_ee

    const-string p1, "onCreate X"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_ee
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 300
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onDestroy E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 301
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 303
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 307
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 308
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->unregisterFrom(Landroid/content/Context;)V

    .line 309
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 312
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_2f

    .line 313
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 315
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 318
    :cond_2f
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 321
    :try_start_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    if-eqz v0, :cond_41

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_41

    :catch_3b
    move-exception v0

    const-string v1, "failed to quit worker thread."

    .line 325
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    :cond_41
    :goto_41
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4e

    const-string v0, "onDestroy X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method public onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V
    .registers 7

    .line 423
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_f2

    .line 509
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

    .line 510
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is unhandled Dialog. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 511
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 505
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

    .line 483
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 484
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f1

    :pswitch_84
    if-ne p2, v3, :cond_f1

    .line 468
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->clearAllSettings(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    const/4 p1, 0x0

    .line 470
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 471
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 472
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 474
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string p2, "ResetSettings"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 475
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 476
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 478
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    goto :goto_f1

    .line 462
    :pswitch_ad
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_f1

    :pswitch_b1
    if-ne p2, v3, :cond_b9

    .line 448
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 449
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchSideSenseSettings(Landroid/app/Activity;)V

    goto :goto_f1

    .line 451
    :cond_b9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 452
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f1

    :pswitch_cb
    if-ne p2, v3, :cond_d3

    .line 432
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 433
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    goto :goto_f1

    .line 435
    :cond_d3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 436
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 437
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f1

    :pswitch_ec
    if-ne p2, v3, :cond_f1

    .line 426
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

    .line 616
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

    .line 365
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 356
    :cond_e
    :goto_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result p1

    if-nez p1, :cond_19

    .line 357
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_19
    const/4 p1, -0x1

    .line 360
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 361
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 338
    :cond_e
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 269
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onPause E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 270
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 272
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 276
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 277
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2f

    const-string v0, "onPause X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method protected onResume()V
    .registers 6

    .line 222
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

    .line 224
    :cond_2a
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->registerTo(Landroid/content/Context;)V

    .line 227
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 232
    :cond_3b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 236
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    if-eqz v0, :cond_65

    .line 237
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 238
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    move v0, v2

    goto :goto_66

    .line 242
    :cond_5e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_65
    move v0, v1

    .line 245
    :goto_66
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    if-eqz v3, :cond_82

    .line 246
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 247
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    move v0, v2

    goto :goto_82

    .line 251
    :cond_7b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_82
    :goto_82
    if-eqz v0, :cond_8e

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_8e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 264
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_a2

    const-string v0, "onResume X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 370
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onSaveInstanceState E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const-string v0, "isSaved"

    const/4 v1, 0x1

    .line 371
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v0, :cond_1c

    const-string v1, "LastCameraSettingItem"

    .line 373
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 375
    :cond_1c
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 377
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

    .line 199
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onStart E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 200
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 202
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_19

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 206
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
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

    .line 282
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onStop E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 283
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "onStop X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
