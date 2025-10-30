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

    .line 579
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestLocationChange(Z)V
    .registers 4

    .line 630
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1a

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestLocationChange: enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1a
    const/4 v0, 0x1

    if-eqz p1, :cond_26

    .line 635
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    .line 638
    :cond_26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    .line 639
    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 640
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

    goto/16 :goto_86

    .line 607
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto/16 :goto_86

    :cond_12
    if-eqz p3, :cond_86

    .line 613
    const-string p1, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 615
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 616
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 617
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setShowWhenLocked(Z)V

    .line 618
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 619
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return v0

    .line 584
    :cond_3e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 586
    const-string p1, "geo_tag_result"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 588
    const-string/jumbo p2, "side_sense_result"

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 590
    const-string/jumbo v2, "zoom_assist_result"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 593
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$3;->requestLocationChange(Z)V

    .line 595
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    if-eqz p2, :cond_69

    .line 596
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    goto :goto_6b

    :cond_69
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    :goto_6b
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 597
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 598
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_79
    if-eqz p3, :cond_7e

    .line 600
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    goto :goto_80

    :cond_7e
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    :goto_80
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 601
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_86
    :goto_86
    return v0
.end method
