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

    .line 548
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestLocationChange(Z)V
    .registers 7

    .line 594
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 595
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

    .line 599
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    :cond_29
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_72

    goto :goto_70

    .line 573
    :pswitch_6
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_70

    :pswitch_c
    if-eqz p3, :cond_70

    const-string p2, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    .line 577
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_70

    const-string p2, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    .line 579
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 580
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 581
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setShowWhenLocked(Z)V

    .line 582
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 583
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return p1

    .line 553
    :pswitch_3a
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    const-string p2, "geo_tag_result"

    .line 555
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "side_sense_result"

    .line 557
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 560
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/CameraActivity$3;->requestLocationChange(Z)V

    .line 562
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p2

    if-eqz p3, :cond_5d

    .line 563
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    goto :goto_5f

    :cond_5d
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    :goto_5f
    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 564
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p3

    if-eqz p3, :cond_6d

    .line 565
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 567
    :cond_6d
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_70
    :goto_70
    return p1

    nop

    :pswitch_data_72
    .packed-switch -0x1
        :pswitch_3a
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
