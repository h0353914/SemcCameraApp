.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickCloseButtonListenerImpl"
.end annotation


# instance fields
.field private final mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V
    .registers 3

    .line 721
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    return-void
.end method


# virtual methods
.method public onClickCloseButton(Landroid/view/View;)V
    .registers 4

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 731
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getCurrentTutorialPageInfo()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090110

    if-eq p1, v1, :cond_e6

    const v1, 0x7f090114

    if-eq p1, v1, :cond_b8

    const v1, 0x7f0901e0

    if-eq p1, v1, :cond_79

    const v1, 0x7f0901e9

    if-eq p1, v1, :cond_2b

    goto/16 :goto_188

    .line 734
    :cond_2b
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->YES:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 735
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 736
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$4;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4b

    .line 742
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 746
    :cond_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    if-eqz p1, :cond_188

    .line 747
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 748
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-eq v0, p1, :cond_188

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_188

    .line 749
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onClose(Ljava/util/List;)V

    goto/16 :goto_188

    .line 755
    :cond_79
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 756
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 757
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 758
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    if-eqz p1, :cond_188

    .line 759
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onDenied(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 760
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_188

    .line 761
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onClose(Ljava/util/List;)V

    goto/16 :goto_188

    .line 801
    :cond_b8
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->SKIP:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 802
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 803
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 804
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    if-eqz p1, :cond_188

    .line 805
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onClose(Ljava/util/List;)V

    goto/16 :goto_188

    .line 767
    :cond_e6
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->GOT_IT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 768
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 769
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$4;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_18a

    .line 792
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 793
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    if-eqz p1, :cond_188

    .line 794
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onClose(Ljava/util/List;)V

    goto :goto_188

    .line 777
    :pswitch_11e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 778
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mParams:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    if-eqz p1, :cond_15f

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mParams:[Ljava/lang/Object;

    aget-object p1, p1, v1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    if-ne p1, v1, :cond_15f

    .line 779
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    if-eqz p1, :cond_188

    .line 780
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 781
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_188

    .line 782
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onClose(Ljava/util/List;)V

    goto :goto_188

    .line 786
    :cond_15f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    if-eqz p1, :cond_188

    .line 787
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onClose(Ljava/util/List;)V

    goto :goto_188

    .line 772
    :pswitch_177
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    if-eqz p1, :cond_188

    .line 773
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;->onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    :cond_188
    :goto_188
    return-void

    nop

    :pswitch_data_18a
    .packed-switch 0x2
        :pswitch_177
        :pswitch_177
        :pswitch_11e
    .end packed-switch
.end method
