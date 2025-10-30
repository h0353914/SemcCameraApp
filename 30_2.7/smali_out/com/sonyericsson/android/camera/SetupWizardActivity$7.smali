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

    .line 374
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .registers 6

    .line 378
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_be

    goto/16 :goto_bd

    .line 432
    :pswitch_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 433
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto/16 :goto_bd

    .line 420
    :pswitch_1b
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 421
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    goto/16 :goto_bd

    .line 424
    :cond_28
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 426
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto/16 :goto_bd

    .line 380
    :pswitch_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 385
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 388
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_bd

    .line 391
    :cond_77
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    goto :goto_bd

    .line 395
    :cond_83
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 397
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_bd

    .line 402
    :cond_96
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 403
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V

    goto :goto_bd

    .line 411
    :cond_a1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_b6

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->dismissKeyguard()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1700(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    .line 414
    :cond_b6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$200(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    :goto_bd
    return-void

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_1b
        :pswitch_1b
        :pswitch_f
    .end packed-switch
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
    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 473
    :cond_1a
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 474
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 v0, 0x1

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setLensCorrection(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1800(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 477
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const v0, 0x7f090183

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # getter for: Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 479
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    return-void
.end method

.method public onDenied(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .registers 3

    .line 444
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_24

    goto :goto_23

    .line 455
    :pswitch_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setLensCorrection(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1800(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 456
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_23

    .line 451
    :pswitch_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    goto :goto_23

    .line 446
    :pswitch_1e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    # invokes: Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_18
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method
