.class Lcom/sonyericsson/android/camera/SetupWizardActivity$10;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V
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

    .line 628
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 631
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 632
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_1f

    .line 634
    :cond_14
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 636
    :goto_1f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1302(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-void
.end method
