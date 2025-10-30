.class Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayLaunchInternalModeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 1545
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .registers 3

    .line 1545
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1548
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "DelayLaunchInternalModeTask E:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1549
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # operator++ for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2408(Lcom/sonyericsson/android/camera/CameraActivity;)I

    .line 1550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2500(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    .line 1551
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2402(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    .line 1553
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->launchInternalMode()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2700(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void

    .line 1556
    :cond_33
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDelayLaunchInternalModeTaskCount :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I
    invoke-static {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2400(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1558
    :cond_58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2400(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->MAX_COUNT:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2800(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v2

    if-ne v0, v2, :cond_79

    .line 1559
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1560
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2402(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    goto :goto_84

    .line 1562
    :cond_79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 1564
    :goto_84
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_91

    const-string p0, "DelayLaunchInternalModeTask X:"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_91
    return-void
.end method
