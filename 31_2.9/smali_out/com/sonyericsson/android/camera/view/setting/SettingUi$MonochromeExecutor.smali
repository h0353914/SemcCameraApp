.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonochromeExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mIsMostRecentlyUsed:Z

.field mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .registers 4

    .line 229
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mIsMostRecentlyUsed:Z

    .line 230
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mIsMostRecentlyUsed:Z

    .line 231
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V
    .registers 5

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "TT;>;)V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 238
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mIsMostRecentlyUsed:Z

    if-eqz v0, :cond_2a

    .line 239
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 241
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_3c

    .line 243
    :cond_2a
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 245
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 247
    :goto_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$000(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 248
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$controller$launcher$ApplicationLauncher$MonochromeType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    const/16 v3, 0x11

    packed-switch p1, :pswitch_data_ec

    goto/16 :goto_e1

    .line 263
    :pswitch_60
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-eqz p1, :cond_82

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_e1

    .line 268
    :cond_82
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    .line 270
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    .line 271
    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 270
    invoke-static {p1, v3, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto :goto_e1

    .line 250
    :pswitch_a1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 251
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_e1

    .line 255
    :cond_c3
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    .line 258
    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 257
    invoke-static {p1, v3, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 279
    :goto_e1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$500(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    return-void

    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_60
    .end packed-switch
.end method
