.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewTask"
.end annotation


# instance fields
.field private final mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field private final mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 4

    .line 386
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 388
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 5

    .line 376
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1500(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v1, :cond_48

    :cond_e
    const/4 v0, 0x1

    .line 395
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendViewTask() LaunchTrigger:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setLaunchedBy(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->setLaunchTriggerEvent(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->access$2000(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 400
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    .line 403
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1502(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z

    :cond_48
    return-void
.end method
