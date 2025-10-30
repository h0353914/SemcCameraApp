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

    .line 576
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestLocationChange(Z)V
    .registers 7

    .line 627
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationChange: enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_20
    if-eqz p1, :cond_2b

    .line 632
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    .line 635
    :cond_2b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    .line 636
    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {p0, p1, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 637
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->save()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 7

    const/4 p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_3e

    if-eqz p2, :cond_12

    if-eq p2, v0, :cond_b

    goto/16 :goto_85

    .line 604
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto/16 :goto_85

    :cond_12
    if-eqz p3, :cond_85

    const-string p1, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    .line 610
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 612
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 613
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 614
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setShowWhenLocked(Z)V

    .line 615
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 616
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return v0

    .line 581
    :cond_3e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    const-string p1, "geo_tag_result"

    .line 583
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "side_sense_result"

    .line 585
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string/jumbo v2, "zoom_assist_result"

    .line 587
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 590
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$3;->requestLocationChange(Z)V

    .line 592
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    if-eqz p2, :cond_68

    .line 593
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    goto :goto_6a

    :cond_68
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    :goto_6a
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 594
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 595
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_78
    if-eqz p3, :cond_7d

    .line 597
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    goto :goto_7f

    :cond_7d
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    :goto_7f
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 598
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_85
    :goto_85
    return v0
.end method
