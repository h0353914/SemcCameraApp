.class Lcom/sonyericsson/android/camera/SetupWizardActivity$7;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;


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

    .line 372
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .registers 6

    .line 376
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4e

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x4

    if-eq v0, p1, :cond_21

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1a

    goto/16 :goto_cf

    .line 434
    :cond_1a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetZoomAssistResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    goto/16 :goto_cf

    .line 430
    :cond_21
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetSideSenseResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 431
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetupCompleted(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto/16 :goto_cf

    .line 418
    :cond_2d
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 419
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetSideSenseResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    goto/16 :goto_cf

    .line 422
    :cond_3a
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 424
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 426
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto/16 :goto_cf

    .line 378
    :cond_4e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$misRestrictedMode(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$misSecure(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetGeoTagResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 383
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_89

    .line 386
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mclose(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_cf

    .line 389
    :cond_89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    goto :goto_cf

    .line 393
    :cond_95
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 395
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 397
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_cf

    .line 400
    :cond_a8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetGeoTagResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 401
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V

    goto :goto_cf

    .line 409
    :cond_b3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$misRestrictedMode(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$misSecure(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_c8

    .line 410
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mdismissKeyguard(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    .line 412
    :cond_c8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    sget-object p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mtoExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    :goto_cf
    return-void
.end method

.method public onClose(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;)V"
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 468
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 469
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 v1, 0x0

    .line 470
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v1

    .line 469
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetSideSenseResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 473
    :cond_1a
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 474
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetLensCorrection(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 477
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const v0, 0x7f0901ac

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 479
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetupCompleted(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    return-void
.end method

.method public onDenied(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .registers 4

    .line 444
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    goto :goto_2c

    .line 455
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetLensCorrection(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 456
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetupCompleted(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_2c

    .line 451
    :cond_21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetSideSenseResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    goto :goto_2c

    .line 446
    :cond_27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetGeoTagResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    :goto_2c
    return-void
.end method
