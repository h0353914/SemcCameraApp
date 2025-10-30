.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "CameraSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 2

    .line 1021
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V
    .registers 3

    .line 1021
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .registers 3

    .line 1024
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    .line 1025
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1028
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setShowWhenLocked(Z)V

    .line 1029
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setTurnScreenOn(Z)V

    .line 1031
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1033
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finishActivity(I)V

    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finishActivity(I)V

    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finishActivity(I)V

    .line 1038
    :cond_35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_5c

    .line 1044
    :cond_46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isDeviceInSecureLock()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1045
    :cond_56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    :cond_5b
    return-void

    :cond_5c
    :goto_5c
    return-void
.end method
