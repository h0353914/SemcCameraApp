.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V
    .registers 3

    .line 149
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V

    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-ne v0, v1, :cond_1d

    return-void

    .line 165
    :cond_1d
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    .line 167
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_47

    new-array v3, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ParameterChanger#changeValue() Key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 171
    :cond_47
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 172
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, v3, :cond_79

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v1, v3, :cond_79

    .line 173
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 174
    invoke-interface {v6, v7}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v6

    if-ne v3, v6, :cond_79

    .line 175
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->REQUEST_SD_CARD_PERMISSION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 182
    :cond_79
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 184
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 186
    sget-object v6, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_1e2

    goto/16 :goto_1c1

    .line 267
    :pswitch_9d
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 268
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v1, v4, :cond_c0

    .line 269
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v2, v1, :cond_1c1

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1c1

    .line 272
    :cond_c0
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v1, v4, :cond_1c1

    .line 273
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v2, v1, :cond_1c1

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1c1

    .line 263
    :pswitch_d5
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    # invokes: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->updateTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$800(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    goto/16 :goto_1c1

    .line 249
    :pswitch_de
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, v2, :cond_eb

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showHiSpeedSdCardRecommendDialogOnDestinationChange()V

    .line 256
    :cond_eb
    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 257
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    .line 259
    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v4

    .line 258
    invoke-virtual {v2, v1, v4, v5, v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    goto/16 :goto_1c1

    .line 232
    :pswitch_10a
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne v1, v2, :cond_123

    .line 233
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 234
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    .line 238
    :cond_123
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v2

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    .line 239
    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v6}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    if-nez v1, :cond_1c1

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_1c1

    .line 226
    :pswitch_158
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq v1, v2, :cond_1c1

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$700(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playShutterSound(I)V

    goto :goto_1c1

    .line 221
    :pswitch_16a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GRID_LINE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_1c1

    .line 212
    :pswitch_178
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1c1

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_1c1

    .line 199
    :pswitch_195
    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 201
    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 202
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-eqz v1, :cond_1c1

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-nez v1, :cond_1c1

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_1c1

    .line 192
    :pswitch_1b4
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v2, :cond_1c1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_1c1

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # invokes: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->setVideoStabilizerByVideoHdrChanged()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$500(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V

    .line 284
    :cond_1c1
    :goto_1c1
    :pswitch_1c1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->updateSettingMenu(Z)V

    .line 286
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 287
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, v0, p1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    nop

    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_1c1
        :pswitch_1b4
        :pswitch_195
        :pswitch_1c1
        :pswitch_178
        :pswitch_16a
        :pswitch_158
        :pswitch_10a
        :pswitch_de
        :pswitch_d5
        :pswitch_9d
    .end packed-switch
.end method
