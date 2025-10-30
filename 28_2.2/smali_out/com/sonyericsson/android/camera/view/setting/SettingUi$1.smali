.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateSettingItemExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field final synthetic val$storage:Lcom/sonyericsson/cameracommon/storage/Storage;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .registers 5

    .line 663
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$storage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;)V"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4c

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 668
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 669
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 668
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 673
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/HelpGuide;->isHelpAppAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 674
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/HelpGuide;->startHelpApp(Landroid/content/Context;)V

    goto :goto_39

    .line 676
    :cond_34
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/HelpGuide;->startOnlineHelp(Landroid/content/Context;)V

    .line 678
    :goto_39
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    .line 679
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Ljava/lang/String;)V

    goto/16 :goto_d2

    .line 680
    :cond_4c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_87

    .line 681
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 682
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 683
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 682
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 686
    :cond_70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    .line 687
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_d2

    .line 688
    :cond_87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-eq v0, v1, :cond_a7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-eq v0, v1, :cond_a7

    .line 691
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_bd

    .line 693
    :cond_a7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 694
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 693
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_d2

    .line 697
    :cond_bd
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    .line 698
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$storage:Lcom/sonyericsson/cameracommon/storage/Storage;

    # invokes: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateParameterItemAdapter(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    invoke-static {v1, p1, v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 697
    # invokes: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->openSecondLayerDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    invoke-static {v0, p1, p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)V

    :goto_d2
    return-void
.end method
