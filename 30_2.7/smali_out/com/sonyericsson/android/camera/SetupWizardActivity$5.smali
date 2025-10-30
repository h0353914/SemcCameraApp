.class Lcom/sonyericsson/android/camera/SetupWizardActivity$5;
.super Landroid/view/OrientationEventListener;
.source "SetupWizardActivity.java"


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
.method constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;Landroid/content/Context;)V
    .registers 3

    .line 226
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->getOrientation(I)I
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$800(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I

    move-result p1

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$900(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I

    move-result v0

    if-eq v0, p1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_5e

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # setter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$902(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isPortrait()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1000(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "change to PORTRAIT."

    .line 234
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    goto :goto_2b

    :cond_26
    const-string v0, "change to LANDSCAPE."

    .line 236
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    .line 239
    :goto_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->setSensorOrientation(I)V

    .line 243
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 247
    :cond_4d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    :cond_5e
    return-void
.end method
