.class Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPowerOffListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 3640
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .registers 3

    .line 3640
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onAutoPowerOff(Ljava/lang/Object;)V
    .registers 8

    .line 3650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideAutoPowerOffHintText()V

    .line 3655
    :cond_11
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->values()[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2e

    aget-object v4, v0, v2

    .line 3656
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3657
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getAction()Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    move-result-object p1

    goto :goto_2f

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2e
    move-object p1, v3

    :goto_2f
    if-eqz p1, :cond_58

    .line 3662
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendAutoPowerOffEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    .line 3664
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    if-eq p1, v0, :cond_47

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    if-ne p1, v0, :cond_41

    goto :goto_47

    .line 3670
    :cond_41
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    goto :goto_66

    .line 3668
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$900(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_66

    :cond_58
    const-string p1, "AutoPowerOffAction is not found."

    .line 3674
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 3675
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    :goto_66
    return-void
.end method

.method public onAutoPowerOffWarning()V
    .registers 2

    .line 3643
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3644
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showAutoPowerOffHintText()V

    :cond_19
    return-void
.end method
