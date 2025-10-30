.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

.field final synthetic val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 3

    .line 604
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 607
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$setting$settingitem$SettingLayoutType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3a

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_2a

    .line 621
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showResetDataConfirmation()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$800(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    goto :goto_51

    .line 622
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_51

    .line 623
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showAccessibilityCompliance()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$900(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    goto :goto_51

    .line 617
    :cond_3a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$700(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_51

    .line 612
    :cond_42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_51

    .line 609
    :cond_4a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_51
    :goto_51
    return-void
.end method
