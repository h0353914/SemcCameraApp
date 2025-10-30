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

    .line 521
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRequestCodeFromMode(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)I
    .registers 2

    .line 681
    sget-object p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_16

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const/16 p0, 0x11

    return p0

    :pswitch_10
    const/16 p0, 0x10

    return p0

    :pswitch_13
    const/16 p0, 0x12

    return p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public onModeSelected(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V
    .registers 13

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsSettingChangeAcceptable:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_2ae

    .line 528
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 530
    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 532
    instance-of v3, p1, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_1d7

    .line 533
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsRequestingStartActivity:Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v3

    if-eqz v3, :cond_2d

    return-void

    .line 536
    :cond_2d
    move-object v3, p1

    check-cast v3, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->getTag()Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v3

    .line 538
    sget-object v7, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-ne v3, v7, :cond_4c

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mSettingUi:Lcom/sonyericsson/android/camera/view/setting/SettingUi;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 540
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result p0

    .line 539
    invoke-virtual {v0, p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->openMonochromeDialog(ZILcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    return-void

    .line 544
    :cond_4c
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v7

    if-eqz v7, :cond_d0

    iget-boolean v7, v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    if-eqz v7, :cond_d0

    .line 545
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->create()Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 546
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    const-string v7, "com.sonyericsson.android.camera"

    const-string v8, "com.sonyericsson.android.camera.CameraActivity"

    .line 547
    invoke-virtual {p2, v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->activity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 551
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v7

    .line 550
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    .line 552
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {p2, v7, v0}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object p2

    .line 555
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->commit()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "internal_mode"

    .line 557
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v3

    .line 556
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "capturing_mode"

    .line 558
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 559
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v3

    .line 558
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 563
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    aput-object p2, v3, v6

    aput-object p1, v3, v4

    .line 560
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 568
    :cond_d0
    iget-boolean v0, v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    if-eqz v0, :cond_192

    .line 569
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->getRequestCodeFromMode(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1cb

    if-eqz p2, :cond_f0

    .line 572
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 574
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_102

    .line 577
    :cond_f0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 579
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 582
    :goto_102
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 583
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 582
    invoke-virtual {p2, v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    .line 584
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_155

    .line 585
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-ne v3, p2, :cond_136

    .line 586
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 587
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 586
    invoke-static {p2, v0, v2, v3, v6}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto/16 :goto_1cb

    .line 590
    :cond_136
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 591
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 592
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 590
    invoke-static {p2, v0, v2, v3, v6}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto/16 :goto_1cb

    .line 595
    :cond_155
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-ne v3, p2, :cond_16f

    .line 596
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 597
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 596
    invoke-static {p2, v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto :goto_18c

    .line 600
    :cond_16f
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 601
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 602
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 600
    invoke-static {p2, v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 604
    :goto_18c
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onAppsUiModeFinish()V
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_1cb

    .line 608
    :cond_192
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    if-eqz p2, :cond_199

    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    goto :goto_19b

    :cond_199
    sget-object p2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    :goto_19b
    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 612
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v0, p2, v2, v4, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 614
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p2

    if-eqz p2, :cond_1cb

    .line 615
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    .line 616
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setApplicationNavigatorEnabled(Z)V
    invoke-static {p2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 617
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 622
    :cond_1cb
    :goto_1cb
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void

    .line 627
    :cond_1d7
    instance-of v3, p1, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;

    if-eqz v3, :cond_2ad

    .line 628
    move-object v3, p1

    check-cast v3, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->getTag()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    move-result-object v3

    .line 630
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->create()Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 631
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 633
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 634
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getActivityName()Ljava/lang/String;

    move-result-object v9

    .line 632
    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->activity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 636
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v8

    .line 635
    invoke-static {v8}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 637
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 639
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 638
    invoke-static {v9}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->filteringPrevActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 637
    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->callingActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    move-result-object v7

    .line 640
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->commit()Landroid/content/Intent;

    move-result-object v7

    .line 642
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v8

    if-eqz v8, :cond_244

    .line 643
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v7, v0, v1

    .line 646
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object p1, v0, v4

    .line 643
    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 652
    :cond_244
    invoke-static {v0, v7}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    if-eqz v2, :cond_257

    .line 655
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_257

    .line 656
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_258

    :cond_257
    const/4 v0, 0x0

    .line 657
    :goto_258
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestStartActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    invoke-static {v2, v7, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    if-eqz p2, :cond_275

    .line 659
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 661
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_287

    .line 664
    :cond_275
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 666
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 669
    :goto_287
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$AddonFW;->APP_SELECTED_ON_MODE_SELECTOR:Lcom/sonymobile/cameracommon/research/parameters/Event$AddonFW;

    .line 670
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$AddonFW;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v3

    .line 671
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-virtual {p2, v0, v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$2;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_2ad
    return-void

    :cond_2ae
    :goto_2ae
    return-void
.end method
