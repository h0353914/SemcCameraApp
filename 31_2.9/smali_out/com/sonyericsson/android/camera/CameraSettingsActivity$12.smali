.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "CameraSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 2

    .line 1016
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 1

    return-void
.end method

.method public onDismissError()V
    .registers 3

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1100(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1100(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_11
    return-void
.end method

.method public onDismissSucceeded()V
    .registers 3

    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1100(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1100(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_11
    return-void
.end method
