.class Lcom/sonyericsson/android/camera/SetupWizardActivity$6;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .registers 3

    const-string v0, "onWindowAttached() E"

    .line 266
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupLayout()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$900(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->setSensorOrientation(I)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$900(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 273
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    .line 274
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    move-result-object v0

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0, v0, v1, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    const-string p0, "onWindowAttached() X"

    .line 278
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowDetached()V
    .registers 1

    const-string p0, "onWindowDetached() E"

    .line 283
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    const-string p0, "onWindowDetached() X"

    .line 285
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    return-void
.end method
