.class Lcom/sonyericsson/android/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestLocationChange(Z)V
    .registers 7

    .line 617
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 618
    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationChange: enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    if-eqz p1, :cond_29

    .line 622
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    .line 625
    :cond_29
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p1

    .line 626
    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 627
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->save()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 7

    const/4 p1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_84

    goto/16 :goto_82

    .line 594
    :pswitch_7
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto/16 :goto_82

    :pswitch_e
    if-eqz p3, :cond_82

    const-string p2, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    .line 600
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_82

    const-string p2, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    .line 602
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 603
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result p2

    if-eqz p2, :cond_82

    .line 604
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setShowWhenLocked(Z)V

    .line 605
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 606
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return p1

    .line 571
    :pswitch_3c
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    const-string p2, "geo_tag_result"

    .line 573
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "side_sense_result"

    .line 575
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "zoom_assist_result"

    .line 577
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 580
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/CameraActivity$3;->requestLocationChange(Z)V

    .line 582
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p2

    if-eqz v1, :cond_65

    .line 583
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    goto :goto_67

    :cond_65
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    :goto_67
    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 584
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 585
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_75
    if-eqz p3, :cond_7a

    .line 587
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    goto :goto_7c

    :cond_7a
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    :goto_7c
    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 588
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_82
    :goto_82
    return p1

    nop

    :pswitch_data_84
    .packed-switch -0x1
        :pswitch_3c
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method
