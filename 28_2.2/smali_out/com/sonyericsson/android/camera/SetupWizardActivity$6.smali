.class Lcom/sonyericsson/android/camera/SetupWizardActivity$6;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
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

    .line 344
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "Runnable --> onResumeTasks()"

    .line 348
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1502(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)Z

    .line 351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->onResumeTasks()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    :cond_18
    return-void
.end method
