.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 551
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRequestCodeFromMode(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)I
    .registers 2

    .line 725
    sget-object p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_25

    const/4 p1, 0x2

    if-eq p0, p1, :cond_22

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1f

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1c

    const/4 p1, 0x5

    if-eq p0, p1, :cond_19

    const/4 p0, -0x1

    return p0

    :cond_19
    const/16 p0, 0x11

    return p0

    :cond_1c
    const/16 p0, 0x10

    return p0

    :cond_1f
    const/16 p0, 0x16

    return p0

    :cond_22
    const/16 p0, 0x15

    return p0

    :cond_25
    const/16 p0, 0x12

    return p0
.end method


# virtual methods
.method public onModeSelected(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V
    .registers 13

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsSettingChangeAcceptable:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_2cd

    .line 558
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 560
    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 561
    instance-of v3, p1, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_1e0

    .line 562
    move-object v3, p1

    check-cast v3, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->getTag()Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v3

    .line 564
    sget-object v7, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-ne v3, v7, :cond_43

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mSettingUi:Lcom/sonyericsson/android/camera/view/setting/SettingUi;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 566
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result p0

    .line 565
    invoke-virtual {v0, p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->openMonochromeDialog(ZILcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    return-void

    .line 570
    :cond_43
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v7

    if-eqz v7, :cond_d9

    iget-boolean v7, v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    if-eqz v7, :cond_d9

    .line 571
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->create()Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 572
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    const-string v7, "com.sonyericsson.android.camera"

    const-string v8, "com.sonyericsson.android.camera.CameraActivity"

    .line 573
    invoke-virtual {p2, v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->activity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 576
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getExternalModeCategory(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->category(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 578
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v7

    .line 577
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    .line 579
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p2, v7, v0}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    .line 582
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->commit()Landroid/content/Intent;

    move-result-object p2

    .line 584
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v0

    const-string v3, "internal_mode"

    .line 583
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 586
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    const-string v3, "capturing_mode"

    .line 585
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 590
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    aput-object p2, v3, v6

    aput-object p1, v3, v4

    .line 587
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 595
    :cond_d9
    iget-boolean v0, v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    if-eqz v0, :cond_19b

    .line 596
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->getRequestCodeFromMode(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1d4

    if-eqz p2, :cond_f9

    .line 599
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 601
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_10b

    .line 604
    :cond_f9
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 606
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 609
    :goto_10b
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 610
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 609
    invoke-virtual {p2, v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    .line 611
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15e

    .line 612
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-ne v3, p2, :cond_13f

    .line 613
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 614
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 613
    invoke-static {p2, v0, v2, v3, v6}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto/16 :goto_1d4

    .line 617
    :cond_13f
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 618
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 619
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 617
    invoke-static {p2, v0, v2, v3, v6}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto/16 :goto_1d4

    .line 622
    :cond_15e
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-ne v3, p2, :cond_178

    .line 623
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 624
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 623
    invoke-static {p2, v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto :goto_195

    .line 627
    :cond_178
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 628
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 629
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 627
    invoke-static {p2, v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 631
    :goto_195
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onAppsUiModeFinish()V
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_1d4

    .line 635
    :cond_19b
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    if-eqz p2, :cond_1a2

    .line 636
    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    goto :goto_1a4

    .line 637
    :cond_1a2
    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    :goto_1a4
    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 639
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v0, p2, v2, v4, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 641
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p2

    if-eqz p2, :cond_1d4

    .line 642
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    .line 643
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setApplicationNavigatorEnabled(Z)V
    invoke-static {p2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 644
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 649
    :cond_1d4
    :goto_1d4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void

    .line 654
    :cond_1e0
    instance-of v3, p1, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;

    if-eqz v3, :cond_2cd

    .line 655
    move-object v3, p1

    check-cast v3, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->getTag()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    move-result-object v3

    .line 657
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->create()Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 658
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 660
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 661
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getActivityName()Ljava/lang/String;

    move-result-object v9

    .line 659
    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->activity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 662
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getExternalModeCategory(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->category(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 664
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v8

    .line 663
    invoke-static {v8}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 665
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 667
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 666
    invoke-static {v9}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 665
    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 668
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->commit()Landroid/content/Intent;

    move-result-object v7

    .line 670
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v8

    if-eqz v8, :cond_25b

    .line 671
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v7, v0, v1

    .line 674
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object p1, v0, v4

    .line 671
    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 680
    :cond_25b
    invoke-static {v0, v7}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 683
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    if-eqz v2, :cond_277

    .line 684
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_277

    .line 685
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_278

    :cond_277
    const/4 v0, 0x0

    .line 686
    :goto_278
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestStartActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    invoke-static {v2, v7, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    if-eqz p2, :cond_295

    .line 688
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 690
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_2a7

    .line 693
    :cond_295
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 695
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 698
    :goto_2a7
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$AddonFW;->APP_SELECTED_ON_MODE_SELECTOR:Lcom/sonymobile/cameracommon/research/parameters/Event$AddonFW;

    .line 699
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$AddonFW;->toString()Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 701
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-virtual {p2, v0, v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_2cd
    :goto_2cd
    return-void
.end method

.method public onNewFeatureBarSelected()V
    .registers 6

    .line 711
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListBuilder;->getNewFeatureList()Ljava/util/ArrayList;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v1

    .line 713
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_44

    .line 714
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 715
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getMessageTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/setting/MessageType;

    const/4 v4, 0x1

    .line 716
    invoke-interface {v1, v3, v4}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 717
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->save()V

    goto :goto_30

    .line 721
    :cond_44
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestStartFeatureListActivity()V

    return-void
.end method
