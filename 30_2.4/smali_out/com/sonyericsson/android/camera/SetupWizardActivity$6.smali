.class Lcom/sonyericsson/android/camera/SetupWizardActivity$6;
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

    .line 365
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .registers 6

    .line 369
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b6

    .line 411
    :pswitch_f
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 413
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto/16 :goto_b6

    .line 415
    :cond_21
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 417
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto/16 :goto_b6

    .line 371
    :pswitch_35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 376
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 379
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_b6

    .line 382
    :cond_70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    goto :goto_b6

    .line 386
    :cond_7c
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 388
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_b6

    .line 393
    :cond_8f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 394
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V

    goto :goto_b6

    .line 402
    :cond_9a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_af

    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 403
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->dismissKeyguard()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1700(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    .line 405
    :cond_af
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$200(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    :goto_b6
    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_35
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public onClose(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;)V"
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 452
    :cond_10
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 v0, 0x0

    .line 453
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    .line 452
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 456
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const v0, 0x7f090191

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 458
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    return-void
.end method

.method public onDenied(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .registers 3

    .line 431
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1e

    goto :goto_1d

    .line 438
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 439
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_1d

    .line 433
    :pswitch_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method
