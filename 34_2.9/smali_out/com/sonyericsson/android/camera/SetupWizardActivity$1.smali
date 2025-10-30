.class Lcom/sonyericsson/android/camera/SetupWizardActivity$1;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;


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

    .line 132
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .registers 3

    .line 135
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    goto :goto_25

    .line 142
    :cond_11
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    sget-object p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->SIDE_SENSE_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mtoExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    goto :goto_25

    .line 137
    :cond_19
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fputmIsGeotagEnabled(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    sget-object p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->LOCATION_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mtoExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    :goto_25
    return-void
.end method
