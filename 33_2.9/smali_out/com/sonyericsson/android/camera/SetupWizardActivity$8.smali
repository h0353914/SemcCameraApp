.class Lcom/sonyericsson/android/camera/SetupWizardActivity$8;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 590
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 596
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 597
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->dismissKeyguard()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1700(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    .line 601
    :cond_15
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    .line 602
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 604
    :try_start_39
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p1

    const-string p2, "showOptionalRuntimePermissionDialog() launchApplicationSettings: failed."

    .line 606
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    :goto_45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 p1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1302(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-void
.end method
