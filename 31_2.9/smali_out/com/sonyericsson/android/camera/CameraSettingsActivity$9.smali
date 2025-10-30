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

    .line 600
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 603
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$setting$settingitem$SettingLayoutType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_39

    .line 617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showResetDataConfirmation()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$800(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    goto :goto_48

    .line 613
    :pswitch_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$700(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_48

    .line 608
    :pswitch_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_48

    .line 605
    :pswitch_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$500(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_48

    .line 618
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_48

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showAccessibilityCompliance()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$900(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    :cond_48
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_29
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method
