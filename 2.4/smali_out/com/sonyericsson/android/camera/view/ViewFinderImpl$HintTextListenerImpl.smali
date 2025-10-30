.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HintTextListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 9701
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onClickSlowMotionDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;)V
    .registers 5

    .line 9725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9726
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 9727
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v1, :cond_17

    return-void

    .line 9731
    :cond_17
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hide()Z

    .line 9732
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getTutorial()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    .line 9734
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->getTutorialType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->createByReadMore(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    .line 9733
    invoke-virtual {p1, p2, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    .line 9765
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 9766
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 p2, 0x0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setApplicationNavigatorEnabled(Z)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 9767
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private onClickThermalReadMore()V
    .registers 4

    .line 9771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9773
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0e01dc

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9775
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_39

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 9776
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_39

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 9777
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_39

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 9778
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_4c

    .line 9780
    :cond_39
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9781
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0e00a9

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9784
    :cond_4c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 9785
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9786
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0e01e0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9789
    :cond_6b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-nez v1, :cond_96

    .line 9791
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9792
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0e01f5

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9795
    :cond_96
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isPredictiveCaptureAvailable()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 9796
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9797
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0e028f

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9800
    :cond_b1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 9801
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9802
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0e0168

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9805
    :cond_d0
    new-instance v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 9806
    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COOLING_MODE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 9807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mMessageList:Ljava/lang/String;

    .line 9808
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method


# virtual methods
.method public onContentButtonClick(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 4

    .line 9709
    instance-of v0, p2, Lcom/sonyericsson/android/camera/view/hint/HintTextThermal;

    if-eqz v0, :cond_8

    .line 9711
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->onClickThermalReadMore()V

    goto :goto_11

    .line 9712
    :cond_8
    instance-of v0, p2, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;

    if-eqz v0, :cond_11

    .line 9714
    check-cast p2, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->onClickSlowMotionDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onStateChanged()V
    .registers 2

    .line 9720
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateVisibilityForSpecificDisplaySize()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method
