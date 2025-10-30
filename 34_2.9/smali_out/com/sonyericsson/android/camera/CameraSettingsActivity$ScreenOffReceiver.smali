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

    .line 1061
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .registers 3

    .line 1064
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 1065
    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1068
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setShowWhenLocked(Z)V

    .line 1069
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setTurnScreenOn(Z)V

    .line 1071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mshouldNotRemainRecentTask(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finishActivity(I)V

    .line 1074
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finishActivity(I)V

    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finishActivity(I)V

    .line 1078
    :cond_35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_5b

    .line 1084
    :cond_46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$misDeviceInSecureLock(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mshouldNotRemainRecentTask(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1085
    :cond_56
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    :cond_5b
    :goto_5b
    return-void
.end method
