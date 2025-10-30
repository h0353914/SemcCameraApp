.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

.field final synthetic val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 3

    .line 1077
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v1, :cond_38

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1402(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Z)Z

    .line 1082
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1083
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 1084
    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1000(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_3f

    .line 1088
    :cond_38
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;->this$1:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    :cond_3f
    :goto_3f
    return-void
.end method
