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

    .line 73
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isDeviceInSecureLock()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Z)Z
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Landroid/os/Handler;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->reInitGeoTag()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showResetDataConfirmation()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showAccessibilityCompliance()V

    return-void
.end method

.method private getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 5

    const-string p0, "capturing_mode"

    .line 986
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 987
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_CAPTURING_MODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 988
    :cond_26
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method private getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .registers 5

    const-string p0, "OneShotMode"

    .line 994
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 995
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_ONESHOT_MODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 996
    :cond_26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 997
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    goto :goto_33

    .line 999
    :cond_2f
    invoke-static {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    :goto_33
    return-object p0
.end method

.method private isDeviceInSecureLock()Z
    .registers 3

    .line 1006
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "DeviceInSecurityLock"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private isNeedToShowHiSpeedSdCardRecommendation()Z
    .registers 5

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 851
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 853
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_14

    return v3

    .line 857
    :cond_14
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 859
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p0, v0, :cond_26

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, v0, :cond_27

    :cond_26
    const/4 v3, 0x1

    :cond_27
    return v3
.end method

.method private isResetRequested()Z
    .registers 3

    .line 684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string v0, "ResetSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private launchCameraSettingsFragment(Z)V
    .registers 5

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 866
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 869
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->newInstance(Ljava/util/List;ZZ)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    move-result-object p1

    .line 871
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 872
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 873
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 874
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090086

    .line 873
    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 875
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 876
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 10

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_5

    return-void

    .line 692
    :cond_5
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_32

    new-array p0, v2, [Ljava/lang/String;

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not changed value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 700
    :cond_32
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_5a

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSettingValueChanged: key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 703
    :cond_5a
    sget-object v3, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7c

    const/4 v4, 0x5

    if-eq v3, v4, :cond_69

    goto :goto_99

    .line 705
    :cond_69
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_99

    .line 706
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 707
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 708
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 714
    :cond_7c
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-object v5, p2

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const v6, 0x7f100150

    invoke-virtual {v3, v4, v5, p0, v6}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->canSetGeotag(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/app/Activity;I)Z

    move-result v3

    if-nez v3, :cond_99

    .line 716
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 717
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 718
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 729
    :cond_99
    :goto_99
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v3, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 731
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 733
    sget-object v4, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v2, :cond_16b

    packed-switch p1, :pswitch_data_1b4

    goto/16 :goto_1a2

    .line 803
    :pswitch_b7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1a2

    .line 804
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 805
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    goto/16 :goto_1a2

    .line 786
    :pswitch_dc
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 787
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v1, :cond_104

    .line 788
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_f7

    .line 789
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1a2

    .line 790
    :cond_f7
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_1a2

    .line 791
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1a2

    .line 793
    :cond_104
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v1, :cond_1a2

    .line 794
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_115

    .line 795
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1a2

    .line 796
    :cond_115
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v1, :cond_1a2

    .line 797
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1a2

    .line 750
    :pswitch_122
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p2, p1, :cond_1a2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    if-eqz p1, :cond_1a2

    .line 751
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p1

    if-eq p1, v2, :cond_13e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_136

    goto :goto_1a2

    .line 756
    :cond_136
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 757
    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_1a2

    .line 753
    :cond_13e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_1a2

    .line 736
    :pswitch_146
    move-object p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 738
    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 739
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-eqz v1, :cond_1a2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-nez p1, :cond_1a2

    .line 740
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 741
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 742
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_1a2

    .line 743
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_1a2

    .line 767
    :cond_16b
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, p1, :cond_1a2

    .line 768
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result p1

    if-eqz p1, :cond_1a2

    .line 769
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 770
    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 771
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-eqz p1, :cond_192

    .line 772
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 773
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 775
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_1a2

    .line 776
    :cond_192
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, p1, :cond_1a2

    .line 777
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 778
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 780
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    .line 813
    :cond_1a2
    :goto_1a2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 815
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 816
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v0, p2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    :pswitch_data_1b4
    .packed-switch 0x6
        :pswitch_146
        :pswitch_122
        :pswitch_dc
        :pswitch_b7
    .end packed-switch
.end method

.method private prepareUserSettingsIfNeed()V
    .registers 5

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_57

    .line 964
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string v1, "android.intent.action.MAIN"

    .line 966
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 970
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 972
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 974
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v1

    .line 976
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 978
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 979
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    .line 980
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 977
    invoke-interface {v2, v3, p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    :cond_57
    return-void
.end method

.method private reInitGeoTag()V
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 653
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 654
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 655
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 656
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_3d

    .line 658
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 659
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    goto :goto_3d

    .line 663
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 664
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 665
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :goto_3d
    return-void
.end method

.method private requestDismissKeyguard()V
    .registers 3

    const-string v0, "keyguard"

    .line 1015
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_b

    return-void

    .line 1020
    :cond_b
    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private shouldNotRemainRecentTask()Z
    .registers 3

    .line 1010
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "shouldNotRemainRecentTask"

    .line 1011
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private showAccessibilityCompliance()V
    .registers 3

    .line 677
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "showAccessibilityCompliance"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 678
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 679
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ACCESSIBILITY_COMPLIANCE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 680
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method

.method private showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 6

    .line 907
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    move-result-object p1

    .line 909
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 911
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 912
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    const-string v1, "CameraSettingsDetailFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const v2, 0x7f090086

    .line 913
    const-class v3, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 915
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 916
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_23
    return-void
.end method

.method private showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V
    .registers 3

    .line 954
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 955
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 956
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 957
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 958
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    :cond_22
    return-void
.end method

.method private showResetDataConfirmation()V
    .registers 3

    .line 670
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "showResetDataConfirmation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 671
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 672
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 673
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method

.method private showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z
    .registers 4

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 922
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_34

    .line 926
    :cond_19
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    move-result-object p1

    .line 927
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 928
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 929
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    const-string v1, "SettingMessageDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 930
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 931
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const/4 p0, 0x1

    return p0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return p0
.end method

.method private showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 4

    .line 895
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    move-result-object p1

    .line 897
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 899
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 900
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 901
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 902
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1e
    return-void
.end method

.method private toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 5

    .line 882
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 883
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_8

    .line 884
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_29

    .line 890
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_29
    return-void
.end method

.method private updateSetting()V
    .registers 7

    .line 820
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 821
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 823
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 824
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 825
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_1f

    .line 826
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemListChanged(Ljava/util/List;)V

    .line 829
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    const-string v2, "CameraSettingsDetailFragment"

    .line 830
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 831
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v2, :cond_6a

    .line 833
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    .line 834
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 835
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    if-ne v4, v5, :cond_4b

    .line 836
    move-object v4, v1

    check-cast v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_4b

    :cond_6a
    return-void
.end method


# virtual methods
.method public dismissSettingMessageDialog()V
    .registers 3

    .line 937
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 938
    const-class v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    const-string v0, "SettingMessageDialogFragment"

    .line 939
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    if-eqz v0, :cond_20

    .line 941
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->dismissAllowingStateLoss()V

    .line 942
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 943
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 944
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 945
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_20
    return-void
.end method

.method public getLatestItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 402
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_2d

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 405
    :cond_2d
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p3

    if-nez p3, :cond_34

    return-void

    :cond_34
    const/16 p3, 0xd

    if-eq p1, p3, :cond_39

    goto :goto_58

    :cond_39
    const/4 p1, -0x1

    if-ne p2, p1, :cond_47

    .line 415
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_58

    .line 423
    :cond_47
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 424
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 425
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :goto_58
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 349
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onBackPressed E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 350
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_22

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_22
    const/4 v0, -0x1

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 355
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 356
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_38

    const-string p0, "onBackPressed X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onCheckConfirmed(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V
    .registers 6

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 531
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

    .line 547
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 548
    :cond_28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 549
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 550
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 552
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_7f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_53

    goto :goto_b0

    .line 582
    :cond_53
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 583
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 584
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 585
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_6b

    .line 586
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_6b
    return-void

    .line 575
    :cond_6c
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 576
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 577
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_7e

    .line 578
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_7e
    return-void

    .line 555
    :cond_7f
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 556
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_87

    goto :goto_9b

    :cond_9a
    move v1, v2

    :goto_9b
    if-eqz v1, :cond_b0

    .line 562
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 563
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 564
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 565
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_af
    return-void

    .line 597
    :cond_b0
    :goto_b0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 598
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 599
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getRestrictMessageDialogId()Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 600
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 604
    :cond_c5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 145
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 146
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001f

    .line 147
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setContentView(I)V

    .line 149
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_20

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    return-void

    :cond_20
    const/4 v0, 0x0

    if-eqz p1, :cond_45

    const-string v1, "isSaved"

    .line 156
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 157
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, "LastCameraSettingItem"

    if-ge v2, v3, :cond_3a

    .line 159
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    goto :goto_46

    .line 161
    :cond_3a
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    goto :goto_46

    :cond_45
    move v1, v0

    .line 165
    :goto_46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 167
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_63

    .line 171
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0f03a9

    .line 172
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setTitle(I)V

    .line 175
    :cond_63
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 176
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f050005

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v9

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_90

    move v10, v2

    goto :goto_91

    :cond_90
    move v10, v0

    .line 181
    :goto_91
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;ZZZ)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "allowUseLocation"

    .line 184
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    .line 186
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v2, "CameraSettingsActivity"

    invoke-direct {p1, v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 189
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "capturing_mode"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 192
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 193
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {p1, p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    if-nez v1, :cond_e5

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "valueSelect"

    .line 197
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 198
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->launchCameraSettingsFragment(Z)V

    .line 201
    :cond_e5
    new-instance p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 203
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_fa

    const-string p0, "onCreate X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_fa
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 306
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onDestroy E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 307
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 309
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 313
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 314
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->unregisterFrom(Landroid/content/Context;)V

    .line 315
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 318
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_2f

    .line 319
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 321
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 324
    :cond_2f
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 327
    :try_start_31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    if-eqz p0, :cond_3f

    .line 328
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception p0

    const-string v0, "failed to quit worker thread."

    .line 331
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    :cond_3f
    :goto_3f
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4c

    const-string p0, "onDestroy X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method public onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V
    .registers 7

    .line 436
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_f8

    new-array p0, v2, [Ljava/lang/String;

    .line 522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Please handle "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 523
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is unhandled Dialog. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 524
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 518
    :pswitch_4f
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_f7

    new-array p0, v2, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No handle "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    goto/16 :goto_f7

    :pswitch_75
    if-ne p2, v3, :cond_f7

    .line 496
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 497
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f7

    :pswitch_8a
    if-ne p2, v3, :cond_f7

    .line 481
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->clearAllSettings(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 484
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 485
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 487
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string p2, "ResetSettings"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 489
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 491
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    goto :goto_f7

    .line 475
    :pswitch_b3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_f7

    :pswitch_b7
    if-ne p2, v3, :cond_bf

    .line 461
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 462
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchSideSenseSettings(Landroid/app/Activity;)V

    goto :goto_f7

    .line 464
    :cond_bf
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 465
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f7

    :pswitch_d1
    if-ne p2, v3, :cond_d9

    .line 445
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 446
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    goto :goto_f7

    .line 448
    :cond_d9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 449
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 450
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f7

    :pswitch_f2
    if-ne p2, v3, :cond_f7

    .line 439
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_f7
    :goto_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_d1
        :pswitch_b7
        :pswitch_b3
        :pswitch_8a
        :pswitch_75
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method public onItemSelected(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 633
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

    .line 371
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 362
    :cond_e
    :goto_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result p1

    if-nez p1, :cond_19

    .line 363
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_19
    const/4 p1, -0x1

    .line 366
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 339
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 344
    :cond_e
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .registers 2

    .line 279
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onPause E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 280
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 283
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_24

    const-string p0, "onPause X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method protected onResume()V
    .registers 6

    .line 232
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume E: userSettings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capturingMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 234
    :cond_2e
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->registerTo(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 238
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 242
    :cond_3f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 246
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    if-eqz v0, :cond_69

    .line 247
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 248
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    move v0, v2

    goto :goto_6a

    .line 252
    :cond_62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_69
    move v0, v1

    .line 255
    :goto_6a
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    if-eqz v3, :cond_85

    .line 256
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 257
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_86

    .line 261
    :cond_7e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_85
    move v2, v0

    :goto_86
    if-eqz v2, :cond_92

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 274
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_a6

    const-string p0, "onResume X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a6
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 387
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onSaveInstanceState E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    const-string v1, "isSaved"

    .line 388
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v0, :cond_1c

    const-string v1, "LastCameraSettingItem"

    .line 390
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 392
    :cond_1c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_27

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 395
    :cond_27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 397
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_37

    const-string p0, "onSaveInstanceState X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 208
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onStart E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 209
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 211
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_19

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 215
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_34

    const-string p0, "onStart X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 288
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onStop E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 289
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2b

    const-string p0, "onStop X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .line 376
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onUserLeaveHint E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 377
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_18

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 381
    :cond_18
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    .line 382
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_28

    const-string p0, "onUserLeaveHint X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
